﻿using APIMovies.Model;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;

namespace APIMovies.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class MoviesController : ControllerBase
    {
        private readonly MovieContext _context;

        public MoviesController(MovieContext context)
        {
            _context = context;
        }

        /// <summary>
        /// Retorna os detalhes de todos os filmes
        /// </summary>
        /// <returns></returns>
        [HttpGet("Details")]
        public List<Movie> Details()
        {
            return _context.Movies.ToList();
        }

        /// <summary>
        /// Retorna os detalhes dos filmes através de uma palavra chave
        /// </summary>
        /// <param name="key"></param>
        /// <returns></returns>
        [HttpGet("DetailsByKeyword")]
        public List<Movie> DetailsByKeyword(string key)
        {
            List<Movie> ret = new List<Movie>();
            
            if (_context.Movies.Any(x => x.MovieName.ToUpper().Contains(key.ToUpper()) || x.Description.ToUpper().Contains(key.ToUpper())))
            {
                ret = _context.Movies.Where(x => x.MovieName.ToUpper().Contains(key.ToUpper()) || x.Description.ToUpper().Contains(key.ToUpper())).ToList();
            }

            return ret;
        }

        /// <summary>
        /// Retorna o detalhe do filme por ID
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        // GET: Movies/Details/5
        [HttpGet("Details/{id}")]
        public Movie Details(int? id)
        {
            if (id == null)
            {
                throw new Exception("Parâmetro Inválido");
            }

            Movie movie = new Movie();
            if (_context.Movies.Any(m => m.Id == id))
            {
                movie = _context.Movies.FirstOrDefault(m => m.Id == id);
            }
            else
            {
                throw new Exception("Filme não encontrado");
            }

            return movie;
        }
    }
}
