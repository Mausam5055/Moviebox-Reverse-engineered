package com.transsion.usercenter.profile.report;

import android.app.Application;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.gson.JsonObject;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;

/* JADX INFO: loaded from: classes6.dex */
public final class ReportViewModel extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f57245b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f57246c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Lazy f57247d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReportViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f57245b = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.profile.report.h
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ReportViewModel.n();
            }
        });
        this.f57246c = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.profile.report.i
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ReportViewModel.m();
            }
        });
        this.f57247d = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.profile.report.j
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ReportViewModel.h();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 h() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final b k() {
        return (b) this.f57245b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 m() {
        return new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b n() {
        return (b) zg.c.f79414e.a().h(b.class);
    }

    public final void g(String userId) {
        Intrinsics.h(userId, "userId");
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("userId", userId);
        k.d(u0.a(this), null, null, new ReportViewModel$block$1(jsonObject, this, null), 3, null);
    }

    public final b0 i() {
        return (b0) this.f57247d.getValue();
    }

    public final b0 j() {
        return (b0) this.f57246c.getValue();
    }

    public final void l(String str, String str2, String str3) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(NativeComponentConstants.KEY_COMPONENT_TYPE, str);
        jsonObject.addProperty("id", str2);
        jsonObject.addProperty("reason", str3);
        k.d(u0.a(this), null, null, new ReportViewModel$report$1(jsonObject, this, null), 3, null);
    }

    public final void o(String userId) {
        Intrinsics.h(userId, "userId");
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty("userId", userId);
        k.d(u0.a(this), null, null, new ReportViewModel$unBlock$1(jsonObject, this, null), 3, null);
    }
}
