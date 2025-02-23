using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Business.Abstract;
using DataAccess.Abstract;
using Entities.Concrete;

namespace Business.Concrete
{
    public class CarManager : ICarService
    {
        ICarDal _carDal;

        public CarManager(ICarDal carDal)
        {
            _carDal = carDal;
        }

        public List<Car> GetAll()
        {
            return _carDal.GetAll();
        }

        public List<Car> GetCarsByBrandId(int brandId)
        {

            return new List<Car>(_carDal.GetAll(c => c.BrandId == brandId));
        }

        public List<Car> GetCarsByColorId(int colorId)
        {
            return new List<Car>(_carDal.GetAll(c => c.ColorId == colorId).ToList());

        }
    }
}
