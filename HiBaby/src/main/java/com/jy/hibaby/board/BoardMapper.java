package com.jy.hibaby.board;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.jy.hibaby.board.model.BoardVO;

@Mapper
public interface BoardMapper {
	List<BoardVO> selBoard();
}