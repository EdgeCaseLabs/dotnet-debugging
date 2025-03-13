FROM mcr.microsoft.com/dotnet/sdk:9.0

WORKDIR /app

# Install process utilities
RUN apt-get update && \
    apt-get install -y procps && \
    rm -rf /var/lib/apt/lists/*

COPY . .
RUN dotnet restore
RUN dotnet build -c Debug

# Enable remote debugging by installing vsdbg
RUN curl -sSL https://aka.ms/getvsdbgsh | /bin/sh /dev/stdin -v latest -l /remote_debugger

# Enable debugging
ENV ASPNETCORE_ENVIRONMENT=Development

# Use watch to enable hot reload and better debugging experience
ENTRYPOINT ["dotnet", "watch", "--project", "dotnet-testapp.csproj", "--", "--wait-for-debugger"]
