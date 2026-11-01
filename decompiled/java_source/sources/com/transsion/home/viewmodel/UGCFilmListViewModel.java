package com.transsion.home.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.u0;
import com.transsion.moviedetailapi.bean.Pager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
public final class UGCFilmListViewModel extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final a f45855j = new a(null);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f45856k = 8;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ol.b f45857b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f45858c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f45859d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Pager f45860e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f45861f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f45862g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final androidx.p009lifecycle.b0 f45863h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f45864i;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UGCFilmListViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f45857b = (ol.b) zg.c.f79414e.a().h(ol.b.class);
        this.f45858c = "";
        this.f45859d = 1;
        this.f45862g = new androidx.p009lifecycle.b0();
        this.f45863h = new androidx.p009lifecycle.b0();
    }

    private final void i(int i11) {
        lg.a.C0828a.f(lg.a.f68839a, "FilmListViewModel", "getFilmList: start loading, page=" + i11 + ", filmType=" + this.f45858c, false, 4, null);
        kotlinx.coroutines.k.d(u0.a(this), y0.b(), null, new UGCFilmListViewModel$getFilmList$1(this, i11, null), 2, null);
    }

    public final androidx.p009lifecycle.b0 j() {
        return this.f45863h;
    }

    public final androidx.p009lifecycle.b0 k() {
        return this.f45862g;
    }

    public final boolean l() {
        Pager pager = this.f45860e;
        if (pager != null) {
            return Intrinsics.c(pager.getHasMore(), Boolean.TRUE);
        }
        return false;
    }

    public final void m(String filmType) {
        Intrinsics.h(filmType, "filmType");
        this.f45858c = filmType;
        lg.a.C0828a.f(lg.a.f68839a, "FilmListViewModel", "init: filmType=" + filmType, false, 4, null);
    }

    public final boolean n() {
        return this.f45861f;
    }

    public final void o() {
        Pager pager = this.f45860e;
        String nextPage = pager != null ? pager.getNextPage() : null;
        if (nextPage == null || nextPage.length() == 0) {
            lg.a.C0828a.z(lg.a.f68839a, "FilmListViewModel", "loadMore: nextPage is null or empty, cannot load more", false, 4, null);
            this.f45862g.n(null);
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, "FilmListViewModel", "loadMore: load nextPage=" + nextPage, false, 4, null);
        this.f45861f = false;
        Integer numV = StringsKt.v(nextPage);
        i(numV != null ? numV.intValue() : 1);
    }

    public final void p() {
        lg.a.C0828a.f(lg.a.f68839a, "FilmListViewModel", "refresh: reset page to 1 and load first page", false, 4, null);
        this.f45859d = 1;
        this.f45860e = null;
        this.f45861f = true;
        i(1);
    }
}
