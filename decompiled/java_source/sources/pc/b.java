package pc;

import android.content.Context;
import com.google.firebase.n;
import com.google.firebase.perf.metrics.AppStartTrace;
import com.google.firebase.perf.session.SessionManager;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
public class b {
    public b(com.google.firebase.f fVar, n nVar, Executor executor) {
        Context contextK = fVar.k();
        com.google.firebase.perf.config.a.g().O(contextK);
        com.google.firebase.perf.application.a aVarB = com.google.firebase.perf.application.a.b();
        aVarB.i(contextK);
        aVarB.j(new f());
        if (nVar != null) {
            AppStartTrace appStartTraceJ = AppStartTrace.j();
            appStartTraceJ.t(contextK);
            executor.execute(new AppStartTrace.StartFromBackgroundRunnable(appStartTraceJ));
        }
        SessionManager.getInstance().initializeGaugeCollection();
    }
}
