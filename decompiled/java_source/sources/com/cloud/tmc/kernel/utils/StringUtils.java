package com.cloud.tmc.kernel.utils;

import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class StringUtils {
    public static <T> String array2String(T[] tArr) {
        StringBuilder sb2 = new StringBuilder();
        if (tArr != null && tArr.length > 0) {
            sb2.append("[");
            for (T t11 : tArr) {
                if (t11 != null) {
                    sb2.append(t11.toString());
                    sb2.append(",");
                }
            }
            int iLastIndexOf = sb2.lastIndexOf(",");
            if (-1 != iLastIndexOf) {
                sb2.deleteCharAt(iLastIndexOf);
            }
            sb2.append("]");
        }
        return sb2.toString();
    }

    public static <T> String collection2String(Collection<T> collection) {
        StringBuilder sb2 = new StringBuilder();
        if (collection != null && !collection.isEmpty()) {
            sb2.append("{");
            for (T t11 : collection) {
                if (t11 != null) {
                    sb2.append(t11.toString());
                    sb2.append(",");
                }
            }
            int iLastIndexOf = sb2.lastIndexOf(",");
            if (-1 != iLastIndexOf) {
                sb2.deleteCharAt(iLastIndexOf);
            }
            sb2.append("}");
        }
        return sb2.toString();
    }

    public static boolean isEmpty(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static <K, V> String map2String(Map<K, V> map) {
        return (map == null || map.isEmpty()) ? "" : collection2String(map.entrySet());
    }
}
