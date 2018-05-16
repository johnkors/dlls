using IdentityModel.Client;

namespace classlib.netstandard
{
    public class Class1
    {
        public static string GetStuff()
        {
            var cl = new TokenClient("https://demo.identityserver.io/connect/token", "client", "secret");
            var res = cl.RequestClientCredentialsAsync("api").GetAwaiter().GetResult();
            if(!res.IsError)
                return res.AccessToken;
            return res.ErrorDescription;
        }
    }
}
