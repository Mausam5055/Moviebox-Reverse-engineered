package com.google.firebase.perf.session.gauges;

import android.app.ActivityManager;
import android.content.Context;
import com.google.firebase.perf.util.StorageUnit;

/* JADX INFO: loaded from: classes4.dex */
class i {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final sc.a f32346e = sc.a.e();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Runtime f32347a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ActivityManager f32348b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ActivityManager.MemoryInfo f32349c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f32350d;

    i(Context context) {
        this(Runtime.getRuntime(), context);
    }

    i(Runtime runtime, Context context) {
        this.f32347a = runtime;
        this.f32350d = context;
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        this.f32348b = activityManager;
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        this.f32349c = memoryInfo;
        activityManager.getMemoryInfo(memoryInfo);
    }

    public int a() {
        return com.google.firebase.perf.util.k.c(StorageUnit.BYTES.toKilobytes(this.f32349c.totalMem));
    }

    public int b() {
        return com.google.firebase.perf.util.k.c(StorageUnit.BYTES.toKilobytes(this.f32347a.maxMemory()));
    }

    public int c() {
        return com.google.firebase.perf.util.k.c(StorageUnit.MEGABYTES.toKilobytes(this.f32348b.getMemoryClass()));
    }
}
