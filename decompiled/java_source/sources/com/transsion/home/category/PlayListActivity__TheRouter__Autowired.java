package com.transsion.home.category;

import androidx.annotation.Keep;
import bg.a;
import com.therouter.TheRouter;
import com.therouter.router.b;

/* JADX INFO: loaded from: classes5.dex */
@Keep
public class PlayListActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        if (obj instanceof PlayListActivity) {
            PlayListActivity playListActivity = (PlayListActivity) obj;
            for (a aVar : TheRouter.g()) {
                try {
                    String str = (String) aVar.a("java.lang.String", playListActivity, new b("java.lang.String", "category", 0, "", "com.transsion.home.category.PlayListActivity", "category", false, "No desc."));
                    if (str != null) {
                        playListActivity.category = str;
                    }
                } catch (Exception e11) {
                    if (TheRouter.m()) {
                        e11.printStackTrace();
                    }
                }
                try {
                    String str2 = (String) aVar.a("java.lang.String", playListActivity, new b("java.lang.String", "label", 0, "", "com.transsion.home.category.PlayListActivity", "label", false, "No desc."));
                    if (str2 != null) {
                        playListActivity.label = str2;
                    }
                } catch (Exception e12) {
                    if (TheRouter.m()) {
                        e12.printStackTrace();
                    }
                }
                try {
                    String str3 = (String) aVar.a("java.lang.String", playListActivity, new b("java.lang.String", "recType", 0, "", "com.transsion.home.category.PlayListActivity", "recType", false, "No desc."));
                    if (str3 != null) {
                        playListActivity.recType = str3;
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
