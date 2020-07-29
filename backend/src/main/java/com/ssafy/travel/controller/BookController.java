package com.ssafy.travel.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.travel.dto.Book;
import com.ssafy.travel.service.BookService;

import io.swagger.annotations.ApiOperation;

// http://localhost:8999/travel/swagger-ui.html
@RestController
@RequestMapping("/api/book")
public class BookController {
	private static final Logger logger = LoggerFactory.getLogger(BookController.class);
	private static final String SUCCESS = "success";
	private static final String FAIL = "fail";
	
	@Autowired
	private BookService bookService;
	
	@ApiOperation(value = "전체 or 특정 province와 city, month에 관한 모든 book의 정보를 최신순으로 반환한다.", response = List.class)
	@GetMapping("all/date")
	public ResponseEntity<List<Book>> getBookList(@RequestParam("province") String province, @RequestParam("city") String city, @RequestParam("month") int month) throws Exception {
		logger.debug("getBookList - 호출");
		return new ResponseEntity<List<Book>>(bookService.getBookList(province, city, month), HttpStatus.OK);
	}
	
	@ApiOperation(value = "전체 or 특정 province와 city에 관한 모든 book의 정보를 평점순으로 반환한다.", response = List.class)
	@GetMapping("all/score")
	public ResponseEntity<List<Book>> getBookListByScore(@RequestParam("province") String province, @RequestParam("city") String city) throws Exception {
		logger.debug("getBookListByScore - 호출");
		return new ResponseEntity<List<Book>>(bookService.getBookListByScore(province, city), HttpStatus.OK);
	}
	
    @ApiOperation(value = "book번호에 해당하는 book의 정보를 반환한다.", response = Book.class)    
	@GetMapping("{bookno}")
	public ResponseEntity<Book> getBookDetail(@PathVariable int bookno) {
		logger.debug("getBookDetail - 호출");
		return new ResponseEntity<Book>(bookService.getBookDetail(bookno), HttpStatus.OK);
	}

    @ApiOperation(value = "새로운 book 정보를 입력한다. 그리고 DB입력 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@PostMapping
	public ResponseEntity<String> registBook(@RequestBody Book book) {
		logger.debug("registBook - 호출");
		if (bookService.registBook(book)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}

    @ApiOperation(value = "book번호에 해당하는 book의 정보를 수정한다. 그리고 DB수정 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@PutMapping("{bookno}")
	public ResponseEntity<String> modifyBook(@RequestBody Book book) {
		logger.debug("modifyBook - 호출");
		logger.debug("" + book);
		
		if (bookService.modifyBook(book)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}

    @ApiOperation(value = "book번호에 해당하는 book의 정보를 삭제한다. 그리고 DB삭제 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@DeleteMapping("{bookno}")
	public ResponseEntity<String> deleteBook(@PathVariable int bookno) {
		logger.debug("deleteBook - 호출");
		if (bookService.deleteBook(bookno)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}
}
