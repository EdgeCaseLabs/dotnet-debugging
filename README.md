# .NET Debugger Patterns


This code demonstrates the various ways to debug a .NET application in VS Code.

### Option 1: Debugging on local machine


1. Open `Program.cs` and set a break point on the `Console.WriteLine("Hello, World!");` 

2. On the Debug tab of your VS Code, run the `.NET Core Launch` configuration.

3. Your `Program.cs` should pause on your breakpoint and await your instructions.


### Option 2: Debugging inside a docker container

1. Open `Program.cs` and set a break point on the `Console.WriteLine("Hello, World!");` 

2. Bring up the docker container with 

```
docker compose up
```

3. On the Debug tab of your VS Code, run the `.NET Core Docker Attach` configuration.

4. Pick the process that matches the `/app/bin/Debug/net9.0/dotnet-testapp` binary.

5. Your `Program.cs` should pause on your breakpoint and await your instructions.
