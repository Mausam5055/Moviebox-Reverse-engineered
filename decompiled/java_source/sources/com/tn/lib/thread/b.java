package com.tn.lib.thread;

import android.os.Looper;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f40868a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final List f40869b = new ArrayList();

    private b() {
    }

    public final void a(Runnable runnable) {
        Intrinsics.h(runnable, "runnable");
        e eVar = new e(runnable);
        a.f40865a.a().add(eVar);
        if (Intrinsics.c(Looper.getMainLooper(), Looper.myLooper())) {
            Looper.myQueue().addIdleHandler(eVar);
        } else {
            Looper.getMainLooper().getQueue().addIdleHandler(eVar);
        }
    }
}
