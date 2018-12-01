using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using DAL;
using BLL;

namespace WEBAPI.Controllers
{
    public class CustomerController : ApiController
    {
        // GET: api/Customer
        
        public IHttpActionResult Get()
        {
            try
            {
                List<Customer_model>  cus= CustomerClass.GetCustomer();
                if (cus != null)
                {
                    return Ok(cus);
                }
                else
                {
                    return Content(HttpStatusCode.NoContent, "No record found");
                }             
            }
            catch (Exception)
            {
                return BadRequest();
            }                
        }

        // GET: api/Customer/5
        //[Route("Customer/GetByID/{id}")]
        public IHttpActionResult Get(int id)
        {
            try
            {
                Customer_model cus = CustomerClass.GetCustomerById(id);
                if (cus != null)
                {
                    return Ok(cus);
                }
                else
                {
                    return Content(HttpStatusCode.NoContent, "No record found");
                }
            }
            catch (Exception)
            {
                return BadRequest();
            }
        }

        // POST: api/Customer
        public IHttpActionResult Post([FromBody]Customer_model _Customer)
        {
            var cus  = CustomerClass.InsertCustomer(_Customer);
            if(cus != null)
            {
                try
                {
                    return Ok(cus);
                }
                catch (Exception)
                {
                    return Content(HttpStatusCode.BadRequest, "Invalid Data");
                }                
            }
            else
            {
                return Content(HttpStatusCode.BadRequest, "Invalid data");
            }
        }

        // PUT: api/Customer/5
        public IHttpActionResult Put(int id, [FromBody]Customer_model _Customer)
        {
            string result = CustomerClass.UpdateCutomerInfo(id,_Customer);
            if (result.Equals("1"))
            {
                return Ok();
            }
            else
            {
                return Content(HttpStatusCode.NoContent, "No record found");
            }
        }

        // DELETE: api/Customer/5
        public IHttpActionResult Delete(int id)
        {
            string result = CustomerClass.DeleteCustomerInfo(id);
            if (result.Equals("1"))
            {
                return Ok();
            }
            else
            {
                return Content(HttpStatusCode.NoContent, "No record found");
            }
        }
    }
}
