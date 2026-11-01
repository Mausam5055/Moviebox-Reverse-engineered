package com.apm.insight.b;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Printer;
import androidx.annotation.Nullable;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile boolean f19422a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Printer f19423b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final CopyOnWriteArrayList<e> f19424c = new CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile boolean f19425d = false;

    public interface a {
        @Nullable
        String a();

        String b();

        String c();
    }

    public static void a() {
        if (f19422a) {
            return;
        }
        f19422a = true;
        f19423b = new Printer() { // from class: com.apm.insight.b.h.1
            @Override // android.util.Printer
            public final void println(String str) {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                if (str.charAt(0) == '>') {
                    h.a(true, str);
                } else if (str.charAt(0) == '<') {
                    h.a(false, str);
                }
            }
        };
        i.a();
        i.a(f19423b);
    }

    public static void a(e eVar) {
        CopyOnWriteArrayList<e> copyOnWriteArrayList = f19424c;
        synchronized (copyOnWriteArrayList) {
            copyOnWriteArrayList.add(eVar);
        }
    }

    public static void a(boolean z10, String str) {
        e.f19366a = System.nanoTime() / 1000000;
        e.f19367b = SystemClock.currentThreadTimeMillis();
        CopyOnWriteArrayList<e> copyOnWriteArrayList = f19424c;
        for (int i11 = 0; i11 < copyOnWriteArrayList.size(); i11++) {
            e eVar = copyOnWriteArrayList.get(i11);
            if (eVar == null || !eVar.a()) {
                if (!z10 && eVar.f19368c) {
                    eVar.b("");
                }
            } else if (z10) {
                if (!eVar.f19368c) {
                    eVar.a(str);
                }
            } else if (eVar.f19368c) {
                eVar.b(str);
            }
        }
    }
}
