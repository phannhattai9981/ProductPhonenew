package mvc.service;

import mvc.entity.Category;
import mvc.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoryService {
    @Autowired
    CategoryRepository categoryRepository;

    public Object findAll() {
        return categoryRepository.findAll();
    }


    public Category save(Category category) {
        return categoryRepository.save(category);
    }

    public Object findById(int id) {
        return categoryRepository.findById(id);
    }

    public Object deleteById(int id) {
        return categoryRepository.findById(id);
    }
}
