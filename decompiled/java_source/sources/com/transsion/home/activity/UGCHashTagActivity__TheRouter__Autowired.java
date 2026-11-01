package com.transsion.home.activity;

import androidx.annotation.Keep;
import bg.a;
import com.therouter.TheRouter;
import com.therouter.router.b;
import com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
@Keep
public class UGCHashTagActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        if (obj instanceof UGCHashTagActivity) {
            UGCHashTagActivity uGCHashTagActivity = (UGCHashTagActivity) obj;
            for (a aVar : TheRouter.g()) {
                try {
                    UGCVideoHashTag uGCVideoHashTag = (UGCVideoHashTag) aVar.a("com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag", uGCHashTagActivity, new b("com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag", "titleHashTag", 0, "", "com.transsion.home.activity.UGCHashTagActivity", "mainHasTag", false, "No desc."));
                    if (uGCVideoHashTag != null) {
                        uGCHashTagActivity.mainHasTag = uGCVideoHashTag;
                    }
                } catch (Exception e11) {
                    if (TheRouter.m()) {
                        e11.printStackTrace();
                    }
                }
                try {
                    Integer num = (Integer) aVar.a("int", uGCHashTagActivity, new b("int", "tabId", 0, "", "com.transsion.home.activity.UGCHashTagActivity", "tabId", false, "No desc."));
                    if (num != null) {
                        uGCHashTagActivity.tabId = num.intValue();
                    }
                } catch (Exception e12) {
                    if (TheRouter.m()) {
                        e12.printStackTrace();
                    }
                }
                try {
                    String str = (String) aVar.a("java.lang.String", uGCHashTagActivity, new b("java.lang.String", "UGCVideoId", 0, "", "com.transsion.home.activity.UGCHashTagActivity", "ugcVideoId", false, "No desc."));
                    if (str != null) {
                        uGCHashTagActivity.ugcVideoId = str;
                    }
                } catch (Exception e13) {
                    if (TheRouter.m()) {
                        e13.printStackTrace();
                    }
                }
                try {
                    String str2 = (String) aVar.a("java.lang.String", uGCHashTagActivity, new b("java.lang.String", "fromOptId", 0, "", "com.transsion.home.activity.UGCHashTagActivity", "fromOptId", false, "No desc."));
                    if (str2 != null) {
                        uGCHashTagActivity.fromOptId = str2;
                    }
                } catch (Exception e14) {
                    if (TheRouter.m()) {
                        e14.printStackTrace();
                    }
                }
                try {
                    String str3 = (String) aVar.a("java.lang.String", uGCHashTagActivity, new b("java.lang.String", "hashtag", 0, "", "com.transsion.home.activity.UGCHashTagActivity", "mHashtagJson", false, "No desc."));
                    if (str3 != null) {
                        uGCHashTagActivity.mHashtagJson = str3;
                    }
                } catch (Exception e15) {
                    if (TheRouter.m()) {
                        e15.printStackTrace();
                    }
                }
                try {
                    ArrayList arrayList = (ArrayList) aVar.a("java.util.ArrayList<com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag>", uGCHashTagActivity, new b("java.util.ArrayList<com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag>", "hashTagList", 0, "", "com.transsion.home.activity.UGCHashTagActivity", "hasTagList", false, "No desc."));
                    if (arrayList != null) {
                        uGCHashTagActivity.hasTagList = arrayList;
                    }
                } catch (Exception e16) {
                    if (TheRouter.m()) {
                        e16.printStackTrace();
                    }
                }
            }
        }
    }
}
