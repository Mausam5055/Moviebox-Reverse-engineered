package com.transsion.subroom.activity;

import androidx.annotation.Keep;
import com.therouter.TheRouter;

/* JADX INFO: loaded from: classes6.dex */
@Keep
public class NotAvailableActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        if (obj instanceof NotAvailableActivity) {
            NotAvailableActivity notAvailableActivity = (NotAvailableActivity) obj;
            for (bg.a aVar : TheRouter.g()) {
                try {
                    String str = (String) aVar.a("java.lang.String", notAvailableActivity, new com.therouter.router.b("java.lang.String", "message", 0, "", "com.transsion.subroom.activity.NotAvailableActivity", "htmlMessage", false, "No desc."));
                    if (str != null) {
                        notAvailableActivity.htmlMessage = str;
                    }
                } catch (Exception e11) {
                    if (TheRouter.m()) {
                        e11.printStackTrace();
                    }
                }
                try {
                    String str2 = (String) aVar.a("java.lang.String", notAvailableActivity, new com.therouter.router.b("java.lang.String", "reason", 0, "", "com.transsion.subroom.activity.NotAvailableActivity", "reason", false, "No desc."));
                    if (str2 != null) {
                        notAvailableActivity.reason = str2;
                    }
                } catch (Exception e12) {
                    if (TheRouter.m()) {
                        e12.printStackTrace();
                    }
                }
            }
        }
    }
}
