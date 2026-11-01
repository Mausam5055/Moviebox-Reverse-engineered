package com.transsion.room.sub.viewmodel.subscription;

import android.app.Application;
import androidx.p009lifecycle.b;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.transsion.room.sub.fragment.subscription.SubscriptionFragment;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.y0;
import lq.c;

/* JADX INFO: loaded from: classes6.dex */
public final class UgcTrendingHomeViewModel extends b {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f51796i = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Integer f51797b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Integer f51798c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c f51799d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f51800e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private SubscriptionFragment.TabType f51801f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f51802g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final b0 f51803h;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UgcTrendingHomeViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f51797b = 1;
        this.f51798c = 8;
        this.f51799d = (c) zg.c.f79414e.a().h(c.class);
        this.f51800e = "";
        this.f51801f = SubscriptionFragment.TabType.HOTTEST;
        this.f51803h = new b0();
    }

    public final void e(Integer num, String str) {
        this.f51800e = str;
        this.f51797b = num;
        k.d(u0.a(this), y0.b(), null, new UgcTrendingHomeViewModel$getUgcHomeTrendingData$1(num, this, str, null), 2, null);
    }

    public final b0 f() {
        return this.f51803h;
    }

    public final boolean g() {
        return this.f51802g;
    }

    public final void h(Integer num) {
        this.f51802g = false;
        if (num != null && num.intValue() <= 0) {
            lg.a.f68839a.x("UgcTrendingHomeViewModel", "loadMore: nextPage is null or empty, cannot load more", true);
            this.f51803h.n(null);
            return;
        }
        lg.a.f68839a.c("UgcTrendingHomeViewModel", "loadMore: load nextPage=" + num, true);
        e(num, this.f51800e);
    }

    public final void i() {
        lg.a.f68839a.c("UgcTrendingHomeViewModel", "refresh: reset page to 1 and load first page", true);
        this.f51797b = 1;
        String apiValue = this.f51801f.getApiValue();
        this.f51800e = apiValue;
        this.f51802g = true;
        e(this.f51797b, apiValue);
    }
}
