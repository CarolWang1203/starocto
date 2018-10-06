package com.starocto.dao.common.utils;

import com.google.common.collect.Maps;
import org.springframework.cglib.beans.BeanCopier;

import java.util.Map;

/**
 * Author : zhangjianxun@meituan.com
 * Date   : 2018/10/4
 * Time   : 17:36
 * ---------------------------------------
 * Desc   : 美团
 */
public class BeanUtils {
    static final Map<String, BeanCopier> BEAN_COPIERS = Maps.newConcurrentMap();

    private static String genKey(Class<?> srcClazz, Class<?> destClazz) {
        return srcClazz.getName() + destClazz.getName();
    }

    public static <T> T copyProperties(T dest, Object orig) {
        if(null == dest || null == orig){
            return null;
        }

        String key = genKey(orig.getClass(), dest.getClass());
        BeanCopier copier = BEAN_COPIERS.get(key);
        //这里对线程安全问题不做特殊处理 一旦多线程同时创建相同的copier 先创建的使用完后就可以被gc掉了
        if (null == copier) {
            copier = BeanCopier.create(orig.getClass(), dest.getClass(), false);
            BEAN_COPIERS.put(key, copier);
        }
        copier.copy(orig, dest, null);
        return dest;
    }
}
