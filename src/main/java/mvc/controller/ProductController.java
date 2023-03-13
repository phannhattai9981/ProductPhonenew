package mvc.controller;
import mvc.entity.Category;
import mvc.entity.Product;
import mvc.service.CategoryService;
import mvc.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


import javax.validation.Valid;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
@RequestMapping(value = "/")
public class ProductController {
    @Autowired
    ProductService productService;
    @Autowired
    CategoryService categoryService;


    @RequestMapping(method = GET)
    public String showProduct(Model model) {
        List<Product> productList = (List<Product>) productService.findAll();
        model.addAttribute("productList", productList);
        return "product";
    }

    @RequestMapping(value = "/index")
    public String index(){
        return "product";
    }

    @RequestMapping(value = "/newProduct", method = GET)
    public String showNewProduct(Model model) {
        model.addAttribute("product", new Product());
        model.addAttribute("msg", "Add a new Product");
        model.addAttribute("action", "newProduct");

        setCategoryDropDownList(model);
        return "home";
    }

    @RequestMapping(value = "/newProduct", method = POST, produces = "text/plain;charset=UTF-8")
        public String saveProduct(@Valid @ModelAttribute("product") Product product, BindingResult result, Model model) {


        if (result.hasErrors()) {
            setCategoryDropDownList(model);
            return "home";
        }
        productService.save(product);

        return "redirect:/";
    }
    private void setCategoryDropDownList(Model model) {
        List<Category> cateList = (List<Category>)categoryService.findAll();
        if (!cateList.isEmpty()) {
            Map<Integer, String> cateMap = new LinkedHashMap<>();
            for (Category category: cateList) {
                cateMap.put(category.getId(), category.getName());
            }
            model.addAttribute("categoryList", cateMap);
        }
    }


}
