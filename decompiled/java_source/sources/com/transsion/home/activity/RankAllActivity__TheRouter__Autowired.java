package com.transsion.home.activity;

import androidx.annotation.Keep;
import bg.a;
import com.therouter.TheRouter;
import com.therouter.router.b;

/* JADX INFO: loaded from: classes5.dex */
@Keep
public class RankAllActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        if (obj instanceof RankAllActivity) {
            RankAllActivity rankAllActivity = (RankAllActivity) obj;
            for (a aVar : TheRouter.g()) {
                try {
                    Integer num = (Integer) aVar.a("int", rankAllActivity, new b("int", "tabId", 0, "", "com.transsion.home.activity.RankAllActivity", "tabId", false, "No desc."));
                    if (num != null) {
                        rankAllActivity.tabId = num.intValue();
                    }
                } catch (Exception e11) {
                    if (TheRouter.m()) {
                        e11.printStackTrace();
                    }
                }
                try {
                    String str = (String) aVar.a("java.lang.String", rankAllActivity, new b("java.lang.String", "category", 0, "", "com.transsion.home.activity.RankAllActivity", "requestCategory", false, "No desc."));
                    if (str != null) {
                        rankAllActivity.requestCategory = str;
                    }
                } catch (Exception e12) {
                    if (TheRouter.m()) {
                        e12.printStackTrace();
                    }
                }
                try {
                    String str2 = (String) aVar.a("java.lang.String", rankAllActivity, new b("java.lang.String", "defaultCategory", 0, "", "com.transsion.home.activity.RankAllActivity", "defaultCategory", false, "No desc."));
                    if (str2 != null) {
                        rankAllActivity.defaultCategory = str2;
                    }
                } catch (Exception e13) {
                    if (TheRouter.m()) {
                        e13.printStackTrace();
                    }
                }
                try {
                    String str3 = (String) aVar.a("java.lang.String", rankAllActivity, new b("java.lang.String", "rankingListId", 0, "", "com.transsion.home.activity.RankAllActivity", "rankingListId", false, "No desc."));
                    if (str3 != null) {
                        rankAllActivity.rankingListId = str3;
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
