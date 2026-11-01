package com.tn.tranpay.report;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes4.dex */
public interface b {

    public static final class a {
        public static c a(b bVar) {
            return null;
        }

        public static void b(b bVar) {
            c logViewConfig = bVar.getLogViewConfig();
            if (logViewConfig == null || !logViewConfig.d()) {
                return;
            }
            e.f41680a.f(logViewConfig);
        }

        public static void c(b bVar) {
            c logViewConfig = bVar.getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.k(SystemClock.elapsedRealtime());
                if (logViewConfig.c()) {
                    e.f41680a.g(logViewConfig);
                }
            }
        }
    }

    c getLogViewConfig();
}
