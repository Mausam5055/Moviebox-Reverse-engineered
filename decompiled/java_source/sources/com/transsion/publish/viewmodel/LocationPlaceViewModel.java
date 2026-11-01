package com.transsion.publish.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.place.PlaceDao;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class LocationPlaceViewModel extends t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f50768a = LazyKt.b(new Function0() { // from class: com.transsion.publish.viewmodel.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return LocationPlaceViewModel.q();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f50769b = LazyKt.b(new Function0() { // from class: com.transsion.publish.viewmodel.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return LocationPlaceViewModel.p();
        }
    });

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b0 f50770c = new b0();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b0 f50771d = new b0();

    /* JADX INFO: Access modifiers changed from: private */
    public final PlaceDao m() {
        return (PlaceDao) this.f50769b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final lp.a n() {
        return (lp.a) this.f50768a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PlaceDao p() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).u1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final lp.a q() {
        return (lp.a) zg.c.f79414e.a().h(lp.a.class);
    }

    public final void h() {
        k.d(u0.a(this), y0.b(), null, new LocationPlaceViewModel$clearCache$1(this, null), 2, null);
    }

    public final void i() {
        k.d(u0.a(this), null, null, new LocationPlaceViewModel$getCache$1(this, null), 3, null);
    }

    public final b0 j() {
        return this.f50771d;
    }

    public final void k(Double d11, Double d12) {
        k.d(u0.a(this), null, null, new LocationPlaceViewModel$getLocationPlaceList$1(this, d11, d12, null), 3, null);
    }

    public final b0 l() {
        return this.f50770c;
    }

    public final void o(List list) {
        Intrinsics.h(list, "list");
        k.d(u0.a(this), y0.b(), null, new LocationPlaceViewModel$insertCache$1(list, this, null), 2, null);
    }
}
