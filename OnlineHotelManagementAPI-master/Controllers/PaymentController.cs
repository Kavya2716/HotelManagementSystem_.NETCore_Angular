using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using OnlineHotelManagementAPI.Models;
using OnlineHotelManagementAPI.Service;

namespace OnlineHotelManagementAPI.Controllers
{
    [Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class PaymentController : ControllerBase
    {
        private readonly PaymentService S_payment;
        private HotelContext _context;

        public PaymentController(PaymentService payment, HotelContext context)
        {
            S_payment = payment;
            _context = context;
        }

        #region InsertPayment
        [HttpPost("InsertPayment")/*, Authorize(Roles = "Receptionist, Manager, Owner")*/]
        public IActionResult InsertStaff(Payment payment)
        {
            return Ok(S_payment.InsertPayment(payment));
        }
        #endregion

        #region UpdatePayment
        [HttpPut("UpdatePayment")/*, Authorize(Roles = "Receptionist, Manager, Owner")*/]
        public IActionResult UpdatePayment(Payment payment)
        {
            return Ok(S_payment.UpdatePayment(payment));
        }
        #endregion

        #region DeletePayment
        [HttpDelete("DeletePayment")/*, Authorize(Roles = "Receptionist, Manager, Owner")*/]
        public IActionResult DeletePayment(int Id)
        {
            return Ok(S_payment.DeletePayment(Id));
        }
        #endregion

        #region GetPaymentById
        [HttpGet("GetPaymentById")/*, Authorize(Roles = "Manager, Receptionist, Owner")*/]
        public IActionResult GetPaymentById(int id)
        {
            if (S_payment.GetPaymentById(id) == "200")
            {
                return Ok(_context.Payments.Find(id));
            }
            else
            {
                return Ok(new { message = "Not Found" });
            }
        }
        #endregion

        #region GetAllPayment
        [HttpGet("GetAllPayment")/*, Authorize(Roles = "Receptionist, Manager, Owner")*/]
        public IActionResult GetAllPayment()
        {
            return Ok(S_payment.GetAllPayment());
        }
        #endregion
    }
}
