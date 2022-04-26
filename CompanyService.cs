
using company.Models;
using Microsoft.EntityFrameworkCore;
using System.Linq;

namespace company.Controllers
{
    public class CompanyService
    {
        private companyContext context;
        public CompanyService(companyContext companyContext)
        {
            context = companyContext;
        }

        public int GetCoworkerNumber()
        {
            return context.Coworkers.Count();
        }

        public Coworker GetCoworkerByEmail(string email)
        {
            return context.Coworkers.Include(c => c.Notebooks).Include(c => c.Phones).FirstOrDefault(c => c.Email == email);
        }


    }
}