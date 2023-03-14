package mvc.repository;

import mvc.entity.Product;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface ProductRepository extends CrudRepository<Product, Integer> {

    @Query(value = "SELECT * FROM products WHERE categoryId = 1 LIMIT 8" ,nativeQuery = true)
    List<Product> showTopPhone();
    @Query(value = "SELECT * FROM products WHERE categoryId = 2 LIMIT 8 " ,nativeQuery = true)
    List<Product> showTopLaptop();
    @Query(value = "SELECT * FROM products WHERE categoryId = 3 LIMIT 8 " ,nativeQuery = true)
    List<Product> showTopDH();
    @Query(value = "SELECT * FROM products WHERE categoryId = 4 LIMIT 8 " ,nativeQuery = true)
    List<Product> showTopTaplet();

    @Query(value = "select * from products where name like %?1%", nativeQuery = true)
    List<Product> findByNameContaining(String searchInput);

}
