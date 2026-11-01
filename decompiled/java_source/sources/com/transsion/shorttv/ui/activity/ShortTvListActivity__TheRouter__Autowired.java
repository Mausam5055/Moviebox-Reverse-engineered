package com.transsion.shorttv.ui.activity;

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
                    Boolean bool = (Boolean) aVar.a("boolean", shortTvListActivity, new b("boolean", "historyFist", 0, "", "com.transsion.shorttv.ui.activity.ShortTvListActivity", "isHistoryFirst", false, "No desc."));
                    if (bool != null) {
                        shortTvListActivity.isHistoryFirst = bool.booleanValue();
                    }
                } catch (Exception e11) {
                    if (TheRouter.m()) {
                        e11.printStackTrace();
                    }
                }
                try {
                    Integer num = (Integer) aVar.a("int", shortTvListActivity, new b("int", "ep", 0, "", "com.transsion.shorttv.ui.activity.ShortTvListActivity", "ep", false, "No desc."));
                    if (num != null) {
                        shortTvListActivity.ep = num.intValue();
                    }
                } catch (Exception e12) {
                    if (TheRouter.m()) {
                        e12.printStackTrace();
                    }
                }
                try {
                    String str = (String) aVar.a("java.lang.String", shortTvListActivity, new b("java.lang.String", "id", 0, "", "com.transsion.shorttv.ui.activity.ShortTvListActivity", "subjectId", false, "No desc."));
                    if (str != null) {
                        shortTvListActivity.subjectId = str;
                    }
                } catch (Exception e13) {
                    if (TheRouter.m()) {
                        e13.printStackTrace();
                    }
                }
                try {
                    String str2 = (String) aVar.a("java.lang.String", shortTvListActivity, new b("java.lang.String", "ops", 0, "", "com.transsion.shorttv.ui.activity.ShortTvListActivity", "ops", false, "No desc."));
                    if (str2 != null) {
                        shortTvListActivity.ops = str2;
                    }
                } catch (Exception e14) {
                    if (TheRouter.m()) {
                        e14.printStackTrace();
                    }
                }
                try {
                    Long l11 = (Long) aVar.a("long", shortTvListActivity, new b("long", "ms", 0, "", "com.transsion.shorttv.ui.activity.ShortTvListActivity", "ms", false, "No desc."));
                    if (l11 != null) {
                        shortTvListActivity.ms = l11.longValue();
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
