package com.apm.insight.e;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.apm.insight.e;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile a f19475a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.apm.insight.e.a.b f19476b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SQLiteDatabase f19477c;

    private a() {
    }

    public static a a() {
        if (f19475a == null) {
            synchronized (a.class) {
                try {
                    if (f19475a == null) {
                        f19475a = new a();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f19475a;
    }

    private void b() {
        if (this.f19476b == null) {
            a(e.g());
        }
    }

    public final synchronized void a(Context context) {
        try {
            this.f19477c = new b(context).getWritableDatabase();
        } catch (Throwable th2) {
            com.apm.insight.a.b(th2);
        }
        this.f19476b = new com.apm.insight.e.a.b();
    }

    public final synchronized void a(com.apm.insight.d.a aVar) {
        b();
        com.apm.insight.e.a.b bVar = this.f19476b;
        if (bVar != null) {
            bVar.a(this.f19477c, aVar);
        }
    }

    public final synchronized boolean a(String str) {
        b();
        com.apm.insight.e.a.b bVar = this.f19476b;
        if (bVar == null) {
            return false;
        }
        return bVar.a(this.f19477c, str);
    }
}
