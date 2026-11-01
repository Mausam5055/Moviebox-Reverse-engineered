package com.apm.insight.b;

import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.util.Printer;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f19426a = 5;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static b f19427b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f19428c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Printer f19429d;

    public interface a {
    }

    static class b implements Printer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        List<Printer> f19430a = new ArrayList();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private List<Printer> f19433d = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        List<Printer> f19431b = new ArrayList();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f19434e = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f19432c = false;

        b() {
        }

        @Override // android.util.Printer
        public final void println(String str) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            i.b();
            if (str.charAt(0) == '>' && this.f19432c) {
                for (Printer printer : this.f19431b) {
                    if (!this.f19430a.contains(printer)) {
                        this.f19430a.add(printer);
                    }
                }
                this.f19431b.clear();
                this.f19432c = false;
            }
            if (this.f19430a.size() > i.f19426a) {
                Log.e("LooperPrinterUtils", "wrapper contains too many printer,please check if the useless printer have been removed");
            }
            for (Printer printer2 : this.f19430a) {
                if (printer2 != null) {
                    printer2.println(str);
                }
            }
            str.charAt(0);
            i.b();
        }
    }

    public static void a() {
        if (f19428c) {
            return;
        }
        f19428c = true;
        f19427b = new b();
        Printer printerD = d();
        f19429d = printerD;
        if (printerD != null) {
            f19427b.f19430a.add(printerD);
        }
        if (com.apm.insight.e.s()) {
            Looper.getMainLooper().setMessageLogging(f19427b);
        }
    }

    public static void a(Printer printer) {
        if (printer == null || f19427b.f19431b.contains(printer)) {
            return;
        }
        f19427b.f19431b.add(printer);
        f19427b.f19432c = true;
    }

    static /* synthetic */ a b() {
        return null;
    }

    private static Printer d() {
        try {
            Field declaredField = Class.forName("android.os.Looper").getDeclaredField("mLogging");
            declaredField.setAccessible(true);
            return (Printer) declaredField.get(Looper.getMainLooper());
        } catch (Exception unused) {
            return null;
        }
    }
}
