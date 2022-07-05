namespace FigureUtils
{
    public class Triangle : Figure
    {
        private readonly double[] _sides;

        public Triangle(IEnumerable<double> sides)
        {
            _sides = sides.ToArray();
            if (_sides.Length != 3)
            {
                throw new ArgumentException(
                    "A triangle must have exactly 3 sides.");
            }
            if (!ValidateSides(_sides))
            {
                throw new ArgumentException(
                    "There is no triangle with given sides.");
            }
        }

        public Triangle(double side1, double side2, double side3)
            : this(new double[] { side1, side2, side3 }) { }

        public override double CalculateArea()
        {
            double p = _sides.Sum() / 2;
            double result = p;
            foreach (var side in _sides)
            {
                result *= p - side;
            }
            result = Math.Sqrt(result);
            return result;
        }

        public bool IsRectangular()
        {
            for (int i = 0; i < 3; i++)
            {
                double a = _sides[i], b = _sides[(i + 1) % 3],
                       c = _sides[(i + 2) % 3];
                if (a * a + b * b == c * c)
                {
                    return true;
                }
            }
            return false;
        }

        private static bool ValidateSides(double[] sides)
        {
            for (int i = 0; i < 3; i++)
            {
                if (sides[i] <= 0)
                {
                    return false;
                }
                if (sides[i] >= sides[(i + 1) % 3] + sides[(i + 2) % 3])
                {
                    return false;
                }
            }
            return true;
        }
    }
}
