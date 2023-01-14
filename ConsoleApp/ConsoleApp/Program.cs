using ConsoleApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp
{
    class Program
    {
        static void Main(string[] args)
        {
            // Instancia calculadora de desconto
            DiscountCalculator discountCalculator = new DiscountCalculator();

            // Obtém valor
            Console.Write("Valor do produto: ");
            string stringValue = Console.ReadLine();
            stringValue = stringValue.Replace(".", ",");

            // Calcula desconto
            double doubleValue = Convert.ToDouble(stringValue);
            double doubleValueWithDiscount = discountCalculator.DoDiscount(doubleValue, 60);
            
            // Saída
            Console.WriteLine("Produto custava R$: " + doubleValue.ToString("0.00"));
            double discountValue = doubleValue - doubleValueWithDiscount;
            Console.WriteLine("Valor do desconto R$: " + discountValue.ToString("0.00"));
            Console.WriteLine("Valor final do produto com o desconto R$: " + doubleValueWithDiscount.ToString("0.00"));
            Console.ReadLine();
        }
    }
}
