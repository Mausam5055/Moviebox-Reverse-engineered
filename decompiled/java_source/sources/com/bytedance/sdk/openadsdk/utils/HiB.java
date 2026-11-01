package com.bytedance.sdk.openadsdk.utils;

import android.text.TextUtils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public class HiB {
    public static String Sj(String str) {
        if (!com.bytedance.sdk.component.utils.Zq.EjP() || TextUtils.isEmpty(str)) {
            return str;
        }
        com.bytedance.sdk.openadsdk.core.model.Dq dq2 = new com.bytedance.sdk.openadsdk.core.model.Dq(com.bytedance.sdk.openadsdk.core.uA.sP().Zq());
        StringBuilder sb2 = new StringBuilder(str);
        Iterator<String> it = dq2.sP().iterator();
        while (it.hasNext()) {
            if (sb2.toString().contains(it.next())) {
                if (sb2.toString().contains(UrlUtils.QUESTION_MARK)) {
                    sb2.append(UrlUtils.AND_MARK);
                    sb2.append(dq2.Sj());
                } else {
                    sb2.append(UrlUtils.QUESTION_MARK);
                    sb2.append(dq2.Sj());
                }
            }
        }
        return sb2.toString();
    }
}
