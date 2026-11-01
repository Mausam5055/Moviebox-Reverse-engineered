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
public final class VideoDataLoader extends qm.b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f49785f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f49786g;

    /* JADX WARN: Multi-variable type inference failed */
    public VideoDataLoader() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public VideoDataLoader(String postId) {
        Intrinsics.h(postId, "postId");
        this.f49785f = postId;
        this.f49786g = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.ui.fragment.preload.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return VideoDataLoader.o();
            }
        });
    }

    public /* synthetic */ VideoDataLoader(String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? "" : str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final xo.b n() {
        return (xo.b) this.f49786g.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final xo.b o() {
        return (xo.b) zg.c.f79414e.a().h(xo.b.class);
    }

    @Override // qm.b
    public void h(b0 b0Var) {
        j(k.d(o0.a(y0.b()), null, null, new VideoDataLoader$loadDataFromService$1(this, null), 3, null));
    }

    public final String m() {
        return this.f49785f;
    }

    public final void p(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f49785f = str;
    }
}
