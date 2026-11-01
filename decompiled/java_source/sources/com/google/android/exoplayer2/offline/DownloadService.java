package com.google.android.exoplayer2.offline;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.exoplayer2.scheduler.Requirements;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public abstract class DownloadService extends Service {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final HashMap f25555j = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f25556a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f25557b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f25558c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f25559d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f25560e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f25561f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f25562g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f25563h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f25564i;

    private static final class a {
        static /* synthetic */ DownloadManager a(a aVar) {
            aVar.getClass();
            return null;
        }

        public abstract void b(DownloadService downloadService);

        public abstract void c(DownloadService downloadService);
    }

    protected abstract DownloadManager a();

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException();
    }

    @Override // android.app.Service
    public void onCreate() {
        String str = this.f25556a;
        if (str != null) {
            b0.a(this, str, this.f25557b, this.f25558c, 2);
        }
        int i11 = p0.f27626a;
        a();
        throw null;
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.f25564i = true;
        ((a) com.google.android.exoplayer2.util.a.e(this.f25559d)).c(this);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i11, int i12) {
        String action;
        String stringExtra;
        byte b11 = 1;
        this.f25560e = i12;
        this.f25562g = false;
        if (intent != null) {
            action = intent.getAction();
            stringExtra = intent.getStringExtra("content_id");
            this.f25561f |= intent.getBooleanExtra(com.mbridge.msdk.playercommon.exoplayer2.offline.DownloadService.KEY_FOREGROUND, false) || "com.google.android.exoplayer.downloadService.action.RESTART".equals(action);
        } else {
            action = null;
            stringExtra = null;
        }
        if (action == null) {
            action = com.mbridge.msdk.playercommon.exoplayer2.offline.DownloadService.ACTION_INIT;
        }
        a.a((a) com.google.android.exoplayer2.util.a.e(this.f25559d));
        switch (action.hashCode()) {
            case -1931239035:
                b11 = !action.equals("com.google.android.exoplayer.downloadService.action.ADD_DOWNLOAD") ? (byte) -1 : (byte) 0;
                break;
            case -932047176:
                if (!action.equals("com.google.android.exoplayer.downloadService.action.RESUME_DOWNLOADS")) {
                    b11 = -1;
                }
                break;
            case -871181424:
                b11 = !action.equals("com.google.android.exoplayer.downloadService.action.RESTART") ? (byte) -1 : (byte) 2;
                break;
            case -650547439:
                b11 = !action.equals("com.google.android.exoplayer.downloadService.action.REMOVE_ALL_DOWNLOADS") ? (byte) -1 : (byte) 3;
                break;
            case -119057172:
                b11 = !action.equals("com.google.android.exoplayer.downloadService.action.SET_REQUIREMENTS") ? (byte) -1 : (byte) 4;
                break;
            case 191112771:
                b11 = !action.equals("com.google.android.exoplayer.downloadService.action.PAUSE_DOWNLOADS") ? (byte) -1 : (byte) 5;
                break;
            case 671523141:
                b11 = !action.equals("com.google.android.exoplayer.downloadService.action.SET_STOP_REASON") ? (byte) -1 : (byte) 6;
                break;
            case 1015676687:
                b11 = !action.equals(com.mbridge.msdk.playercommon.exoplayer2.offline.DownloadService.ACTION_INIT) ? (byte) -1 : (byte) 7;
                break;
            case 1547520644:
                b11 = !action.equals("com.google.android.exoplayer.downloadService.action.REMOVE_DOWNLOAD") ? (byte) -1 : (byte) 8;
                break;
            default:
                b11 = -1;
                break;
        }
        switch (b11) {
            case 0:
                if (((DownloadRequest) ((Intent) com.google.android.exoplayer2.util.a.e(intent)).getParcelableExtra("download_request")) != null) {
                    intent.getIntExtra("stop_reason", 0);
                    throw null;
                }
                s.c("DownloadService", "Ignored ADD_DOWNLOAD: Missing download_request extra");
                break;
                break;
            case 1:
                throw null;
            case 2:
            case 7:
                break;
            case 3:
                throw null;
            case 4:
                if (((Requirements) ((Intent) com.google.android.exoplayer2.util.a.e(intent)).getParcelableExtra("requirements")) != null) {
                    throw null;
                }
                s.c("DownloadService", "Ignored SET_REQUIREMENTS: Missing requirements extra");
                break;
                break;
            case 5:
                throw null;
            case 6:
                if (((Intent) com.google.android.exoplayer2.util.a.e(intent)).hasExtra("stop_reason")) {
                    intent.getIntExtra("stop_reason", 0);
                    throw null;
                }
                s.c("DownloadService", "Ignored SET_STOP_REASON: Missing stop_reason extra");
                break;
            case 8:
                if (stringExtra != null) {
                    throw null;
                }
                s.c("DownloadService", "Ignored REMOVE_DOWNLOAD: Missing content_id extra");
                break;
                break;
            default:
                s.c("DownloadService", "Ignored unrecognized action: " + action);
                break;
        }
        int i13 = p0.f27626a;
        this.f25563h = false;
        throw null;
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) {
        this.f25562g = true;
    }
}
