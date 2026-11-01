package com.transsion.shorttv._channel.ui.activity;

import androidx.annotation.Keep;
import bg.a;
import com.therouter.TheRouter;
import com.therouter.router.b;

/* JADX INFO: loaded from: classes6.dex */
@Keep
public class ShortTvMovieFilterActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        if (obj instanceof ShortTvMovieFilterActivity) {
            ShortTvMovieFilterActivity shortTvMovieFilterActivity = (ShortTvMovieFilterActivity) obj;
            for (a aVar : TheRouter.g()) {
                try {
                    Boolean bool = (Boolean) aVar.a("boolean", shortTvMovieFilterActivity, new b("boolean", "showViewPager", 0, "", "com.transsion.shorttv._channel.ui.activity.ShortTvMovieFilterActivity", "showViewPager", false, "No desc."));
                    if (bool != null) {
                        shortTvMovieFilterActivity.showViewPager = bool.booleanValue();
                    }
                } catch (Exception e11) {
                    if (TheRouter.m()) {
                        e11.printStackTrace();
                    }
                }
                try {
                    Integer num = (Integer) aVar.a("int", shortTvMovieFilterActivity, new b("int", "tab_id", 0, "", "com.transsion.shorttv._channel.ui.activity.ShortTvMovieFilterActivity", "tabId", false, "No desc."));
                    if (num != null) {
                        shortTvMovieFilterActivity.tabId = num.intValue();
                    }
                } catch (Exception e12) {
                    if (TheRouter.m()) {
                        e12.printStackTrace();
                    }
                }
                try {
                    String str = (String) aVar.a("java.lang.String", shortTvMovieFilterActivity, new b("java.lang.String", "filterType", 0, "", "com.transsion.shorttv._channel.ui.activity.ShortTvMovieFilterActivity", "mFilterJson", false, "No desc."));
                    if (str != null) {
                        shortTvMovieFilterActivity.mFilterJson = str;
                    }
                } catch (Exception e13) {
                    if (TheRouter.m()) {
                        e13.printStackTrace();
                    }
                }
                try {
                    String str2 = (String) aVar.a("java.lang.String", shortTvMovieFilterActivity, new b("java.lang.String", "tabCode", 0, "", "com.transsion.shorttv._channel.ui.activity.ShortTvMovieFilterActivity", "tabCode", false, "No desc."));
                    if (str2 != null) {
                        shortTvMovieFilterActivity.tabCode = str2;
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
