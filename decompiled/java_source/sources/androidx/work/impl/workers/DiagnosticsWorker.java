package androidx.work.impl.workers;

import android.content.Context;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.f1;
import androidx.work.impl.model.k0;
import androidx.work.impl.model.q;
import androidx.work.impl.model.v1;
import androidx.work.impl.model.z;
import androidx.work.s;
import androidx.work.t;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/work/impl/workers/DiagnosticsWorker;", "Landroidx/work/Worker;", "Landroid/content/Context;", "context", "Landroidx/work/WorkerParameters;", "parameters", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "Landroidx/work/s$a;", TtmlNode.TAG_P, "()Landroidx/work/s$a;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DiagnosticsWorker extends Worker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiagnosticsWorker(Context context, WorkerParameters parameters) {
        super(context, parameters);
        Intrinsics.h(context, "context");
        Intrinsics.h(parameters, "parameters");
    }

    @Override // androidx.work.Worker
    public s.a p() {
        f1 f1VarO = f1.o(a());
        Intrinsics.g(f1VarO, "getInstance(...)");
        WorkDatabase workDatabaseT = f1VarO.t();
        Intrinsics.g(workDatabaseT, "getWorkDatabase(...)");
        k0 k0VarL0 = workDatabaseT.l0();
        z zVarJ0 = workDatabaseT.j0();
        v1 v1VarM0 = workDatabaseT.m0();
        q qVarI0 = workDatabaseT.i0();
        List listE = k0VarL0.e(f1VarO.m().a().currentTimeMillis() - TimeUnit.DAYS.toMillis(1L));
        List listV = k0VarL0.v();
        List listM = k0VarL0.m(200);
        if (!listE.isEmpty()) {
            t.e().f(a.f16016a, "Recently completed work:\n\n");
            t.e().f(a.f16016a, a.d(zVarJ0, v1VarM0, qVarI0, listE));
        }
        if (!listV.isEmpty()) {
            t.e().f(a.f16016a, "Running work:\n\n");
            t.e().f(a.f16016a, a.d(zVarJ0, v1VarM0, qVarI0, listV));
        }
        if (!listM.isEmpty()) {
            t.e().f(a.f16016a, "Enqueued work:\n\n");
            t.e().f(a.f16016a, a.d(zVarJ0, v1VarM0, qVarI0, listM));
        }
        s.a aVarC = s.a.c();
        Intrinsics.g(aVarC, "success(...)");
        return aVarC;
    }
}
