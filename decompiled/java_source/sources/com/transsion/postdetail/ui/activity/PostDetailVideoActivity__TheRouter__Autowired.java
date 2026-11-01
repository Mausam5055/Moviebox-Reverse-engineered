package com.transsion.postdetail.ui.activity;

import androidx.annotation.Keep;
import com.therouter.TheRouter;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.web.api.WebConstants;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
@Keep
public class PostDetailVideoActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        if (obj instanceof PostDetailVideoActivity) {
            PostDetailVideoActivity postDetailVideoActivity = (PostDetailVideoActivity) obj;
            for (bg.a aVar : TheRouter.g()) {
                try {
                    Boolean bool = (Boolean) aVar.a("boolean", postDetailVideoActivity, new com.therouter.router.b("boolean", "from_comment", 0, "", "com.transsion.postdetail.ui.activity.PostDetailVideoActivity", "fromComment", false, "No desc."));
                    if (bool != null) {
                        postDetailVideoActivity.fromComment = bool.booleanValue();
                    }
                } catch (Exception e11) {
                    if (TheRouter.m()) {
                        e11.printStackTrace();
                    }
                }
                try {
                    Boolean bool2 = (Boolean) aVar.a("boolean", postDetailVideoActivity, new com.therouter.router.b("boolean", "is_build_in", 0, "", "com.transsion.postdetail.ui.activity.PostDetailVideoActivity", "isBuiltIn", false, "No desc."));
                    if (bool2 != null) {
                        postDetailVideoActivity.isBuiltIn = bool2.booleanValue();
                    }
                } catch (Exception e12) {
                    if (TheRouter.m()) {
                        e12.printStackTrace();
                    }
                }
                try {
                    Boolean bool3 = (Boolean) aVar.a("boolean", postDetailVideoActivity, new com.therouter.router.b("boolean", "is_from_downloaded", 0, "", "com.transsion.postdetail.ui.activity.PostDetailVideoActivity", "isFromDownloaded", false, "No desc."));
                    if (bool3 != null) {
                        postDetailVideoActivity.isFromDownloaded = bool3.booleanValue();
                    }
                } catch (Exception e13) {
                    if (TheRouter.m()) {
                        e13.printStackTrace();
                    }
                }
                try {
                    Boolean bool4 = (Boolean) aVar.a("boolean", postDetailVideoActivity, new com.therouter.router.b("boolean", "prioritize_downloaded", 0, "", "com.transsion.postdetail.ui.activity.PostDetailVideoActivity", "prioritizeDownloaded", false, "No desc."));
                    if (bool4 != null) {
                        postDetailVideoActivity.prioritizeDownloaded = bool4.booleanValue();
                    }
                } catch (Exception e14) {
                    if (TheRouter.m()) {
                        e14.printStackTrace();
                    }
                }
                try {
                    Boolean bool5 = (Boolean) aVar.a("boolean", postDetailVideoActivity, new com.therouter.router.b("boolean", "video_load_more", 0, "", "com.transsion.postdetail.ui.activity.PostDetailVideoActivity", "videoLoadMore", false, "No desc."));
                    if (bool5 != null) {
                        postDetailVideoActivity.videoLoadMore = bool5.booleanValue();
                    }
                } catch (Exception e15) {
                    if (TheRouter.m()) {
                        e15.printStackTrace();
                    }
                }
                try {
                    PostSubjectItem postSubjectItem = (PostSubjectItem) aVar.a("com.transsion.moviedetailapi.bean.PostSubjectItem", postDetailVideoActivity, new com.therouter.router.b("com.transsion.moviedetailapi.bean.PostSubjectItem", "item_object", 0, "", "com.transsion.postdetail.ui.activity.PostDetailVideoActivity", "itemObject", false, "No desc."));
                    if (postSubjectItem != null) {
                        postDetailVideoActivity.itemObject = postSubjectItem;
                    }
                } catch (Exception e16) {
                    if (TheRouter.m()) {
                        e16.printStackTrace();
                    }
                }
                try {
                    Integer num = (Integer) aVar.a("int", postDetailVideoActivity, new com.therouter.router.b("int", "tab_id", 0, "", "com.transsion.postdetail.ui.activity.PostDetailVideoActivity", "tabId", false, "No desc."));
                    if (num != null) {
                        postDetailVideoActivity.tabId = num.intValue();
                    }
                } catch (Exception e17) {
                    if (TheRouter.m()) {
                        e17.printStackTrace();
                    }
                }
                try {
                    String str = (String) aVar.a("java.lang.String", postDetailVideoActivity, new com.therouter.router.b("java.lang.String", "id", 0, "", "com.transsion.postdetail.ui.activity.PostDetailVideoActivity", "postId", false, "No desc."));
                    if (str != null) {
                        postDetailVideoActivity.postId = str;
                    }
                } catch (Exception e18) {
                    if (TheRouter.m()) {
                        e18.printStackTrace();
                    }
                }
                try {
                    String str2 = (String) aVar.a("java.lang.String", postDetailVideoActivity, new com.therouter.router.b("java.lang.String", "item_type", 0, "", "com.transsion.postdetail.ui.activity.PostDetailVideoActivity", "itemType", false, "No desc."));
                    if (str2 != null) {
                        postDetailVideoActivity.itemType = str2;
                    }
                } catch (Exception e19) {
                    if (TheRouter.m()) {
                        e19.printStackTrace();
                    }
                }
                try {
                    String str3 = (String) aVar.a("java.lang.String", postDetailVideoActivity, new com.therouter.router.b("java.lang.String", "media_type", 0, "", "com.transsion.postdetail.ui.activity.PostDetailVideoActivity", "mediaType", false, "No desc."));
                    if (str3 != null) {
                        postDetailVideoActivity.mediaType = str3;
                    }
                } catch (Exception e20) {
                    if (TheRouter.m()) {
                        e20.printStackTrace();
                    }
                }
                try {
                    String str4 = (String) aVar.a("java.lang.String", postDetailVideoActivity, new com.therouter.router.b("java.lang.String", WebConstants.PAGE_FROM, 0, "", "com.transsion.postdetail.ui.activity.PostDetailVideoActivity", "pageFrom", false, "No desc."));
                    if (str4 != null) {
                        postDetailVideoActivity.pageFrom = str4;
                    }
                } catch (Exception e21) {
                    if (TheRouter.m()) {
                        e21.printStackTrace();
                    }
                }
                try {
                    String str5 = (String) aVar.a("java.lang.String", postDetailVideoActivity, new com.therouter.router.b("java.lang.String", "rec_ops", 0, "", "com.transsion.postdetail.ui.activity.PostDetailVideoActivity", "ops", false, "No desc."));
                    if (str5 != null) {
                        postDetailVideoActivity.ops = str5;
                    }
                } catch (Exception e22) {
                    if (TheRouter.m()) {
                        e22.printStackTrace();
                    }
                }
                try {
                    ArrayList arrayList = (ArrayList) aVar.a("java.util.ArrayList<com.transsion.moviedetailapi.bean.PostSubjectItem>", postDetailVideoActivity, new com.therouter.router.b("java.util.ArrayList<com.transsion.moviedetailapi.bean.PostSubjectItem>", "downloaded_shorts_list", 0, "", "com.transsion.postdetail.ui.activity.PostDetailVideoActivity", "downloadedShortsList", false, "No desc."));
                    if (arrayList != null) {
                        postDetailVideoActivity.downloadedShortsList = arrayList;
                    }
                } catch (Exception e23) {
                    if (TheRouter.m()) {
                        e23.printStackTrace();
                    }
                }
            }
        }
    }
}
