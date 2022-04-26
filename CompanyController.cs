
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace company.Controllers
{
    public class CompanyController : Controller
    {
        private readonly CompanyService companyService;
        public CompanyController(CompanyService companySevice)
        {
            this.companyService = companySevice;
        }
        
        //[HttpGet]
        //[Route("Count")]
        //public int  GetCoworkerNumber()
        //{
        //    return companyService.GetCoworkerNumber();
        //}

        //[HttpGet]
        //[Route("Email")]
        //public Coworker GetCoworkerByEmail(string email)
        //{
        //    return companyService.GetCoworkerByEmail(email);
        //}

    }
}
