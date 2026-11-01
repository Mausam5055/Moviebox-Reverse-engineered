package com.transsnet.downloader.activity;

import androidx.annotation.Keep;
import com.therouter.TheRouter;

/* JADX INFO: loaded from: classes7.dex */
@Keep
public class DownloadPanelActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        if (obj instanceof DownloadPanelActivity) {
            DownloadPanelActivity downloadPanelActivity = (DownloadPanelActivity) obj;
            for (bg.a aVar : TheRouter.g()) {
                try {
                    Integer num = (Integer) aVar.a("int", downloadPanelActivity, new com.therouter.router.b("int", "extra_page_index", 0, "", "com.transsnet.downloader.activity.DownloadPanelActivity", "index", false, "No desc."));
                    if (num != null) {
                        downloadPanelActivity.index = num.intValue();
                    }
                } catch (Exception e11) {
                    if (TheRouter.m()) {
                        e11.printStackTrace();
                    }
                }
                try {
                    String str = (String) aVar.a("java.lang.String", downloadPanelActivity, new com.therouter.router.b("java.lang.String", "extra_target_resource_id", 0, "", "com.transsnet.downloader.activity.DownloadPanelActivity", "focusResourceId", false, "No desc."));
                    if (str != null) {
                        downloadPanelActivity.focusResourceId = str;
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
