using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;

namespace BLL
{
    #region Customer
    public static class CustomerClass
    {
        public static List<Customer_model> GetCustomer()
        {
            try
            {
                return HelperMethods.GetEntities().GetCustomer().Select(x => new Customer_model
                {
                    ID = x.ID,
                    FirstName = x.FirstName,
                    MiddleName = x.MiddleName,
                    LastName = x.LastName,
                    Gender = x.Gender,
                    DOB = x.DOB,
                    Email = x.Email,
                    MobileNo=x.MobileNo,
                    Address=x.Address,
                    City=x.City,
                    State=x.State,
                    Country=x.Country
                }).OrderByDescending(c => c.ID).ToList();
            }
            catch (Exception ex)
            {
                HelperMethods.LogMessage(ex);
            }
            return null;
        }
        public static Customer_model GetCustomerById(int id)
        {
            try
            {
                var customer = HelperMethods.GetEntities().GetCustomerById(id);
                if (customer != null)
                {
                    return new Customer_model
                    {
                        ID = customer.ID,
                        FirstName = customer.FirstName,
                        MiddleName = customer.MiddleName,
                        LastName = customer.LastName,
                        Gender = customer.Gender,
                        DOB = customer.DOB,
                        Email = customer.Email,
                        MobileNo = customer.MobileNo,
                        Address = customer.Address,
                        City = customer.City,
                        State = customer.State,
                        Country = customer.Country
                    };
                }
            }
            catch (Exception ex)
            {
                HelperMethods.LogMessage(ex);
            }
            return null;
        }


        public static Customer InsertCustomer(Customer_model _customer) {
            var customermodel = new Customer
            {
                ID = _customer.ID,
                FirstName = _customer.FirstName,
                MiddleName = _customer.MiddleName,
                LastName = _customer.LastName,
                Gender = _customer.Gender,
                DOB = _customer.DOB,
                Email = _customer.Email,
                MobileNo = _customer.MobileNo,
                Address = _customer.Address,
                City = _customer.City,
                State = _customer.State,
                Country = _customer.Country
            };
            return HelperMethods.GetEntities().InsertCustomer(customermodel);
        }

        public static string UpdateCutomerInfo(int id, Customer_model _customer)
        {
            var customermodel = new Customer
            {
                ID = _customer.ID,            
                FirstName = _customer.FirstName,
                MiddleName = _customer.MiddleName,
                LastName = _customer.LastName,
                Gender = _customer.Gender,
                DOB = _customer.DOB,
                Email = _customer.Email,
                MobileNo = _customer.MobileNo,
                Address = _customer.Address,
                City = _customer.City,
                State = _customer.State,
                Country = _customer.Country
            };
            return HelperMethods.GetEntities().UpdateCustomerInfo(id,customermodel);
        }
        public static string DeleteCustomerInfo(int Id)
        {
            return HelperMethods.GetEntities().DeleteCutomerInfo(Id);
        }
    }

    #endregion

    #region HelperMethods
    public class HelperMethods
    {
        public static Entities GetEntities()
        {
            return new Entities();
        }

        public static void LogMessage(Exception ex)
        {
            try
            {

            }
            catch (Exception)
            {

            }
        }
    }
    #endregion

}
