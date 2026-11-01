package com.transsion.postdetail.viewmodel;

import android.text.TextUtils;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.transsion.moviedetailapi.bean.PostSubjectBean;
import com.transsion.postdetail.ui.fragment.preload.VideoDataLoader;
import com.transsion.postdetail.ui.fragment.preload.VideoImmersiveDataLoaderV2;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class PostDetailViewModel extends t0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private VideoDataLoader f50213d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private VideoImmersiveDataLoaderV2 f50214e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f50210a = "PostDetailViewModel";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f50211b = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.viewmodel.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PostDetailViewModel.L();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f50212c = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0() { // from class: com.transsion.postdetail.viewmodel.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PostDetailViewModel.p();
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f50215f = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.viewmodel.f
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PostDetailViewModel.J();
        }
    });

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f50216g = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.viewmodel.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PostDetailViewModel.I();
        }
    });

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Lazy f50217h = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.viewmodel.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PostDetailViewModel.E();
        }
    });

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Lazy f50218i = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.viewmodel.i
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PostDetailViewModel.H();
        }
    });

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Lazy f50219j = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.viewmodel.j
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PostDetailViewModel.q();
        }
    });

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Lazy f50220k = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.viewmodel.k
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return PostDetailViewModel.K();
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public final xo.b D() {
        return (xo.b) this.f50211b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 E() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 H() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 I() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 J() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 K() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final xo.b L() {
        return (xo.b) zg.c.f79414e.a().h(xo.b.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kn.a p() {
        return (kn.a) zg.c.f79414e.a().h(kn.a.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 q() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kn.a s() {
        return (kn.a) this.f50212c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final b0 w() {
        return (b0) this.f50217h.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final b0 z() {
        return (b0) this.f50215f.getValue();
    }

    public final LiveData A() {
        return z();
    }

    public final PostSubjectBean B() {
        VideoImmersiveDataLoaderV2 videoImmersiveDataLoaderV2 = this.f50214e;
        if (videoImmersiveDataLoaderV2 != null) {
            return (PostSubjectBean) videoImmersiveDataLoaderV2.a();
        }
        return null;
    }

    public final b0 C() {
        return (b0) this.f50220k.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.String, kotlin.jvm.internal.DefaultConstructorMarker] */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v9 */
    public final void F(Integer num, String str) {
        qm.b bVar;
        Object next;
        ?? r11 = 0;
        Object obj = null;
        List listA = num != null ? qm.e.f73644a.a(num.intValue()) : null;
        if (listA != null) {
            Iterator it = listA.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!(((qm.b) next) instanceof VideoDataLoader));
            bVar = (qm.b) next;
        } else {
            bVar = null;
        }
        VideoDataLoader videoDataLoader = (VideoDataLoader) bVar;
        if (videoDataLoader == null) {
            videoDataLoader = new VideoDataLoader(r11, 1, r11);
        }
        this.f50213d = videoDataLoader;
        if (listA != null) {
            for (Object obj2 : listA) {
                if (((qm.b) obj2) instanceof VideoImmersiveDataLoaderV2) {
                    obj = obj2;
                    break;
                }
            }
            r11 = (qm.b) obj;
        }
        VideoImmersiveDataLoaderV2 videoImmersiveDataLoaderV2 = (VideoImmersiveDataLoaderV2) r11;
        if (videoImmersiveDataLoaderV2 == null) {
            videoImmersiveDataLoaderV2 = new VideoImmersiveDataLoaderV2(str, null, null, 0, 14, null);
        }
        this.f50214e = videoImmersiveDataLoaderV2;
    }

    public void G(String str, int i11) {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new PostDetailViewModel$like$1(str, i11, this, null), 3, null);
    }

    public final void r(String postId) {
        Intrinsics.h(postId, "postId");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new PostDetailViewModel$deletePost$1(postId, this, null), 3, null);
    }

    public final b0 t() {
        return (b0) this.f50219j.getValue();
    }

    public final void u(String postId, int i11, String nextPage, int i12, boolean z10, int i13) {
        Intrinsics.h(postId, "postId");
        Intrinsics.h(nextPage, "nextPage");
        if (!z10) {
            kotlinx.coroutines.k.d(u0.a(this), null, null, new PostDetailViewModel$getImmVideoList$1(this, postId, null), 3, null);
            return;
        }
        VideoImmersiveDataLoaderV2 videoImmersiveDataLoaderV2 = this.f50214e;
        if (videoImmersiveDataLoaderV2 != null) {
            videoImmersiveDataLoaderV2.u(postId);
        }
        VideoImmersiveDataLoaderV2 videoImmersiveDataLoaderV3 = this.f50214e;
        if (videoImmersiveDataLoaderV3 != null) {
            videoImmersiveDataLoaderV3.s(nextPage);
        }
        VideoImmersiveDataLoaderV2 videoImmersiveDataLoaderV4 = this.f50214e;
        if (videoImmersiveDataLoaderV4 != null) {
            videoImmersiveDataLoaderV4.t(i12);
        }
        VideoImmersiveDataLoaderV2 videoImmersiveDataLoaderV5 = this.f50214e;
        if (videoImmersiveDataLoaderV5 != null) {
            videoImmersiveDataLoaderV5.f(w());
        }
    }

    public final LiveData v() {
        return w();
    }

    public final void x(String postId) {
        Intrinsics.h(postId, "postId");
        if (TextUtils.isEmpty(postId)) {
            return;
        }
        kotlinx.coroutines.k.d(u0.a(this), null, null, new PostDetailViewModel$getPostDetail$1(this, postId, null), 3, null);
    }

    public final b0 y() {
        return (b0) this.f50216g.getValue();
    }
}
