using System.Data;
using Microsoft.AspNetCore.Hosting.Server;
using Microsoft.Data.SqlClient;
using Microsoft.SqlServer.Dac;
using Microsoft.SqlServer.Management.Common;
using Microsoft.SqlServer.Management.Smo;

namespace TestProject1.Fixtures
{
    public class DatabaseFixture : IDisposable
    {
        public readonly string DatabaseName = "Test";
        SqlConnection conn = new SqlConnection(@"Data Source=SA-PC120;Integrated Security=True;TrustServerCertificate=true");
        public DatabaseFixture()
        {
            //    var instance = new DacServices("Data Source=SA-PC120;Integrated Security=True;Persist Security Info=False;Pooling=False;MultipleActiveResultSets=False;Connect Timeout=60;Encrypt=False;TrustServerCertificate=False");
            //    using (var dacpac = DacPackage.Load("Test_.Database.dacpac"))
            //    {
            //        instance.Deploy(dacpac, DatabaseName,upgradeExisting: true);
            //    }
            //    conn.Open();
            //    conn.ChangeDatabase(DatabaseName);
            //    string i = conn.ToString();
            //    Server server = new Server(new ServerConnection(conn));
            //    string script = File.ReadAllText(@"db_scripts/data-script.sql");
            //    server.ConnectionContext.ExecuteNonQuery(script);
            //conn.Close();
        }

        public void Dispose()
        {
            //SqlConnection conn = new SqlConnection(@"Data Source=SA-PC120;Integrated Security=True;Trust Server Certificate=true");
            //conn.Open();
            //Server server = new Server(new ServerConnection(conn));
            //string script = File.ReadAllText(@"kill-all.sql");
            //server.ConnectionContext.ExecuteNonQuery(script);
            //conn.Close();
            //SqlConnection sc = new SqlConnection(@"Data Source=SA-PC120;Integrated Security=True;Trust Server Certificate=true");
            //sc.Open();
            //string query = "DROP DATABASE " + DatabaseName;
            //new SqlCommand(query, sc).ExecuteNonQuery();
            //sc.Close();
        }

        public SqlConnection Db { get; private set; }
    }

    //public class MyDatabaseTests : IClassFixture<DatabaseFixture>
    //{
    //    DatabaseFixture fixture;

    //    public MyDatabaseTests(DatabaseFixture fixture)
    //    {
    //        this.fixture = fixture;
    //    }

    //    [Fact]
    //    public void I()
    //    {

    //    }

    //    // ... write tests, using fixture.Db to get access to the SQL Server ...
    //}


    [CollectionDefinition("Database collection")]
    public class DatabaseCollection : ICollectionFixture<DatabaseFixture>
    {
        // This class has no code, and is never created. Its purpose is simply
        // to be the place to apply [CollectionDefinition] and all the
        // ICollectionFixture<> interfaces.
    }
}
