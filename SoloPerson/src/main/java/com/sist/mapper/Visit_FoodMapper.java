package com.sist.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import com.sist.vo.*;

import java.util.*;
public interface Visit_FoodMapper {

	@Select("SELECT * FROM Visit")
	public List<VisitVO> visitAllData();
	
	//Visit ��ȸ�� ����
	@Update("UPDATE visit SET "
			 +"hit=hit+1 "
			 +"WHERE no=#{no}")
	public void hitIncrement(int no);
	
	@Select("SELECT * FROM visit WHERE no=#{no}")
	public VisitVO visitDetailData(int no);
	
	
	//food
	@Select("SELECT * FROM food")
	public List<FoodVO> foodAllData();
	
	//Food ��ȸ�� ����
	@Update("UPDATE food SET "
			 +"hit=hit+1 "
			 +"WHERE no=#{no}")
	public void foodHitIncrement(int no);
	
	@Select("SELECT * FROM food WHERE no=#{fno}")
	public FoodVO foodDetailData(int fno);
	
	//visitReply================================================
	// ��� 
		@Select("SELECT no,name,msg,TO_CHAR(regdate,'YYYY-MM-DD HH24:MI:SS') as db_day,group_tab "
			   +"FROM visitReply WHERE vno=#{vno} "
			   +"ORDER BY group_id DESC,group_step ASC")
		public List<VisitReplyVO> replyAllData(int vno);
		
		// �ڵ� ������ȣ�� ���鶧 ��� 
		@SelectKey(keyProperty="no",before=true,resultType=int.class,
				   statement="SELECT NVL(MAX(no)+1,1) as no FROM visitReply")
		@Insert("INSERT INTO visitReply VALUES(#{no},#{vno},#{name},#{pwd},"
			   +"#{msg},SYSDATE,(SELECT NVL(MAX(group_id)+1,1) FROM visitReply),"
			   +"0,0,0,0)")
		public void replyInsert(VisitReplyVO vo);
		
		// ������ group_id,group_step,group_tab
		/*                          
		 *                      no  group_id  group_step  group_tab root depth
		 *     aaaa             1      1          0          0       0     2
		 *      =>OOOO          7      1          1          1       1     0
		 *      =>KKKK          6      1          2          1       1     0
		 *      =>bbbb          2      1          3          1       1     1
		 *       =>ccccc        3      1          4          2       2     0
		 *      =>FFFF          5      1          5          1       1     0
		 *      
		 *     dddd             4      2          0          0       0     0
		 *     
		 *     
		 */
		
		@Select("SELECT group_id,group_step,group_tab "
			   +"FROM visitReply "
			   +"WHERE no=#{no}")
		public VisitReplyVO replyParentData(int no);
		
		// step���� (�ٽ�)
		@Update("UPDATE visitReply SET "
			   +"group_step=group_step+1 "
			   +"WHERE group_id=#{group_id} AND group_step>#{group_step}")
		public void replyStepIncrement(VisitReplyVO vo);
		// #{} ==> ������ (VO,Map)
		
		// insert 
		@SelectKey(keyProperty="no",before=true,resultType=int.class,
				   statement="SELECT NVL(MAX(no)+1,1) as no FROM visitReply")
		@Insert("INSERT INTO visitReply VALUES(#{no},#{vno},#{name},#{pwd},"
			   +"#{msg},SYSDATE,#{group_id},"
			   +"#{group_step},#{group_tab},#{root},0)")
		public void replyReInsert(VisitReplyVO vo);
		// depth���� 
		
		@Update("UPDATE visitReply SET "
			   +"depth=depth+1 "
			   +"WHERE no=#{no}")
		public void replyDepthIncrement(int no);
		
		// ���� �ϱ� 
		// 1. ��й�ȣ
		@Select("SELECT pwd FROM visitReply "
			   +"WHERE no=#{no}")
		public String replyGetPwd(int no);
		// 2. ���� 
		@Update("UPDATE visitReply SET "
			   +"name=#{name},msg=#{msg} "
			   +"WHERE no=#{no}")
		public void replyUpdate(VisitReplyVO vo);
		
		// ���� �ϱ�  => Transaction
		// 1. ��й�ȣ
		// depth ==> 0 ����  0�� �ƴϸ� => �����ڰ� ������ ��� 
		@Select("SELECT depth,root FROM visitReply "
			   +"WHERE no=#{no}")
		public VisitReplyVO replyDeleteData(int no);
		
		// depth=0
		@Delete("DELETE FROM visitReply "
			   +"WHERE no=#{no}")
		public void replyDelete(int no);
		
		// depth!=0
		@Update("UPDATE visitReply SET "
			   +"msg=#{msg} "
			   +"WHERE no=#{no}")
		public void replyDeleteUpdate(VisitReplyVO vo);
		// depth�� ���� 
		@Update("UPDATE visitReply SET "
			   +"depth=depth-1 "
			   +"WHERE no=#{no}")
		public void replyDepthDecrement(int no);
		
		
//		FoodReply===========================================================================

		@Select("SELECT no,name,msg,TO_CHAR(regdate,'YYYY-MM-DD HH24:MI:SS') as db_day,group_tab "
				   +"FROM foodReply WHERE vno=#{vno} "
				   +"ORDER BY group_id DESC,group_step ASC")
			public List<FoodReplyVO> foodReplyAllData(int fno);
			
			// �ڵ� ������ȣ�� ���鶧 ��� 
			@SelectKey(keyProperty="no",before=true,resultType=int.class,
					   statement="SELECT NVL(MAX(no)+1,1) as no FROM foodReply")
			@Insert("INSERT INTO foodReply VALUES(#{no},#{vno},#{name},#{pwd},"
				   +"#{msg},SYSDATE,(SELECT NVL(MAX(group_id)+1,1) FROM foodReply),"
				   +"0,0,0,0)")
			public void foodReplyInsert(FoodReplyVO vo);
			
			// ������ group_id,group_step,group_tab
			/*                          
			 *                      no  group_id  group_step  group_tab root depth
			 *     aaaa             1      1          0          0       0     2
			 *      =>OOOO          7      1          1          1       1     0
			 *      =>KKKK          6      1          2          1       1     0
			 *      =>bbbb          2      1          3          1       1     1
			 *       =>ccccc        3      1          4          2       2     0
			 *      =>FFFF          5      1          5          1       1     0
			 *      
			 *     dddd             4      2          0          0       0     0
			 *     
			 *     
			 */
			
			@Select("SELECT group_id,group_step,group_tab "
				   +"FROM foodReply "
				   +"WHERE no=#{no}")
			public FoodReplyVO foodReplyParentData(int no);
			
			// step���� (�ٽ�)
			@Update("UPDATE foodReply SET "
				   +"group_step=group_step+1 "
				   +"WHERE group_id=#{group_id} AND group_step>#{group_step}")
			public void foodReplyStepIncrement(FoodReplyVO vo);
			// #{} ==> ������ (VO,Map)
			
			// insert 
			@SelectKey(keyProperty="no",before=true,resultType=int.class,
					   statement="SELECT NVL(MAX(no)+1,1) as no FROM foodReply")
			@Insert("INSERT INTO foodReply VALUES(#{no},#{vno},#{name},#{pwd},"
				   +"#{msg},SYSDATE,#{group_id},"
				   +"#{group_step},#{group_tab},#{root},0)")
			public void foodReplyReInsert(FoodReplyVO vo);
			// depth���� 
			
			@Update("UPDATE foodReply SET "
				   +"depth=depth+1 "
				   +"WHERE no=#{no}")
			public void foodReplyDepthIncrement(int no);
			
			// ���� �ϱ� 
			// 1. ��й�ȣ
			@Select("SELECT pwd FROM foodReply "
				   +"WHERE no=#{no}")
			public String foodReplyGetPwd(int no);
			// 2. ���� 
			@Update("UPDATE foodReply SET "
				   +"name=#{name},msg=#{msg} "
				   +"WHERE no=#{no}")
			public void foodReplyUpdate(FoodReplyVO vo);
			
			// ���� �ϱ�  => Transaction
			// 1. ��й�ȣ
			// depth ==> 0 ����  0�� �ƴϸ� => �����ڰ� ������ ��� 
			@Select("SELECT depth,root FROM foodReply "
				   +"WHERE no=#{no}")
			public FoodReplyVO foodReplyDeleteData(int no);
			
			// depth=0
			@Delete("DELETE FROM foodReply "
				   +"WHERE no=#{no}")
			public void foodReplyDelete(int no);
			
			// depth!=0
			@Update("UPDATE foodReply SET "
				   +"msg=#{msg} "
				   +"WHERE no=#{no}")
			public void foodReplyDeleteUpdate(FoodReplyVO vo);
			// depth�� ���� 
			@Update("UPDATE foodReply SET "
				   +"depth=depth-1 "
				   +"WHERE no=#{no}")
			public void foodReplyDepthDecrement(int no);
}
