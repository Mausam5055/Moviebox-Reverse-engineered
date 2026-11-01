package ds;

import android.os.SystemClock;
import hj.i;

/* JADX INFO: loaded from: classes6.dex */
public interface e {

    /* JADX INFO: loaded from: classes7.dex */
    public static final class a {
        public static hj.b a(e eVar) {
            return null;
        }

        public static void b(e eVar) {
            hj.b logViewConfig = eVar.getLogViewConfig();
            if (logViewConfig == null || !logViewConfig.d()) {
                return;
            }
            i.f64505a.B(logViewConfig);
        }

        public static void c(e eVar) {
            hj.b logViewConfig = eVar.getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.o(SystemClock.elapsedRealtime());
                if (logViewConfig.c()) {
                    i.f64505a.C(logViewConfig);
                }
            }
        }
    }

    hj.b getLogViewConfig();
}
