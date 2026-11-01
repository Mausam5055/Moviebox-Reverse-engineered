package com.transsnet.downloader.viewmodel;

import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.blankj.utilcode.util.Utils;
import com.transsion.moviedetailapi.bean.ShortTVFavInfo;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.transsnet.downloader.util.DownloadSDCardUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes7.dex */
public final class DownloadResourcesDetectorViewModel extends t0 {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final a f60013x = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f60014a = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.viewmodel.j
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return DownloadResourcesDetectorViewModel.J();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private n0 f60015b = o0.a(y0.b());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60016c = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60017d = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60018e = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60019f = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60020g = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60021h = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60022i = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60023j = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60024k = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60025l = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60026m = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60027n = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60028o = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60029p = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60030q = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60031r = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60032s = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60033t = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60034u = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60035v = new androidx.p009lifecycle.b0();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f60036w = new androidx.p009lifecycle.b0();

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final qy.a C() {
        return (qy.a) this.f60014a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final qy.a J() {
        return (qy.a) zg.c.f79414e.a().h(qy.a.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q() {
        boolean z10;
        char c11;
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "DownloadReDetector", "--- getPathInfo", false, 4, null);
        ArrayList arrayList = new ArrayList();
        List listA = DownloadSDCardUtil.f59894a.a();
        DownloadEsHelper.a aVar = DownloadEsHelper.f59419m;
        aVar.a().i();
        String strE = lj.b.f68866a.e();
        String strT = aVar.a().t();
        lg.a.C0828a.v(c0828a, "DownloadReDetector", "--- savedPath = " + strT, false, 4, null);
        Iterator it = listA.iterator();
        while (true) {
            if (!it.hasNext()) {
                z10 = false;
                break;
            }
            my.b bVar = (my.b) it.next();
            if (Intrinsics.c(bVar.b(), strT)) {
                bVar.g(true);
                z10 = true;
                break;
            }
        }
        long jA = com.blankj.utilcode.util.w.a();
        lj.b.a aVar2 = lj.b.f68866a;
        String strA = aVar2.a();
        if (Intrinsics.c(strT, strE) || (listA.isEmpty() && !Intrinsics.c(strT, strA))) {
            c11 = 1;
        } else {
            c11 = z10 ? (char) 2 : (char) 3;
        }
        String string = Utils.a().getString(R$string.str_download_dialog_path_moviebox_folder);
        Intrinsics.g(string, "getString(...)");
        my.b bVar2 = new my.b(strE, "", string, 1, jA, 1);
        r19.g(c11 == 1);
        String strB = aVar2.b();
        String string2 = Utils.a().getString(R$string.str_download_dialog_path_albums);
        Intrinsics.g(string2, "getString(...)");
        my.b bVar3 = new my.b(strA, strB, string2, 3, jA, 2);
        bVar3.g(c11 == 3);
        arrayList.add(bVar2);
        arrayList.add(bVar3);
        arrayList.addAll(listA);
        this.f60020g.n(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w(String str) {
        lg.a.C0828a.f(lg.a.f68839a, "DownloadReDetector", "--- getDownloadSavePathInfo, savedRootPath = " + str, false, 4, null);
        ArrayList arrayList = new ArrayList();
        long jA = com.blankj.utilcode.util.w.a();
        lj.b.a aVar = lj.b.f68866a;
        aVar.e();
        String strA = aVar.a();
        String strB = aVar.b();
        String string = Utils.a().getString(R$string.str_download_dialog_path_albums);
        Intrinsics.g(string, "getString(...)");
        my.b bVar = new my.b(strA, strB, string, 3, jA, 2);
        bVar.g(Intrinsics.c(strA, str));
        List<my.b> listA = DownloadSDCardUtil.f59894a.a();
        DownloadEsHelper.f59419m.a().i();
        for (my.b bVar2 : listA) {
            if (Intrinsics.c(bVar2.b(), str)) {
                bVar2.g(true);
                break;
            }
        }
        arrayList.add(bVar);
        arrayList.addAll(listA);
        this.f60021h.n(arrayList);
    }

    public final androidx.p009lifecycle.b0 A() {
        return this.f60022i;
    }

    public final androidx.p009lifecycle.b0 B() {
        return this.f60019f;
    }

    public final androidx.p009lifecycle.b0 D() {
        return this.f60033t;
    }

    public final androidx.p009lifecycle.b0 E() {
        return this.f60035v;
    }

    public final androidx.p009lifecycle.b0 F() {
        return this.f60030q;
    }

    public final androidx.p009lifecycle.b0 G() {
        return this.f60031r;
    }

    public final androidx.p009lifecycle.b0 H() {
        return this.f60034u;
    }

    public final androidx.p009lifecycle.b0 I() {
        return this.f60032s;
    }

    public final void K(String type) {
        Intrinsics.h(type, "type");
        this.f60032s.q(type);
    }

    public final void L(my.c item) {
        Intrinsics.h(item, "item");
        Map linkedHashMap = (Map) this.f60030q.f();
        if (linkedHashMap == null) {
            linkedHashMap = new LinkedHashMap();
        }
        if (item.d()) {
            linkedHashMap.remove(Integer.valueOf(item.a()));
        } else {
            linkedHashMap.put(Integer.valueOf(item.a()), item);
        }
        this.f60030q.q(linkedHashMap);
    }

    public final void f(Subject subject) {
        ShortTVFavInfo shortTVFavInfo;
        if (subject == null || (shortTVFavInfo = subject.getShortTVFavInfo()) == null) {
            return;
        }
        kotlinx.coroutines.k.d(u0.a(this), null, null, new DownloadResourcesDetectorViewModel$favorite$1(subject, shortTVFavInfo.getHasFavorite(), this, shortTVFavInfo, null), 3, null);
    }

    public final androidx.p009lifecycle.b0 g() {
        return this.f60027n;
    }

    public final androidx.p009lifecycle.b0 h() {
        return this.f60024k;
    }

    public final androidx.p009lifecycle.b0 i() {
        return this.f60018e;
    }

    public final void j(String str, String str2, int i11, String nextPage, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        Intrinsics.h(nextPage, "nextPage");
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new DownloadResourcesDetectorViewModel$getDownloadList$1(i18, str, i13, i14, i11, this, nextPage, i12, i15, i16, i17, str2, null), 3, null);
    }

    public final void l(String savedRootPath) {
        Intrinsics.h(savedRootPath, "savedRootPath");
        kotlinx.coroutines.k.d(this.f60015b, null, null, new DownloadResourcesDetectorViewModel$getDownloadSavePathInfo$1(this, savedRootPath, null), 3, null);
    }

    public final androidx.p009lifecycle.b0 m() {
        return this.f60017d;
    }

    public final androidx.p009lifecycle.b0 n() {
        return this.f60026m;
    }

    public final androidx.p009lifecycle.b0 o() {
        return this.f60028o;
    }

    public final androidx.p009lifecycle.b0 p() {
        return this.f60016c;
    }

    public final androidx.p009lifecycle.b0 r() {
        return this.f60020g;
    }

    public final androidx.p009lifecycle.b0 s() {
        return this.f60029p;
    }

    public final void t(String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new DownloadResourcesDetectorViewModel$getResourceAllLangInfo$1(this, subjectId, null), 3, null);
    }

    public final void u(String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new DownloadResourcesDetectorViewModel$getResourcesSeasonInfo$1(this, subjectId, null), 3, null);
    }

    public final void v() {
        kotlinx.coroutines.k.d(this.f60015b, null, null, new DownloadResourcesDetectorViewModel$getSDCardPathInfo$1(this, null), 3, null);
    }

    public final androidx.p009lifecycle.b0 x() {
        return this.f60021h;
    }

    public final androidx.p009lifecycle.b0 y() {
        return this.f60023j;
    }

    public final androidx.p009lifecycle.b0 z() {
        return this.f60025l;
    }
}
