package com.transsion.postdetail.viewmodel;

import android.content.Context;
import android.location.Address;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.moviedetailapi.bean.PostSubjectBean;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class RoomPostViewModel extends t0 {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final a f50228p = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f50229a = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.viewmodel.n
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return RoomPostViewModel.l0();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f50230b = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0() { // from class: com.transsion.postdetail.viewmodel.o
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return RoomPostViewModel.y();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f50231c = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.viewmodel.p
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return RoomPostViewModel.x();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f50232d = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.viewmodel.q
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Boolean.valueOf(RoomPostViewModel.Y());
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b0 f50233e = new b0();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final b0 f50234f = new b0();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b0 f50235g = new b0();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final b0 f50236h = new b0();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final b0 f50237i = new b0();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final b0 f50238j = new b0();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final b0 f50239k = new b0();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final b0 f50240l = new b0();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final b0 f50241m = new b0();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final b0 f50242n = new b0();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f50243o;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final yo.a A() {
        return (yo.a) this.f50231c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kn.a B() {
        return (kn.a) this.f50230b.getValue();
    }

    public static /* synthetic */ void P(RoomPostViewModel roomPostViewModel, boolean z10, boolean z11, String str, String str2, String str3, int i11, int i12, Object obj) {
        if ((i12 & 32) != 0) {
            i11 = 9;
        }
        roomPostViewModel.O(z10, z11, str, str2, str3, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final xo.c S() {
        return (xo.c) this.f50229a.getValue();
    }

    public static /* synthetic */ void V(RoomPostViewModel roomPostViewModel, boolean z10, boolean z11, String str, String str2, String str3, int i11, int i12, Object obj) {
        if ((i12 & 32) != 0) {
            i11 = 9;
        }
        roomPostViewModel.U(z10, z11, str, str2, str3, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean Y() {
        String value;
        ConfigBean configBeanC = sm.f.f75407c.a().c("sa_room_post_cache", true);
        if (configBeanC == null || (value = configBeanC.getValue()) == null) {
            return false;
        }
        return Intrinsics.c(StringsKt.m1(value), Boolean.TRUE);
    }

    private final List a0(String str) {
        List<PostSubjectItem> items;
        PostSubjectBean postSubjectBean = (PostSubjectBean) com.blankj.utilcode.util.o.d(str, PostSubjectBean.class);
        return (postSubjectBean == null || (items = postSubjectBean.getItems()) == null) ? CollectionsKt.l() : items;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List b0() {
        Object objM454constructorimpl;
        List listL;
        try {
            Result.Companion companion = Result.INSTANCE;
            String string = com.transsion.baselib.report.launch.b.f43370a.b().getString("post_explore_exposed_cache", "");
            if (string == null || string.length() == 0) {
                listL = CollectionsKt.l();
            } else {
                listL = a0(string);
                lg.a.C0828a.f(lg.a.f68839a, "RoomPostVM", "loadExposedCacheItems, size:" + listL.size(), false, 4, null);
            }
            objM454constructorimpl = Result.m454constructorimpl(listL);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.C0828a.l(lg.a.f68839a, "RoomPostVM", "loadExposedCacheItems failed: " + thM457exceptionOrNullimpl.getMessage(), false, 4, null);
        }
        List listL2 = CollectionsKt.l();
        if (Result.m460isFailureimpl(objM454constructorimpl)) {
            objM454constructorimpl = listL2;
        }
        return (List) objM454constructorimpl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List c0() {
        Object objM454constructorimpl;
        List listL;
        try {
            Result.Companion companion = Result.INSTANCE;
            String string = com.transsion.baselib.report.launch.b.f43370a.b().getString("room_cache_data", "");
            if (string == null || string.length() == 0) {
                listL = CollectionsKt.l();
            } else {
                listL = a0(string);
                lg.a.C0828a.f(lg.a.f68839a, "RoomPostVM", "loadManualCacheItems, size:" + listL.size(), false, 4, null);
            }
            objM454constructorimpl = Result.m454constructorimpl(listL);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.C0828a.l(lg.a.f68839a, "RoomPostVM", "loadManualCacheItems failed: " + thM457exceptionOrNullimpl.getMessage(), false, 4, null);
        }
        List listL2 = CollectionsKt.l();
        if (Result.m460isFailureimpl(objM454constructorimpl)) {
            objM454constructorimpl = listL2;
        }
        return (List) objM454constructorimpl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List d0(String str, String str2) {
        Object objM454constructorimpl;
        List listL;
        try {
            Result.Companion companion = Result.INSTANCE;
            String string = com.transsion.baselib.report.launch.b.f43370a.b().getString(str, "");
            if (string == null || string.length() == 0) {
                listL = CollectionsKt.l();
            } else {
                listL = a0(string);
                lg.a.C0828a.f(lg.a.f68839a, "RoomPostVM", str2 + ", size:" + listL.size(), false, 4, null);
            }
            objM454constructorimpl = Result.m454constructorimpl(listL);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl != null) {
            lg.a.C0828a.l(lg.a.f68839a, "RoomPostVM", str2 + " failed: " + thM457exceptionOrNullimpl.getMessage(), false, 4, null);
        }
        List listL2 = CollectionsKt.l();
        if (Result.m460isFailureimpl(objM454constructorimpl)) {
            objM454constructorimpl = listL2;
        }
        return (List) objM454constructorimpl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PostSubjectBean k0(List list, List list2, List list3) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : list3) {
            PostSubjectItem postSubjectItem = (PostSubjectItem) obj;
            if (!postSubjectItem.isRoomCacheListStart() && !postSubjectItem.isRoomCacheListEnd()) {
                arrayList.add(obj);
            }
        }
        if (list.isEmpty() && list2.isEmpty() && arrayList.isEmpty()) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            PostSubjectItem postSubjectItem2 = (PostSubjectItem) it.next();
            String postId = postSubjectItem2.getPostId();
            if (postId != null) {
                linkedHashSet.add(postId);
            }
            arrayList2.add(postSubjectItem2);
        }
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            PostSubjectItem postSubjectItem3 = (PostSubjectItem) it2.next();
            if (postSubjectItem3.getPostId() != null) {
                String postId2 = postSubjectItem3.getPostId();
                Intrinsics.e(postId2);
                if (linkedHashSet.add(postId2)) {
                }
            }
            arrayList2.add(postSubjectItem3);
        }
        if (!arrayList.isEmpty()) {
            ArrayList arrayList3 = new ArrayList();
            for (Object obj2 : arrayList) {
                PostSubjectItem postSubjectItem4 = (PostSubjectItem) obj2;
                if (postSubjectItem4.getPostId() != null) {
                    String postId3 = postSubjectItem4.getPostId();
                    Intrinsics.e(postId3);
                    if (linkedHashSet.add(postId3)) {
                    }
                }
                arrayList3.add(obj2);
            }
            if (!arrayList3.isEmpty()) {
                PostSubjectItem postSubjectItem5 = new PostSubjectItem(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, null, false, null, false, null, false, false, false, false, null, -1, 1, null);
                postSubjectItem5.setRoomCacheListStart(true);
                postSubjectItem5.setRoomCache(true);
                arrayList2.add(postSubjectItem5);
                arrayList2.addAll(arrayList3);
                PostSubjectItem postSubjectItem6 = new PostSubjectItem(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, null, false, null, false, null, false, false, false, false, null, -1, 1, null);
                postSubjectItem6.setRoomCacheListEnd(true);
                postSubjectItem6.setRoomCache(true);
                arrayList2.add(postSubjectItem6);
            }
        }
        PostSubjectBean postSubjectBean = new PostSubjectBean(arrayList2, null, null, null);
        postSubjectBean.setRefresh(true);
        return postSubjectBean;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final xo.c l0() {
        return (xo.c) zg.c.f79414e.a().h(xo.c.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final yo.a x() {
        return new yo.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kn.a y() {
        return (kn.a) zg.c.f79414e.a().h(kn.a.class);
    }

    public final b0 C() {
        return this.f50238j;
    }

    public final b0 D() {
        return this.f50233e;
    }

    public final b0 E() {
        return this.f50234f;
    }

    public final int F() {
        ConfigBean configBeanC = sm.f.f75407c.a().c("sa_room_post_cache_count", true);
        String value = configBeanC != null ? configBeanC.getValue() : null;
        Integer numV = value != null ? StringsKt.v(value) : null;
        if (numV != null) {
            return numV.intValue();
        }
        return 24;
    }

    public final b0 G() {
        return this.f50235g;
    }

    public final b0 H() {
        return this.f50237i;
    }

    public final b0 I() {
        return this.f50236h;
    }

    public final void J(Context context, boolean z10, boolean z11, String str, int i11, String str2) {
        Intrinsics.h(context, "context");
        if (!X()) {
            e0();
        }
        if (z10) {
            lg.a.C0828a.f(lg.a.f68839a, "RoomPostVM", "getPostExplore [AB:" + (X() ? "实验组-新缓存策略" : "对照组-旧缓存策略") + "]", false, 4, null);
            if (X()) {
                g0();
            } else {
                h0();
            }
            f0();
        }
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomPostViewModel$getPostExplore$1(z10, this, z11, str, i11, str2, null), 3, null);
    }

    public final void K(boolean z10, String str, int i11, String str2) {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new RoomPostViewModel$getPostExploreMoreCache$1(this, str, i11, str2, z10, null), 2, null);
    }

    public final void L(boolean z10, String str, int i11, double d11, double d12) {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new RoomPostViewModel$getPostNearby$1(this, str, i11, d12, d11, z10, null), 2, null);
    }

    public final void M(boolean z10, String str, String str2, int i11, String sortType, boolean z11) {
        Intrinsics.h(sortType, "sortType");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomPostViewModel$getPostNewest$1(this, str, str2, i11, sortType, z11, z10, null), 3, null);
    }

    public final void N(boolean z10, String groupId, String str, int i11, boolean z11) {
        Intrinsics.h(groupId, "groupId");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomPostViewModel$getPostPopular$1(this, groupId, str, i11, z11, z10, null), 3, null);
    }

    public final void O(boolean z10, boolean z11, String tabId, String str, String str2, int i11) {
        Intrinsics.h(tabId, "tabId");
        if (z10) {
            i0(tabId);
        }
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomPostViewModel$getPostSubPageList$1(z10, tabId, z11, this, str, i11, str2, null), 3, null);
    }

    public final void Q(double d11, double d12, Address address) {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomPostViewModel$getRecommendRooms$1(this, d11, d12, address, null), 3, null);
    }

    public final b0 R() {
        return this.f50239k;
    }

    public final b0 T() {
        return this.f50242n;
    }

    public final void U(boolean z10, boolean z11, String tabId, String str, String str2, int i11) {
        Intrinsics.h(tabId, "tabId");
        if (z10) {
            j0(tabId);
        }
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomPostViewModel$getStaggeredPostPageList$1(z10, tabId, z11, this, str, i11, str2, null), 3, null);
    }

    public final b0 W() {
        return this.f50241m;
    }

    public final boolean X() {
        return ((Boolean) this.f50232d.getValue()).booleanValue();
    }

    public final void Z(String str, int i11) {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomPostViewModel$like$1(str, i11, this, null), 3, null);
    }

    public final void e0() {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new RoomPostViewModel$loadPostExploreActiveSaveCache$1(this, null), 2, null);
    }

    public final void f0() {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new RoomPostViewModel$loadPostExploreBuiltInCache$1(this, null), 2, null);
    }

    public final void g0() {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new RoomPostViewModel$loadPostExploreCombinedCache$1(this, null), 2, null);
    }

    public final void h0() {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new RoomPostViewModel$loadPostExploreNetCache$1(this, null), 2, null);
    }

    public final void i0(String tabId) {
        Intrinsics.h(tabId, "tabId");
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new RoomPostViewModel$loadPostSubPageCache$1(tabId, this, null), 2, null);
    }

    public final void j0(String tabId) {
        Intrinsics.h(tabId, "tabId");
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new RoomPostViewModel$loadStaggeredPostPageCache$1(tabId, this, null), 2, null);
    }

    public final void z(String str) {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new RoomPostViewModel$deletePost$1(str, this, null), 3, null);
    }
}
