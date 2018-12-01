using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{


    public class Entities
    {
        AngularJsDemoEntities db = null;

        public AngularJsDemoEntities GetDataContext()
        {
            return new AngularJsDemoEntities();
        }
        public IQueryable<Customer> GetCustomer()
        {
            var db = GetDataContext();
            return db.Customers;
        }
        public Customer GetCustomerById(int id)
        {
            try
            {
                int customerId = Convert.ToInt32(id);
                var db = GetDataContext();
                return db.Customers.FirstOrDefault(x => x.ID == id);
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public Customer InsertCustomer(Customer customermodel)
        {
            try
            {
                var db = GetDataContext();                
                db.Customers.Add(customermodel);
                db.SaveChanges();
                return customermodel;
            }
            catch (Exception)
            {
                return null;
            }            
        }

        public string UpdateCustomerInfo(int id, Customer customermodel)
        {
            try
            {               
                var db = GetDataContext();
                var _customer = db.Customers.Where(x => x.ID == id).FirstOrDefault();
                if (_customer != null)
                {

                    _customer.FirstName = customermodel.FirstName;
                    _customer.MiddleName = customermodel.MiddleName;
                    _customer.LastName = customermodel.LastName;
                    _customer.Gender = customermodel.Gender;
                    _customer.DOB = customermodel.DOB;
                    _customer.Email = customermodel.Email;
                    _customer.MobileNo = customermodel.MobileNo;
                    _customer.Address = customermodel.Address;
                    _customer.City = customermodel.City;
                    _customer.State = customermodel.State;
                    _customer.Country = customermodel.Country;
                    db.SaveChanges();
                    return "1";
                }
                else {
                    return "0";
                }                
            }
            catch (Exception)
            {
                return "0";
            }
        }
        public string DeleteCutomerInfo(int id)
        {
            try
            {
                var db = GetDataContext();
                var _customer = db.Customers.Where(x => x.ID == id).FirstOrDefault();
                if (_customer != null)
                {                    
                    db.Customers.Remove(_customer);
                    db.SaveChanges();
                    return "1";
                }
                else
                {
                    return "0";
                }
            }
            catch (Exception)
            {
                return "0";
            }
        }
    }
}
