package com.transsion.postdetail.viewmodel.ugcfavorite;

import android.app.Application;
import androidx.p009lifecycle.b;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.y0;
import zg.c;

/* JADX INFO: loaded from: classes6.dex */
public final class UgcFavoriteViewModel extends b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f50264h = new a(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static int f50265i = 10;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b0 f50266b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b0 f50267c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final jq.a f50268d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f50269e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f50270f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f50271g;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UgcFavoriteViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f50266b = new b0();
        this.f50267c = new b0();
        this.f50268d = (jq.a) c.f79414e.a().h(jq.a.class);
    }

    public final b0 e() {
        return this.f50266b;
    }

    public final void f(String page, String userId) {
        Intrinsics.h(page, "page");
        Intrinsics.h(userId, "userId");
        this.f50269e = page;
        this.f50270f = userId;
        k.d(u0.a(this), y0.b(), null, new UgcFavoriteViewModel$getUgcVideoFavoriteList$1(this, page, userId, null), 2, null);
    }

    public final boolean g() {
        return this.f50271g;
    }

    public final void h(String str) {
        this.f50271g = false;
        if (str == null || str.length() == 0) {
            lg.a.f68839a.x("UgcFavoriteViewModel", "loadMore: nextPage is null or empty, cannot load more", true);
            this.f50266b.n(null);
            return;
        }
        lg.a.f68839a.c("UgcFavoriteViewModel", "loadMore: load nextPage=" + str, true);
        f(str.toString(), String.valueOf(this.f50270f));
    }

    public final void i() {
        lg.a.f68839a.c("UgcFavoriteViewModel", "refresh: reset page to 1 and load first page", true);
        this.f50269e = "1";
        this.f50271g = true;
        f(String.valueOf("1"), String.valueOf(this.f50270f));
    }
}
