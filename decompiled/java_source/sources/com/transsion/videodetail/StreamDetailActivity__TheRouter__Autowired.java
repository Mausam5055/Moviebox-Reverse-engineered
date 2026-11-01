package com.transsion.videodetail;

import androidx.annotation.Keep;
import com.therouter.TheRouter;
import java.util.Iterator;

/* JADX INFO: loaded from: classes7.dex */
@Keep
public class StreamDetailActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        if (obj instanceof StreamDetailActivity) {
            StreamDetailActivity streamDetailActivity = (StreamDetailActivity) obj;
            Iterator it = TheRouter.g().iterator();
            while (it.hasNext()) {
                try {
                    Long l11 = (Long) ((bg.a) it.next()).a("long", streamDetailActivity, new com.therouter.router.b("long", "ts_enter", 0, "", "com.transsion.videodetail.StreamDetailActivity", "tsEnter", false, "No desc."));
                    if (l11 != null) {
                        streamDetailActivity.tsEnter = l11.longValue();
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
