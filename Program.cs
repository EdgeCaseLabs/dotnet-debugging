// See https://aka.ms/new-console-template for more information
namespace DotnetTestApp
{
    public class Program
    {
        public static void Main(string[] args)
        {
            if (Array.Exists(args, arg => arg == "--wait-for-debugger"))
            {
                Console.WriteLine("Waiting for debugger to attach...");
                while (!System.Diagnostics.Debugger.IsAttached)
                {
                    System.Threading.Thread.Sleep(100);
                }
                Console.WriteLine("Debugger attached! Continuing...");
            }
            
            Console.WriteLine("Hello, World! blah");
        }
    }
}
