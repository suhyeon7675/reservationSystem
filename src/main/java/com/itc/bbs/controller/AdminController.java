package com.itc.bbs.controller;

import java.io.Console;
import java.io.File;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.itc.bbs.domain.CategoryVO;
import com.itc.bbs.domain.PerformVO;
import com.itc.bbs.domain.ProductVO;
import com.itc.bbs.domain.RegisterVO;
import com.itc.bbs.domain.ReservationVO;
import com.itc.bbs.service.AdminService;

@Controller
public class AdminController {
	@Autowired
	AdminService adminService;
	
	@GetMapping("/")
	public String main() throws Exception {
		return "main";
	}
	
	@GetMapping("/adminMenu")
	public String adminMenu() throws Exception {
		return "admin/adminMenu";
	}
	
	@GetMapping("/admin/member")
	public String getMemberList(Model model, RegisterVO vo) throws Exception {
		model.addAttribute("memberList", adminService.getMemberList());
		return "admin/member";
	}
	
	@GetMapping("/admin/userDelete")
	public String deleteUser(Model model, @RequestParam("userId") String userId) throws Exception {
		adminService.deleteUser(userId);
		return "redirect:/";
	}
	
	@GetMapping("/admin/reservation")
	public String getReservationList(Model model, ReservationVO vo) throws Exception {
		model.addAttribute("reservationList", adminService.getReservationList());
		return "admin/reservation";
	}
	
	@GetMapping("admin/addProduct")
	public String addProduct(Model model, CategoryVO vo) throws Exception{
		model.addAttribute("categoryList", adminService.getCategoryList());
		return "admin/product";
	}
	
	@PostMapping("/admin/addProductPost")
	public ModelAndView addProductPost(Model model,  
			@RequestParam("category") String category,
			@RequestParam("productName") String productName,
			@RequestParam("productPrice") int productPrice,
			@RequestParam("productRating") int productRating,
			@RequestParam("productRunningTime") String productRunningTime,
			@RequestParam("productAppearance") String productAppearance,
			@RequestParam("productImage") MultipartFile productImage,
			@RequestParam("placeName") String placeName, 
			@RequestParam("placeStreet") String placeStreet, 
			@RequestParam("placeLot") String placeLot,			
			@RequestParam("placeTel") String placeTel,
			@RequestParam("productStartDate") String productStartDate,
			@RequestParam("productEndDate") String productEndDate,
			@RequestParam("perform") String perform) throws Exception {
		
		String originalFile = productImage.getOriginalFilename();
		//String originalFileExtension = originalFile.substring(originalFile.lastIndexOf("."));
		//String storedFileName = UUID.randomUUID().toString().replaceAll("-", "") + originalFileExtension;
		String realFolder = "C:\\Users\\tgus7\\OneDrive\\문서\\Spring Workspace\\BBS\\src\\main\\webapp\\resources\\images\\"; //웹 애플리케이션상의 절대 경로
		File file = new File(realFolder + originalFile);
		productImage.transferTo(file);	
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		int categoryNo = Integer.parseInt(category);
		
		ProductVO productVO = new ProductVO();
		productVO.setCategoryNo(categoryNo);
		productVO.setProductName(productName);
		productVO.setProductPrice(productPrice);
		productVO.setProductRating(productRating);
		productVO.setProductRunningTime(productRunningTime);
		productVO.setProductAppearance(productAppearance);
		productVO.setThumbnail(originalFile);
		productVO.setPlaceName(placeName);
		productVO.setPlaceStreet(placeStreet);
		productVO.setPlaceLot(placeLot);
		productVO.setPlaceTel(placeTel);
		
		DateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
		java.util.Date utilStartDate = dateFormat.parse(productStartDate);
		java.util.Date utilEndDate = dateFormat.parse(productEndDate);
		
		Date startDate = new java.sql.Date(utilStartDate.getTime());
		Date endDate = new java.sql.Date(utilEndDate.getTime());
		
		productVO.setProductStartDate(startDate);
		productVO.setProductEndDate(endDate);

		String[] array = perform.split(" ");
		java.util.Date utilPerformDate = dateFormat.parse(array[0]);
		
		Date performanceDate = new java.sql.Date(utilPerformDate.getTime());
		int performanceRound = Integer.parseInt(array[1].replace("회차", ""));
		String performanceStart = array[2];
		
		System.out.println(productStartDate);
		System.out.println(utilStartDate);
		System.out.println(startDate);
		
		System.out.println(perform);
		System.out.println(array[0]);
		System.out.println(performanceDate);
		
		PerformVO performVO = new PerformVO();
		performVO.setPerformanceDate(performanceDate);
		performVO.setPerformanceRound(performanceRound);
		performVO.setPerformanceStart(performanceStart);

		adminService.addProduct(productVO, performVO);
		
		return mv;
	}
	
	@GetMapping("/admin/deleteProduct")
	public String deleteProduct(Model model, @RequestParam("productNo") int productNo) throws Exception {
		adminService.deleteProduct(productNo);
		return "admin/adminMenu";
	}
	
	@GetMapping("/admin/updateProduct")
	public String updateProduct(Model model, ProductVO vo, @RequestParam("productNo") int productNo) throws Exception {
		model.addAttribute("productContent", adminService.getProductContent(productNo));
		model.addAttribute("categoryList", adminService.getCategoryList());
		return "admin/updateProduct";
	}
	
	@PostMapping("/admin/updateProduct/data")
	public ModelAndView updateProductPost(Model model, 
			@RequestParam("productNo") int productNo,
			@RequestParam("category") String category,
			@RequestParam("productName") String productName,
			@RequestParam("productPrice") int productPrice,
			@RequestParam("productRating") int productRating,
			@RequestParam("productRunningTime") String productRunningTime,
			@RequestParam("productAppearance") String productAppearance,
			@RequestParam("productImage") MultipartFile productImage,
			@RequestParam("placeName") String placeName, 
			@RequestParam("placeStreet") String placeStreet, 
			@RequestParam("placeLot") String placeLot,			
			@RequestParam("placeTel") String placeTel,
			@RequestParam("productStartDate") String productStartDate,
			@RequestParam("productEndDate") String productEndDate) throws Exception {
		
		String originalFile = productImage.getOriginalFilename();
		String realFolder = "C:\\Users\\tgus7\\OneDrive\\문서\\Spring Workspace\\BBS\\src\\main\\webapp\\resources\\images\\"; //웹 애플리케이션상의 절대 경로
		File file = new File(realFolder + originalFile);
		productImage.transferTo(file);	
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		int categoryNo = Integer.parseInt(category);
		
		ProductVO productVO = new ProductVO();
		productVO.setProductNo(productNo);
		productVO.setCategoryNo(categoryNo);
		productVO.setProductName(productName);
		productVO.setProductPrice(productPrice);
		productVO.setProductRating(productRating);
		productVO.setProductRunningTime(productRunningTime);
		productVO.setProductAppearance(productAppearance);
		productVO.setThumbnail(originalFile);
		productVO.setPlaceName(placeName);
		productVO.setPlaceStreet(placeStreet);
		productVO.setPlaceLot(placeLot);
		productVO.setPlaceTel(placeTel);
		
		DateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
		java.util.Date utilStartDate = dateFormat.parse(productStartDate);
		java.util.Date utilEndDate = dateFormat.parse(productEndDate);
		
		Date startDate = new java.sql.Date(utilStartDate.getTime());
		Date endDate = new java.sql.Date(utilEndDate.getTime());
		
		productVO.setProductStartDate(startDate);
		productVO.setProductEndDate(endDate);
		
		adminService.updateProductPost(productVO);
		
		return mv;
	}
}