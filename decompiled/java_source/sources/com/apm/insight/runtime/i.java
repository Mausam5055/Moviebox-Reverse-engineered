package com.apm.insight.runtime;

import android.os.SystemClock;
import android.util.Printer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static i f19805a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f19806b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<Printer> f19807c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<Printer> f19808d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f19809e = false;

    static {
        new Printer() { // from class: com.apm.insight.runtime.i.1
            @Override // android.util.Printer
            public final void println(String str) {
                if (str == null) {
                    return;
                }
                if (str.charAt(0) == '>') {
                    i.a().a(str);
                } else if (str.charAt(0) == '<') {
                    i.a().b(str);
                }
                i.c();
            }
        };
    }

    private i() {
    }

    public static i a() {
        if (f19805a == null) {
            synchronized (i.class) {
                try {
                    if (f19805a == null) {
                        f19805a = new i();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f19805a;
    }

    private static void a(List<? extends Printer> list, String str) {
        if (list == null || list.isEmpty()) {
            return;
        }
        try {
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                Printer printer = list.get(i11);
                if (printer == null) {
                    return;
                }
                printer.println(str);
            }
        } catch (Throwable th2) {
            com.apm.insight.a.a(th2);
        }
    }

    static /* synthetic */ Printer c() {
        return null;
    }

    final void a(String str) {
        this.f19806b = -1L;
        try {
            a(this.f19807c, str);
        } catch (Exception e11) {
            com.apm.insight.a.a((Throwable) e11);
        }
    }

    final void b(String str) {
        this.f19806b = SystemClock.uptimeMillis();
        try {
            a(this.f19808d, str);
        } catch (Exception e11) {
            com.apm.insight.a.b((Throwable) e11);
        }
    }

    public final boolean b() {
        return this.f19806b != -1 && SystemClock.uptimeMillis() - this.f19806b > 5000;
    }
}
