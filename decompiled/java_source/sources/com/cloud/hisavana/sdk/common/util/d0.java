package com.cloud.hisavana.sdk.common.util;

import android.text.TextUtils;
import com.cloud.hisavana.sdk.N0;
import com.cloud.hisavana.sdk.e4;

/* JADX INFO: loaded from: classes3.dex */
public class d0 {
    public static int a(int i11, String str, String str2) {
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            return 0;
        }
        boolean zY = N0.y(com.cloud.sdk.commonutil.util.e.a(), str, str2);
        if (i11 == 2 && zY) {
            e4.b().d(com.cloud.sdk.commonutil.util.c.LOAD_TAG, "app is exist,not fill");
            return 1;
        }
        if (i11 != 3 || zY) {
            return 0;
        }
        e4.b().d(com.cloud.sdk.commonutil.util.c.LOAD_TAG, "app is not exist,not fill");
        return 2;
    }
}
