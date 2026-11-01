package com.transsion.shorttv_pugc.viewmodel;

import android.content.Context;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv_pugc.ShorttvModel;
import com.transsion.shorttv_pugc.utils.ShortTvExtKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.k1;
import kotlinx.coroutines.m1;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.y0;
import st.i;

/* JADX INFO: loaded from: classes6.dex */
public final class ShortTvViewModel extends t0 {
    public static final a M = new a(null);
    private final Lazy A;
    private final Lazy B;
    private final Lazy C;
    private final Lazy D;
    private final Lazy E;
    private final List F;
    private final List G;
    private String H;
    private List I;
    private String J;
    private boolean K;
    private String L;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final rt.a f54466a = (rt.a) zg.c.f79414e.a().h(rt.a.class);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final k1 f54467b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b0 f54468c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b0 f54469d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b0 f54470e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final b0 f54471f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b0 f54472g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final b0 f54473h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final LiveData f54474i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final b0 f54475j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final LiveData f54476k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final b0 f54477l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final LiveData f54478m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final b0 f54479n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final LiveData f54480o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final b0 f54481p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final LiveData f54482q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final b0 f54483r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final LiveData f54484s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final b0 f54485t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private LiveData f54486u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final b0 f54487v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final LiveData f54488w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final tt.a f54489x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final Lazy f54490y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final Lazy f54491z;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public ShortTvViewModel() {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        Intrinsics.g(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor(...)");
        this.f54467b = m1.c(executorServiceNewSingleThreadExecutor);
        this.f54468c = new b0();
        this.f54469d = new b0();
        this.f54470e = new b0();
        this.f54471f = new b0();
        this.f54472g = new b0();
        b0 b0Var = new b0();
        this.f54473h = b0Var;
        this.f54474i = b0Var;
        b0 b0Var2 = new b0();
        this.f54475j = b0Var2;
        this.f54476k = b0Var2;
        b0 b0Var3 = new b0();
        this.f54477l = b0Var3;
        this.f54478m = b0Var3;
        b0 b0Var4 = new b0();
        this.f54479n = b0Var4;
        this.f54480o = b0Var4;
        b0 b0Var5 = new b0();
        this.f54481p = b0Var5;
        this.f54482q = b0Var5;
        b0 b0Var6 = new b0();
        this.f54483r = b0Var6;
        this.f54484s = b0Var6;
        b0 b0Var7 = new b0();
        this.f54485t = b0Var7;
        this.f54486u = b0Var7;
        b0 b0Var8 = new b0();
        this.f54487v = b0Var8;
        this.f54488w = b0Var8;
        this.f54489x = ys.a.f79056a.b();
        this.f54490y = LazyKt.b(new Function0() { // from class: com.transsion.shorttv_pugc.viewmodel.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShortTvViewModel.j0(this.f54492a);
            }
        });
        this.f54491z = LazyKt.b(new Function0() { // from class: com.transsion.shorttv_pugc.viewmodel.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShortTvViewModel.l0(this.f54493a);
            }
        });
        this.A = LazyKt.b(new Function0() { // from class: com.transsion.shorttv_pugc.viewmodel.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShortTvViewModel.k0(this.f54494a);
            }
        });
        this.B = LazyKt.b(new Function0() { // from class: com.transsion.shorttv_pugc.viewmodel.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShortTvViewModel.o0(this.f54495a);
            }
        });
        this.C = LazyKt.b(new Function0() { // from class: com.transsion.shorttv_pugc.viewmodel.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShortTvViewModel.m0(this.f54496a);
            }
        });
        this.D = LazyKt.b(new Function0() { // from class: com.transsion.shorttv_pugc.viewmodel.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShortTvViewModel.p0(this.f54497a);
            }
        });
        this.E = LazyKt.b(new Function0() { // from class: com.transsion.shorttv_pugc.viewmodel.h
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShortTvViewModel.n0(this.f54498a);
            }
        });
        this.F = new ArrayList();
        this.G = new ArrayList();
        this.H = "";
    }

    public static /* synthetic */ void a0(ShortTvViewModel shortTvViewModel, String str, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            str = shortTvViewModel.H;
        }
        shortTvViewModel.Z(str, i11, i12);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final st.c j0(ShortTvViewModel shortTvViewModel) {
        tt.a aVar = shortTvViewModel.f54489x;
        if (aVar != null) {
            return aVar.b();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final st.d k0(ShortTvViewModel shortTvViewModel) {
        tt.a aVar = shortTvViewModel.f54489x;
        if (aVar != null) {
            return aVar.e();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final st.e l0(ShortTvViewModel shortTvViewModel) {
        tt.a aVar = shortTvViewModel.f54489x;
        if (aVar != null) {
            return aVar.f();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final st.f m0(ShortTvViewModel shortTvViewModel) {
        tt.a aVar = shortTvViewModel.f54489x;
        if (aVar != null) {
            return aVar.a();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final st.h n0(ShortTvViewModel shortTvViewModel) {
        tt.a aVar = shortTvViewModel.f54489x;
        if (aVar != null) {
            return aVar.d();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final st.a o0(ShortTvViewModel shortTvViewModel) {
        tt.a aVar = shortTvViewModel.f54489x;
        if (aVar != null) {
            return aVar.i();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final i p0(ShortTvViewModel shortTvViewModel) {
        tt.a aVar = shortTvViewModel.f54489x;
        if (aVar != null) {
            return aVar.c();
        }
        return null;
    }

    public final LiveData A() {
        return this.f54486u;
    }

    public final LiveData B() {
        return this.f54476k;
    }

    public final Object C(String str, Continuation continuation) {
        st.f fVarO = O();
        if (fVarO != null) {
            return fVarO.c(str, continuation);
        }
        return null;
    }

    public final LiveData D() {
        return this.f54484s;
    }

    public final LiveData E() {
        return this.f54478m;
    }

    public final int F() {
        ShorttvModel.UGCVideo uGCVideo = (ShorttvModel.UGCVideo) CollectionsKt.k0(this.G);
        if (uGCVideo != null) {
            return uGCVideo.getEp();
        }
        return -1;
    }

    public final int G() {
        ShorttvModel.UGCVideo uGCVideo = (ShorttvModel.UGCVideo) CollectionsKt.v0(this.G);
        if (uGCVideo != null) {
            return uGCVideo.getEp();
        }
        return -1;
    }

    public final void H(int i11) {
    }

    public final String I() {
        return this.J;
    }

    public final LiveData J() {
        return this.f54480o;
    }

    public final void K(String nextPage, int i11, boolean z10) {
        Intrinsics.h(nextPage, "nextPage");
    }

    public final st.c L() {
        return (st.c) this.f54490y.getValue();
    }

    public final st.d M() {
        return (st.d) this.A.getValue();
    }

    public final st.e N() {
        return (st.e) this.f54491z.getValue();
    }

    public final st.f O() {
        return (st.f) this.C.getValue();
    }

    public final st.h P() {
        return (st.h) this.E.getValue();
    }

    public final st.a Q() {
        return (st.a) this.B.getValue();
    }

    public final i R() {
        return (i) this.D.getValue();
    }

    public final LiveData S() {
        return this.f54482q;
    }

    public final b0 T() {
        return this.f54468c;
    }

    public final boolean U() {
        return this.K;
    }

    public final void V(ShorttvModel.UGCVideo uGCVideo) {
        String ugcVideoId;
        ShorttvModel.UGCVideoInteractiveInfo interactiveInfo;
        Boolean hasLike;
        String likeNum;
        if (uGCVideo == null || (ugcVideoId = uGCVideo.getUgcVideoId()) == null || (interactiveInfo = uGCVideo.getInteractiveInfo()) == null || (hasLike = interactiveInfo.getHasLike()) == null) {
            return;
        }
        boolean zBooleanValue = hasLike.booleanValue();
        interactiveInfo.setHasLike(Boolean.valueOf(!zBooleanValue));
        ShorttvModel.UGCVideoInteractiveInfo interactiveInfo2 = uGCVideo.getInteractiveInfo();
        interactiveInfo.setLikeNum(String.valueOf(((interactiveInfo2 == null || (likeNum = interactiveInfo2.getLikeNum()) == null) ? 0L : Long.parseLong(likeNum)) + ((long) (zBooleanValue ? -1 : 1))));
        this.f54477l.q(Boolean.valueOf(!zBooleanValue));
        ShortTvExtKt.m(!zBooleanValue ? R$string.short_tv_liked : R$string.short_tv_liked_removed);
        k.d(u0.a(this), null, null, new ShortTvViewModel$like$1(this, ugcVideoId, zBooleanValue, null), 3, null);
    }

    public final void W(Context context) {
        Intrinsics.h(context, "context");
    }

    public final void X() {
        this.f54471f.q(this.f54470e.f());
    }

    public final t1 Y(String str, String str2, String str3) {
        return k.d(u0.a(this), null, null, new ShortTvViewModel$requestFirstVideo$1(str, this, str3, str2, null), 3, null);
    }

    public final void Z(String str, int i11, int i12) {
        k.d(u0.a(this), this.f54467b, null, new ShortTvViewModel$requestVideoCollection$1(str, i11, i12, this, null), 2, null);
    }

    public final void b0(ShorttvModel.UGCVideo uGCVideo, long j11) {
        if (uGCVideo == null) {
            return;
        }
        k.d(u0.a(this), y0.b(), null, new ShortTvViewModel$saveHistory$1(this, uGCVideo, j11, null), 2, null);
    }

    public final void c0(int i11) {
        Iterator it = this.F.iterator();
        int i12 = 0;
        while (true) {
            if (!it.hasNext()) {
                i12 = -1;
                break;
            } else if (((ShorttvModel.UGCVideo) it.next()).getEp() == i11) {
                break;
            } else {
                i12++;
            }
        }
        if (i12 >= 0 || this.f54470e.f() == null) {
            Integer num = (Integer) this.f54470e.f();
            if (num != null && i11 == num.intValue()) {
                return;
            }
            this.f54470e.n(Integer.valueOf(i11));
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, "ShortTvViewModel", "scrollToEp：" + i11 + " 当前不存在该集", false, 4, null);
    }

    public final void d0(String str) {
        this.L = str;
    }

    public final void e0(String str) {
        this.H = str;
    }

    public final void f0(List list) {
        this.I = list;
    }

    public final void g0(String str) {
        this.J = str;
    }

    public final void h0(boolean z10) {
        this.K = z10;
    }

    public final void i0(ShorttvModel.UGCVideo uGCVideo) {
    }

    public final void m() {
        this.f54483r.q(null);
    }

    public final void n(ShorttvModel.UGCVideo uGCVideo) {
        ShorttvModel.UGCVideoInteractiveInfo interactiveInfo;
        Boolean hasFavorite;
        String favoriteNum;
        if (uGCVideo == null || (interactiveInfo = uGCVideo.getInteractiveInfo()) == null || (hasFavorite = interactiveInfo.getHasFavorite()) == null) {
            return;
        }
        boolean zBooleanValue = hasFavorite.booleanValue();
        String ugcVideoId = uGCVideo.getUgcVideoId();
        if (ugcVideoId == null) {
            return;
        }
        ShorttvModel.UGCVideoInteractiveInfo interactiveInfo2 = uGCVideo.getInteractiveInfo();
        if (interactiveInfo2 != null) {
            interactiveInfo2.setHasFavorite(Boolean.valueOf(!zBooleanValue));
        }
        ShorttvModel.UGCVideoInteractiveInfo interactiveInfo3 = uGCVideo.getInteractiveInfo();
        if (interactiveInfo3 != null) {
            ShorttvModel.UGCVideoInteractiveInfo interactiveInfo4 = uGCVideo.getInteractiveInfo();
            interactiveInfo3.setFavoriteNum(String.valueOf(((interactiveInfo4 == null || (favoriteNum = interactiveInfo4.getFavoriteNum()) == null) ? 0L : Long.parseLong(favoriteNum)) + ((long) (zBooleanValue ? -1 : 1))));
        }
        this.f54473h.q(Boolean.valueOf(!zBooleanValue));
        ShortTvExtKt.m(!zBooleanValue ? R$string.short_tv_favorite : R$string.short_tv_favorite_removed);
        k.d(u0.a(this), null, null, new ShortTvViewModel$favorite$1(this, ugcVideoId, zBooleanValue, null), 3, null);
    }

    public final void o(ShorttvModel.UGCVideo uGCVideo) {
        ShorttvModel.UGCVideoCreator creator;
        String uid;
        Boolean hasSubscribe;
        if (uGCVideo == null || (creator = uGCVideo.getCreator()) == null || (uid = creator.getUid()) == null || (hasSubscribe = creator.getHasSubscribe()) == null) {
            return;
        }
        boolean zBooleanValue = hasSubscribe.booleanValue();
        creator.setHasSubscribe(Boolean.valueOf(!zBooleanValue));
        this.f54475j.q(Boolean.valueOf(!zBooleanValue));
        ShortTvExtKt.m(!zBooleanValue ? R$string.short_tv_subscribe : R$string.short_tv_unsubscribe);
        k.d(u0.a(this), null, null, new ShortTvViewModel$follow$1(this, uid, zBooleanValue, null), 3, null);
    }

    public final List p() {
        return this.F;
    }

    public final String q() {
        return this.L;
    }

    public final void q0(boolean z10) {
        this.f54481p.q(Boolean.valueOf(z10));
    }

    public final String r() {
        return this.H;
    }

    public final b0 s() {
        return this.f54470e;
    }

    public final ShorttvModel.UGCVideo t() {
        Integer num = (Integer) this.f54470e.f();
        if (num == null) {
            return null;
        }
        return (ShorttvModel.UGCVideo) this.F.get(ShortTvExtKt.d(num.intValue()));
    }

    public final LiveData u() {
        return this.f54488w;
    }

    public final List v() {
        return this.I;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object w(String str, Continuation continuation) throws Throwable {
        ShortTvViewModel$getDownloadVideo$1 shortTvViewModel$getDownloadVideo$1;
        if (continuation instanceof ShortTvViewModel$getDownloadVideo$1) {
            shortTvViewModel$getDownloadVideo$1 = (ShortTvViewModel$getDownloadVideo$1) continuation;
            int i11 = shortTvViewModel$getDownloadVideo$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                shortTvViewModel$getDownloadVideo$1.label = i11 - Integer.MIN_VALUE;
            } else {
                shortTvViewModel$getDownloadVideo$1 = new ShortTvViewModel$getDownloadVideo$1(this, continuation);
            }
        } else {
            shortTvViewModel$getDownloadVideo$1 = new ShortTvViewModel$getDownloadVideo$1(this, continuation);
        }
        Object objE = shortTvViewModel$getDownloadVideo$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = shortTvViewModel$getDownloadVideo$1.label;
        if (i12 == 0) {
            ResultKt.b(objE);
            st.c cVarL = L();
            if (cVarL != null) {
                shortTvViewModel$getDownloadVideo$1.label = 1;
                objE = cVarL.e(str, shortTvViewModel$getDownloadVideo$1);
                if (objE == objF) {
                    return objF;
                }
            }
            return null;
        }
        if (i12 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(objE);
        ShorttvModel.UGCVideo uGCVideo = (ShorttvModel.UGCVideo) objE;
        if (uGCVideo != null) {
            List list = this.I;
            if (list == null) {
                return uGCVideo;
            }
            Boxing.a(list.add(uGCVideo));
            return uGCVideo;
        }
        return null;
    }

    public final b0 x() {
        return this.f54469d;
    }

    public final LiveData y() {
        return this.f54474i;
    }

    public final List z() {
        return this.G;
    }
}
