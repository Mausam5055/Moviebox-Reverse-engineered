package com.mbridge.msdk.out;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.same.net.Aa;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes5.dex */
public class ChannelManager {
    public static void setChannel(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            Aa aa2 = new Aa();
            Method declaredMethod = Aa.class.getDeclaredMethod(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, String.class);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(aa2, str);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }
}
