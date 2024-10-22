package productCRUDapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;
import productCRUDapp.dao.ProductDao;
import productCRUDapp.model.Product;
import productCRUDapp.service.ProductService;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class MainController {
	@Autowired
	private ProductService productService;
	
	@Autowired
	private ProductDao productDao;

	@RequestMapping("/home")
	public String home(Model model) {

		List<Product> allProducts = productDao.getAllProducts();
		model.addAttribute("products", allProducts);

		return "home";
	}

	@RequestMapping("/addProduct")
	public String addProduct(Model model) {
		model.addAttribute("title", "Add Product");
		return "addProduct";
	}

	@RequestMapping(value = "/handle-product", method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product,Model m, HttpServletRequest request) {
		System.out.println(product);

		this.productService.createProduct(product);

		RedirectView redirectView = new RedirectView();
		String contextPath = request.getContextPath();
		redirectView.setUrl(contextPath + "/");

		return redirectView;
	}

	// Delete Handler
	@RequestMapping("/delete/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId") int id ,HttpServletRequest request) {
		productDao.deleteProduct(id);
		RedirectView redirectView = new RedirectView();
		String contextPath = request.getContextPath();
		redirectView.setUrl(contextPath + "/");
		return redirectView;
	}

	@RequestMapping("/update/{productId}")
	public String updateProduct(@PathVariable("productId") int id, HttpServletRequest request, Model model) {
		Product product = productDao.getProduct(id);
		model.addAttribute("product", product);
		return "updateProduct";
	}
}
