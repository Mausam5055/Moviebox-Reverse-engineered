package androidx.media3.exoplayer.offline;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.h0;
import androidx.media3.common.util.u;
import androidx.media3.exoplayer.scheduler.Requirements;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DownloadService extends Service {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final HashMap f12352k = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f12353a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f12354b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f12355c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f12356d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f12357e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f12358f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f12359g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f12360h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f12361i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f12362j;

    /* JADX INFO: Access modifiers changed from: private */
    static final class b implements DownloadManager.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f12363a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final DownloadManager f12364b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f12365c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final f2.f f12366d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Class f12367e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private DownloadService f12368f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private Requirements f12369g;

        private b(Context context, DownloadManager downloadManager, boolean z10, f2.f fVar, Class cls) {
            this.f12363a = context;
            this.f12364b = downloadManager;
            this.f12365c = z10;
            this.f12366d = fVar;
            this.f12367e = cls;
            downloadManager.d(this);
            q();
        }

        private void k() {
            Requirements requirements = new Requirements(0);
            if (o(requirements)) {
                this.f12366d.cancel();
                this.f12369g = requirements;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void m(DownloadService downloadService) {
            downloadService.v(this.f12364b.e());
        }

        private void n() {
            if (this.f12365c) {
                try {
                    a1.r1(this.f12363a, DownloadService.o(this.f12363a, this.f12367e, "androidx.media3.exoplayer.downloadService.action.RESTART"));
                    return;
                } catch (IllegalStateException unused) {
                    u.h("DownloadService", "Failed to restart (foreground launch restriction)");
                    return;
                }
            }
            try {
                this.f12363a.startService(DownloadService.o(this.f12363a, this.f12367e, "androidx.media3.exoplayer.downloadService.action.INIT"));
            } catch (IllegalStateException unused2) {
                u.h("DownloadService", "Failed to restart (process is idle)");
            }
        }

        private boolean o(Requirements requirements) {
            return !Objects.equals(this.f12369g, requirements);
        }

        private boolean p() {
            DownloadService downloadService = this.f12368f;
            return downloadService == null || downloadService.r();
        }

        @Override // androidx.media3.exoplayer.offline.DownloadManager.d
        public void a(DownloadManager downloadManager, boolean z10) {
            if (z10 || downloadManager.g() || !p()) {
                return;
            }
            List listE = downloadManager.e();
            for (int i11 = 0; i11 < listE.size(); i11++) {
                if (((androidx.media3.exoplayer.offline.c) listE.get(i11)).f12414b == 0) {
                    n();
                    return;
                }
            }
        }

        @Override // androidx.media3.exoplayer.offline.DownloadManager.d
        public void b(DownloadManager downloadManager, androidx.media3.exoplayer.offline.c cVar) {
            DownloadService downloadService = this.f12368f;
            if (downloadService != null) {
                downloadService.u();
            }
        }

        @Override // androidx.media3.exoplayer.offline.DownloadManager.d
        public /* synthetic */ void c(DownloadManager downloadManager, boolean z10) {
            j.a(this, downloadManager, z10);
        }

        @Override // androidx.media3.exoplayer.offline.DownloadManager.d
        public final void d(DownloadManager downloadManager) {
            DownloadService downloadService = this.f12368f;
            if (downloadService != null) {
                downloadService.w();
            }
        }

        @Override // androidx.media3.exoplayer.offline.DownloadManager.d
        public void e(DownloadManager downloadManager, Requirements requirements, int i11) {
            q();
        }

        @Override // androidx.media3.exoplayer.offline.DownloadManager.d
        public void f(DownloadManager downloadManager, androidx.media3.exoplayer.offline.c cVar, Exception exc) {
            DownloadService downloadService = this.f12368f;
            if (downloadService != null) {
                downloadService.t(cVar);
            }
            if (p() && DownloadService.s(cVar.f12414b)) {
                u.h("DownloadService", "DownloadService wasn't running. Restarting.");
                n();
            }
        }

        @Override // androidx.media3.exoplayer.offline.DownloadManager.d
        public void g(DownloadManager downloadManager) {
            DownloadService downloadService = this.f12368f;
            if (downloadService != null) {
                downloadService.v(downloadManager.e());
            }
        }

        public void j(final DownloadService downloadService) {
            androidx.media3.common.util.a.g(this.f12368f == null);
            this.f12368f = downloadService;
            if (this.f12364b.l()) {
                a1.C().postAtFrontOfQueue(new Runnable() { // from class: androidx.media3.exoplayer.offline.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f12426a.m(downloadService);
                    }
                });
            }
        }

        public void l(DownloadService downloadService) {
            androidx.media3.common.util.a.g(this.f12368f == downloadService);
            this.f12368f = null;
        }

        public boolean q() {
            boolean zM = this.f12364b.m();
            if (this.f12366d == null) {
                return !zM;
            }
            if (!zM) {
                k();
                return true;
            }
            Requirements requirementsI = this.f12364b.i();
            if (!this.f12366d.b(requirementsI).equals(requirementsI)) {
                k();
                return false;
            }
            if (!o(requirementsI)) {
                return true;
            }
            if (this.f12366d.a(requirementsI, this.f12363a.getPackageName(), "androidx.media3.exoplayer.downloadService.action.RESTART")) {
                this.f12369g = requirementsI;
                return true;
            }
            u.h("DownloadService", "Failed to schedule restart");
            k();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f12370a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f12371b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Handler f12372c = new Handler(Looper.getMainLooper());

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f12373d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f12374e;

        public c(int i11, long j11) {
            this.f12370a = i11;
            this.f12371b = j11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f() {
            DownloadManager downloadManager = ((b) androidx.media3.common.util.a.e(DownloadService.this.f12357e)).f12364b;
            Notification notificationN = DownloadService.this.n(downloadManager.e(), downloadManager.h());
            if (this.f12374e) {
                ((NotificationManager) DownloadService.this.getSystemService("notification")).notify(this.f12370a, notificationN);
            } else {
                a1.j1(DownloadService.this, this.f12370a, notificationN, 1, "dataSync");
                this.f12374e = true;
            }
            if (this.f12373d) {
                this.f12372c.removeCallbacksAndMessages(null);
                this.f12372c.postDelayed(new Runnable() { // from class: androidx.media3.exoplayer.offline.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f12428a.f();
                    }
                }, this.f12371b);
            }
        }

        public void b() {
            if (this.f12374e) {
                f();
            }
        }

        public void c() {
            if (this.f12374e) {
                return;
            }
            f();
        }

        public void d() {
            this.f12373d = true;
            f();
        }

        public void e() {
            this.f12373d = false;
            this.f12372c.removeCallbacksAndMessages(null);
        }
    }

    protected DownloadService(int i11, long j11, String str, int i12, int i13) {
        if (i11 == 0) {
            this.f12353a = null;
            this.f12354b = null;
            this.f12355c = 0;
            this.f12356d = 0;
            return;
        }
        this.f12353a = new c(i11, j11);
        this.f12354b = str;
        this.f12355c = i12;
        this.f12356d = i13;
    }

    private static void A(Context context, Intent intent, boolean z10) {
        if (z10) {
            a1.r1(context, intent);
        } else {
            context.startService(intent);
        }
    }

    public static Intent i(Context context, Class cls, DownloadRequest downloadRequest, int i11, boolean z10) {
        return p(context, cls, "androidx.media3.exoplayer.downloadService.action.ADD_DOWNLOAD", z10).putExtra("download_request", downloadRequest).putExtra("stop_reason", i11);
    }

    public static Intent j(Context context, Class cls, DownloadRequest downloadRequest, boolean z10) {
        return i(context, cls, downloadRequest, 0, z10);
    }

    public static Intent k(Context context, Class cls, String str, boolean z10) {
        return p(context, cls, "androidx.media3.exoplayer.downloadService.action.REMOVE_DOWNLOAD", z10).putExtra("content_id", str);
    }

    public static Intent l(Context context, Class cls, String str, int i11, boolean z10) {
        return p(context, cls, "androidx.media3.exoplayer.downloadService.action.SET_STOP_REASON", z10).putExtra("content_id", str).putExtra("stop_reason", i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Intent o(Context context, Class cls, String str) {
        return new Intent(context, (Class<?>) cls).setAction(str);
    }

    private static Intent p(Context context, Class cls, String str, boolean z10) {
        return o(context, cls, str).putExtra(com.mbridge.msdk.playercommon.exoplayer2.offline.DownloadService.KEY_FOREGROUND, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean r() {
        return this.f12361i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean s(int i11) {
        return i11 == 2 || i11 == 5 || i11 == 7;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(androidx.media3.exoplayer.offline.c cVar) {
        if (this.f12353a != null) {
            if (s(cVar.f12414b)) {
                this.f12353a.d();
            } else {
                this.f12353a.b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        c cVar = this.f12353a;
        if (cVar != null) {
            cVar.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v(List list) {
        if (this.f12353a != null) {
            for (int i11 = 0; i11 < list.size(); i11++) {
                if (s(((androidx.media3.exoplayer.offline.c) list.get(i11)).f12414b)) {
                    this.f12353a.d();
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        c cVar = this.f12353a;
        if (cVar != null) {
            cVar.e();
        }
        if (((b) androidx.media3.common.util.a.e(this.f12357e)).q()) {
            if (a1.f10350a >= 28 || !this.f12360h) {
                this.f12361i |= stopSelfResult(this.f12358f);
            } else {
                stopSelf();
                this.f12361i = true;
            }
        }
    }

    public static void x(Context context, Class cls, DownloadRequest downloadRequest, boolean z10) {
        A(context, j(context, cls, downloadRequest, z10), z10);
    }

    public static void y(Context context, Class cls, String str, boolean z10) {
        A(context, k(context, cls, str, z10), z10);
    }

    public static void z(Context context, Class cls, String str, int i11, boolean z10) {
        A(context, l(context, cls, str, i11, z10), z10);
    }

    protected abstract DownloadManager m();

    protected abstract Notification n(List list, int i11);

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException();
    }

    @Override // android.app.Service
    public void onCreate() {
        String str = this.f12354b;
        if (str != null) {
            h0.a(this, str, this.f12355c, this.f12356d, 2);
        }
        Class<?> cls = getClass();
        HashMap map = f12352k;
        b bVar = (b) map.get(cls);
        if (bVar == null) {
            boolean z10 = this.f12353a != null;
            f2.f fVarQ = (z10 && (a1.f10350a < 31)) ? q() : null;
            DownloadManager downloadManagerM = m();
            downloadManagerM.x();
            bVar = new b(getApplicationContext(), downloadManagerM, z10, fVarQ, cls);
            map.put(cls, bVar);
        }
        this.f12357e = bVar;
        bVar.j(this);
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.f12362j = true;
        ((b) androidx.media3.common.util.a.e(this.f12357e)).l(this);
        c cVar = this.f12353a;
        if (cVar != null) {
            cVar.e();
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i11, int i12) {
        String action;
        String stringExtra;
        c cVar;
        this.f12358f = i12;
        this.f12360h = false;
        if (intent != null) {
            action = intent.getAction();
            stringExtra = intent.getStringExtra("content_id");
            this.f12359g |= intent.getBooleanExtra(com.mbridge.msdk.playercommon.exoplayer2.offline.DownloadService.KEY_FOREGROUND, false) || "androidx.media3.exoplayer.downloadService.action.RESTART".equals(action);
        } else {
            action = null;
            stringExtra = null;
        }
        if (action == null) {
            action = "androidx.media3.exoplayer.downloadService.action.INIT";
        }
        DownloadManager downloadManager = ((b) androidx.media3.common.util.a.e(this.f12357e)).f12364b;
        switch (action) {
            case "androidx.media3.exoplayer.downloadService.action.SET_STOP_REASON":
                if (!((Intent) androidx.media3.common.util.a.e(intent)).hasExtra("stop_reason")) {
                    u.c("DownloadService", "Ignored SET_STOP_REASON: Missing stop_reason extra");
                    break;
                } else {
                    downloadManager.A(stringExtra, intent.getIntExtra("stop_reason", 0));
                    break;
                }
                break;
            case "androidx.media3.exoplayer.downloadService.action.REMOVE_DOWNLOAD":
                if (stringExtra != null) {
                    downloadManager.v(stringExtra);
                    break;
                } else {
                    u.c("DownloadService", "Ignored REMOVE_DOWNLOAD: Missing content_id extra");
                    break;
                }
                break;
            case "androidx.media3.exoplayer.downloadService.action.RESTART":
            case "androidx.media3.exoplayer.downloadService.action.INIT":
                break;
            case "androidx.media3.exoplayer.downloadService.action.RESUME_DOWNLOADS":
                downloadManager.x();
                break;
            case "androidx.media3.exoplayer.downloadService.action.REMOVE_ALL_DOWNLOADS":
                downloadManager.u();
                break;
            case "androidx.media3.exoplayer.downloadService.action.ADD_DOWNLOAD":
                DownloadRequest downloadRequest = (DownloadRequest) ((Intent) androidx.media3.common.util.a.e(intent)).getParcelableExtra("download_request");
                if (downloadRequest != null) {
                    downloadManager.c(downloadRequest, intent.getIntExtra("stop_reason", 0));
                    break;
                } else {
                    u.c("DownloadService", "Ignored ADD_DOWNLOAD: Missing download_request extra");
                    break;
                }
                break;
            case "androidx.media3.exoplayer.downloadService.action.SET_REQUIREMENTS":
                Requirements requirements = (Requirements) ((Intent) androidx.media3.common.util.a.e(intent)).getParcelableExtra("requirements");
                if (requirements != null) {
                    downloadManager.z(requirements);
                    break;
                } else {
                    u.c("DownloadService", "Ignored SET_REQUIREMENTS: Missing requirements extra");
                    break;
                }
                break;
            case "androidx.media3.exoplayer.downloadService.action.PAUSE_DOWNLOADS":
                downloadManager.t();
                break;
            default:
                u.c("DownloadService", "Ignored unrecognized action: " + action);
                break;
        }
        if (a1.f10350a >= 26 && this.f12359g && (cVar = this.f12353a) != null) {
            cVar.c();
        }
        this.f12361i = false;
        if (downloadManager.k()) {
            w();
        }
        return 1;
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) {
        this.f12360h = true;
    }

    protected abstract f2.f q();
}
