package com.itc.bbs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itc.bbs.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	ProductService pService;
	
	@GetMapping("/prductList")
	public String getProductList(Model model, @RequestParam("productCategory") int proCategory) throws Exception {
		model.addAttribute("productList", pService.getProductList(proCategory));
		return "product/productList";
	}
	
	@GetMapping("/productDetail")
	public String getProductDetail(Model model, @RequestParam("productNo") int productNo) throws Exception {
		model.addAttribute("product", pService.getProductDetail(productNo));
		model.addAttribute("performList", pService.getPerformList(productNo));
		return "product/productDetail";
	}
}