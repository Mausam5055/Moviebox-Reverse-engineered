package com.apm.insight.a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apm.insight.CrashType;
import com.apm.insight.ICrashCallback;
import com.apm.insight.b.i;
import com.apm.insight.runtime.m;

/* JADX INFO: loaded from: classes2.dex */
public class a implements ICrashCallback {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile a f19316d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile String f19317a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile i.a f19318b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile i.a f19319c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f19320e = false;

    private a() {
    }

    public static a a() {
        if (f19316d == null) {
            synchronized (a.class) {
                try {
                    if (f19316d == null) {
                        f19316d = new a();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f19316d;
    }

    public final void a(String str, i.a aVar, i.a aVar2) {
        this.f19317a = str;
        this.f19318b = aVar;
        this.f19319c = aVar2;
        if (this.f19320e) {
            return;
        }
        this.f19320e = true;
        m.a().a(new Runnable() { // from class: com.apm.insight.a.a.1
            @Override // java.lang.Runnable
            public final void run() {
            }
        });
    }

    @Override // com.apm.insight.ICrashCallback
    public void onCrash(@NonNull CrashType crashType, @Nullable String str, @Nullable Thread thread) {
        crashType.equals(CrashType.NATIVE);
    }
}
