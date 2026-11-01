package com.transsion.shorttv_pugc.ui.activity;

import androidx.annotation.Keep;
import bg.a;
import com.therouter.TheRouter;
import com.therouter.router.b;

/* JADX INFO: loaded from: classes6.dex */
@Keep
public class ShortTvListActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        if (obj instanceof ShortTvListActivity) {
            ShortTvListActivity shortTvListActivity = (ShortTvListActivity) obj;
            for (a aVar : TheRouter.g()) {
                try {
                    Boolean bool = (Boolean) aVar.a("boolean", shortTvListActivity, new b("boolean", "historyFist", 0, "", "com.transsion.shorttv_pugc.ui.activity.ShortTvListActivity", "isHistoryFirst", false, "No desc."));
                    if (bool != null) {
                        shortTvListActivity.isHistoryFirst = bool.booleanValue();
                    }
                } catch (Exception e11) {
                    if (TheRouter.m()) {
                        e11.printStackTrace();
                    }
                }
                try {
                    Boolean bool2 = (Boolean) aVar.a("boolean", shortTvListActivity, new b("boolean", "ugc_without_history", 0, "", "com.transsion.shorttv_pugc.ui.activity.ShortTvListActivity", "ugcWithoutHistory", false, "No desc."));
                    if (bool2 != null) {
                        shortTvListActivity.ugcWithoutHistory = bool2.booleanValue();
                    }
                } catch (Exception e12) {
                    if (TheRouter.m()) {
                        e12.printStackTrace();
                    }
                }
                try {
                    Integer num = (Integer) aVar.a("int", shortTvListActivity, new b("int", "ep", 0, "", "com.transsion.shorttv_pugc.ui.activity.ShortTvListActivity", "ep", false, "No desc."));
                    if (num != null) {
                        shortTvListActivity.ep = num.intValue();
                    }
                } catch (Exception e13) {
                    if (TheRouter.m()) {
                        e13.printStackTrace();
                    }
                }
                try {
                    String str = (String) aVar.a("java.lang.String", shortTvListActivity, new b("java.lang.String", "collectionId", 0, "", "com.transsion.shorttv_pugc.ui.activity.ShortTvListActivity", "collectId", false, "No desc."));
                    if (str != null) {
                        shortTvListActivity.collectId = str;
                    }
                } catch (Exception e14) {
                    if (TheRouter.m()) {
                        e14.printStackTrace();
                    }
                }
                try {
                    String str2 = (String) aVar.a("java.lang.String", shortTvListActivity, new b("java.lang.String", "fromOptId", 0, "", "com.transsion.shorttv_pugc.ui.activity.ShortTvListActivity", "fromOptId", false, "No desc."));
                    if (str2 != null) {
                        shortTvListActivity.fromOptId = str2;
                    }
                } catch (Exception e15) {
                    if (TheRouter.m()) {
                        e15.printStackTrace();
                    }
                }
                try {
                    String str3 = (String) aVar.a("java.lang.String", shortTvListActivity, new b("java.lang.String", "id", 0, "", "com.transsion.shorttv_pugc.ui.activity.ShortTvListActivity", "ugcVideoId", false, "No desc."));
                    if (str3 != null) {
                        shortTvListActivity.ugcVideoId = str3;
                    }
                } catch (Exception e16) {
                    if (TheRouter.m()) {
                        e16.printStackTrace();
                    }
                }
                try {
                    String str4 = (String) aVar.a("java.lang.String", shortTvListActivity, new b("java.lang.String", "ops", 0, "", "com.transsion.shorttv_pugc.ui.activity.ShortTvListActivity", "ops", false, "No desc."));
                    if (str4 != null) {
                        shortTvListActivity.ops = str4;
                    }
                } catch (Exception e17) {
                    if (TheRouter.m()) {
                        e17.printStackTrace();
                    }
                }
                try {
                    String str5 = (String) aVar.a("java.lang.String", shortTvListActivity, new b("java.lang.String", "subjectId", 0, "", "com.transsion.shorttv_pugc.ui.activity.ShortTvListActivity", "subjectId", false, "No desc."));
                    if (str5 != null) {
                        shortTvListActivity.subjectId = str5;
                    }
                } catch (Exception e18) {
                    if (TheRouter.m()) {
                        e18.printStackTrace();
                    }
                }
                try {
                    Long l11 = (Long) aVar.a("long", shortTvListActivity, new b("long", "ms", 0, "", "com.transsion.shorttv_pugc.ui.activity.ShortTvListActivity", "ms", false, "No desc."));
                    if (l11 != null) {
                        shortTvListActivity.ms = l11.longValue();
                    }
                } catch (Exception e19) {
                    if (TheRouter.m()) {
                        e19.printStackTrace();
                    }
                }
            }
        }
    }
}
