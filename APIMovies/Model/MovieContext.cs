
using Microsoft.EntityFrameworkCore;
namespace APIMovies.Model
{
    public class MovieContext : DbContext
    {
        public DbSet<Movie> Movies { get; set; }

        public MovieContext(DbContextOptions<MovieContext> options) :
            base(options)
        {
        }
    }
}