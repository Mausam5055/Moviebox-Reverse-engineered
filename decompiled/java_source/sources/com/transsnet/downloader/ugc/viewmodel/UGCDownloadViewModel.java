package com.transsnet.downloader.ugc.viewmodel;

import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.transsion.ugcvideodetail.api.bean.UGCVideoDownload;
import com.transsion.ugcvideodetail.api.bean.UGCVideoDownloadResource;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;

/* JADX INFO: loaded from: classes7.dex */
public final class UGCDownloadViewModel extends t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f59850a = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.ugc.viewmodel.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return UGCDownloadViewModel.m();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f59851b = 480;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f59852c = 50;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b0 f59853d = new b0();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b0 f59854e = new b0();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f59855f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b0 f59856g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final LiveData f59857h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final b0 f59858i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final LiveData f59859j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final b0 f59860k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Map f59861l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final b0 f59862m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final LiveData f59863n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final b0 f59864o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final LiveData f59865p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final b0 f59866q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final b0 f59867r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final b0 f59868s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Map f59869t;

    public UGCDownloadViewModel() {
        b0 b0Var = new b0();
        this.f59856g = b0Var;
        this.f59857h = b0Var;
        b0 b0Var2 = new b0();
        this.f59858i = b0Var2;
        this.f59859j = b0Var2;
        this.f59860k = new b0();
        this.f59861l = new LinkedHashMap();
        b0 b0Var3 = new b0();
        this.f59862m = b0Var3;
        this.f59863n = b0Var3;
        b0 b0Var4 = new b0();
        this.f59864o = b0Var4;
        this.f59865p = b0Var4;
        this.f59866q = new b0();
        this.f59867r = new b0(CollectionsKt.l());
        this.f59868s = new b0();
        this.f59869t = new LinkedHashMap();
    }

    private final void J() {
        Long size;
        Set setF = (Set) this.f59856g.f();
        if (setF == null) {
            setF = SetsKt.f();
        }
        Iterator it = setF.iterator();
        long jLongValue = 0;
        while (it.hasNext()) {
            UGCVideoDownloadResource resource = ((UGCVideoDownload) it.next()).getResource();
            jLongValue += (resource == null || (size = resource.getSize()) == null) ? 0L : size.longValue();
        }
        if (jLongValue > 0) {
            this.f59864o.q(oh.b.a(jLongValue, 1));
        } else {
            this.f59864o.q(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k(int i11, int i12) {
        Map linkedHashMap;
        Map linkedHashMap2;
        int i13 = this.f59852c;
        if (i12 <= i13) {
            Map map = (Map) this.f59866q.f();
            if (map == null || (linkedHashMap2 = MapsKt.w(map)) == null) {
                linkedHashMap2 = new LinkedHashMap();
            }
            linkedHashMap2.remove(Integer.valueOf(i11));
            this.f59866q.q(linkedHashMap2);
            Integer num = (Integer) this.f59854e.f();
            if (num == null || num.intValue() == i11) {
                this.f59867r.q(CollectionsKt.l());
                return;
            }
            return;
        }
        IntRange intRangeT = RangesKt.t(0, ((i12 + i13) - 1) / i13);
        ArrayList arrayList = new ArrayList(CollectionsKt.v(intRangeT, 10));
        Iterator<Integer> it = intRangeT.iterator();
        while (it.hasNext()) {
            int iA = ((IntIterator) it).a();
            int i14 = this.f59852c;
            int i15 = (iA * i14) + 1;
            int iMin = Math.min((iA + 1) * i14, i12);
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            String str = String.format(Locale.US, "%d-%d", Arrays.copyOf(new Object[]{Integer.valueOf(i15), Integer.valueOf(iMin)}, 2));
            Intrinsics.g(str, "format(...)");
            arrayList.add(str);
        }
        Map map2 = (Map) this.f59866q.f();
        if (map2 == null || (linkedHashMap = MapsKt.w(map2)) == null) {
            linkedHashMap = new LinkedHashMap();
        }
        linkedHashMap.put(Integer.valueOf(i11), arrayList);
        this.f59866q.q(linkedHashMap);
        Integer num2 = (Integer) this.f59854e.f();
        if ((num2 == null || num2.intValue() == i11) && !Intrinsics.c(arrayList, (List) this.f59867r.f())) {
            this.f59867r.q(arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:31:0x0052  */
    /* JADX WARN: Code duplicated, block: B:37:0x0076  */
    /* JADX WARN: Code duplicated, block: B:39:0x0079  */
    public final int l(String str, String str2, int i11) {
        Map map;
        List list;
        Integer num;
        int iIntValue;
        MatchResult matchResultFind$default;
        List listA;
        String str3;
        Integer numV;
        Integer numV2;
        if (str != null && (numV2 = StringsKt.v(str)) != null) {
            if (numV2.intValue() <= 0) {
                numV2 = null;
            }
            if (numV2 != null) {
                return numV2.intValue();
            }
        }
        if (str2 == null || (matchResultFind$default = Regex.find$default(new Regex("^(\\d+)-\\d+$"), str2, 0, 2, null)) == null || (listA = matchResultFind$default.a()) == null || (str3 = (String) listA.get(1)) == null || (numV = StringsKt.v(str3)) == null) {
            map = (Map) this.f59866q.f();
            if (map != null && (list = (List) map.get(Integer.valueOf(i11))) != null) {
                Integer numValueOf = Integer.valueOf(CollectionsKt.n0(list, str2));
                num = numValueOf.intValue() >= 0 ? numValueOf : null;
                if (num != null) {
                    iIntValue = num.intValue();
                }
            }
            return 1;
        }
        if (numV.intValue() <= 0) {
            numV = null;
        }
        if (numV == null) {
            map = (Map) this.f59866q.f();
            if (map != null) {
                Integer numValueOf2 = Integer.valueOf(CollectionsKt.n0(list, str2));
                if (numValueOf2.intValue() >= 0) {
                }
                if (num != null) {
                    iIntValue = num.intValue();
                }
            }
            return 1;
        }
        iIntValue = (numV.intValue() - 1) / this.f59852c;
        return iIntValue + 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final sy.a m() {
        return (sy.a) zg.c.f79414e.a().h(sy.a.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final sy.a r() {
        return (sy.a) this.f59850a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final b0 v(int i11) {
        b0 b0Var = (b0) this.f59861l.get(Integer.valueOf(i11));
        if (b0Var != null) {
            return b0Var;
        }
        b0 b0Var2 = new b0();
        this.f59861l.put(Integer.valueOf(i11), b0Var2);
        return b0Var2;
    }

    public final int A() {
        return this.f59855f;
    }

    public final LiveData B() {
        return this.f59865p;
    }

    public final b0 C() {
        return this.f59853d;
    }

    public final boolean D() {
        List list = (List) this.f59860k.f();
        if (list == null || list.size() <= 1) {
            return false;
        }
        List list2 = list;
        ArrayList arrayList = new ArrayList();
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            String ugcVideoId = ((UGCVideoDownload) it.next()).getUgcVideoId();
            if (ugcVideoId != null) {
                arrayList.add(ugcVideoId);
            }
        }
        if (CollectionsKt.W0(arrayList).size() > 1) {
            return false;
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = list2.iterator();
        while (it2.hasNext()) {
            UGCVideoDownloadResource resource = ((UGCVideoDownload) it2.next()).getResource();
            String id2 = resource != null ? resource.getId() : null;
            if (id2 != null) {
                arrayList2.add(id2);
            }
        }
        return CollectionsKt.W0(arrayList2).size() > 1;
    }

    public final void E(String collectionId) {
        Intrinsics.h(collectionId, "collectionId");
        k.d(u0.a(this), null, null, new UGCDownloadViewModel$loadResolutions$1(this, collectionId, null), 3, null);
    }

    public final void F(String collectionId, String str, String str2, Integer num) {
        int iIntValue;
        Intrinsics.h(collectionId, "collectionId");
        if (num != null) {
            iIntValue = num.intValue();
        } else {
            Integer num2 = (Integer) this.f59854e.f();
            iIntValue = num2 != null ? num2.intValue() : this.f59851b;
        }
        int i11 = iIntValue;
        k.d(u0.a(this), null, null, new UGCDownloadViewModel$loadUGCListData$1(this, collectionId, str2, i11, str, v(i11), null), 3, null);
    }

    public final void G(String ugcVideoId) {
        Intrinsics.h(ugcVideoId, "ugcVideoId");
        k.d(u0.a(this), null, null, new UGCDownloadViewModel$loadUGCSingleVideoData$1(this, ugcVideoId, null), 3, null);
    }

    public final void H(String ugcVideoId) {
        Intrinsics.h(ugcVideoId, "ugcVideoId");
        k.d(u0.a(this), null, null, new UGCDownloadViewModel$loadUGCSingleVideoDataForDownloadImmediately$1(this, ugcVideoId, null), 3, null);
    }

    public final void I(String collectionId, String tabName, String str) {
        Map map;
        Intrinsics.h(collectionId, "collectionId");
        Intrinsics.h(tabName, "tabName");
        Integer num = (Integer) this.f59854e.f();
        if (num != null) {
            b0 b0Var = (b0) this.f59861l.get(num);
            List list = (b0Var == null || (map = (Map) b0Var.f()) == null) ? null : (List) map.get(tabName);
            List list2 = list;
            if (list2 == null || list2.isEmpty()) {
                F(collectionId, tabName, str, num);
                return;
            }
            b0 b0Var2 = this.f59860k;
            Intrinsics.e(list);
            b0Var2.q(list);
            if (Intrinsics.c(this.f59853d.f(), Boolean.TRUE)) {
                K(true);
            }
        }
    }

    public final void K(boolean z10) {
        Object linkedHashSet;
        if (z10) {
            List listL = (List) this.f59860k.f();
            if (listL == null) {
                listL = CollectionsKt.l();
            }
            linkedHashSet = CollectionsKt.V0(listL);
        } else {
            linkedHashSet = new LinkedHashSet();
        }
        this.f59856g.q(linkedHashSet);
        J();
    }

    public final void L(Set items) {
        Intrinsics.h(items, "items");
        this.f59856g.q(CollectionsKt.V0(items));
        J();
    }

    public final void M(int i11) {
        this.f59855f = i11;
    }

    public final void N() {
        Set setY = y();
        if (setY.isEmpty()) {
            this.f59856g.q(new LinkedHashSet());
            J();
            return;
        }
        List<UGCVideoDownload> listL = (List) this.f59860k.f();
        if (listL == null) {
            listL = CollectionsKt.l();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (UGCVideoDownload uGCVideoDownload : listL) {
            String strT = t(uGCVideoDownload);
            if (strT != null && setY.contains(strT)) {
                linkedHashSet.add(uGCVideoDownload);
            }
        }
        this.f59856g.q(linkedHashSet);
        J();
    }

    public final void O(UGCVideoDownload item) {
        boolean zC;
        Intrinsics.h(item, "item");
        String ugcVideoId = item.getUgcVideoId();
        if (ugcVideoId == null || ugcVideoId.length() == 0) {
            return;
        }
        Collection linkedHashSet = (Set) this.f59856g.f();
        if (linkedHashSet == null) {
            linkedHashSet = new LinkedHashSet();
        }
        LinkedHashSet linkedHashSet2 = new LinkedHashSet(linkedHashSet);
        boolean zD = D();
        Iterator it = linkedHashSet2.iterator();
        Intrinsics.g(it, "iterator(...)");
        while (true) {
            zC = false;
            if (!it.hasNext()) {
                break;
            }
            UGCVideoDownload uGCVideoDownload = (UGCVideoDownload) it.next();
            if (zD) {
                UGCVideoDownloadResource resource = uGCVideoDownload.getResource();
                String id2 = resource != null ? resource.getId() : null;
                UGCVideoDownloadResource resource2 = item.getResource();
                String id3 = resource2 != null ? resource2.getId() : null;
                if (id2 != null && id2.length() != 0 && id3 != null && id3.length() != 0 && Intrinsics.c(id2, id3)) {
                    zC = true;
                }
            } else {
                zC = Intrinsics.c(uGCVideoDownload.getUgcVideoId(), item.getUgcVideoId());
            }
            if (zC) {
                it.remove();
                zC = true;
                break;
            }
        }
        if (!zC) {
            linkedHashSet2.add(item);
        }
        this.f59856g.q(linkedHashSet2);
        J();
    }

    public final b0 n() {
        return this.f59868s;
    }

    public final b0 o() {
        return this.f59867r;
    }

    public final b0 p() {
        return this.f59860k;
    }

    public final b0 q() {
        return this.f59854e;
    }

    public final b0 s() {
        return this.f59866q;
    }

    public final String t(UGCVideoDownload item) {
        Intrinsics.h(item, "item");
        if (!D()) {
            return item.getUgcVideoId();
        }
        UGCVideoDownloadResource resource = item.getResource();
        if (resource != null) {
            return resource.getId();
        }
        return null;
    }

    public final Map u() {
        return this.f59861l;
    }

    public final LiveData w() {
        return this.f59863n;
    }

    public final LiveData x() {
        return this.f59857h;
    }

    public final Set y() {
        Set set = (Set) this.f59856g.f();
        if (set == null) {
            return SetsKt.f();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String strT = t((UGCVideoDownload) it.next());
            if (strT != null) {
                arrayList.add(strT);
            }
        }
        return CollectionsKt.W0(arrayList);
    }

    public final LiveData z() {
        return this.f59859j;
    }
}
