package productCRUDapp.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import productCRUDapp.model.Product;

import javax.transaction.Transactional;
import java.util.List;

@Repository
public class ProductDao {
    @Autowired
    private HibernateTemplate hibernateTemplate;

    @Transactional
    public void saveProduct(Product product){
        // Save and Update functionality at the same time
        this.hibernateTemplate.saveOrUpdate(product);
    }

    public Product getProduct(int productId){
        return this.hibernateTemplate.get(Product.class, productId);
    }

    public List<Product> getAllProducts(){
        return this.hibernateTemplate.loadAll(Product.class);
    }

    @Transactional
    public void deleteProduct(int productId){
        Product getProduct = this.hibernateTemplate.load(Product.class, productId);
        this.hibernateTemplate.delete(getProduct);
    }
}
