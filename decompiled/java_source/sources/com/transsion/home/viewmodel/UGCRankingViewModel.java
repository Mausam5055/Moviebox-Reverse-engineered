package com.transsion.home.viewmodel;

import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.transsion.home.bean.UGCRankAllData;
import com.transsion.ugcvideodetail.api.bean.UGCCollection;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class UGCRankingViewModel extends t0 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f45871g = new a(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f45872h = 8;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f45877e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f45873a = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f45874b = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f45875c = "1";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ol.d f45876d = (ol.d) zg.c.f79414e.a().h(ol.d.class);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f45878f = "";

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i(UGCRankAllData uGCRankAllData) {
        ArrayList arrayList;
        if (uGCRankAllData != null) {
            List<UGCContent> items = uGCRankAllData.getItems();
            if (items != null) {
                arrayList = new ArrayList();
                for (Object obj : items) {
                    UGCContent uGCContent = (UGCContent) obj;
                    if (Intrinsics.c(uGCContent.getTopicType(), "UGC_VIDEO") && uGCContent.getVideo() != null) {
                        arrayList.add(obj);
                    }
                }
            } else {
                arrayList = null;
            }
            uGCRankAllData.setItems(arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o(UGCRankAllData uGCRankAllData) {
        List<UGCContent> items;
        String ops;
        String ops2;
        String ops3 = uGCRankAllData != null ? uGCRankAllData.getOps() : null;
        if (ops3 == null || ops3.length() == 0 || uGCRankAllData == null || (items = uGCRankAllData.getItems()) == null) {
            return;
        }
        for (UGCContent uGCContent : items) {
            UGCVideo video = uGCContent.getVideo();
            UGCCollection collection = uGCContent.getCollection();
            if (video != null && ((ops2 = video.getOps()) == null || ops2.length() == 0)) {
                video.setOps(ops3);
            }
            if (collection != null && ((ops = collection.getOps()) == null || ops.length() == 0)) {
                collection.setOps(ops3);
            }
        }
    }

    private final void p(boolean z10) {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new UGCRankingViewModel$startRequest$1(z10, this, null), 2, null);
    }

    public final androidx.p009lifecycle.b0 j() {
        return this.f45874b;
    }

    public final androidx.p009lifecycle.b0 k() {
        return this.f45873a;
    }

    public final void l(String str, String tabId) {
        Intrinsics.h(tabId, "tabId");
        lg.a.C0828a.f(lg.a.f68839a, "UGCRankingViewModel", "getRankData: category=" + str + ", tabId=" + tabId, false, 4, null);
        this.f45877e = str;
        this.f45878f = tabId;
        this.f45875c = "1";
        p(false);
    }

    public final void m() {
        lg.a.C0828a.f(lg.a.f68839a, "UGCRankingViewModel", "loadMore: currentPage=" + this.f45875c, false, 4, null);
        p(true);
    }

    public final void n() {
        lg.a.C0828a.f(lg.a.f68839a, "UGCRankingViewModel", "refresh: category=" + this.f45877e + ", tabId=" + this.f45878f, false, 4, null);
        this.f45875c = "1";
        p(false);
    }
}
