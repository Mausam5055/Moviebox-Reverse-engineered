package com.bytedance.sdk.component.Jcg.TKC;

import android.text.TextUtils;
import com.alibaba.sdk.android.oss.common.OSSConstants;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {
    /* JADX WARN: Code duplicated, block: B:10:0x0023 A[PHI: r1
  0x0023: PHI (r1v1 java.lang.String) = (r1v0 java.lang.String), (r1v3 java.lang.String) binds: [B:6:0x0010, B:8:0x001e] A[DONT_GENERATE, DONT_INLINE]] */
    public static boolean Sj(Map<String, String> map) {
        String str;
        if (map == null) {
            return false;
        }
        String str2 = "content-type";
        if (TextUtils.isEmpty(map.get("content-type"))) {
            str2 = HttpHeaders.CONTENT_TYPE;
            if (TextUtils.isEmpty(map.get(HttpHeaders.CONTENT_TYPE))) {
                str = "";
            } else {
                str = map.get(str2);
            }
        } else {
            str = map.get(str2);
        }
        return str.contains(OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE);
    }
}
