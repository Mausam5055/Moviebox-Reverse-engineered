package com.apm.insight.b;

import android.content.Context;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile f f19369a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static g f19370c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f19371b;

    private f(@NonNull Context context) {
        this.f19371b = new b(context);
        g gVar = new g();
        f19370c = gVar;
        gVar.a();
    }

    public static f a(Context context) {
        if (f19369a == null) {
            synchronized (f.class) {
                try {
                    if (f19369a == null) {
                        f19369a = new f(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f19369a;
    }

    public static g b() {
        return f19370c;
    }

    public final b a() {
        return this.f19371b;
    }

    public final void c() {
        this.f19371b.a();
    }

    public final void d() {
        this.f19371b.b();
    }
}
