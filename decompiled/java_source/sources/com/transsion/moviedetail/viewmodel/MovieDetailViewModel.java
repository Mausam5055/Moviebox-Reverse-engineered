package com.transsion.moviedetail.viewmodel;

import android.app.Application;
import android.text.SpannableStringBuilder;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.cloud.tmc.integration.event.EventConstants;
import com.google.gson.JsonObject;
import com.transsion.moviedetail.R$string;
import com.transsion.moviedetail.preload.MovieDetailDownloadListLoader;
import com.transsion.moviedetail.preload.MovieDetailResourcesSeasonLoader;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class MovieDetailViewModel extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final a f47430r = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f47431b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f47432c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f47433d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f47434e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f47435f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Lazy f47436g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Lazy f47437h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Lazy f47438i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final b0 f47439j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Lazy f47440k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final b0 f47441l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private com.transsion.moviedetail.preload.b f47442m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private MovieDetailDownloadListLoader f47443n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private MovieDetailResourcesSeasonLoader f47444o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Lazy f47445p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f47446q;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MovieDetailViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f47431b = LazyKt.b(new Function0() { // from class: com.transsion.moviedetail.viewmodel.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MovieDetailViewModel.q();
            }
        });
        this.f47432c = LazyKt.b(new Function0() { // from class: com.transsion.moviedetail.viewmodel.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MovieDetailViewModel.Z();
            }
        });
        this.f47433d = LazyKt.b(new Function0() { // from class: com.transsion.moviedetail.viewmodel.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MovieDetailViewModel.r();
            }
        });
        this.f47434e = LazyKt.b(new Function0() { // from class: com.transsion.moviedetail.viewmodel.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MovieDetailViewModel.X();
            }
        });
        this.f47435f = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0() { // from class: com.transsion.moviedetail.viewmodel.h
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MovieDetailViewModel.b0();
            }
        });
        this.f47436g = LazyKt.b(new Function0() { // from class: com.transsion.moviedetail.viewmodel.i
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MovieDetailViewModel.a0();
            }
        });
        this.f47437h = LazyKt.b(new Function0() { // from class: com.transsion.moviedetail.viewmodel.j
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MovieDetailViewModel.U();
            }
        });
        this.f47438i = LazyKt.b(new Function0() { // from class: com.transsion.moviedetail.viewmodel.k
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MovieDetailViewModel.e0();
            }
        });
        this.f47439j = new b0();
        this.f47440k = LazyKt.b(new Function0() { // from class: com.transsion.moviedetail.viewmodel.l
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MovieDetailViewModel.Y();
            }
        });
        this.f47441l = new b0();
        this.f47445p = LazyKt.b(new Function0() { // from class: com.transsion.moviedetail.viewmodel.m
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MovieDetailViewModel.c0();
            }
        });
    }

    private final Locale C(String str) {
        Locale locale = null;
        if (str != null) {
            try {
                if (str.length() != 0) {
                    locale = Intrinsics.c(str, "in_id") ? new Locale("id") : new Locale(str);
                }
            } catch (Exception unused) {
            }
        }
        return locale;
    }

    public static /* synthetic */ void E(MovieDetailViewModel movieDetailViewModel, String str, Integer num, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            num = null;
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        movieDetailViewModel.D(str, num, z10);
    }

    private final b0 G() {
        return (b0) this.f47437h.getValue();
    }

    private final void M(String str) {
        MovieDetailResourcesSeasonLoader movieDetailResourcesSeasonLoader = this.f47444o;
        if (movieDetailResourcesSeasonLoader != null) {
            if (str == null) {
                str = "";
            }
            movieDetailResourcesSeasonLoader.p(str);
        }
        MovieDetailResourcesSeasonLoader movieDetailResourcesSeasonLoader2 = this.f47444o;
        if (movieDetailResourcesSeasonLoader2 != null) {
            movieDetailResourcesSeasonLoader2.f(L());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final fn.a N() {
        return (fn.a) this.f47435f.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final qy.a O() {
        return (qy.a) this.f47436g.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final b0 R() {
        return (b0) this.f47438i.getValue();
    }

    public static /* synthetic */ void T(MovieDetailViewModel movieDetailViewModel, int i11, String str, Integer num, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            num = null;
        }
        movieDetailViewModel.S(i11, str, num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 U() {
        return new b0();
    }

    public static /* synthetic */ void W(MovieDetailViewModel movieDetailViewModel, String str, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        movieDetailViewModel.V(str, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 X() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 Y() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 Z() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final qy.a a0() {
        return (qy.a) zg.c.f79414e.a().h(qy.a.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final fn.a b0() {
        return (fn.a) zg.c.f79414e.a().h(fn.a.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 c0() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 e0() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 q() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 r() {
        return new b0();
    }

    public static /* synthetic */ void u(MovieDetailViewModel movieDetailViewModel, String str, Integer num, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            i11 = 1;
        }
        movieDetailViewModel.t(str, num, i11, z10);
    }

    public final LiveData A() {
        return this.f47439j;
    }

    public final boolean B() {
        return this.f47446q;
    }

    public final void D(String subjectId, Integer num, boolean z10) {
        Intrinsics.h(subjectId, "subjectId");
        com.transsion.moviedetail.preload.b bVar = this.f47442m;
        if (bVar != null) {
            bVar.q(subjectId);
        }
        com.transsion.moviedetail.preload.b bVar2 = this.f47442m;
        if (bVar2 != null) {
            bVar2.p(num);
        }
        com.transsion.moviedetail.preload.b bVar3 = this.f47442m;
        if (bVar3 != null) {
            bVar3.o(z10);
        }
        com.transsion.moviedetail.preload.b bVar4 = this.f47442m;
        if (bVar4 != null) {
            bVar4.f(G());
        }
    }

    public final LiveData F() {
        return G();
    }

    public final b0 H() {
        return this.f47441l;
    }

    public final b0 I() {
        return (b0) this.f47434e.getValue();
    }

    public final void J() {
        this.f47446q = true;
        kotlinx.coroutines.k.d(u0.a(this), null, null, new MovieDetailViewModel$getRoomPostEntrance$1(this, null), 3, null);
    }

    public final b0 K() {
        return (b0) this.f47440k.getValue();
    }

    public final b0 L() {
        return (b0) this.f47432c.getValue();
    }

    public final b0 P() {
        return (b0) this.f47445p.getValue();
    }

    public final LiveData Q() {
        return R();
    }

    public final void S(int i11, String subjectId, Integer num) {
        qm.b bVar;
        qm.b bVar2;
        Object next;
        Object next2;
        Intrinsics.h(subjectId, "subjectId");
        List listA = qm.e.f73644a.a(i11);
        Object obj = null;
        if (listA != null) {
            Iterator it = listA.iterator();
            do {
                if (!it.hasNext()) {
                    next2 = null;
                    break;
                }
                next2 = it.next();
            } while (!(((qm.b) next2) instanceof com.transsion.moviedetail.preload.b));
            bVar = (qm.b) next2;
        } else {
            bVar = null;
        }
        com.transsion.moviedetail.preload.b bVar3 = (com.transsion.moviedetail.preload.b) bVar;
        if (bVar3 == null) {
            bVar3 = new com.transsion.moviedetail.preload.b(subjectId, num, false, 4, null);
        }
        this.f47442m = bVar3;
        if (listA != null) {
            Iterator it2 = listA.iterator();
            do {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
            } while (!(((qm.b) next) instanceof MovieDetailDownloadListLoader));
            bVar2 = (qm.b) next;
        } else {
            bVar2 = null;
        }
        MovieDetailDownloadListLoader movieDetailDownloadListLoader = (MovieDetailDownloadListLoader) bVar2;
        if (movieDetailDownloadListLoader == null) {
            movieDetailDownloadListLoader = new MovieDetailDownloadListLoader(subjectId);
        }
        this.f47443n = movieDetailDownloadListLoader;
        if (listA != null) {
            for (Object obj2 : listA) {
                if (((qm.b) obj2) instanceof MovieDetailResourcesSeasonLoader) {
                    obj = obj2;
                    break;
                }
            }
            obj = (qm.b) obj;
        }
        MovieDetailResourcesSeasonLoader movieDetailResourcesSeasonLoader = (MovieDetailResourcesSeasonLoader) obj;
        if (movieDetailResourcesSeasonLoader == null) {
            movieDetailResourcesSeasonLoader = new MovieDetailResourcesSeasonLoader(subjectId);
        }
        this.f47444o = movieDetailResourcesSeasonLoader;
        M(subjectId);
        z(subjectId);
    }

    public final void V(String str, boolean z10) {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new MovieDetailViewModel$postRequestResource$1(str, z10, this, null), 3, null);
    }

    public final void d0(String subjectId, int i11) {
        Intrinsics.h(subjectId, "subjectId");
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("subjectId", subjectId);
        jsonObject.addProperty(EventConstants.KEY_ACTION, Integer.valueOf(i11));
        kotlinx.coroutines.k.d(u0.a(this), null, null, new MovieDetailViewModel$wantToSee$1(jsonObject, this, null), 3, null);
    }

    public final void s(boolean z10, String str, Integer num, int i11, boolean z11) {
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new MovieDetailViewModel$fetchLocalRec$1(z10, str, num, i11, z11, this, null), 2, null);
    }

    public final void t(String str, Integer num, int i11, boolean z10) {
        if (str == null || str.length() == 0) {
            return;
        }
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new MovieDetailViewModel$fetchRec$1(str, num, i11, z10, this, null), 2, null);
    }

    public final CharSequence v(String str) {
        List listS0;
        List listU0 = (str == null || (listS0 = StringsKt.S0(str, new String[]{","}, false, 0, 6, null)) == null) ? null : CollectionsKt.U0(listS0);
        List list = listU0;
        if (list == null || list.isEmpty()) {
            return null;
        }
        com.transsion.baselib.locale.d.b bVar = com.transsion.baselib.locale.d.f43297f;
        Locale localeL = bVar.e().l();
        Locale localeK = bVar.e().k();
        int i11 = -1;
        int i12 = 0;
        if (Intrinsics.c(localeL, localeK)) {
            Iterator it = listU0.iterator();
            int i13 = 0;
            while (it.hasNext()) {
                Locale localeC = C((String) it.next());
                if (Intrinsics.c(localeC != null ? localeC.getLanguage() : null, localeL != null ? localeL.getLanguage() : null)) {
                    i11 = i13;
                    break;
                }
                i13++;
            }
            if (i11 > 0) {
                listU0.add(0, listU0.remove(i11));
            }
        } else {
            Iterator it2 = listU0.iterator();
            int i14 = 0;
            while (true) {
                if (!it2.hasNext()) {
                    i14 = -1;
                    break;
                }
                Locale localeC2 = C((String) it2.next());
                if (Intrinsics.c(localeC2 != null ? localeC2.getLanguage() : null, localeK != null ? localeK.getLanguage() : null)) {
                    break;
                }
                i14++;
            }
            if (i14 > 0) {
                listU0.add(0, listU0.remove(i14));
            }
            Iterator it3 = listU0.iterator();
            int i15 = 0;
            while (it3.hasNext()) {
                Locale localeC3 = C((String) it3.next());
                if (Intrinsics.c(localeC3 != null ? localeC3.getLanguage() : null, localeL != null ? localeL.getLanguage() : null)) {
                    i11 = i15;
                    break;
                }
                i15++;
            }
            if (i11 > 0) {
                listU0.add(0, listU0.remove(i11));
            }
        }
        Application applicationB = b();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) applicationB.getString(R$string.movie_detail_subtitles));
        spannableStringBuilder.append((CharSequence) " ");
        for (Object obj : listU0) {
            int i16 = i12 + 1;
            if (i12 < 0) {
                CollectionsKt.u();
            }
            spannableStringBuilder.append((CharSequence) obj);
            if (i12 != listU0.size() - 1) {
                spannableStringBuilder.append((CharSequence) ", ");
            }
            i12 = i16;
        }
        return spannableStringBuilder;
    }

    public final b0 w() {
        return (b0) this.f47433d.getValue();
    }

    public final void x(String str, int i11, int i12, int i13, int i14) {
        kotlinx.coroutines.k.d(u0.a(this), null, null, new MovieDetailViewModel$getDownloadList$1(this, str, i14, i11, i12, i13, null), 3, null);
    }

    public final b0 y() {
        return (b0) this.f47431b.getValue();
    }

    public final void z(String str) {
        MovieDetailDownloadListLoader movieDetailDownloadListLoader = this.f47443n;
        if (movieDetailDownloadListLoader != null) {
            if (str == null) {
                str = "";
            }
            movieDetailDownloadListLoader.p(str);
        }
        MovieDetailDownloadListLoader movieDetailDownloadListLoader2 = this.f47443n;
        if (movieDetailDownloadListLoader2 != null) {
            movieDetailDownloadListLoader2.f(y());
        }
    }
}
