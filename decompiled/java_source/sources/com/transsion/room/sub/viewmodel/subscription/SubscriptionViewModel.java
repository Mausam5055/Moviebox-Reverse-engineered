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
public final class SubscriptionViewModel extends b {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final a f51786k = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b0 f51787b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b0 f51788c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b0 f51789d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b0 f51790e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final b0 f51791f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b0 f51792g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f51793h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final lq.a f51794i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f51795j;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubscriptionViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f51787b = new b0();
        this.f51788c = new b0();
        this.f51789d = new b0();
        this.f51790e = new b0();
        this.f51791f = new b0();
        this.f51792g = new b0();
        this.f51793h = 1;
        this.f51794i = (lq.a) c.f79414e.a().h(lq.a.class);
    }

    public final b0 d() {
        return this.f51787b;
    }

    public final void e(String uid) {
        Intrinsics.h(uid, "uid");
        this.f51795j = uid;
        k.d(u0.a(this), y0.b(), null, new SubscriptionViewModel$getSubscriptionStatsData$1(this, uid, null), 2, null);
    }
}
