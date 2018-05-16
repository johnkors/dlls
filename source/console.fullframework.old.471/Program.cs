using System;
using classlib.netstandard;
using IdentityModel.Client;

namespace console.fullframework.old
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello console.fullframework.old.471!");
            Console.WriteLine(GetStuff());
        }

        public static string GetStuff()
        {
            var cl = new TokenClient("https://demo.identityserver.io/connect/token", "client", "secret");
            var res = cl.RequestClientCredentialsAsync("api").GetAwaiter().GetResult();
            if (!res.IsError)
                return res.AccessToken;
            return res.ErrorDescription;
        }
    }
}
