package com.transsion.subroom.activity;

import androidx.annotation.Keep;
import com.therouter.TheRouter;

/* JADX INFO: loaded from: classes6.dex */
@Keep
public class MainActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        if (obj instanceof MainActivity) {
            MainActivity mainActivity = (MainActivity) obj;
            for (bg.a aVar : TheRouter.g()) {
                try {
                    Integer num = (Integer) aVar.a("int", mainActivity, new com.therouter.router.b("int", "secondTabIndex", 0, "", "com.transsion.subroom.activity.MainActivity", "mSecondTabIndex", false, "No desc."));
                    if (num != null) {
                        mainActivity.mSecondTabIndex = num.intValue();
                    }
                } catch (Exception e11) {
                    if (TheRouter.m()) {
                        e11.printStackTrace();
                    }
                }
                try {
                    Integer num2 = (Integer) aVar.a("int", mainActivity, new com.therouter.router.b("int", "tabIndex", 0, "", "com.transsion.subroom.activity.MainActivity", "mInitTabId", false, "No desc."));
                    if (num2 != null) {
                        mainActivity.mInitTabId = num2.intValue();
                    }
                } catch (Exception e12) {
                    if (TheRouter.m()) {
                        e12.printStackTrace();
                    }
                }
                try {
                    String str = (String) aVar.a("java.lang.String", mainActivity, new com.therouter.router.b("java.lang.String", "bottomTab", 0, "", "com.transsion.subroom.activity.MainActivity", "mBottomTabCode", false, "No desc."));
                    if (str != null) {
                        mainActivity.mBottomTabCode = str;
                    }
                } catch (Exception e13) {
                    if (TheRouter.m()) {
                        e13.printStackTrace();
                    }
                }
                try {
                    String str2 = (String) aVar.a("java.lang.String", mainActivity, new com.therouter.router.b("java.lang.String", "topTab", 0, "", "com.transsion.subroom.activity.MainActivity", "mTopTabCode", false, "No desc."));
                    if (str2 != null) {
                        mainActivity.mTopTabCode = str2;
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
