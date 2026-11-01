package com.transsion.payment.lib.strategy.ui;

import androidx.annotation.Keep;
import bg.a;
import com.therouter.TheRouter;
import com.therouter.router.b;
import com.transsion.web.api.WebConstants;

/* JADX INFO: loaded from: classes6.dex */
@Keep
public class PayWebActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        if (obj instanceof PayWebActivity) {
            PayWebActivity payWebActivity = (PayWebActivity) obj;
            for (a aVar : TheRouter.g()) {
                try {
                    String str = (String) aVar.a("java.lang.String", payWebActivity, new b("java.lang.String", WebConstants.PAGE_FROM, 0, "", "com.transsion.payment.lib.strategy.ui.PayWebActivity", "pageFrom", false, "No desc."));
                    if (str != null) {
                        payWebActivity.pageFrom = str;
                    }
                } catch (Exception e11) {
                    if (TheRouter.m()) {
                        e11.printStackTrace();
                    }
                }
                try {
                    String str2 = (String) aVar.a("java.lang.String", payWebActivity, new b("java.lang.String", "url", 0, "", "com.transsion.payment.lib.strategy.ui.PayWebActivity", "url", false, "No desc."));
                    if (str2 != null) {
                        payWebActivity.url = str2;
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
