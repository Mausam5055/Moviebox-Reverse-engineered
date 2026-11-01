package com.wecloud.load.lib;

import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final p f60874a = new p();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile WeakReference f60875b;

    private p() {
    }

    public final boolean a() {
        WeakReference weakReference = f60875b;
        return (weakReference != null ? (SoLoadService) weakReference.get() : null) != null;
    }

    public final void b(SoLoadService service) {
        Intrinsics.h(service, "service");
        f60875b = new WeakReference(service);
    }

    public final void c() {
        SoLoadService soLoadService;
        WeakReference weakReference = f60875b;
        if (weakReference == null || (soLoadService = (SoLoadService) weakReference.get()) == null) {
            return;
        }
        soLoadService.B();
    }

    public final void d() {
        f60875b = null;
    }
}
