package com.transsion.home.activity;

import androidx.annotation.Keep;
import bg.a;
import com.therouter.TheRouter;
import com.therouter.router.b;

/* JADX INFO: loaded from: classes5.dex */
@Keep
public class UGCFilmListActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        if (obj instanceof UGCFilmListActivity) {
            UGCFilmListActivity uGCFilmListActivity = (UGCFilmListActivity) obj;
            for (a aVar : TheRouter.g()) {
                try {
                    Integer num = (Integer) aVar.a("int", uGCFilmListActivity, new b("int", "tabId", 0, "", "com.transsion.home.activity.UGCFilmListActivity", "tabId", false, "No desc."));
                    if (num != null) {
                        uGCFilmListActivity.tabId = num.intValue();
                    }
                } catch (Exception e11) {
                    if (TheRouter.m()) {
                        e11.printStackTrace();
                    }
                }
                try {
                    String str = (String) aVar.a("java.lang.String", uGCFilmListActivity, new b("java.lang.String", "filmListTitle", 0, "", "com.transsion.home.activity.UGCFilmListActivity", "filmListTitle", false, "No desc."));
                    if (str != null) {
                        uGCFilmListActivity.filmListTitle = str;
                    }
                } catch (Exception e12) {
                    if (TheRouter.m()) {
                        e12.printStackTrace();
                    }
                }
                try {
                    String str2 = (String) aVar.a("java.lang.String", uGCFilmListActivity, new b("java.lang.String", "filmType", 0, "", "com.transsion.home.activity.UGCFilmListActivity", "filmType", false, "No desc."));
                    if (str2 != null) {
                        uGCFilmListActivity.filmType = str2;
                    }
                } catch (Exception e13) {
                    if (TheRouter.m()) {
                        e13.printStackTrace();
                    }
                }
                try {
                    String str3 = (String) aVar.a("java.lang.String", uGCFilmListActivity, new b("java.lang.String", "fromOptId", 0, "", "com.transsion.home.activity.UGCFilmListActivity", "fromOptId", false, "No desc."));
                    if (str3 != null) {
                        uGCFilmListActivity.fromOptId = str3;
                    }
                } catch (Exception e14) {
                    if (TheRouter.m()) {
                        e14.printStackTrace();
                    }
                }
                try {
                    String str4 = (String) aVar.a("java.lang.String", uGCFilmListActivity, new b("java.lang.String", "videoType", 0, "", "com.transsion.home.activity.UGCFilmListActivity", "videoType", false, "No desc."));
                    if (str4 != null) {
                        uGCFilmListActivity.videoType = str4;
                    }
                } catch (Exception e15) {
                    if (TheRouter.m()) {
                        e15.printStackTrace();
                    }
                }
            }
        }
    }
}
