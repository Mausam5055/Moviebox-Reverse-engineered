package com.transsion.usercenter.tvlink;

import androidx.annotation.Keep;
import com.therouter.TheRouter;
import java.util.Iterator;

/* JADX INFO: loaded from: classes7.dex */
@Keep
public class TvDownloadWebLinkActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        if (obj instanceof TvDownloadWebLinkActivity) {
            TvDownloadWebLinkActivity tvDownloadWebLinkActivity = (TvDownloadWebLinkActivity) obj;
            Iterator it = TheRouter.g().iterator();
            while (it.hasNext()) {
                try {
                    Integer num = (Integer) ((bg.a) it.next()).a("int", tvDownloadWebLinkActivity, new com.therouter.router.b("int", "index", 0, "", "com.transsion.usercenter.tvlink.TvDownloadWebLinkActivity", "initialTabIndex", false, "No desc."));
                    if (num != null) {
                        tvDownloadWebLinkActivity.initialTabIndex = num.intValue();
                    }
                } catch (Exception e11) {
                    if (TheRouter.m()) {
                        e11.printStackTrace();
                    }
                }
            }
        }
    }
}
