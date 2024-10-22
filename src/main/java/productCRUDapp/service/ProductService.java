package productCRUDapp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import productCRUDapp.dao.ProductDao;
import productCRUDapp.model.Product;

@Service
public class ProductService {

    @Autowired
    private ProductDao productDao;

    public void createProduct(Product product) {
        this.productDao.saveProduct(product);
    }
}
