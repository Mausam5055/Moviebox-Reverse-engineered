package com.transsion.home.activity;

import androidx.annotation.Keep;
import bg.a;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.b;

/* JADX INFO: loaded from: classes5.dex */
@Keep
public class OperateActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        if (obj instanceof OperateActivity) {
            OperateActivity operateActivity = (OperateActivity) obj;
            for (a aVar : TheRouter.g()) {
                try {
                    Integer num = (Integer) aVar.a("int", operateActivity, new b("int", "tabId", 0, "", "com.transsion.home.activity.OperateActivity", "tabId", false, "No desc."));
                    if (num != null) {
                        operateActivity.tabId = num.intValue();
                    }
                } catch (Exception e11) {
                    if (TheRouter.m()) {
                        e11.printStackTrace();
                    }
                }
                try {
                    String str = (String) aVar.a("java.lang.String", operateActivity, new b("java.lang.String", "tabCode", 0, "", "com.transsion.home.activity.OperateActivity", "tabCode", false, "No desc."));
                    if (str != null) {
                        operateActivity.tabCode = str;
                    }
                } catch (Exception e12) {
                    if (TheRouter.m()) {
                        e12.printStackTrace();
                    }
                }
                try {
                    String str2 = (String) aVar.a("java.lang.String", operateActivity, new b("java.lang.String", CampaignEx.JSON_KEY_TITLE, 0, "", "com.transsion.home.activity.OperateActivity", CampaignEx.JSON_KEY_TITLE, false, "No desc."));
                    if (str2 != null) {
                        operateActivity.com.mbridge.msdk.foundation.entity.CampaignEx.JSON_KEY_TITLE java.lang.String = str2;
                    }
                } catch (Exception e13) {
                    if (TheRouter.m()) {
                        e13.printStackTrace();
                    }
                }
            }
        }
    }
}
