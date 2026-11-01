package com.transsion.postdetail.shorttv.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.video.ShortTVPlayDao;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class ShortTVContentViewModel extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f49227b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f49228c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b0 f49229d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b0 f49230e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final b0 f49231f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b0 f49232g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final b0 f49233h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final b0 f49234i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Lazy f49235j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTVContentViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f49227b = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.shorttv.viewmodel.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShortTVContentViewModel.m();
            }
        });
        this.f49228c = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.shorttv.viewmodel.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShortTVContentViewModel.n();
            }
        });
        this.f49229d = new b0();
        this.f49230e = new b0();
        this.f49231f = new b0();
        this.f49232g = new b0();
        this.f49233h = new b0();
        this.f49234i = new b0();
        this.f49235j = LazyKt.b(new Function0() { // from class: com.transsion.postdetail.shorttv.viewmodel.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ShortTVContentViewModel.g();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final n0 g() {
        return o0.a(y0.b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final xo.b k() {
        return (xo.b) this.f49227b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final xo.b m() {
        return (xo.b) zg.c.f79414e.a().h(xo.b.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ShortTVPlayDao n() {
        Application applicationA = Utils.a();
        if (applicationA != null) {
            return AppDatabase.INSTANCE.b(applicationA).x1();
        }
        return null;
    }

    public final b0 h() {
        return this.f49231f;
    }

    public final b0 i() {
        return this.f49232g;
    }

    public final b0 j() {
        return this.f49234i;
    }

    public final void l(String nextPage, int i11, boolean z10) {
        Intrinsics.h(nextPage, "nextPage");
        k.d(u0.a(this), null, null, new ShortTVContentViewModel$getShortTVFavoriteList$1(this, nextPage, i11, z10, null), 3, null);
    }
}
