package com.transsion.videodetail;

import androidx.annotation.Keep;
import com.therouter.TheRouter;

/* JADX INFO: loaded from: classes7.dex */
@Keep
public class BaseDetailActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        if (obj instanceof BaseDetailActivity) {
            BaseDetailActivity baseDetailActivity = (BaseDetailActivity) obj;
            for (bg.a aVar : TheRouter.g()) {
                try {
                    Boolean bool = (Boolean) aVar.a("boolean", baseDetailActivity, new com.therouter.router.b("boolean", "autoDownload", 0, "", "com.transsion.videodetail.BaseDetailActivity", "autoDownload", false, "No desc."));
                    if (bool != null) {
                        baseDetailActivity.autoDownload = bool.booleanValue();
                    }
                } catch (Exception e11) {
                    if (TheRouter.m()) {
                        e11.printStackTrace();
                    }
                }
                try {
                    Boolean bool2 = (Boolean) aVar.a("boolean", baseDetailActivity, new com.therouter.router.b("boolean", "autoPlay", 0, "", "com.transsion.videodetail.BaseDetailActivity", "autoPlay", false, "No desc."));
                    if (bool2 != null) {
                        baseDetailActivity.autoPlay = bool2.booleanValue();
                    }
                } catch (Exception e12) {
                    if (TheRouter.m()) {
                        e12.printStackTrace();
                    }
                }
                try {
                    Boolean bool3 = (Boolean) aVar.a("boolean", baseDetailActivity, new com.therouter.router.b("boolean", "isMusicFloatViewClick", 0, "", "com.transsion.videodetail.BaseDetailActivity", "isMusicFloatViewClick", false, "No desc."));
                    if (bool3 != null) {
                        baseDetailActivity.isMusicFloatViewClick = bool3.booleanValue();
                    }
                } catch (Exception e13) {
                    if (TheRouter.m()) {
                        e13.printStackTrace();
                    }
                }
                try {
                    Boolean bool4 = (Boolean) aVar.a("boolean", baseDetailActivity, new com.therouter.router.b("boolean", "is_music_liked_fragment", 0, "", "com.transsion.videodetail.BaseDetailActivity", "isMusicLikedFragment", false, "No desc."));
                    if (bool4 != null) {
                        baseDetailActivity.isMusicLikedFragment = bool4.booleanValue();
                    }
                } catch (Exception e14) {
                    if (TheRouter.m()) {
                        e14.printStackTrace();
                    }
                }
                try {
                    Integer num = (Integer) aVar.a("int", baseDetailActivity, new com.therouter.router.b("int", "episode", 0, "", "com.transsion.videodetail.BaseDetailActivity", "targetEp", false, "No desc."));
                    if (num != null) {
                        baseDetailActivity.targetEp = num.intValue();
                    }
                } catch (Exception e15) {
                    if (TheRouter.m()) {
                        e15.printStackTrace();
                    }
                }
                try {
                    Integer num2 = (Integer) aVar.a("int", baseDetailActivity, new com.therouter.router.b("int", "season", 0, "", "com.transsion.videodetail.BaseDetailActivity", "curSeason", false, "No desc."));
                    if (num2 != null) {
                        baseDetailActivity.curSeason = num2.intValue();
                    }
                } catch (Exception e16) {
                    if (TheRouter.m()) {
                        e16.printStackTrace();
                    }
                }
                try {
                    Integer num3 = (Integer) aVar.a("int", baseDetailActivity, new com.therouter.router.b("int", "yy_preload_id", 0, "", "com.transsion.videodetail.BaseDetailActivity", "preloadId", false, "No desc."));
                    if (num3 != null) {
                        baseDetailActivity.preloadId = num3.intValue();
                    }
                } catch (Exception e17) {
                    if (TheRouter.m()) {
                        e17.printStackTrace();
                    }
                }
                try {
                    String str = (String) aVar.a("java.lang.String", baseDetailActivity, new com.therouter.router.b("java.lang.String", "id", 0, "", "com.transsion.videodetail.BaseDetailActivity", "id", false, "No desc."));
                    if (str != null) {
                        baseDetailActivity.id = str;
                    }
                } catch (Exception e18) {
                    if (TheRouter.m()) {
                        e18.printStackTrace();
                    }
                }
                try {
                    String str2 = (String) aVar.a("java.lang.String", baseDetailActivity, new com.therouter.router.b("java.lang.String", "module_name", 0, "", "com.transsion.videodetail.BaseDetailActivity", "moduleName", false, "No desc."));
                    if (str2 != null) {
                        baseDetailActivity.moduleName = str2;
                    }
                } catch (Exception e19) {
                    if (TheRouter.m()) {
                        e19.printStackTrace();
                    }
                }
                try {
                    String str3 = (String) aVar.a("java.lang.String", baseDetailActivity, new com.therouter.router.b("java.lang.String", "ops", 0, "", "com.transsion.videodetail.BaseDetailActivity", "ops", false, "No desc."));
                    if (str3 != null) {
                        baseDetailActivity.ops = str3;
                    }
                } catch (Exception e20) {
                    if (TheRouter.m()) {
                        e20.printStackTrace();
                    }
                }
                try {
                    String str4 = (String) aVar.a("java.lang.String", baseDetailActivity, new com.therouter.router.b("java.lang.String", "resourceId", 0, "", "com.transsion.videodetail.BaseDetailActivity", "autoPlayResourceId", false, "No desc."));
                    if (str4 != null) {
                        baseDetailActivity.autoPlayResourceId = str4;
                    }
                } catch (Exception e21) {
                    if (TheRouter.m()) {
                        e21.printStackTrace();
                    }
                }
            }
        }
    }
}
