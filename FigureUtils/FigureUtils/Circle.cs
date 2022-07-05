namespace FigureUtils
{
    public class Circle : Figure
    {
        private readonly double _radius;
        public Circle(double radius)
        {
            if (!ValidateRadius(radius))
            {
                throw new ArgumentException(
                    $"{nameof(radius)} must be positive.");
            }
            _radius = radius;
        }
        public override double CalculateArea()
            => Math.PI * _radius * _radius;

        private static bool ValidateRadius(double radius)
            => radius > 0;
    }
}
