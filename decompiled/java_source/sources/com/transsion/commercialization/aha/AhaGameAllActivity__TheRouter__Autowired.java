package com.transsion.commercialization.aha;

import androidx.annotation.Keep;
import com.therouter.TheRouter;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
@Keep
public class AhaGameAllActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        if (obj instanceof AhaGameAllActivity) {
            AhaGameAllActivity ahaGameAllActivity = (AhaGameAllActivity) obj;
            Iterator it = TheRouter.g().iterator();
            while (it.hasNext()) {
                try {
                    Boolean bool = (Boolean) ((bg.a) it.next()).a("boolean", ahaGameAllActivity, new com.therouter.router.b("boolean", "fromTask", 0, "", "com.transsion.commercialization.aha.AhaGameAllActivity", "fromTask", false, "No desc."));
                    if (bool != null) {
                        ahaGameAllActivity.fromTask = bool.booleanValue();
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
