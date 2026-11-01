package com.cloud.hisavana.sdk.common.util;

import android.text.TextUtils;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import com.cloud.hisavana.sdk.e4;
import com.hisavana.common.constant.ComConstants;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class h0 {
    public static boolean a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String lowerCase = str2.toLowerCase();
        if (d(lowerCase)) {
            for (String str3 : str.split("[^a-zA-Z0-9]+")) {
                if (TextUtils.equals(str3.toLowerCase(), lowerCase)) {
                    return true;
                }
            }
            return false;
        }
        if (!str.toLowerCase().trim().contains(lowerCase)) {
            return false;
        }
        e4.b().d("SensitiveUtil", "is sensitive ,word is: " + lowerCase);
        e4.b().d("SensitiveUtil", "is sensitive ,content is: " + str);
        return true;
    }

    public static boolean b(TaNativeInfo taNativeInfo) {
        return c(taNativeInfo.getTitle(), taNativeInfo.getDescription());
    }

    public static boolean c(String str, String str2) {
        if (!TextUtils.isEmpty(str2) || !TextUtils.isEmpty(str)) {
            Set<String> setL = j7.a.e().l(ComConstants.KEY_WORDS);
            e4.b().d("SensitiveUtil", "Sensitive keywords is:=" + setL);
            if (setL != null) {
                for (String str3 : setL) {
                    if (!TextUtils.isEmpty(str3) && (a(str2, str3) || a(str, str3))) {
                        return true;
                    }
                }
            }
        }
        e4.b().d("SensitiveUtil", "sensitive check is pass");
        return false;
    }

    public static boolean d(String str) {
        return str.matches("^[a-z0-9A-Z]+$");
    }
}
