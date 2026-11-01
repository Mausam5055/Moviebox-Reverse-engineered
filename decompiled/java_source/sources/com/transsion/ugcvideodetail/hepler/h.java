package com.transsion.ugcvideodetail.hepler;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.web.api.WebConstants;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f56367a = new h();

    private h() {
    }

    public final void a(String str, String moduleName, UGCVideo uGCVideo, String str2, String str3, String str4, String str5, Boolean bool, Integer num) {
        String collectionId;
        String str6;
        Intrinsics.h(moduleName, "moduleName");
        if (str == null || uGCVideo == null) {
            return;
        }
        Pair pairA = TuplesKt.a("module_name", moduleName);
        String ugcVideoId = uGCVideo.getUgcVideoId();
        String str7 = "";
        if (ugcVideoId == null) {
            ugcVideoId = "";
        }
        Pair pairA2 = TuplesKt.a("content_id", ugcVideoId);
        UGCVideoBelongToCollection belongToCollection = uGCVideo.getBelongToCollection();
        if (belongToCollection == null || (collectionId = belongToCollection.getCollectionId()) == null) {
            collectionId = "";
        }
        Pair pairA3 = TuplesKt.a("belong_to_collection_id", collectionId);
        Pair pairA4 = TuplesKt.a("content_type", "ugc_video");
        String ops = uGCVideo.getOps();
        if (ops == null) {
            ops = "";
        }
        Map mapM = MapsKt.m(pairA, pairA2, pairA3, pairA4, TuplesKt.a("ops", ops));
        if (Intrinsics.c(moduleName, "hash_tag") && str2 != null && str2.length() != 0) {
            mapM.put("tag_name", str2);
        }
        if (Intrinsics.c(moduleName, "search") && str2 != null && str2.length() != 0) {
            List<String> searchWord = uGCVideo.getSearchWord();
            if (searchWord != null && (str6 = (String) CollectionsKt.k0(searchWord)) != null) {
                str7 = str6;
            }
            mapM.put("keyword", str7);
        }
        if (str3 != null) {
            mapM.put("track_id", str3);
        }
        if (bool != null) {
            mapM.put("is_collection", String.valueOf(bool.booleanValue()));
        }
        if (str4 != null) {
            mapM.put("parent_track_id", str4);
        }
        if (str5 != null) {
            mapM.put("parent_content_id", str5);
        }
        if (num != null) {
            mapM.put(RequestParameters.POSITION, String.valueOf(num.intValue()));
        }
        hj.i.f64505a.p(str, mapM);
    }

    public final void c(String pageName, UGCVideo item, int i11, String str, String str2, String str3, String str4) {
        String collectionId;
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(item, "item");
        Pair pairA = TuplesKt.a("module_name", WebConstants.FIELD_ITEM);
        Pair pairA2 = TuplesKt.a("page_tab_name", "foryou");
        String ugcVideoId = item.getUgcVideoId();
        if (ugcVideoId == null) {
            ugcVideoId = "";
        }
        Pair pairA3 = TuplesKt.a("content_id", ugcVideoId);
        UGCVideoBelongToCollection belongToCollection = item.getBelongToCollection();
        if (belongToCollection == null || (collectionId = belongToCollection.getCollectionId()) == null) {
            collectionId = "";
        }
        Pair pairA4 = TuplesKt.a("belong_to_collection_id", collectionId);
        Pair pairA5 = TuplesKt.a("content_type", "ugc_video");
        String subjectId = item.getSubjectId();
        if (subjectId == null) {
            subjectId = "";
        }
        Pair pairA6 = TuplesKt.a("refer_subject_id", subjectId);
        String ops = item.getOps();
        if (ops == null) {
            ops = "";
        }
        Pair pairA7 = TuplesKt.a("ops", ops);
        Pair pairA8 = TuplesKt.a(RequestParameters.POSITION, String.valueOf(i11));
        if (str == null) {
            str = "";
        }
        Map mapM = MapsKt.m(pairA, pairA2, pairA3, pairA4, pairA5, pairA6, pairA7, pairA8, TuplesKt.a("entrance_content_id", str));
        if (str2 != null) {
            mapM.put("track_id", str2);
        }
        if (str3 != null) {
            mapM.put("parent_track_id", str3);
        }
        if (str4 != null) {
            mapM.put("parent_content_id", str4);
        }
        hj.i.f64505a.p(pageName, mapM);
    }

    public final void d(String pageName, UGCVideo item, int i11, long j11, String str, String str2, String str3, String str4) {
        String collectionId;
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(item, "item");
        Pair pairA = TuplesKt.a("module_name", WebConstants.FIELD_ITEM);
        Pair pairA2 = TuplesKt.a("browse_duration", String.valueOf(j11));
        Pair pairA3 = TuplesKt.a("page_tab_name", "foryou");
        String ugcVideoId = item.getUgcVideoId();
        if (ugcVideoId == null) {
            ugcVideoId = "";
        }
        Pair pairA4 = TuplesKt.a("content_id", ugcVideoId);
        UGCVideoBelongToCollection belongToCollection = item.getBelongToCollection();
        if (belongToCollection == null || (collectionId = belongToCollection.getCollectionId()) == null) {
            collectionId = "";
        }
        Pair pairA5 = TuplesKt.a("belong_to_collection_id", collectionId);
        String subjectId = item.getSubjectId();
        if (subjectId == null) {
            subjectId = "";
        }
        Pair pairA6 = TuplesKt.a("refer_subject_id", subjectId);
        Pair pairA7 = TuplesKt.a("content_type", "ugc_video");
        String ops = item.getOps();
        if (ops == null) {
            ops = "";
        }
        Map mapM = MapsKt.m(pairA, pairA2, pairA3, pairA4, pairA5, pairA6, pairA7, TuplesKt.a("ops", ops), TuplesKt.a(RequestParameters.POSITION, String.valueOf(i11)), TuplesKt.a("entrance_content_id", str != null ? str : ""));
        if (str2 != null) {
            mapM.put("track_id", str2);
        }
        if (str3 != null) {
            mapM.put("parent_track_id", str3);
        }
        if (str4 != null) {
            mapM.put("parent_content_id", str4);
        }
        hj.i.f64505a.D(pageName, mapM);
    }

    public final void e(String str, String moduleName, DownloadBean downloadBean, String str2, String str3, String str4) {
        Intrinsics.h(moduleName, "moduleName");
        if (str == null || downloadBean == null) {
            return;
        }
        Pair pairA = TuplesKt.a("module_name", moduleName);
        String ugcVideoId = downloadBean.getUgcVideoId();
        if (ugcVideoId == null) {
            ugcVideoId = "";
        }
        Pair pairA2 = TuplesKt.a("content_id", ugcVideoId);
        String ugcVideoCollectionId = downloadBean.getUgcVideoCollectionId();
        if (ugcVideoCollectionId == null) {
            ugcVideoCollectionId = "";
        }
        Pair pairA3 = TuplesKt.a("belong_to_collection_id", ugcVideoCollectionId);
        Pair pairA4 = TuplesKt.a("content_type", "ugc_video");
        String ops = downloadBean.getOps();
        Map mapM = MapsKt.m(pairA, pairA2, pairA3, pairA4, TuplesKt.a("ops", ops != null ? ops : ""));
        if (str2 != null) {
            mapM.put("track_id", str2);
        }
        if (str3 != null) {
            mapM.put("parent_track_id", str3);
        }
        if (str4 != null) {
            mapM.put("parent_content_id", str4);
        }
        hj.i.f64505a.p(str, mapM);
    }

    public final void f(String pageName, UGCVideo item, int i11, String str, String str2, String str3) {
        String collectionId;
        Intrinsics.h(pageName, "pageName");
        String str4 = WebConstants.FIELD_ITEM;
        Intrinsics.h(item, "item");
        if (!Intrinsics.c(pageName, "/ugc_video/immersive_detail")) {
            str4 = "play_list";
        }
        Pair pairA = TuplesKt.a("module_name", str4);
        Pair pairA2 = TuplesKt.a("module_name", "play_list");
        String ugcVideoId = item.getUgcVideoId();
        if (ugcVideoId == null) {
            ugcVideoId = "";
        }
        Pair pairA3 = TuplesKt.a("content_id", ugcVideoId);
        UGCVideoBelongToCollection belongToCollection = item.getBelongToCollection();
        if (belongToCollection == null || (collectionId = belongToCollection.getCollectionId()) == null) {
            collectionId = "";
        }
        Pair pairA4 = TuplesKt.a("belong_to_collection_id", collectionId);
        Pair pairA5 = TuplesKt.a("content_type", "ugc_video");
        String ops = item.getOps();
        if (ops == null) {
            ops = "";
        }
        Pair pairA6 = TuplesKt.a("ops", ops);
        Pair pairA7 = TuplesKt.a(RequestParameters.POSITION, String.valueOf(i11));
        String subjectId = item.getSubjectId();
        Map mapM = MapsKt.m(pairA, pairA2, pairA3, pairA4, pairA5, pairA6, pairA7, TuplesKt.a("refer_subject_id", subjectId != null ? subjectId : ""));
        if (str != null) {
            mapM.put("track_id", str);
        }
        if (str2 != null) {
            mapM.put("parent_track_id", str2);
        }
        if (str3 != null) {
            mapM.put("parent_content_id", str3);
        }
        hj.i.f64505a.p(pageName, mapM);
    }

    public final void g(String pageName, UGCVideo item, int i11, long j11, String str, String str2, String str3, Boolean bool) {
        String collectionId;
        Intrinsics.h(pageName, "pageName");
        String str4 = WebConstants.FIELD_ITEM;
        Intrinsics.h(item, "item");
        if (!Intrinsics.c(pageName, "/ugc_video/immersive_detail")) {
            str4 = "play_list";
        }
        Pair pairA = TuplesKt.a("module_name", str4);
        Pair pairA2 = TuplesKt.a("browse_duration", String.valueOf(j11));
        String ugcVideoId = item.getUgcVideoId();
        if (ugcVideoId == null) {
            ugcVideoId = "";
        }
        Pair pairA3 = TuplesKt.a("content_id", ugcVideoId);
        UGCVideoBelongToCollection belongToCollection = item.getBelongToCollection();
        if (belongToCollection == null || (collectionId = belongToCollection.getCollectionId()) == null) {
            collectionId = "";
        }
        Pair pairA4 = TuplesKt.a("belong_to_collection_id", collectionId);
        Pair pairA5 = TuplesKt.a("content_type", "ugc_video");
        String ops = item.getOps();
        if (ops == null) {
            ops = "";
        }
        Pair pairA6 = TuplesKt.a("ops", ops);
        Pair pairA7 = TuplesKt.a(RequestParameters.POSITION, String.valueOf(i11));
        String subjectId = item.getSubjectId();
        Map mapM = MapsKt.m(pairA, pairA2, pairA3, pairA4, pairA5, pairA6, pairA7, TuplesKt.a("refer_subject_id", subjectId != null ? subjectId : ""));
        if (bool != null) {
            mapM.put("is_collection", String.valueOf(bool.booleanValue()));
        }
        if (str != null) {
            mapM.put("track_id", str);
        }
        if (str2 != null) {
            mapM.put("parent_track_id", str2);
        }
        if (str3 != null) {
            mapM.put("parent_content_id", str3);
        }
        hj.i.f64505a.D(pageName, mapM);
    }
}
