using System;
using IdentityModel.Client;

namespace console.fullframework.old
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello console.fullframework.old.461.BuildTools15!");
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
