package com.transsnet.downloader.ugc.activity;

import androidx.annotation.Keep;
import bg.a;
import com.therouter.TheRouter;
import com.therouter.router.b;

/* JADX INFO: loaded from: classes7.dex */
@Keep
public class UGCMyDownloadsActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        if (obj instanceof UGCMyDownloadsActivity) {
            UGCMyDownloadsActivity uGCMyDownloadsActivity = (UGCMyDownloadsActivity) obj;
            for (a aVar : TheRouter.g()) {
                try {
                    Integer num = (Integer) aVar.a("int", uGCMyDownloadsActivity, new b("int", "main_tab_index", 0, "", "com.transsnet.downloader.ugc.activity.UGCMyDownloadsActivity", "mainTabIndex", false, "No desc."));
                    if (num != null) {
                        uGCMyDownloadsActivity.mainTabIndex = num.intValue();
                    }
                } catch (Exception e11) {
                    if (TheRouter.m()) {
                        e11.printStackTrace();
                    }
                }
                try {
                    String str = (String) aVar.a("java.lang.String", uGCMyDownloadsActivity, new b("java.lang.String", "sub_tab_title", 0, "", "com.transsnet.downloader.ugc.activity.UGCMyDownloadsActivity", "subTabTitle", false, "No desc."));
                    if (str != null) {
                        uGCMyDownloadsActivity.subTabTitle = str;
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
