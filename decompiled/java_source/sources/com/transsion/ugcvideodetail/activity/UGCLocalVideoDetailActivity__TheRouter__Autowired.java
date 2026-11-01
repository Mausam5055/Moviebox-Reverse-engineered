package com.transsion.ugcvideodetail.activity;

import androidx.annotation.Keep;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.therouter.TheRouter;
import com.therouter.router.b;

/* JADX INFO: loaded from: classes6.dex */
@Keep
public class UGCLocalVideoDetailActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        if (obj instanceof UGCLocalVideoDetailActivity) {
            UGCLocalVideoDetailActivity uGCLocalVideoDetailActivity = (UGCLocalVideoDetailActivity) obj;
            for (bg.a aVar : TheRouter.g()) {
                try {
                    String str = (String) aVar.a("java.lang.String", uGCLocalVideoDetailActivity, new b("java.lang.String", "id", 0, "", "com.transsion.ugcvideodetail.activity.UGCLocalVideoDetailActivity", "videoId", false, "No desc."));
                    if (str != null) {
                        uGCLocalVideoDetailActivity.videoId = str;
                    }
                } catch (Exception e11) {
                    if (TheRouter.m()) {
                        e11.printStackTrace();
                    }
                }
                try {
                    String str2 = (String) aVar.a("java.lang.String", uGCLocalVideoDetailActivity, new b("java.lang.String", "parent_track_id", 0, "", "com.transsion.ugcvideodetail.activity.UGCLocalVideoDetailActivity", "previousPageTrackId", false, "No desc."));
                    if (str2 != null) {
                        uGCLocalVideoDetailActivity.previousPageTrackId = str2;
                    }
                } catch (Exception e12) {
                    if (TheRouter.m()) {
                        e12.printStackTrace();
                    }
                }
                try {
                    String str3 = (String) aVar.a("java.lang.String", uGCLocalVideoDetailActivity, new b("java.lang.String", "parent_video_id", 0, "", "com.transsion.ugcvideodetail.activity.UGCLocalVideoDetailActivity", "previousPageVideoId", false, "No desc."));
                    if (str3 != null) {
                        uGCLocalVideoDetailActivity.previousPageVideoId = str3;
                    }
                } catch (Exception e13) {
                    if (TheRouter.m()) {
                        e13.printStackTrace();
                    }
                }
                try {
                    String str4 = (String) aVar.a("java.lang.String", uGCLocalVideoDetailActivity, new b("java.lang.String", "resource_id", 0, "", "com.transsion.ugcvideodetail.activity.UGCLocalVideoDetailActivity", "resourceId", false, "No desc."));
                    if (str4 != null) {
                        uGCLocalVideoDetailActivity.resourceId = str4;
                    }
                } catch (Exception e14) {
                    if (TheRouter.m()) {
                        e14.printStackTrace();
                    }
                }
                try {
                    String str5 = (String) aVar.a("java.lang.String", uGCLocalVideoDetailActivity, new b("java.lang.String", "ugcCategory", 0, "", "com.transsion.ugcvideodetail.activity.UGCLocalVideoDetailActivity", NativeComponentConstants.KEY_COMPONENT_TYPE, false, "No desc."));
                    if (str5 != null) {
                        uGCLocalVideoDetailActivity.type = str5;
                    }
                } catch (Exception e15) {
                    if (TheRouter.m()) {
                        e15.printStackTrace();
                    }
                }
            }
        }
    }
}
