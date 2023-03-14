package mvc.service;

import mvc.entity.Category;
import mvc.entity.Product;
import mvc.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {
    @Autowired
    ProductRepository productRepository;
    public Object findAll(){
        return productRepository.findAll();
    }

    public Product save(Product product) {
        return productRepository.save(product);
    }

    public List<Product> findByNameContaining (String searchInput) {
        return productRepository.findByNameContaining(searchInput);
    }
    public List<Product> showTopPhone() {
        return productRepository.showTopPhone();
    }
    public List<Product> showTopLaptop() {
        return productRepository.showTopLaptop();
    }
    public List<Product> showTopDH() {
        return productRepository.showTopDH();
    }
    public List<Product> showTopTapLet() {
        return productRepository.showTopTaplet();
    }
}
