package com.tn.tranpay;

import android.app.Application;
import com.tn.tranpay.logger.LogLevel;
import com.tn.tranpay.logger.LoggerPlugin;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes4.dex */
public final class TranPay {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TranPay f41486a = new TranPay();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Application f41487b;

    private TranPay() {
    }

    public final void a(LoggerPlugin plugin) {
        Intrinsics.h(plugin, "plugin");
        ai.a.f619a.a(plugin);
    }

    public final void b(Application application, String cpId, String appKey, String channel, LogLevel level, boolean z10, boolean z11, String str, e theme) {
        Intrinsics.h(application, "application");
        Intrinsics.h(cpId, "cpId");
        Intrinsics.h(appKey, "appKey");
        Intrinsics.h(channel, "channel");
        Intrinsics.h(level, "level");
        Intrinsics.h(theme, "theme");
        f41487b = application;
        TranPayConfiguration tranPayConfiguration = TranPayConfiguration.f41490a;
        tranPayConfiguration.x(cpId);
        tranPayConfiguration.v(appKey);
        tranPayConfiguration.w(channel);
        tranPayConfiguration.B(str);
        tranPayConfiguration.y(z10);
        tranPayConfiguration.A(z11);
        e.f41537c.a(theme);
        ai.a aVar = ai.a.f619a;
        aVar.h(level, z10);
        com.tn.tranpay.event.a.f41547a.b(application);
        k.d(o0.a(y0.b()), null, null, new TranPay$configure$1(application, z10, str, null), 3, null);
        ai.a.g(aVar, "TranPay init succeed " + cpId + ", " + level + ", " + z10 + ", " + str, null, 2, null);
        tranPayConfiguration.z(true);
    }

    public final Application d() {
        Application application = f41487b;
        if (application != null) {
            return application;
        }
        throw new IllegalStateException("TranPay SDK not initialized. Please call TranPay.configure() first.");
    }

    public final String e() {
        return "1.0.6.3";
    }
}
