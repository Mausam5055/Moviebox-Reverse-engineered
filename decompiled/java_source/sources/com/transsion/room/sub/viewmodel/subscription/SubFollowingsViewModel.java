package com.transsion.room.sub.viewmodel.subscription;

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
public final class SubFollowingsViewModel extends b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f51774g = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f51775b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f51776c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f51777d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final lq.b f51778e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final b0 f51779f;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubFollowingsViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f51776c = 8;
        this.f51778e = (lq.b) c.f79414e.a().h(lq.b.class);
        this.f51779f = new b0();
    }

    public final b0 e() {
        return this.f51779f;
    }

    public final void f(String str) {
        this.f51775b = str;
        k.d(u0.a(this), y0.b(), null, new SubFollowingsViewModel$getSubscriptionFollowingsData$1(this, str, null), 2, null);
    }

    public final boolean g() {
        return this.f51777d;
    }

    public final void h(String str) {
        this.f51777d = false;
        if (str == null || str.length() == 0) {
            lg.a.f68839a.x("SubFollowingsViewModel", "loadMore: nextPage is null or empty, cannot load more", true);
            this.f51779f.n(null);
            return;
        }
        lg.a.f68839a.c("SubFollowingsViewModel", "loadMore: load nextCursor=" + str, true);
        f(str);
    }

    public final void i() {
        lg.a.f68839a.c("SubFollowingsViewModel", "refresh: reset page to 1 and load first page", true);
        this.f51775b = "";
        this.f51777d = true;
        f("");
    }
}
