using System;

namespace ConsoleApp1
{
    public class Program
    {
        static void Main(string[] args)
        {
            var t = new ClassLibrary1.Class1
            {
                Name = "Albert"
            };

            Console.WriteLine($"Hello .net standard 2.0 from {t.Name}.");
            Console.ReadLine();
        }
    }
}
