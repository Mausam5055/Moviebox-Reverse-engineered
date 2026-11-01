package com.cloud.tmc.integration.utils;

import android.content.Context;
import androidx.annotation.NonNull;
import dalvik.system.DexFile;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class ClassUtils {
    public static Map<String, String> scan(Context context, String str) {
        return scan(context, str, ".*\\$.*", "");
    }

    public static Map<String, String> scan(Context context, String str, @NonNull String str2) {
        return scan(context, str, str2, "");
    }

    public static Map<String, String> scan(Context context, String str, @NonNull String str2, @NonNull String str3) {
        HashMap map = new HashMap();
        try {
            Enumeration<String> enumerationEntries = new DexFile(context.getPackageCodePath()).entries();
            while (enumerationEntries.hasMoreElements()) {
                String strNextElement = enumerationEntries.nextElement();
                if (strNextElement.contains(str) && !strNextElement.matches(str2)) {
                    if ("".equals(str3)) {
                        map.put(strNextElement.substring(strNextElement.lastIndexOf(".") + 1, strNextElement.length()), strNextElement);
                    } else {
                        map.put(strNextElement.substring(strNextElement.lastIndexOf(".") + 1, strNextElement.length() - str3.length()), strNextElement);
                    }
                }
            }
        } catch (IOException e11) {
            e11.printStackTrace();
        }
        return map;
    }
}
