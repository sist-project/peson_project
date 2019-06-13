package com.sist.vo;
/*
 *    NO                                        NOT NULL NUMBER
 VNO                                                NUMBER
 NAME                                      NOT NULL VARCHAR2(20)
 PWD                                       NOT NULL VARCHAR2(10)
 MSG                                       NOT NULL CLOB
 REGDATE                                            DATE
 GROUP_ID                                           NUMBER
 GROUP_STEP                                         NUMBER
 GROUP_TAB                                          NUMBER
 ROOT                                               NUMBER
 DEPTH                                              NUMBER
 */
import java.util.*;

import lombok.Getter;
import lombok.Setter;
@Setter
@Getter
public class VisitReplyVO {
  private int no;
  private int vno;
  private String name;
  private String pwd;
  private String msg;
  private Date regdate;
  private String db_day;// TO_CHAR => ½Ã°£ 
  private int group_id;
  private int group_step;
  private int group_tab;
  private int root;
  private int depth; 
}









