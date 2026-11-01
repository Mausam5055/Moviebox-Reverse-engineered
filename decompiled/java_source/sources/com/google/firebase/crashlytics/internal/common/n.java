package com.google.firebase.crashlytics.internal.common;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.util.Base64;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.SortedSet;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
class n {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    static final FilenameFilter f31200t = new FilenameFilter() { // from class: com.google.firebase.crashlytics.internal.common.m
        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String str) {
            return n.M(file, str);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f31201a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d0 f31202b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final y f31203c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final rb.o f31204d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final CrashlyticsWorkers f31205e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final g0 f31206f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final vb.g f31207g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final com.google.firebase.crashlytics.internal.common.a f31208h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final rb.e f31209i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final ob.a f31210j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final pb.a f31211k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final k f31212l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final w0 f31213m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private b0 f31214n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private wb.b f31215o = null;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final TaskCompletionSource f31216p = new TaskCompletionSource();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final TaskCompletionSource f31217q = new TaskCompletionSource();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final TaskCompletionSource f31218r = new TaskCompletionSource();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final AtomicBoolean f31219s = new AtomicBoolean(false);

    /* JADX INFO: loaded from: classes4.dex */
    class a implements b0.a {
        a() {
        }

        @Override // com.google.firebase.crashlytics.internal.common.b0.a
        public void a(wb.b bVar, Thread thread, Throwable th2) {
            n.this.I(bVar, thread, th2);
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    class b implements Callable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ long f31221a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Throwable f31222b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Thread f31223c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ wb.b f31224d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ boolean f31225e;

        class a implements SuccessContinuation {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ String f31227a;

            a(String str) {
                this.f31227a = str;
            }

            @Override // com.google.android.gms.tasks.SuccessContinuation
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Task then(com.google.firebase.crashlytics.internal.settings.c cVar) {
                if (cVar != null) {
                    return Tasks.whenAll((Task<?>[]) new Task[]{n.this.P(), n.this.f31213m.A(n.this.f31205e.f31297a, b.this.f31225e ? this.f31227a : null)});
                }
                ob.g.f().k("Received null app settings, cannot send reports at crash time.");
                return Tasks.forResult(null);
            }
        }

        b(long j11, Throwable th2, Thread thread, wb.b bVar, boolean z10) {
            this.f31221a = j11;
            this.f31222b = th2;
            this.f31223c = thread;
            this.f31224d = bVar;
            this.f31225e = z10;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Task call() {
            long jG = n.G(this.f31221a);
            String strC = n.this.C();
            if (strC == null) {
                ob.g.f().d("Tried to write a fatal exception while no session was open.");
                return Tasks.forResult(null);
            }
            n.this.f31203c.a();
            n.this.f31213m.v(this.f31222b, this.f31223c, strC, jG);
            n.this.x(this.f31221a);
            n.this.u(this.f31224d);
            n.this.w(new g().c(), Boolean.valueOf(this.f31225e));
            return !n.this.f31202b.d() ? Tasks.forResult(null) : this.f31224d.a().onSuccessTask(n.this.f31205e.f31297a, new a(strC));
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    class c implements SuccessContinuation {
        c() {
        }

        @Override // com.google.android.gms.tasks.SuccessContinuation
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Task then(Void r11) {
            return Tasks.forResult(Boolean.TRUE);
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    class d implements SuccessContinuation {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Task f31230a;

        class a implements SuccessContinuation {
            a() {
            }

            @Override // com.google.android.gms.tasks.SuccessContinuation
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Task then(com.google.firebase.crashlytics.internal.settings.c cVar) {
                if (cVar == null) {
                    ob.g.f().k("Received null app settings at app startup. Cannot send cached reports");
                    return Tasks.forResult(null);
                }
                n.this.P();
                n.this.f31213m.z(n.this.f31205e.f31297a);
                n.this.f31218r.trySetResult(null);
                return Tasks.forResult(null);
            }
        }

        d(Task task) {
            this.f31230a = task;
        }

        @Override // com.google.android.gms.tasks.SuccessContinuation
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Task then(Boolean bool) {
            if (bool.booleanValue()) {
                ob.g.f().b("Sending cached crash reports...");
                n.this.f31202b.c(bool.booleanValue());
                return this.f31230a.onSuccessTask(n.this.f31205e.f31297a, new a());
            }
            ob.g.f().i("Deleting cached crash reports...");
            n.r(n.this.N());
            n.this.f31213m.y();
            n.this.f31218r.trySetResult(null);
            return Tasks.forResult(null);
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    class e implements Callable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ long f31233a;

        e(long j11) {
            this.f31233a = j11;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() {
            Bundle bundle = new Bundle();
            bundle.putInt("fatal", 1);
            bundle.putLong(CampaignEx.JSON_KEY_TIMESTAMP, this.f31233a);
            n.this.f31211k.a("_ae", bundle);
            return null;
        }
    }

    n(Context context, g0 g0Var, d0 d0Var, vb.g gVar, y yVar, com.google.firebase.crashlytics.internal.common.a aVar, rb.o oVar, rb.e eVar, w0 w0Var, ob.a aVar2, pb.a aVar3, k kVar, CrashlyticsWorkers crashlyticsWorkers) {
        this.f31201a = context;
        this.f31206f = g0Var;
        this.f31202b = d0Var;
        this.f31207g = gVar;
        this.f31203c = yVar;
        this.f31208h = aVar;
        this.f31204d = oVar;
        this.f31209i = eVar;
        this.f31210j = aVar2;
        this.f31211k = aVar3;
        this.f31212l = kVar;
        this.f31213m = w0Var;
        this.f31205e = crashlyticsWorkers;
    }

    private static boolean B() {
        try {
            Class.forName("com.google.firebase.crash.FirebaseCrash");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String C() {
        SortedSet sortedSetR = this.f31213m.r();
        if (sortedSetR.isEmpty()) {
            return null;
        }
        return (String) sortedSetR.first();
    }

    private static long D() {
        return G(System.currentTimeMillis());
    }

    static List E(ob.h hVar, String str, vb.g gVar, byte[] bArr) {
        File fileQ = gVar.q(str, "user-data");
        File fileQ2 = gVar.q(str, "keys");
        File fileQ3 = gVar.q(str, "rollouts-state");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new f("logs_file", "logs", bArr));
        arrayList.add(new e0("crash_meta_file", TtmlNode.TAG_METADATA, hVar.d()));
        arrayList.add(new e0("session_meta_file", "session", hVar.g()));
        arrayList.add(new e0("app_meta_file", "app", hVar.e()));
        arrayList.add(new e0("device_meta_file", "device", hVar.a()));
        arrayList.add(new e0("os_meta_file", "os", hVar.f()));
        arrayList.add(R(hVar));
        arrayList.add(new e0("user_meta_file", "user", fileQ));
        arrayList.add(new e0("keys_file", "keys", fileQ2));
        arrayList.add(new e0("rollouts_file", "rollouts", fileQ3));
        return arrayList;
    }

    private InputStream F(String str) {
        ClassLoader classLoader = getClass().getClassLoader();
        if (classLoader == null) {
            ob.g.f().k("Couldn't get Class Loader");
            return null;
        }
        InputStream resourceAsStream = classLoader.getResourceAsStream(str);
        if (resourceAsStream != null) {
            return resourceAsStream;
        }
        ob.g.f().g("No version control information found");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long G(long j11) {
        return j11 / 1000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void L(String str) {
        w(str, Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean M(File file, String str) {
        return str.startsWith(".ae");
    }

    private Task O(long j11) {
        if (B()) {
            ob.g.f().k("Skipping logging Crashlytics event to Firebase, FirebaseCrash exists");
            return Tasks.forResult(null);
        }
        ob.g.f().b("Logging app exception event to Firebase Analytics");
        return Tasks.call(new ScheduledThreadPoolExecutor(1), new e(j11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Task P() {
        ArrayList arrayList = new ArrayList();
        for (File file : N()) {
            try {
                arrayList.add(O(Long.parseLong(file.getName().substring(3))));
            } catch (NumberFormatException unused) {
                ob.g.f().k("Could not parse app exception timestamp from file " + file.getName());
            }
            file.delete();
        }
        return Tasks.whenAll(arrayList);
    }

    private static boolean Q(String str, File file, CrashlyticsReport.a aVar) {
        if (file == null || !file.exists()) {
            ob.g.f().k("No minidump data found for session " + str);
        }
        if (aVar == null) {
            ob.g.f().g("No Tombstones data found for session " + str);
        }
        return (file == null || !file.exists()) && aVar == null;
    }

    private static j0 R(ob.h hVar) {
        File fileC = hVar.c();
        return (fileC == null || !fileC.exists()) ? new f("minidump_file", "minidump", new byte[]{0}) : new e0("minidump_file", "minidump", fileC);
    }

    private static byte[] T(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int i11 = inputStream.read(bArr);
            if (i11 == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i11);
        }
    }

    private Task a0() {
        if (this.f31202b.d()) {
            ob.g.f().b("Automatic data collection is enabled. Allowing upload.");
            this.f31216p.trySetResult(Boolean.FALSE);
            return Tasks.forResult(Boolean.TRUE);
        }
        ob.g.f().b("Automatic data collection is disabled.");
        ob.g.f().i("Notifying that unsent reports are available.");
        this.f31216p.trySetResult(Boolean.TRUE);
        Task taskOnSuccessTask = this.f31202b.j().onSuccessTask(new c());
        ob.g.f().b("Waiting for send/deleteUnsentReports to be called.");
        return com.google.firebase.crashlytics.internal.concurrency.b.c(taskOnSuccessTask, this.f31217q.getTask());
    }

    private void b0(String str) {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 < 30) {
            ob.g.f().i("ANR feature enabled, but device is API " + i11);
            return;
        }
        List historicalProcessExitReasons = ((ActivityManager) this.f31201a.getSystemService("activity")).getHistoricalProcessExitReasons(null, 0, 0);
        if (historicalProcessExitReasons.size() != 0) {
            this.f31213m.x(str, historicalProcessExitReasons, new rb.e(this.f31207g, str), rb.o.m(str, this.f31207g, this.f31205e));
        } else {
            ob.g.f().i("No ApplicationExitInfo available. Session: " + str);
        }
    }

    private static sb.e.a o(g0 g0Var, com.google.firebase.crashlytics.internal.common.a aVar) {
        return sb.e.a.b(g0Var.f(), aVar.f31142f, aVar.f31143g, g0Var.a().c(), DeliveryMechanism.determineFrom(aVar.f31140d).getId(), aVar.f31144h);
    }

    private static sb.e.b p(Context context) {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return sb.e.b.c(CommonUtils.k(), Build.MODEL, Runtime.getRuntime().availableProcessors(), CommonUtils.b(context), ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize()), CommonUtils.w(), CommonUtils.l(), Build.MANUFACTURER, Build.PRODUCT);
    }

    private static sb.e.c q() {
        return sb.e.c.a(Build.VERSION.RELEASE, Build.VERSION.CODENAME, CommonUtils.x());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void r(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((File) it.next()).delete();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void v(boolean z10, wb.b bVar, boolean z11) {
        String str;
        CrashlyticsWorkers.c();
        ArrayList arrayList = new ArrayList(this.f31213m.r());
        if (arrayList.size() <= z10) {
            ob.g.f().i("No open sessions to be closed.");
            return;
        }
        String str2 = (String) arrayList.get(z10 ? 1 : 0);
        if (z11 && bVar.b().f31738b.f31746b) {
            b0(str2);
        } else {
            ob.g.f().i("ANR feature disabled.");
        }
        if (z11 && this.f31210j.d(str2)) {
            z(str2);
        }
        if (z10 != 0) {
            str = (String) arrayList.get(0);
        } else {
            this.f31212l.e(null);
            str = null;
        }
        this.f31213m.l(D(), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(String str, Boolean bool) {
        long jD = D();
        ob.g.f().b("Opening a new session with ID " + str);
        this.f31210j.c(str, String.format(Locale.US, "Crashlytics Android SDK/%s", x.q()), jD, sb.e.b(o(this.f31206f, this.f31208h), q(), p(this.f31201a)));
        if (bool.booleanValue() && str != null) {
            this.f31204d.r(str);
        }
        this.f31209i.e(str);
        this.f31212l.e(str);
        this.f31213m.s(str, jD);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x(long j11) {
        try {
            if (this.f31207g.g(".ae" + j11).createNewFile()) {
            } else {
                throw new IOException("Create new file failed.");
            }
        } catch (IOException e11) {
            ob.g.f().l("Could not create app exception marker file.", e11);
        }
    }

    private void z(String str) {
        ob.g.f().i("Finalizing native report for session " + str);
        ob.h hVarA = this.f31210j.a(str);
        File fileC = hVarA.c();
        CrashlyticsReport.a aVarB = hVarA.b();
        if (Q(str, fileC, aVarB)) {
            ob.g.f().k("No native core present");
            return;
        }
        long jLastModified = fileC.lastModified();
        rb.e eVar = new rb.e(this.f31207g, str);
        File fileK = this.f31207g.k(str);
        if (!fileK.isDirectory()) {
            ob.g.f().k("Couldn't create directory to store native session files, aborting.");
            return;
        }
        x(jLastModified);
        List listE = E(hVarA, str, this.f31207g, eVar.b());
        k0.b(fileK, listE);
        ob.g.f().b("CrashlyticsController#finalizePreviousNativeSession");
        this.f31213m.k(str, listE, aVarB);
        eVar.a();
    }

    boolean A(wb.b bVar) {
        CrashlyticsWorkers.c();
        if (K()) {
            ob.g.f().k("Skipping session finalization because a crash has already occurred.");
            return false;
        }
        ob.g.f().i("Finalizing previously open sessions.");
        try {
            v(true, bVar, true);
            ob.g.f().i("Closed all previously open sessions.");
            return true;
        } catch (Exception e11) {
            ob.g.f().e("Unable to finalize previously open sessions.", e11);
            return false;
        }
    }

    String H() {
        InputStream inputStreamF = F("META-INF/version-control-info.textproto");
        if (inputStreamF == null) {
            return null;
        }
        ob.g.f().b("Read version control info");
        return Base64.encodeToString(T(inputStreamF), 0);
    }

    void I(wb.b bVar, Thread thread, Throwable th2) {
        J(bVar, thread, th2, false);
    }

    synchronized void J(wb.b bVar, Thread thread, Throwable th2, boolean z10) {
        ob.g.f().b("Handling uncaught exception \"" + th2 + "\" from thread " + thread.getName());
        Task taskG = this.f31205e.f31297a.g(new b(System.currentTimeMillis(), th2, thread, bVar, z10));
        if (!z10) {
            try {
                try {
                    z0.b(taskG);
                } catch (TimeoutException unused) {
                    ob.g.f().d("Cannot send reports. Timed out while fetching settings.");
                }
            } catch (Exception e11) {
                ob.g.f().e("Error handling uncaught exception", e11);
            }
        }
    }

    boolean K() {
        b0 b0Var = this.f31214n;
        return b0Var != null && b0Var.a();
    }

    List N() {
        return this.f31207g.h(f31200t);
    }

    void S(final String str) {
        this.f31205e.f31297a.f(new Runnable() { // from class: com.google.firebase.crashlytics.internal.common.l
            @Override // java.lang.Runnable
            public final void run() {
                this.f31196a.L(str);
            }
        });
    }

    void U() {
        try {
            String strH = H();
            if (strH != null) {
                X("com.crashlytics.version-control-info", strH);
                ob.g.f().g("Saved version control info");
            }
        } catch (IOException e11) {
            ob.g.f().l("Unable to save version control info", e11);
        }
    }

    Task V() {
        this.f31217q.trySetResult(Boolean.TRUE);
        return this.f31218r.getTask();
    }

    void W(String str, String str2) {
        try {
            this.f31204d.p(str, str2);
        } catch (IllegalArgumentException e11) {
            Context context = this.f31201a;
            if (context != null && CommonUtils.u(context)) {
                throw e11;
            }
            ob.g.f().d("Attempting to set custom attribute with null key, ignoring.");
        }
    }

    void X(String str, String str2) {
        try {
            this.f31204d.q(str, str2);
        } catch (IllegalArgumentException e11) {
            Context context = this.f31201a;
            if (context != null && CommonUtils.u(context)) {
                throw e11;
            }
            ob.g.f().d("Attempting to set custom attribute with null key, ignoring.");
        }
    }

    void Y(String str) {
        this.f31204d.s(str);
    }

    void Z(Task task) {
        if (this.f31213m.o()) {
            ob.g.f().i("Crash reports are available to be sent.");
            a0().onSuccessTask(this.f31205e.f31297a, new d(task));
        } else {
            ob.g.f().i("No crash reports are available to be sent.");
            this.f31216p.trySetResult(Boolean.FALSE);
        }
    }

    void c0(Thread thread, Throwable th2) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (K()) {
            return;
        }
        long jG = G(jCurrentTimeMillis);
        String strC = C();
        if (strC == null) {
            ob.g.f().k("Tried to write a non-fatal exception while no session was open.");
        } else {
            this.f31213m.w(th2, thread, strC, jG);
        }
    }

    void d0(long j11, String str) {
        if (K()) {
            return;
        }
        this.f31209i.g(j11, str);
    }

    Task n() {
        if (this.f31219s.compareAndSet(false, true)) {
            return this.f31216p.getTask();
        }
        ob.g.f().k("checkForUnsentReports should only be called once per execution.");
        return Tasks.forResult(Boolean.FALSE);
    }

    Task s() {
        this.f31217q.trySetResult(Boolean.FALSE);
        return this.f31218r.getTask();
    }

    boolean t() {
        CrashlyticsWorkers.c();
        if (!this.f31203c.c()) {
            String strC = C();
            return strC != null && this.f31210j.d(strC);
        }
        ob.g.f().i("Found previous crash marker.");
        this.f31203c.d();
        return true;
    }

    void u(wb.b bVar) {
        v(false, bVar, false);
    }

    void y(String str, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, wb.b bVar) {
        this.f31215o = bVar;
        S(str);
        b0 b0Var = new b0(new a(), bVar, uncaughtExceptionHandler, this.f31210j);
        this.f31214n = b0Var;
        Thread.setDefaultUncaughtExceptionHandler(b0Var);
    }
}
