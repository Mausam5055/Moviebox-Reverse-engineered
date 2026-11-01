package com.transsion.postdetail.viewmodel;

import android.net.Uri;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import com.transsion.moviedetailapi.bean.ShortTVRespData;
import com.transsion.postdetail.ui.fragment.preload.ShortTvVideoImmersiveDataLoader;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class x extends t0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ShortTvVideoImmersiveDataLoader f50275d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f50272a = "ShortTvDetailViewModel";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f50273b = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.viewmodel.r
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return x.t();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f50274c = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0() { // from class: com.transsion.postdetail.viewmodel.s
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return x.h();
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f50276e = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.viewmodel.t
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return x.p();
        }
    });

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f50277f = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.viewmodel.u
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return x.r();
        }
    });

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f50278g = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.viewmodel.v
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return x.i();
        }
    });

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Lazy f50279h = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.viewmodel.w
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return x.s();
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public static final kn.a h() {
        return (kn.a) zg.c.f79414e.a().h(kn.a.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 i() {
        return new b0();
    }

    private final b0 m() {
        return (b0) this.f50276e.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 p() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 r() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 s() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final xo.b t() {
        return (xo.b) zg.c.f79414e.a().h(xo.b.class);
    }

    public final b0 j() {
        return (b0) this.f50278g.getValue();
    }

    public final void k(String postId, int i11, String nextPage, int i12, int i13) {
        String string;
        Intrinsics.h(postId, "postId");
        Intrinsics.h(nextPage, "nextPage");
        ImmVideoRequestEntity immVideoRequestEntity = new ImmVideoRequestEntity();
        immVideoRequestEntity.setPage(nextPage);
        immVideoRequestEntity.setPerPage(i12);
        immVideoRequestEntity.setSessionId(yg.b.f79009a.h());
        Uri uriC = com.transsion.baselib.report.h.f43348a.c();
        if (uriC == null || (string = uriC.toString()) == null) {
            string = "";
        }
        immVideoRequestEntity.setDeepLink(string);
        immVideoRequestEntity.setUserPrefer("");
        immVideoRequestEntity.setLatest_events(new wj.a(wj.b.f77693a.e()));
        if (postId.length() == 0) {
            postId = "0";
        }
        immVideoRequestEntity.setPostId(postId);
        immVideoRequestEntity.setTabId(i11);
        immVideoRequestEntity.setImmersiveRecType(i13);
        ShortTvVideoImmersiveDataLoader shortTvVideoImmersiveDataLoader = this.f50275d;
        if (shortTvVideoImmersiveDataLoader != null) {
            shortTvVideoImmersiveDataLoader.r(immVideoRequestEntity);
        }
        ShortTvVideoImmersiveDataLoader shortTvVideoImmersiveDataLoader2 = this.f50275d;
        if (shortTvVideoImmersiveDataLoader2 != null) {
            shortTvVideoImmersiveDataLoader2.f(m());
        }
    }

    public final LiveData l() {
        return m();
    }

    public final ShortTVRespData n() {
        ShortTvVideoImmersiveDataLoader shortTvVideoImmersiveDataLoader = this.f50275d;
        if (shortTvVideoImmersiveDataLoader != null) {
            return (ShortTVRespData) shortTvVideoImmersiveDataLoader.a();
        }
        return null;
    }

    public final b0 o() {
        return (b0) this.f50279h.getValue();
    }

    public final void q(Integer num) {
        List listA;
        qm.b bVar;
        Object next;
        if (num != null) {
            listA = qm.e.f73644a.a(num.intValue());
        } else {
            listA = null;
        }
        if (listA != null) {
            Iterator it = listA.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!(((qm.b) next) instanceof ShortTvVideoImmersiveDataLoader));
            bVar = (qm.b) next;
        } else {
            bVar = null;
        }
        ShortTvVideoImmersiveDataLoader shortTvVideoImmersiveDataLoader = (ShortTvVideoImmersiveDataLoader) bVar;
        if (shortTvVideoImmersiveDataLoader == null) {
            shortTvVideoImmersiveDataLoader = new ShortTvVideoImmersiveDataLoader(null, 1, null);
        }
        this.f50275d = shortTvVideoImmersiveDataLoader;
    }
}
