package com.sist.mapper;
import java.util.*;

import org.apache.ibatis.annotations.Select;

import com.sist.dao.*;
import com.sist.vo.*;

public interface ConsumMapper {
	@Select("SELECT * FROM consum")
	public List<ConsumVO> consumAllData();
}
