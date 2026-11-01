package com.transsnet.downloader.ugc.util;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.web.api.WebConstants;
import hj.i;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f59847a = new e();

    private e() {
    }

    public final void a(String pageName, UGCVideo item, int i11, long j11) {
        String collectionId;
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(item, "item");
        Pair pairA = TuplesKt.a("browse_duration", String.valueOf(j11));
        Pair pairA2 = TuplesKt.a("module_name", WebConstants.FIELD_ITEM);
        Pair pairA3 = TuplesKt.a("page_tab_name", "foryou");
        UGCVideoBelongToCollection belongToCollection = item.getBelongToCollection();
        if (belongToCollection == null || (collectionId = belongToCollection.getCollectionId()) == null) {
            collectionId = "";
        }
        Pair pairA4 = TuplesKt.a("belong_to_collection_id", collectionId);
        String ugcVideoId = item.getUgcVideoId();
        if (ugcVideoId == null) {
            ugcVideoId = "";
        }
        Pair pairA5 = TuplesKt.a("content_id", ugcVideoId);
        String subjectId = item.getSubjectId();
        if (subjectId == null) {
            subjectId = "";
        }
        Pair pairA6 = TuplesKt.a("refer_subject_id", subjectId);
        Pair pairA7 = TuplesKt.a("content_type", "ugc_video");
        String ops = item.getOps();
        i.f64505a.D(pageName, MapsKt.l(pairA, pairA2, pairA3, pairA4, pairA5, pairA6, pairA7, TuplesKt.a("ops", ops != null ? ops : ""), TuplesKt.a(RequestParameters.POSITION, String.valueOf(i11))));
    }

    public final void b(String pageName, UGCVideo item, int i11) {
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
        i.f64505a.p(pageName, MapsKt.l(pairA, pairA2, pairA3, pairA4, pairA5, pairA6, TuplesKt.a("ops", ops != null ? ops : ""), TuplesKt.a(RequestParameters.POSITION, String.valueOf(i11))));
    }
}
