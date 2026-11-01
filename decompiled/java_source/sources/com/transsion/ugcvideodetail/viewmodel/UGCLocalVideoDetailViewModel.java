package com.transsion.ugcvideodetail.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import androidx.p009lifecycle.u0;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;

/* JADX INFO: loaded from: classes6.dex */
public final class UGCLocalVideoDetailViewModel extends t0 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f56430g = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f56431a = LazyKt.b(new Function0() { // from class: com.transsion.ugcvideodetail.viewmodel.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return UGCLocalVideoDetailViewModel.l();
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b0 f56432b = new b0();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b0 f56433c = new b0();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b0 f56434d = new b0();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b0 f56435e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final LiveData f56436f;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public UGCLocalVideoDetailViewModel() {
        b0 b0Var = new b0();
        this.f56435e = b0Var;
        this.f56436f = b0Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final UGCVideoDetailPlayDao g() {
        return (UGCVideoDetailPlayDao) this.f56431a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UGCVideoDetailPlayDao l() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).C1();
    }

    public final b0 e() {
        return this.f56433c;
    }

    public final b0 f() {
        return this.f56432b;
    }

    public final void h(String resourceId) {
        Intrinsics.h(resourceId, "resourceId");
        k.d(u0.a(this), null, null, new UGCLocalVideoDetailViewModel$getPlayInfo$1(resourceId, this, null), 3, null);
    }

    public final b0 i() {
        return this.f56434d;
    }

    public final void j(String resourceId) {
        Intrinsics.h(resourceId, "resourceId");
        k.d(u0.a(this), null, null, new UGCLocalVideoDetailViewModel$getPlayList$1(resourceId, this, null), 3, null);
    }

    public final LiveData k() {
        return this.f56436f;
    }
}
