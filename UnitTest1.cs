using company.Controllers;
using company.Models;
using System;
using Xunit;

namespace CompanyTest
{
    public class UnitTest1
    {
        private companyContext context;
        private CompanyService service;

        public UnitTest1()
        {
            this.context = new companyContext();
            this.service = new CompanyService(context);

        }

        [Fact]
        public void Test1()
        {
            Assert.Equal(1, service.GetCoworkerNumber());


        }

        [Fact]
        public void Test2()
        {
            Coworker result = service.GetCoworkerByEmail("josef@gmail.com");
            Assert.Equal("JOSEF", result.Name);
            Assert.Equal(2, 2);
        }
    }
}
