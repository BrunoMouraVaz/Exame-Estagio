using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp.Models
{
    /// <summary>
    /// Calculadora de desconto
    /// </summary>
    public class DiscountCalculator
    {
        #region Constructor

        /// <summary>
        /// Calculadora de desconto
        /// </summary>
        public DiscountCalculator() { }

        #endregion

        #region Members 'Discount' :: DoDiscount()

        /// <summary>
        /// Dar desconto
        /// </summary>
        /// <param name="value"></param>
        /// <param name="discountPercentage"></param>
        /// <returns></returns>
        public double DoDiscount(double value, double discountPercentage)
        {
            try
            {
                double decimalDiscount = discountPercentage / 100;
                double newValue = value - (value * decimalDiscount);
                return newValue;
            }
            catch(Exception exception)
            {
                throw new Exception("Fail in DoDiscount(): ", exception);
            }
        }

        #endregion
    }
}
