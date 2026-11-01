package com.transsion.web.activity;

import androidx.annotation.Keep;
import bg.a;
import com.therouter.TheRouter;
import com.therouter.router.b;
import com.transsion.web.api.WebConstants;

/* JADX INFO: loaded from: classes7.dex */
@Keep
public class WebActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        if (obj instanceof WebActivity) {
            WebActivity webActivity = (WebActivity) obj;
            for (a aVar : TheRouter.g()) {
                try {
                    Boolean bool = (Boolean) aVar.a("boolean", webActivity, new b("boolean", WebConstants.EXTERNAL_BROWSER, 0, "", "com.transsion.web.activity.WebActivity", WebConstants.EXTERNAL_BROWSER, false, "No desc."));
                    if (bool != null) {
                        webActivity.com.transsion.web.api.WebConstants.EXTERNAL_BROWSER java.lang.String = bool.booleanValue();
                    }
                } catch (Exception e11) {
                    if (TheRouter.m()) {
                        e11.printStackTrace();
                    }
                }
                try {
                    Boolean bool2 = (Boolean) aVar.a("boolean", webActivity, new b("boolean", WebConstants.FIELD_LOAD_URL_ONLY, 0, "", "com.transsion.web.activity.WebActivity", "loadUrlOnly", false, "No desc."));
                    if (bool2 != null) {
                        webActivity.loadUrlOnly = bool2.booleanValue();
                    }
                } catch (Exception e12) {
                    if (TheRouter.m()) {
                        e12.printStackTrace();
                    }
                }
                try {
                    String str = (String) aVar.a("java.lang.String", webActivity, new b("java.lang.String", "deeplink", 0, "", "com.transsion.web.activity.WebActivity", "deeplink", false, "No desc."));
                    if (str != null) {
                        webActivity.deeplink = str;
                    }
                } catch (Exception e13) {
                    if (TheRouter.m()) {
                        e13.printStackTrace();
                    }
                }
                try {
                    String str2 = (String) aVar.a("java.lang.String", webActivity, new b("java.lang.String", WebConstants.PAGE_FROM, 0, "", "com.transsion.web.activity.WebActivity", "pageFrom", false, "No desc."));
                    if (str2 != null) {
                        webActivity.pageFrom = str2;
                    }
                } catch (Exception e14) {
                    if (TheRouter.m()) {
                        e14.printStackTrace();
                    }
                }
                try {
                    String str3 = (String) aVar.a("java.lang.String", webActivity, new b("java.lang.String", "url", 0, "", "com.transsion.web.activity.WebActivity", "url", false, "No desc."));
                    if (str3 != null) {
                        webActivity.url = str3;
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
