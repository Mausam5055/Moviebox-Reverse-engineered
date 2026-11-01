package com.transsion.postdetail.ui.activity;

import androidx.annotation.Keep;
import com.therouter.TheRouter;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.web.api.WebConstants;

/* JADX INFO: loaded from: classes6.dex */
@Keep
public class PostDetailActivity__TheRouter__Autowired {
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void autowiredInject(Object obj) {
        if (obj instanceof PostDetailActivity) {
            PostDetailActivity postDetailActivity = (PostDetailActivity) obj;
            for (bg.a aVar : TheRouter.g()) {
                try {
                    Boolean bool = (Boolean) aVar.a("boolean", postDetailActivity, new com.therouter.router.b("boolean", "from_comment", 0, "", "com.transsion.postdetail.ui.activity.PostDetailActivity", "fromComment", false, "No desc."));
                    if (bool != null) {
                        postDetailActivity.fromComment = bool.booleanValue();
                    }
                } catch (Exception e11) {
                    if (TheRouter.m()) {
                        e11.printStackTrace();
                    }
                }
                try {
                    Boolean bool2 = (Boolean) aVar.a("boolean", postDetailActivity, new com.therouter.router.b("boolean", "need_back_to_room", 0, "", "com.transsion.postdetail.ui.activity.PostDetailActivity", "needBackToRoom", false, "No desc."));
                    if (bool2 != null) {
                        postDetailActivity.needBackToRoom = bool2.booleanValue();
                    }
                } catch (Exception e12) {
                    if (TheRouter.m()) {
                        e12.printStackTrace();
                    }
                }
                try {
                    Boolean bool3 = (Boolean) aVar.a("boolean", postDetailActivity, new com.therouter.router.b("boolean", "video_load_more", 0, "", "com.transsion.postdetail.ui.activity.PostDetailActivity", "videoLoadMore", false, "No desc."));
                    if (bool3 != null) {
                        postDetailActivity.videoLoadMore = bool3.booleanValue();
                    }
                } catch (Exception e13) {
                    if (TheRouter.m()) {
                        e13.printStackTrace();
                    }
                }
                try {
                    PostSubjectItem postSubjectItem = (PostSubjectItem) aVar.a("com.transsion.moviedetailapi.bean.PostSubjectItem", postDetailActivity, new com.therouter.router.b("com.transsion.moviedetailapi.bean.PostSubjectItem", "item_object", 0, "", "com.transsion.postdetail.ui.activity.PostDetailActivity", "itemObject", false, "No desc."));
                    if (postSubjectItem != null) {
                        postDetailActivity.itemObject = postSubjectItem;
                    }
                } catch (Exception e14) {
                    if (TheRouter.m()) {
                        e14.printStackTrace();
                    }
                }
                try {
                    Integer num = (Integer) aVar.a("int", postDetailActivity, new com.therouter.router.b("int", "tab_id", 0, "", "com.transsion.postdetail.ui.activity.PostDetailActivity", "tabId", false, "No desc."));
                    if (num != null) {
                        postDetailActivity.tabId = num.intValue();
                    }
                } catch (Exception e15) {
                    if (TheRouter.m()) {
                        e15.printStackTrace();
                    }
                }
                try {
                    String str = (String) aVar.a("java.lang.String", postDetailActivity, new com.therouter.router.b("java.lang.String", "comment_id", 0, "", "com.transsion.postdetail.ui.activity.PostDetailActivity", "commentId", false, "No desc."));
                    if (str != null) {
                        postDetailActivity.commentId = str;
                    }
                } catch (Exception e16) {
                    if (TheRouter.m()) {
                        e16.printStackTrace();
                    }
                }
                try {
                    String str2 = (String) aVar.a("java.lang.String", postDetailActivity, new com.therouter.router.b("java.lang.String", "id", 0, "", "com.transsion.postdetail.ui.activity.PostDetailActivity", "postId", false, "No desc."));
                    if (str2 != null) {
                        postDetailActivity.postId = str2;
                    }
                } catch (Exception e17) {
                    if (TheRouter.m()) {
                        e17.printStackTrace();
                    }
                }
                try {
                    String str3 = (String) aVar.a("java.lang.String", postDetailActivity, new com.therouter.router.b("java.lang.String", "item_type", 0, "", "com.transsion.postdetail.ui.activity.PostDetailActivity", "itemType", false, "No desc."));
                    if (str3 != null) {
                        postDetailActivity.itemType = str3;
                    }
                } catch (Exception e18) {
                    if (TheRouter.m()) {
                        e18.printStackTrace();
                    }
                }
                try {
                    String str4 = (String) aVar.a("java.lang.String", postDetailActivity, new com.therouter.router.b("java.lang.String", "media_type", 0, "", "com.transsion.postdetail.ui.activity.PostDetailActivity", "mediaType", false, "No desc."));
                    if (str4 != null) {
                        postDetailActivity.mediaType = str4;
                    }
                } catch (Exception e19) {
                    if (TheRouter.m()) {
                        e19.printStackTrace();
                    }
                }
                try {
                    String str5 = (String) aVar.a("java.lang.String", postDetailActivity, new com.therouter.router.b("java.lang.String", WebConstants.PAGE_FROM, 0, "", "com.transsion.postdetail.ui.activity.PostDetailActivity", "pageFrom", false, "No desc."));
                    if (str5 != null) {
                        postDetailActivity.pageFrom = str5;
                    }
                } catch (Exception e20) {
                    if (TheRouter.m()) {
                        e20.printStackTrace();
                    }
                }
                try {
                    String str6 = (String) aVar.a("java.lang.String", postDetailActivity, new com.therouter.router.b("java.lang.String", "rec_ops", 0, "", "com.transsion.postdetail.ui.activity.PostDetailActivity", "ops", false, "No desc."));
                    if (str6 != null) {
                        postDetailActivity.ops = str6;
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
