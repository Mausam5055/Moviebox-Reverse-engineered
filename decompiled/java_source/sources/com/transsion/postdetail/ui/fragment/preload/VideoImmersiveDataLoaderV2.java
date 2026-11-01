package com.transsion.postdetail.ui.fragment.preload;

import androidx.p009lifecycle.b0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class VideoImmersiveDataLoaderV2 extends qm.b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f49791f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f49792g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f49793h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f49794i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Lazy f49795j;

    public VideoImmersiveDataLoaderV2(String str, String postId, String page, int i11) {
        Intrinsics.h(postId, "postId");
        Intrinsics.h(page, "page");
        this.f49791f = str;
        this.f49792g = postId;
        this.f49793h = page;
        this.f49794i = i11;
        this.f49795j = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.ui.fragment.preload.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return VideoImmersiveDataLoaderV2.r();
            }
        });
    }

    public /* synthetic */ VideoImmersiveDataLoaderV2(String str, String str2, String str3, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i12 & 2) != 0 ? "0" : str2, (i12 & 4) != 0 ? "1" : str3, (i12 & 8) != 0 ? 8 : i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final xo.b q() {
        return (xo.b) this.f49795j.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final xo.b r() {
        return (xo.b) zg.c.f79414e.a().h(xo.b.class);
    }

    @Override // qm.b
    public void h(b0 b0Var) {
        j(k.d(o0.a(y0.b()), null, null, new VideoImmersiveDataLoaderV2$loadDataFromService$1(this, null), 3, null));
    }

    public final String m() {
        return this.f49793h;
    }

    public final String n() {
        return this.f49791f;
    }

    public final int o() {
        return this.f49794i;
    }

    public final String p() {
        return this.f49792g;
    }

    public final void s(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f49793h = str;
    }

    public final void t(int i11) {
        this.f49794i = i11;
    }

    public final void u(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f49792g = str;
    }
}
