package com.transsion.home.activity;

import androidx.annotation.Keep;
import bg.a;
import com.therouter.TheRouter;
import com.therouter.router.b;

/* JADX INFO: loaded from: classes5.dex */
@Keep
public class MovieFilterActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        if (obj instanceof MovieFilterActivity) {
            MovieFilterActivity movieFilterActivity = (MovieFilterActivity) obj;
            for (a aVar : TheRouter.g()) {
                try {
                    Boolean bool = (Boolean) aVar.a("boolean", movieFilterActivity, new b("boolean", "showViewPager", 0, "", "com.transsion.home.activity.MovieFilterActivity", "showViewPager", false, "No desc."));
                    if (bool != null) {
                        movieFilterActivity.showViewPager = bool.booleanValue();
                    }
                } catch (Exception e11) {
                    if (TheRouter.m()) {
                        e11.printStackTrace();
                    }
                }
                try {
                    Integer num = (Integer) aVar.a("int", movieFilterActivity, new b("int", "tabId", 0, "", "com.transsion.home.activity.MovieFilterActivity", "tabId", false, "No desc."));
                    if (num != null) {
                        movieFilterActivity.tabId = num.intValue();
                    }
                } catch (Exception e12) {
                    if (TheRouter.m()) {
                        e12.printStackTrace();
                    }
                }
                try {
                    String str = (String) aVar.a("java.lang.String", movieFilterActivity, new b("java.lang.String", "filterType", 0, "", "com.transsion.home.activity.MovieFilterActivity", "mFilterJson", false, "No desc."));
                    if (str != null) {
                        movieFilterActivity.mFilterJson = str;
                    }
                } catch (Exception e13) {
                    if (TheRouter.m()) {
                        e13.printStackTrace();
                    }
                }
                try {
                    String str2 = (String) aVar.a("java.lang.String", movieFilterActivity, new b("java.lang.String", "tabCode", 0, "", "com.transsion.home.activity.MovieFilterActivity", "tabCode", false, "No desc."));
                    if (str2 != null) {
                        movieFilterActivity.tabCode = str2;
                    }
                } catch (Exception e14) {
                    if (TheRouter.m()) {
                        e14.printStackTrace();
                    }
                }
            }
        }
    }
}
