package com.google.firebase.crashlytics.internal.common;

import android.app.ApplicationExitInfo;
import android.content.Context;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.SortedSet;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public class w0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z f31259a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final vb.e f31260b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.google.firebase.crashlytics.internal.send.b f31261c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final rb.e f31262d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final rb.o f31263e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final g0 f31264f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final CrashlyticsWorkers f31265g;

    w0(z zVar, vb.e eVar, com.google.firebase.crashlytics.internal.send.b bVar, rb.e eVar2, rb.o oVar, g0 g0Var, CrashlyticsWorkers crashlyticsWorkers) {
        this.f31259a = zVar;
        this.f31260b = eVar;
        this.f31261c = bVar;
        this.f31262d = eVar2;
        this.f31263e = oVar;
        this.f31264f = g0Var;
        this.f31265g = crashlyticsWorkers;
    }

    private CrashlyticsReport.e.d d(CrashlyticsReport.e.d dVar, rb.e eVar, rb.o oVar) {
        CrashlyticsReport.e.d.b bVarH = dVar.h();
        String strC = eVar.c();
        if (strC != null) {
            bVarH.d(CrashlyticsReport.e.d.AbstractC0435d.a().b(strC).a());
        } else {
            ob.g.f().i("No log data to include with this event.");
        }
        List listN = n(oVar.g());
        List listN2 = n(oVar.h());
        if (!listN.isEmpty() || !listN2.isEmpty()) {
            bVarH.b(dVar.b().i().e(listN).g(listN2).a());
        }
        return bVarH.a();
    }

    private CrashlyticsReport.e.d e(CrashlyticsReport.e.d dVar) {
        return f(d(dVar, this.f31262d, this.f31263e), this.f31263e);
    }

    private CrashlyticsReport.e.d f(CrashlyticsReport.e.d dVar, rb.o oVar) {
        List listI = oVar.i();
        if (listI.isEmpty()) {
            return dVar;
        }
        CrashlyticsReport.e.d.b bVarH = dVar.h();
        bVarH.e(CrashlyticsReport.e.d.f.a().b(listI).a());
        return bVarH.a();
    }

    private static CrashlyticsReport.a g(ApplicationExitInfo applicationExitInfo) {
        String strH = null;
        try {
            InputStream traceInputStream = applicationExitInfo.getTraceInputStream();
            if (traceInputStream != null) {
                strH = h(traceInputStream);
            }
        } catch (IOException e11) {
            ob.g.f().k("Could not get input trace in application exit info: " + applicationExitInfo.toString() + " Error: " + e11);
        }
        return CrashlyticsReport.a.a().c(applicationExitInfo.getImportance()).e(applicationExitInfo.getProcessName()).g(applicationExitInfo.getReason()).i(applicationExitInfo.getTimestamp()).d(applicationExitInfo.getPid()).f(applicationExitInfo.getPss()).h(applicationExitInfo.getRss()).j(strH).a();
    }

    public static String h(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[8192];
        while (true) {
            int i11 = inputStream.read(bArr);
            if (i11 == -1) {
                return byteArrayOutputStream.toString(StandardCharsets.UTF_8.name());
            }
            byteArrayOutputStream.write(bArr, 0, i11);
        }
    }

    public static w0 i(Context context, g0 g0Var, vb.g gVar, a aVar, rb.e eVar, rb.o oVar, xb.d dVar, wb.b bVar, l0 l0Var, k kVar, CrashlyticsWorkers crashlyticsWorkers) {
        return new w0(new z(context, g0Var, aVar, dVar, bVar), new vb.e(gVar, bVar, kVar), com.google.firebase.crashlytics.internal.send.b.b(context, bVar, l0Var), eVar, oVar, g0Var, crashlyticsWorkers);
    }

    private a0 j(a0 a0Var) {
        if (a0Var.b().h() != null && a0Var.b().g() != null) {
            return a0Var;
        }
        f0 f0VarD = this.f31264f.d(true);
        return a0.a(a0Var.b().t(f0VarD.b()).s(f0VarD.a()), a0Var.d(), a0Var.c());
    }

    private ApplicationExitInfo m(String str, List list) {
        long jQ = this.f31260b.q(str);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ApplicationExitInfo applicationExitInfoA = androidx.work.impl.utils.i.a(it.next());
            if (applicationExitInfoA.getTimestamp() < jQ) {
                return null;
            }
            if (applicationExitInfoA.getReason() == 6) {
                return applicationExitInfoA;
            }
        }
        return null;
    }

    private static List n(Map map) {
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(map.size());
        for (Map.Entry entry : map.entrySet()) {
            arrayList.add(CrashlyticsReport.c.a().b((String) entry.getKey()).c((String) entry.getValue()).a());
        }
        Collections.sort(arrayList, new Comparator() { // from class: com.google.firebase.crashlytics.internal.common.v0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return w0.p((CrashlyticsReport.c) obj, (CrashlyticsReport.c) obj2);
            }
        });
        return Collections.unmodifiableList(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int p(CrashlyticsReport.c cVar, CrashlyticsReport.c cVar2) {
        return cVar.b().compareTo(cVar2.b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q(CrashlyticsReport.e.d dVar, String str, boolean z10) {
        ob.g.f().b("disk worker: log non-fatal event to persistence");
        this.f31260b.y(dVar, str, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean t(Task task) {
        if (!task.isSuccessful()) {
            ob.g.f().l("Crashlytics report could not be enqueued to DataTransport", task.getException());
            return false;
        }
        a0 a0Var = (a0) task.getResult();
        ob.g.f().b("Crashlytics report successfully enqueued to DataTransport: " + a0Var.d());
        File fileC = a0Var.c();
        if (fileC.delete()) {
            ob.g.f().b("Deleted report file: " + fileC.getPath());
            return true;
        }
        ob.g.f().k("Crashlytics could not delete report file: " + fileC.getPath());
        return true;
    }

    private void u(Throwable th2, Thread thread, final String str, String str2, long j11, boolean z10) {
        final boolean zEquals = str2.equals(AppMeasurement.CRASH_ORIGIN);
        final CrashlyticsReport.e.d dVarE = e(this.f31259a.d(th2, thread, str2, j11, 4, 8, z10));
        if (z10) {
            this.f31260b.y(dVarE, str, zEquals);
        } else {
            this.f31265g.f31298b.f(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.u0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f31251a.q(dVarE, str, zEquals);
                }
            });
        }
    }

    public Task A(Executor executor, String str) {
        List<a0> listW = this.f31260b.w();
        ArrayList arrayList = new ArrayList();
        for (a0 a0Var : listW) {
            if (str == null || str.equals(a0Var.d())) {
                arrayList.add(this.f31261c.c(j(a0Var), str != null).continueWith(executor, new Continuation() { // from class: com.google.firebase.crashlytics.internal.common.t0
                    @Override // com.google.android.gms.tasks.Continuation
                    public final Object then(Task task) {
                        return Boolean.valueOf(this.f31248a.t(task));
                    }
                }));
            }
        }
        return Tasks.whenAll(arrayList);
    }

    public void k(String str, List list, CrashlyticsReport.a aVar) {
        ob.g.f().b("SessionReportingCoordinator#finalizeSessionWithNativeEvent");
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            CrashlyticsReport.d.b bVarA = ((j0) it.next()).a();
            if (bVarA != null) {
                arrayList.add(bVarA);
            }
        }
        this.f31260b.l(str, CrashlyticsReport.d.a().b(Collections.unmodifiableList(arrayList)).a(), aVar);
    }

    public void l(long j11, String str) {
        this.f31260b.k(str, j11);
    }

    public boolean o() {
        return this.f31260b.r();
    }

    public SortedSet r() {
        return this.f31260b.p();
    }

    public void s(String str, long j11) {
        this.f31260b.z(this.f31259a.e(str, j11));
    }

    public void v(Throwable th2, Thread thread, String str, long j11) {
        ob.g.f().i("Persisting fatal event for session " + str);
        u(th2, thread, str, AppMeasurement.CRASH_ORIGIN, j11, true);
    }

    public void w(Throwable th2, Thread thread, String str, long j11) {
        ob.g.f().i("Persisting non-fatal event for session " + str);
        u(th2, thread, str, "error", j11, false);
    }

    public void x(String str, List list, rb.e eVar, rb.o oVar) {
        ApplicationExitInfo applicationExitInfoM = m(str, list);
        if (applicationExitInfoM == null) {
            ob.g.f().i("No relevant ApplicationExitInfo occurred during session: " + str);
            return;
        }
        CrashlyticsReport.e.d dVarC = this.f31259a.c(g(applicationExitInfoM));
        ob.g.f().b("Persisting anr for session " + str);
        this.f31260b.y(f(d(dVarC, eVar, oVar), oVar), str, true);
    }

    public void y() {
        this.f31260b.i();
    }

    public Task z(Executor executor) {
        return A(executor, null);
    }
}
