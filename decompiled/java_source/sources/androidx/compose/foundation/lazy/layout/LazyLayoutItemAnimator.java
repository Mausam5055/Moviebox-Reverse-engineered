package androidx.compose.foundation.lazy.layout;

import androidx.collection.MutableScatterSet;
import androidx.collection.n0;
import androidx.collection.v0;
import androidx.collection.w0;
import androidx.compose.ui.graphics.a4;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class LazyLayoutItemAnimator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private p f2958b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2959c;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private androidx.compose.ui.node.n f2966j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final n0 f2957a = v0.d();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final MutableScatterSet f2960d = w0.a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List f2961e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List f2962f = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List f2963g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List f2964h = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final List f2965i = new ArrayList();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final androidx.compose.ui.f f2967k = new DisplayingDisappearingItemsElement(this);

    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0082\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0013\u0012\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u001a\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013HÖ\u0003¢\u0006\u0004\b\u0016\u0010\u0017R\u0018\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001a"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$DisplayingDisappearingItemsElement;", "Landroidx/compose/ui/node/l0;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$a;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;", "animator", "<init>", "(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;)V", "j", "()Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$a;", "node", "", CampaignEx.JSON_KEY_AD_K, "(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator$a;)V", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    private static final /* data */ class DisplayingDisappearingItemsElement extends androidx.compose.ui.node.l0 {

        /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata and from toString */
        private final LazyLayoutItemAnimator animator;

        public DisplayingDisappearingItemsElement(LazyLayoutItemAnimator lazyLayoutItemAnimator) {
            this.animator = lazyLayoutItemAnimator;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof DisplayingDisappearingItemsElement) && Intrinsics.c(this.animator, ((DisplayingDisappearingItemsElement) other).animator);
        }

        public int hashCode() {
            return this.animator.hashCode();
        }

        @Override // androidx.compose.ui.node.l0
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public a getNode() {
            return new a(this.animator);
        }

        @Override // androidx.compose.ui.node.l0
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public void i(a node) {
            node.D1(this.animator);
        }

        public String toString() {
            return "DisplayingDisappearingItemsElement(animator=" + this.animator + ')';
        }
    }

    private static final class a extends androidx.compose.ui.f.c implements androidx.compose.ui.node.n {

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private LazyLayoutItemAnimator f2969n;

        public a(LazyLayoutItemAnimator lazyLayoutItemAnimator) {
            this.f2969n = lazyLayoutItemAnimator;
        }

        public final void D1(LazyLayoutItemAnimator lazyLayoutItemAnimator) {
            if (Intrinsics.c(this.f2969n, lazyLayoutItemAnimator) || !getNode().k1()) {
                return;
            }
            this.f2969n.n();
            lazyLayoutItemAnimator.f2966j = this;
            this.f2969n = lazyLayoutItemAnimator;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && Intrinsics.c(this.f2969n, ((a) obj).f2969n);
        }

        public int hashCode() {
            return this.f2969n.hashCode();
        }

        @Override // androidx.compose.ui.node.n
        public void n(z.c cVar) {
            List list = this.f2969n.f2965i;
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                k kVar = (k) list.get(i11);
                GraphicsLayer graphicsLayerE = kVar.e();
                if (graphicsLayerE != null) {
                    float fH = o0.p.h(kVar.d());
                    float fI = o0.p.i(kVar.d());
                    float fH2 = fH - o0.p.h(graphicsLayerE.w());
                    float fI2 = fI - o0.p.i(graphicsLayerE.w());
                    cVar.H0().c().c(fH2, fI2);
                    try {
                        androidx.compose.ui.graphics.layer.d.a(cVar, graphicsLayerE);
                        cVar.H0().c().c(-fH2, -fI2);
                    } catch (Throwable th2) {
                        cVar.H0().c().c(-fH2, -fI2);
                        throw th2;
                    }
                }
            }
            cVar.Y0();
        }

        @Override // androidx.compose.ui.f.c
        public void n1() {
            this.f2969n.f2966j = this;
        }

        @Override // androidx.compose.ui.f.c
        public void o1() {
            this.f2969n.n();
        }

        public String toString() {
            return "DisplayingDisappearingItemsNode(animator=" + this.f2969n + ')';
        }

        @Override // androidx.compose.ui.node.n
        public /* synthetic */ void w0() {
            androidx.compose.ui.node.m.a(this);
        }
    }

    private final class b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private o0.b f2971b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f2972c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f2973d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f2975f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f2976g;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private k[] f2970a = l.f3061a;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f2974e = 1;

        public b() {
        }

        private final boolean h() {
            for (k kVar : this.f2970a) {
            }
            return false;
        }

        public static /* synthetic */ void l(b bVar, s sVar, kotlinx.coroutines.n0 n0Var, a4 a4Var, int i11, int i12, int i13, int i14, Object obj) {
            if ((i14 & 32) != 0) {
                i13 = LazyLayoutItemAnimator.this.e(sVar);
            }
            bVar.k(sVar, n0Var, a4Var, i11, i12, i13);
        }

        public final k[] a() {
            return this.f2970a;
        }

        public final o0.b b() {
            return this.f2971b;
        }

        public final int c() {
            return this.f2972c;
        }

        public final int d() {
            return this.f2973d;
        }

        public final int e() {
            return this.f2976g;
        }

        public final int f() {
            return this.f2975f;
        }

        public final int g() {
            return this.f2974e;
        }

        public final void i(int i11) {
            this.f2973d = i11;
        }

        public final void j(int i11) {
            this.f2974e = i11;
        }

        public final void k(s sVar, kotlinx.coroutines.n0 n0Var, a4 a4Var, int i11, int i12, int i13) {
            if (!h()) {
                this.f2975f = i11;
                this.f2976g = i12;
            }
            int length = this.f2970a.length;
            for (int iB = sVar.b(); iB < length; iB++) {
                k kVar = this.f2970a[iB];
            }
            if (this.f2970a.length != sVar.b()) {
                Object[] objArrCopyOf = Arrays.copyOf(this.f2970a, sVar.b());
                Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
                this.f2970a = (k[]) objArrCopyOf;
            }
            this.f2971b = o0.b.a(sVar.a());
            this.f2972c = i13;
            this.f2973d = sVar.k();
            this.f2974e = sVar.d();
            int iB2 = sVar.b();
            for (int i14 = 0; i14 < iB2; i14++) {
                l.b(sVar.i(i14));
                k kVar2 = this.f2970a[i14];
                this.f2970a[i14] = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int e(s sVar) {
        long j11 = sVar.j(0);
        return !sVar.e() ? o0.p.i(j11) : o0.p.h(j11);
    }

    private final boolean f(s sVar) {
        int iB = sVar.b();
        for (int i11 = 0; i11 < iB; i11++) {
            l.b(sVar.i(i11));
        }
        return false;
    }

    private final int g(s sVar) {
        long j11 = sVar.j(0);
        return sVar.e() ? o0.p.i(j11) : o0.p.h(j11);
    }

    private final void j(s sVar, int i11, b bVar) {
        long j11 = sVar.j(0);
        if (sVar.e()) {
            o0.p.e(j11, 0, i11, 1, null);
        } else {
            o0.p.e(j11, i11, 0, 2, null);
        }
        for (k kVar : bVar.a()) {
        }
    }

    static /* synthetic */ void k(LazyLayoutItemAnimator lazyLayoutItemAnimator, s sVar, int i11, b bVar, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            Object objB = lazyLayoutItemAnimator.f2957a.b(sVar.getKey());
            Intrinsics.e(objB);
            bVar = (b) objB;
        }
        lazyLayoutItemAnimator.j(sVar, i11, bVar);
    }

    private final void m(Object obj) {
        k[] kVarArrA;
        b bVar = (b) this.f2957a.o(obj);
        if (bVar == null || (kVarArrA = bVar.a()) == null) {
            return;
        }
        for (k kVar : kVarArrA) {
        }
    }

    private final void o(s sVar, boolean z10) {
        Object objB = this.f2957a.b(sVar.getKey());
        Intrinsics.e(objB);
        for (k kVar : ((b) objB).a()) {
        }
    }

    static /* synthetic */ void p(LazyLayoutItemAnimator lazyLayoutItemAnimator, s sVar, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        lazyLayoutItemAnimator.o(sVar, z10);
    }

    private final int q(int[] iArr, s sVar) {
        int iK = sVar.k();
        int iD = sVar.d() + iK;
        int iMax = 0;
        while (iK < iD) {
            int iH = iArr[iK] + sVar.h();
            iArr[iK] = iH;
            iMax = Math.max(iMax, iH);
            iK++;
        }
        return iMax;
    }

    public final k d(Object obj, int i11) {
        k[] kVarArrA;
        b bVar = (b) this.f2957a.b(obj);
        if (bVar == null || (kVarArrA = bVar.a()) == null) {
            return null;
        }
        return kVarArrA[i11];
    }

    public final long h() {
        long jA = o0.t.f70624b.a();
        List list = this.f2965i;
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            k kVar = (k) list.get(i11);
            GraphicsLayer graphicsLayerE = kVar.e();
            if (graphicsLayerE != null) {
                jA = o0.u.a(Math.max(o0.t.g(jA), o0.p.h(kVar.h()) + o0.t.g(graphicsLayerE.v())), Math.max(o0.t.f(jA), o0.p.i(kVar.h()) + o0.t.f(graphicsLayerE.v())));
            }
        }
        return jA;
    }

    public final androidx.compose.ui.f i() {
        return this.f2967k;
    }

    public final void l(int i11, int i12, int i13, List list, final p pVar, t tVar, boolean z10, boolean z11, int i14, boolean z12, int i15, int i16, kotlinx.coroutines.n0 n0Var, a4 a4Var) {
        p pVar2;
        boolean z13;
        int[] iArr;
        int i17;
        int[] iArr2;
        long[] jArr;
        Object[] objArr;
        int i18;
        long[] jArr2;
        Object[] objArr2;
        p pVar3;
        int i19;
        int iA;
        long[] jArr3;
        int i20;
        int i21 = i14;
        p pVar4 = this.f2958b;
        this.f2958b = pVar;
        int size = list.size();
        int i22 = 0;
        while (true) {
            if (i22 >= size) {
                if (!this.f2957a.e()) {
                    break;
                }
                n();
                return;
            } else if (f((s) list.get(i22))) {
                break;
            } else {
                i22++;
            }
        }
        int i23 = this.f2959c;
        s sVar = (s) CollectionsKt.k0(list);
        this.f2959c = sVar != null ? sVar.getIndex() : 0;
        if (z10) {
            o0.q.a(0, i11);
        } else {
            o0.q.a(i11, 0);
        }
        boolean z14 = z11 || !z12;
        n0 n0Var2 = this.f2957a;
        Object[] objArr3 = n0Var2.f2345b;
        long[] jArr4 = n0Var2.f2344a;
        int length = jArr4.length - 2;
        int i24 = 8;
        if (length >= 0) {
            int i25 = 0;
            z13 = z14;
            while (true) {
                long j11 = jArr4[i25];
                pVar2 = pVar4;
                if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i26 = 8 - ((~(i25 - length)) >>> 31);
                    int i27 = 0;
                    while (i27 < i26) {
                        if ((j11 & 255) < 128) {
                            this.f2960d.h(objArr3[(i25 << 3) + i27]);
                            i24 = 8;
                        }
                        j11 >>= i24;
                        i27++;
                        jArr4 = jArr4;
                    }
                    jArr3 = jArr4;
                    i20 = 1;
                    if (i26 != i24) {
                        break;
                    }
                } else {
                    jArr3 = jArr4;
                    i20 = 1;
                }
                if (i25 == length) {
                    break;
                }
                i25 += i20;
                pVar4 = pVar2;
                jArr4 = jArr3;
            }
        } else {
            pVar2 = pVar4;
            z13 = z14;
        }
        int size2 = list.size();
        int i28 = 0;
        while (i28 < size2) {
            s sVar2 = (s) list.get(i28);
            this.f2960d.x(sVar2.getKey());
            if (f(sVar2)) {
                b bVar = (b) this.f2957a.b(sVar2.getKey());
                if (pVar2 != null) {
                    pVar3 = pVar2;
                    iA = pVar3.a(sVar2.getKey());
                } else {
                    pVar3 = pVar2;
                    iA = -1;
                }
                boolean z15 = iA == -1 && pVar3 != null;
                if (bVar == null) {
                    b bVar2 = new b();
                    b.l(bVar2, sVar2, n0Var, a4Var, i15, i16, 0, 32, null);
                    this.f2957a.r(sVar2.getKey(), bVar2);
                    if (sVar2.getIndex() == iA || iA == -1) {
                        long j12 = sVar2.j(0);
                        j(sVar2, sVar2.e() ? o0.p.i(j12) : o0.p.h(j12), bVar2);
                        if (z15) {
                            k[] kVarArrA = bVar2.a();
                            for (k kVar : kVarArrA) {
                            }
                        }
                    } else if (iA < i23) {
                        this.f2961e.add(sVar2);
                    } else {
                        this.f2962f.add(sVar2);
                    }
                } else if (z13) {
                    b.l(bVar, sVar2, n0Var, a4Var, i15, i16, 0, 32, null);
                    k[] kVarArrA2 = bVar.a();
                    int i29 = 0;
                    for (int length2 = kVarArrA2.length; i29 < length2; length2 = length2) {
                        k kVar2 = kVarArrA2[i29];
                        i29++;
                    }
                    i19 = 1;
                    if (z15) {
                        for (k kVar3 : bVar.a()) {
                        }
                    }
                    p(this, sVar2, false, 2, null);
                }
                i19 = 1;
            } else {
                pVar3 = pVar2;
                i19 = 1;
                m(sVar2.getKey());
            }
            i28 += i19;
            pVar2 = pVar3;
        }
        final p pVar5 = pVar2;
        int i30 = 0;
        int i31 = 2;
        int[] iArr3 = new int[i21];
        int i32 = 0;
        while (i32 < i21) {
            iArr3[i32] = i30;
            i32++;
            i30 = 0;
        }
        if (!z13 || pVar5 == null) {
            iArr = iArr3;
            i17 = 2;
        } else {
            if (this.f2961e.isEmpty()) {
                iArr = iArr3;
                i17 = 2;
            } else {
                List list2 = this.f2961e;
                if (list2.size() > 1) {
                    CollectionsKt.A(list2, new Comparator() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$onMeasured$$inlined$sortByDescending$1
                        @Override // java.util.Comparator
                        public final int compare(T t11, T t12) {
                            return ComparisonsKt.d(Integer.valueOf(pVar5.a(((s) t12).getKey())), Integer.valueOf(pVar5.a(((s) t11).getKey())));
                        }
                    });
                }
                List list3 = this.f2961e;
                int size3 = list3.size();
                int i33 = 0;
                while (i33 < size3) {
                    s sVar3 = (s) list3.get(i33);
                    int i34 = i31;
                    k(this, sVar3, i15 - q(iArr3, sVar3), null, 4, null);
                    p(this, sVar3, false, i34, null);
                    i33++;
                    i31 = i34;
                    size3 = size3;
                    iArr3 = iArr3;
                }
                iArr = iArr3;
                i17 = i31;
                ArraysKt.y(iArr, 0, 0, 0, 6, null);
            }
            if (!this.f2962f.isEmpty()) {
                List list4 = this.f2962f;
                if (list4.size() > 1) {
                    CollectionsKt.A(list4, new Comparator() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$1
                        @Override // java.util.Comparator
                        public final int compare(T t11, T t12) {
                            return ComparisonsKt.d(Integer.valueOf(pVar5.a(((s) t11).getKey())), Integer.valueOf(pVar5.a(((s) t12).getKey())));
                        }
                    });
                }
                List list5 = this.f2962f;
                int i35 = 0;
                for (int size4 = list5.size(); i35 < size4; size4 = size4) {
                    s sVar4 = (s) list5.get(i35);
                    k(this, sVar4, (i16 + q(iArr, sVar4)) - sVar4.h(), null, 4, null);
                    p(this, sVar4, false, i17, null);
                    i35++;
                }
                ArraysKt.y(iArr, 0, 0, 0, 6, null);
            }
        }
        MutableScatterSet mutableScatterSet = this.f2960d;
        Object[] objArr4 = mutableScatterSet.f2247b;
        long[] jArr5 = mutableScatterSet.f2246a;
        int length3 = jArr5.length - i17;
        if (length3 >= 0) {
            int i36 = 0;
            while (true) {
                long j13 = jArr5[i36];
                if ((((~j13) << 7) & j13 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i37 = 8 - ((~(i36 - length3)) >>> 31);
                    int i38 = 0;
                    while (i38 < i37) {
                        if ((j13 & 255) < 128) {
                            Object obj = objArr4[(i36 << 3) + i38];
                            Object objB = this.f2957a.b(obj);
                            Intrinsics.e(objB);
                            b bVar3 = (b) objB;
                            int iA2 = pVar.a(obj);
                            jArr2 = jArr5;
                            bVar3.j(Math.min(i21, bVar3.g()));
                            objArr2 = objArr4;
                            bVar3.i(Math.min(i21 - bVar3.g(), bVar3.d()));
                            if (iA2 == -1) {
                                for (k kVar4 : bVar3.a()) {
                                }
                                m(obj);
                            } else {
                                o0.b bVarB = bVar3.b();
                                Intrinsics.e(bVarB);
                                s sVarA = tVar.a(iA2, bVar3.d(), bVar3.g(), bVarB.r());
                                sVarA.c(true);
                                for (k kVar5 : bVar3.a()) {
                                }
                                if (pVar5 == null || iA2 != pVar5.a(obj)) {
                                    bVar3.k(sVarA, n0Var, a4Var, i15, i16, bVar3.c());
                                    if (iA2 < this.f2959c) {
                                        this.f2963g.add(sVarA);
                                    } else {
                                        this.f2964h.add(sVarA);
                                    }
                                } else {
                                    m(obj);
                                }
                            }
                        } else {
                            jArr2 = jArr5;
                            objArr2 = objArr4;
                        }
                        j13 >>= 8;
                        i38++;
                        jArr5 = jArr2;
                        i21 = i14;
                        objArr4 = objArr2;
                    }
                    jArr = jArr5;
                    objArr = objArr4;
                    i18 = 1;
                    if (i37 != 8) {
                        break;
                    }
                } else {
                    jArr = jArr5;
                    objArr = objArr4;
                    i18 = 1;
                }
                if (i36 == length3) {
                    break;
                }
                i36 += i18;
                jArr5 = jArr;
                i21 = i14;
                objArr4 = objArr;
            }
        }
        if (this.f2963g.isEmpty()) {
            iArr2 = iArr;
        } else {
            List list6 = this.f2963g;
            if (list6.size() > 1) {
                CollectionsKt.A(list6, new Comparator() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$onMeasured$$inlined$sortByDescending$2
                    @Override // java.util.Comparator
                    public final int compare(T t11, T t12) {
                        return ComparisonsKt.d(Integer.valueOf(pVar.a(((s) t12).getKey())), Integer.valueOf(pVar.a(((s) t11).getKey())));
                    }
                });
            }
            List list7 = this.f2963g;
            int size5 = list7.size();
            int i39 = 0;
            while (i39 < size5) {
                s sVar5 = (s) list7.get(i39);
                Object objB2 = this.f2957a.b(sVar5.getKey());
                Intrinsics.e(objB2);
                b bVar4 = (b) objB2;
                int[] iArr4 = iArr;
                sVar5.f((z11 ? g((s) CollectionsKt.i0(list)) : bVar4.f()) - q(iArr4, sVar5), bVar4.c(), i12, i13);
                if (z13) {
                    o(sVar5, true);
                }
                i39++;
                iArr = iArr4;
            }
            iArr2 = iArr;
            ArraysKt.y(iArr2, 0, 0, 0, 6, null);
        }
        if (!this.f2964h.isEmpty()) {
            List list8 = this.f2964h;
            if (list8.size() > 1) {
                CollectionsKt.A(list8, new Comparator() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator$onMeasured$$inlined$sortBy$2
                    @Override // java.util.Comparator
                    public final int compare(T t11, T t12) {
                        return ComparisonsKt.d(Integer.valueOf(pVar.a(((s) t11).getKey())), Integer.valueOf(pVar.a(((s) t12).getKey())));
                    }
                });
            }
            List list9 = this.f2964h;
            int size6 = list9.size();
            for (int i40 = 0; i40 < size6; i40++) {
                s sVar6 = (s) list9.get(i40);
                Object objB3 = this.f2957a.b(sVar6.getKey());
                Intrinsics.e(objB3);
                b bVar5 = (b) objB3;
                sVar6.f((z11 ? g((s) CollectionsKt.u0(list)) : bVar5.e() - sVar6.h()) + q(iArr2, sVar6), bVar5.c(), i12, i13);
                if (z13) {
                    o(sVar6, true);
                }
            }
        }
        List list10 = this.f2963g;
        CollectionsKt.Y(list10);
        Unit unit = Unit.f67061a;
        list.addAll(0, list10);
        list.addAll(this.f2964h);
        this.f2961e.clear();
        this.f2962f.clear();
        this.f2963g.clear();
        this.f2964h.clear();
        this.f2960d.m();
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0054 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:19:0x0056 A[LOOP:0: B:7:0x0015->B:19:0x0056, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:24:0x0059 A[EDGE_INSN: B:24:0x0059->B:20:0x0059 BREAK  A[LOOP:0: B:7:0x0015->B:19:0x0056], SYNTHETIC] */
    public final void n() {
        if (this.f2957a.f()) {
            n0 n0Var = this.f2957a;
            Object[] objArr = n0Var.f2346c;
            long[] jArr = n0Var.f2344a;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i11 = 0;
                while (true) {
                    long j11 = jArr[i11];
                    if ((((~j11) << 7) & j11 & (-9187201950435737472L)) == -9187201950435737472L) {
                        if (i11 != length) {
                            break;
                            break;
                        }
                        i11++;
                    } else {
                        int i12 = 8 - ((~(i11 - length)) >>> 31);
                        for (int i13 = 0; i13 < i12; i13++) {
                            if ((255 & j11) < 128) {
                                for (k kVar : ((b) objArr[(i11 << 3) + i13]).a()) {
                                }
                            }
                            j11 >>= 8;
                        }
                        if (i12 != 8) {
                            break;
                        } else if (i11 != length) {
                            break;
                        } else {
                            i11++;
                        }
                    }
                }
            }
            this.f2957a.h();
        }
        this.f2958b = p.f3066a;
        this.f2959c = -1;
    }
}
