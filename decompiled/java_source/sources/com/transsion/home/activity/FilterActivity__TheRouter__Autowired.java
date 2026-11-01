package com.transsion.home.activity;

import androidx.annotation.Keep;
import bg.a;
import com.therouter.TheRouter;
import com.therouter.router.b;

/* JADX INFO: loaded from: classes5.dex */
@Keep
public class FilterActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        if (obj instanceof FilterActivity) {
            FilterActivity filterActivity = (FilterActivity) obj;
            for (a aVar : TheRouter.g()) {
                try {
                    Integer num = (Integer) aVar.a("int", filterActivity, new b("int", "tabId", 0, "", "com.transsion.home.activity.FilterActivity", "tabId", false, "No desc."));
                    if (num != null) {
                        filterActivity.tabId = num.intValue();
                    }
                } catch (Exception e11) {
                    if (TheRouter.m()) {
                        e11.printStackTrace();
                    }
                }
                try {
                    String str = (String) aVar.a("java.lang.String", filterActivity, new b("java.lang.String", "filterType", 0, "", "com.transsion.home.activity.FilterActivity", "mFilterJson", false, "No desc."));
                    if (str != null) {
                        filterActivity.mFilterJson = str;
                    }
                } catch (Exception e12) {
                    if (TheRouter.m()) {
                        e12.printStackTrace();
                    }
                }
                try {
                    String str2 = (String) aVar.a("java.lang.String", filterActivity, new b("java.lang.String", "tabCode", 0, "", "com.transsion.home.activity.FilterActivity", "tabCode", false, "No desc."));
                    if (str2 != null) {
                        filterActivity.tabCode = str2;
                    }
                } catch (Exception e13) {
                    if (TheRouter.m()) {
                        e13.printStackTrace();
                    }
                }
                try {
                    String str3 = (String) aVar.a("java.lang.String", filterActivity, new b("java.lang.String", "videoType", 0, "", "com.transsion.home.activity.FilterActivity", "videoType", false, "No desc."));
                    if (str3 != null) {
                        filterActivity.videoType = str3;
                    }
                } catch (Exception e14) {
                    if (TheRouter.m()) {
                        e14.printStackTrace();
                    }
                }
            }
        }
    }
}
