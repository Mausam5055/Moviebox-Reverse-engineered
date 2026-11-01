package il;

import ak.g;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.home.bean.BannerData;
import com.transsion.home.bean.BffCommonOpData;
import com.transsion.home.bean.OperateItem;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class b {
    public static final void a(OperateItem operateItem, Map map) {
        Intrinsics.h(operateItem, "<this>");
        Intrinsics.h(map, "map");
        if (g.f639a.b()) {
            String type = operateItem.getType();
            if (type == null) {
                type = "";
            }
            map.put("opt_type", type);
            String opId = operateItem.getOpId();
            map.put("opt_id", opId != null ? opId : "");
            return;
        }
        map.put("item_type", "opt");
        String type2 = operateItem.getType();
        if (type2 == null) {
            type2 = "";
        }
        map.put("opt_type", type2);
        String title = operateItem.getTitle();
        if (title == null) {
            title = "";
        }
        map.put("opTitle", title);
        String opId2 = operateItem.getOpId();
        map.put("opId", opId2 != null ? opId2 : "");
    }

    public static final void b(OperateItem operateItem, Map map) {
        Intrinsics.h(operateItem, "<this>");
        Intrinsics.h(map, "map");
        map.put("item_type", "opt");
        String type = operateItem.getType();
        if (type == null) {
            type = "";
        }
        map.put("opt_type", type);
        String title = operateItem.getTitle();
        if (title == null) {
            title = "";
        }
        map.put("opt_title", title);
        String opId = operateItem.getOpId();
        map.put("opt_id", opId != null ? opId : "");
    }

    public static final void c(BannerData bannerData, Map map) {
        Intrinsics.h(bannerData, "<this>");
        Intrinsics.h(map, "map");
        if (g.f639a.b()) {
            String ops = bannerData.getOps();
            if (ops == null) {
                ops = "";
            }
            map.put("ops", ops);
            String objId = bannerData.getObjId();
            if (objId == null) {
                objId = "";
            }
            map.put("object_id", objId);
            String objId2 = bannerData.getObjId();
            if (objId2 == null) {
                objId2 = "";
            }
            map.put("content_id", objId2);
            String content = bannerData.getContent();
            map.put(CampaignEx.JSON_KEY_TITLE, content != null ? content : "");
            return;
        }
        String subjectId = bannerData.getSubjectId();
        if (subjectId == null) {
            subjectId = "";
        }
        map.put("subject_id", subjectId);
        map.put("has_resource", String.valueOf(bannerData.getHasResource()));
        map.put("subject_type", String.valueOf(bannerData.getSubjectType()));
        String ops2 = bannerData.getOps();
        if (ops2 == null) {
            ops2 = "";
        }
        map.put("ops", ops2);
        String content2 = bannerData.getContent();
        if (content2 == null) {
            content2 = "";
        }
        map.put("content", content2);
        map.put("builtin", bannerData.getBuiltIn() ? "1" : "0");
        String deepLink = bannerData.getDeepLink();
        map.put("deeplink", deepLink != null ? deepLink : "");
        map.put("seenStatus", String.valueOf(bannerData.getSeenStatus()));
    }

    public static final void d(BffCommonOpData bffCommonOpData, Map map) {
        Intrinsics.h(bffCommonOpData, "<this>");
        Intrinsics.h(map, "map");
        String id2 = bffCommonOpData.getId();
        if (id2 == null) {
            id2 = "";
        }
        map.put("post_id", id2);
        Integer postType = bffCommonOpData.getPostType();
        map.put("post_media_type", String.valueOf(postType != null ? postType.intValue() : 0));
        String content = bffCommonOpData.getContent();
        if (content == null) {
            content = "";
        }
        map.put("content", content);
        String deepLink = bffCommonOpData.getDeepLink();
        if (deepLink == null) {
            deepLink = "";
        }
        map.put("deeplink", deepLink);
        String opItemId = bffCommonOpData.getOpItemId();
        if (opItemId == null) {
            opItemId = "";
        }
        map.put("opItemId", opItemId);
        String ops = bffCommonOpData.getOps();
        map.put("ops", ops != null ? ops : "");
    }

    public static final void e(Subject subject, Map map) {
        Intrinsics.h(subject, "<this>");
        Intrinsics.h(map, "map");
        String subjectId = subject.getSubjectId();
        if (subjectId == null) {
            subjectId = "";
        }
        map.put("subject_id", subjectId);
        map.put("has_resource", String.valueOf(subject.getHasResource()));
        map.put("subject_type", String.valueOf(subject.getSubjectType()));
        String ops = subject.getOps();
        map.put("ops", ops != null ? ops : "");
        map.put("builtin", subject.getBuiltIn() ? "1" : "0");
        map.put("tag", String.valueOf(subject.getTags()));
        map.put("seenStatus", String.valueOf(subject.getSeenStatus()));
    }

    public static final void f(UGCVideo uGCVideo, Map map) {
        String collectionId;
        Intrinsics.h(uGCVideo, "<this>");
        Intrinsics.h(map, "map");
        String ugcVideoId = uGCVideo.getUgcVideoId();
        if (ugcVideoId == null) {
            ugcVideoId = "";
        }
        map.put("content_id", ugcVideoId);
        UGCVideoBelongToCollection belongToCollection = uGCVideo.getBelongToCollection();
        if (belongToCollection == null || (collectionId = belongToCollection.getCollectionId()) == null) {
            collectionId = "";
        }
        map.put("belong_to_collection_id", collectionId);
        map.put("content_type", "ugc_video");
        String subjectId = uGCVideo.getSubjectId();
        if (subjectId == null) {
            subjectId = "";
        }
        map.put("refer_subject_id", subjectId);
        String ops = uGCVideo.getOps();
        map.put("ops", ops != null ? ops : "");
        map.put("builtin", uGCVideo.getBuiltIn() ? "1" : "0");
    }

    public static final void g(BannerData bannerData, Map map) {
        Intrinsics.h(bannerData, "<this>");
        Intrinsics.h(map, "map");
        String subjectId = bannerData.getSubjectId();
        if (subjectId == null) {
            subjectId = "";
        }
        map.put("subject_id", subjectId);
        map.put("has_resource", String.valueOf(bannerData.getHasResource()));
        map.put("subject_type", String.valueOf(bannerData.getSubjectType()));
        String ops = bannerData.getOps();
        if (ops == null) {
            ops = "";
        }
        map.put("ops", ops);
        String content = bannerData.getContent();
        if (content == null) {
            content = "";
        }
        map.put("content", content);
        map.put("builtin", bannerData.getBuiltIn() ? "1" : "0");
        String deepLink = bannerData.getDeepLink();
        map.put("deeplink", deepLink != null ? deepLink : "");
        map.put("seenStatus", String.valueOf(bannerData.getSeenStatus()));
    }
}
