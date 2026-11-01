package com.transsion.ugcvideodetail.activity;

import androidx.annotation.Keep;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.therouter.TheRouter;
import com.therouter.router.b;

/* JADX INFO: loaded from: classes6.dex */
@Keep
public class UGCVideoDetailActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        if (obj instanceof UGCVideoDetailActivity) {
            UGCVideoDetailActivity uGCVideoDetailActivity = (UGCVideoDetailActivity) obj;
            for (bg.a aVar : TheRouter.g()) {
                try {
                    Boolean bool = (Boolean) aVar.a("boolean", uGCVideoDetailActivity, new b("boolean", "ugc_without_history", 0, "", "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity", "withoutHistory", false, "No desc."));
                    if (bool != null) {
                        uGCVideoDetailActivity.withoutHistory = bool.booleanValue();
                    }
                } catch (Exception e11) {
                    if (TheRouter.m()) {
                        e11.printStackTrace();
                    }
                }
                try {
                    Integer num = (Integer) aVar.a("int", uGCVideoDetailActivity, new b("int", "ugc_bottom_fragment_selected", 0, "", "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity", "bottomFragmentSelected", false, "No desc."));
                    if (num != null) {
                        uGCVideoDetailActivity.bottomFragmentSelected = num.intValue();
                    }
                } catch (Exception e12) {
                    if (TheRouter.m()) {
                        e12.printStackTrace();
                    }
                }
                try {
                    String str = (String) aVar.a("java.lang.String", uGCVideoDetailActivity, new b("java.lang.String", "collection_id", 0, "", "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity", "collectionId", false, "No desc."));
                    if (str != null) {
                        uGCVideoDetailActivity.collectionId = str;
                    }
                } catch (Exception e13) {
                    if (TheRouter.m()) {
                        e13.printStackTrace();
                    }
                }
                try {
                    String str2 = (String) aVar.a("java.lang.String", uGCVideoDetailActivity, new b("java.lang.String", "from_opt_id", 0, "", "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity", "fromOptId", false, "No desc."));
                    if (str2 != null) {
                        uGCVideoDetailActivity.fromOptId = str2;
                    }
                } catch (Exception e14) {
                    if (TheRouter.m()) {
                        e14.printStackTrace();
                    }
                }
                try {
                    String str3 = (String) aVar.a("java.lang.String", uGCVideoDetailActivity, new b("java.lang.String", "id", 0, "", "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity", "videoId", false, "No desc."));
                    if (str3 != null) {
                        uGCVideoDetailActivity.videoId = str3;
                    }
                } catch (Exception e15) {
                    if (TheRouter.m()) {
                        e15.printStackTrace();
                    }
                }
                try {
                    String str4 = (String) aVar.a("java.lang.String", uGCVideoDetailActivity, new b("java.lang.String", "ops", 0, "", "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity", "ops", false, "No desc."));
                    if (str4 != null) {
                        uGCVideoDetailActivity.ops = str4;
                    }
                } catch (Exception e16) {
                    if (TheRouter.m()) {
                        e16.printStackTrace();
                    }
                }
                try {
                    String str5 = (String) aVar.a("java.lang.String", uGCVideoDetailActivity, new b("java.lang.String", "parent_track_id", 0, "", "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity", "previousPageTrackId", false, "No desc."));
                    if (str5 != null) {
                        uGCVideoDetailActivity.previousPageTrackId = str5;
                    }
                } catch (Exception e17) {
                    if (TheRouter.m()) {
                        e17.printStackTrace();
                    }
                }
                try {
                    String str6 = (String) aVar.a("java.lang.String", uGCVideoDetailActivity, new b("java.lang.String", "parent_video_id", 0, "", "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity", "previousPageVideoId", false, "No desc."));
                    if (str6 != null) {
                        uGCVideoDetailActivity.previousPageVideoId = str6;
                    }
                } catch (Exception e18) {
                    if (TheRouter.m()) {
                        e18.printStackTrace();
                    }
                }
                try {
                    String str7 = (String) aVar.a("java.lang.String", uGCVideoDetailActivity, new b("java.lang.String", "subject_id", 0, "", "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity", "subjectId", false, "No desc."));
                    if (str7 != null) {
                        uGCVideoDetailActivity.subjectId = str7;
                    }
                } catch (Exception e19) {
                    if (TheRouter.m()) {
                        e19.printStackTrace();
                    }
                }
                try {
                    String str8 = (String) aVar.a("java.lang.String", uGCVideoDetailActivity, new b("java.lang.String", "tab_id", 0, "", "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity", "homeTabId", false, "No desc."));
                    if (str8 != null) {
                        uGCVideoDetailActivity.homeTabId = str8;
                    }
                } catch (Exception e20) {
                    if (TheRouter.m()) {
                        e20.printStackTrace();
                    }
                }
                try {
                    String str9 = (String) aVar.a("java.lang.String", uGCVideoDetailActivity, new b("java.lang.String", "ugcCategory", 0, "", "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity", NativeComponentConstants.KEY_COMPONENT_TYPE, false, "No desc."));
                    if (str9 != null) {
                        uGCVideoDetailActivity.com.cloud.tmc.kernel.minicover.NativeComponentConstants.KEY_COMPONENT_TYPE java.lang.String = str9;
                    }
                } catch (Exception e21) {
                    if (TheRouter.m()) {
                        e21.printStackTrace();
                    }
                }
                try {
                    String str10 = (String) aVar.a("java.lang.String", uGCVideoDetailActivity, new b("java.lang.String", "videoStyle", 0, "", "com.transsion.ugcvideodetail.activity.UGCVideoDetailActivity", "pageStyle", false, "No desc."));
                    if (str10 != null) {
                        uGCVideoDetailActivity.pageStyle = str10;
                    }
                } catch (Exception e22) {
                    if (TheRouter.m()) {
                        e22.printStackTrace();
                    }
                }
            }
        }
    }
}
