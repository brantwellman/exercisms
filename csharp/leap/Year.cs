using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace ExercismLeap
{
    public static class Year
    {
        public static bool IsLeap(int year)
        {
            return year % 4 == 0 && (year % 400 == 0 || !(year % 100 == 0));
        }
    }
}