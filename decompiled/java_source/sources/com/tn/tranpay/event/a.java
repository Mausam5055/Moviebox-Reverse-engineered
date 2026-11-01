package com.tn.tranpay.event;

import android.app.Application;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f41547a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Application f41548b;

    private a() {
    }

    public final Application a() {
        Application application = f41548b;
        if (application != null) {
            return application;
        }
        throw new IllegalStateException("TranPay SDK must be initialized by calling TranPay.configure() first! Please ensure TranPay.configure() is called in Application.onCreate() for each process that uses the SDK.");
    }

    public final void b(Application application) {
        Intrinsics.h(application, "application");
        f41548b = application;
    }

    public final boolean c() {
        return f41548b != null;
    }
}
