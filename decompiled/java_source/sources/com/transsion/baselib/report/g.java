package com.transsion.baselib.report;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes5.dex */
public interface g {

    public static final class a {
        public static hj.b a(g gVar) {
            return null;
        }

        public static void b(g gVar) {
            hj.b logViewConfig = gVar.getLogViewConfig();
            if (logViewConfig == null || !logViewConfig.d()) {
                return;
            }
            hj.i.f64505a.B(logViewConfig);
        }

        public static void c(g gVar) {
            hj.b logViewConfig = gVar.getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.o(SystemClock.elapsedRealtime());
                if (logViewConfig.c()) {
                    hj.i.f64505a.C(logViewConfig);
                }
            }
        }
    }

    hj.b getLogViewConfig();
}
