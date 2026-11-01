package com.transsion.push.utils;

import android.text.TextUtils;
import com.transsion.push.bean.ConfigInfo;
import com.transsion.push.config.PushRepository;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class f0 {
    public static boolean a(String str) {
        ConfigInfo.Whitelist whiteList;
        List<ConfigInfo.Apps> list;
        if (!TextUtils.isEmpty(str) && (whiteList = PushRepository.getInstance().getWhiteList()) != null && (list = whiteList.apps) != null) {
            for (ConfigInfo.Apps apps : list) {
                if (apps != null && str.equals(apps.pkg)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static int b() {
        int i11;
        ConfigInfo.Whitelist whiteList = PushRepository.getInstance().getWhiteList();
        if (whiteList == null || (i11 = whiteList.version) <= 0) {
            return 0;
        }
        return i11;
    }
}
