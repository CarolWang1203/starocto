package com.starocto.dao.db.model;

import lombok.Data;

import java.util.Date;

/**
 * Author : zhangjianxun@meituan.com
 * Date   : 2018/10/3
 * Time   : 17:02
 * ---------------------------------------
 * Desc   : 消息（一条微博）
 */
@Data
public class BlogInfoDO {
    private int userId;
    private long blogId;
    /**
     * 1:仅文字 2:图片文字 3:视频文字
     */
    private int blogType;
    private String blogContentText;
    private String blogImageUrl;
    private String blogVideoUrl;
    private boolean blogIsOriginal;
    private long blogOriginalId;
    private Date blogPlusTime;
}
