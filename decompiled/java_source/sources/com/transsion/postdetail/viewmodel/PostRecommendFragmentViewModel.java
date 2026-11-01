package com.transsion.postdetail.viewmodel;

import android.net.Uri;
import android.text.TextUtils;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.transsion.publish.R$string;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes6.dex */
public final class PostRecommendFragmentViewModel extends t0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f50223d = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f50224a = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.viewmodel.l
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PostRecommendFragmentViewModel.j();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b0 f50225b = new b0();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f50226c = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.viewmodel.m
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PostRecommendFragmentViewModel.f();
        }
    });

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 f() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final xo.b i() {
        return (xo.b) this.f50224a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final xo.b j() {
        return (xo.b) zg.c.f79414e.a().h(xo.b.class);
    }

    public final void g(String postId, int i11, int i12, int i13) {
        String string;
        Intrinsics.h(postId, "postId");
        if (TextUtils.isEmpty(postId)) {
            return;
        }
        if (!nh.m.f70474a.e()) {
            uh.b.f76753a.d(R$string.upload_no_network);
            this.f50225b.n(null);
            return;
        }
        ImmVideoRequestEntity immVideoRequestEntity = new ImmVideoRequestEntity();
        immVideoRequestEntity.setPage(String.valueOf(i12));
        immVideoRequestEntity.setPerPage(i13);
        immVideoRequestEntity.setSessionId(yg.b.f79009a.h());
        Uri uriC = com.transsion.baselib.report.h.f43348a.c();
        if (uriC == null || (string = uriC.toString()) == null) {
            string = "";
        }
        immVideoRequestEntity.setDeepLink(string);
        immVideoRequestEntity.setUserPrefer("");
        immVideoRequestEntity.setLatest_events(wj.b.f77693a.e());
        immVideoRequestEntity.setPostId(postId);
        immVideoRequestEntity.setTabId(i11);
        bh.b.a aVar = bh.b.f16471a;
        String strJ = com.blankj.utilcode.util.o.j(immVideoRequestEntity);
        Intrinsics.g(strJ, "toJson(...)");
        RequestBody requestBodyA = aVar.a(strJ);
        if (requestBodyA != null) {
            kotlinx.coroutines.k.d(u0.a(this), null, null, new PostRecommendFragmentViewModel$getImmVideoList$1$1(this, requestBodyA, null), 3, null);
        }
    }

    public final LiveData h() {
        return this.f50225b;
    }
}
