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
public final class SubscriptionFeedListViewModel extends b {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f51780f = new a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f51781g = 8;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f51782b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f51783c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final lq.a f51784d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b0 f51785e;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubscriptionFeedListViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f51784d = (lq.a) c.f79414e.a().h(lq.a.class);
        this.f51785e = new b0();
    }

    public final b0 e() {
        return this.f51785e;
    }

    public final void f(String str) {
        this.f51782b = str;
        k.d(u0.a(this), y0.b(), null, new SubscriptionFeedListViewModel$getSubscriptionFeedData$1(this, str, null), 2, null);
    }

    public final boolean g() {
        return this.f51783c;
    }

    public final void h(String str) {
        this.f51783c = false;
        if (str == null || str.length() == 0) {
            lg.a.f68839a.x("SubscriptionFeedListViewModel", "loadMore: nextCursor is null or empty, cannot load more", true);
            this.f51785e.n(null);
            return;
        }
        lg.a.f68839a.c("SubscriptionFeedListViewModel", "loadMore: load nextCursor=" + str, true);
        f(str);
    }

    public final void i() {
        lg.a.f68839a.c("SubscriptionFeedListViewModel", "refresh: reset page to 1 and load first page", true);
        this.f51783c = true;
        f("");
    }
}
