package com.transsion.shorttv._channel.ui.activity;

import androidx.annotation.Keep;
import bg.a;
import com.therouter.TheRouter;
import com.therouter.router.b;

/* JADX INFO: loaded from: classes6.dex */
@Keep
public class ShortTvCategoryActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        if (obj instanceof ShortTvCategoryActivity) {
            ShortTvCategoryActivity shortTvCategoryActivity = (ShortTvCategoryActivity) obj;
            for (a aVar : TheRouter.g()) {
                try {
                    String str = (String) aVar.a("java.lang.String", shortTvCategoryActivity, new b("java.lang.String", "categoryType", 0, "", "com.transsion.shorttv._channel.ui.activity.ShortTvCategoryActivity", "categoryType", false, "No desc."));
                    if (str != null) {
                        shortTvCategoryActivity.categoryType = str;
                    }
                } catch (Exception e11) {
                    if (TheRouter.m()) {
                        e11.printStackTrace();
                    }
                }
                try {
                    String str2 = (String) aVar.a("java.lang.String", shortTvCategoryActivity, new b("java.lang.String", "showType", 0, "", "com.transsion.shorttv._channel.ui.activity.ShortTvCategoryActivity", "showType", false, "No desc."));
                    if (str2 != null) {
                        shortTvCategoryActivity.showType = str2;
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
