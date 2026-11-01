package xe;

import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.google.zxing.client.android.R$id;
import com.journeyapps.barcodescanner.camera.CameraInstance;

/* JADX INFO: loaded from: classes5.dex */
public class j {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f78208k = "j";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CameraInstance f78209a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HandlerThread f78210b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Handler f78211c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private g f78212d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Handler f78213e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Rect f78214f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f78215g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Object f78216h = new Object();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Handler.Callback f78217i = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final com.journeyapps.barcodescanner.camera.p f78218j = new b();

    class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i11 = message.what;
            if (i11 == R$id.zxing_decode) {
                j.this.g((r) message.obj);
                return true;
            }
            if (i11 != R$id.zxing_preview_failed) {
                return true;
            }
            j.this.h();
            return true;
        }
    }

    class b implements com.journeyapps.barcodescanner.camera.p {
        b() {
        }

        @Override // com.journeyapps.barcodescanner.camera.p
        public void a(Exception exc) {
            synchronized (j.this.f78216h) {
                try {
                    if (j.this.f78215g) {
                        j.this.f78211c.obtainMessage(R$id.zxing_preview_failed).sendToTarget();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // com.journeyapps.barcodescanner.camera.p
        public void b(r rVar) {
            synchronized (j.this.f78216h) {
                try {
                    if (j.this.f78215g) {
                        j.this.f78211c.obtainMessage(R$id.zxing_decode, rVar).sendToTarget();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    public j(CameraInstance cameraInstance, g gVar, Handler handler) {
        s.a();
        this.f78209a = cameraInstance;
        this.f78212d = gVar;
        this.f78213e = handler;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(r rVar) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        rVar.d(this.f78214f);
        com.google.zxing.e eVarF = f(rVar);
        com.google.zxing.j jVarC = eVarF != null ? this.f78212d.c(eVarF) : null;
        if (jVarC != null) {
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Found barcode in ");
            sb2.append(jCurrentTimeMillis2 - jCurrentTimeMillis);
            sb2.append(" ms");
            if (this.f78213e != null) {
                Message messageObtain = Message.obtain(this.f78213e, R$id.zxing_decode_succeeded, new c(jVarC, rVar));
                messageObtain.setData(new Bundle());
                messageObtain.sendToTarget();
            }
        } else {
            Handler handler = this.f78213e;
            if (handler != null) {
                Message.obtain(handler, R$id.zxing_decode_failed).sendToTarget();
            }
        }
        if (this.f78213e != null) {
            Message.obtain(this.f78213e, R$id.zxing_possible_result_points, c.f(this.f78212d.d(), rVar)).sendToTarget();
        }
        h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        this.f78209a.y(this.f78218j);
    }

    protected com.google.zxing.e f(r rVar) {
        if (this.f78214f == null) {
            return null;
        }
        return rVar.a();
    }

    public void i(Rect rect) {
        this.f78214f = rect;
    }

    public void j(g gVar) {
        this.f78212d = gVar;
    }

    public void k() {
        s.a();
        HandlerThread handlerThread = new HandlerThread(f78208k);
        this.f78210b = handlerThread;
        handlerThread.start();
        this.f78211c = new Handler(this.f78210b.getLooper(), this.f78217i);
        this.f78215g = true;
        h();
    }

    public void l() {
        s.a();
        synchronized (this.f78216h) {
            this.f78215g = false;
            this.f78211c.removeCallbacksAndMessages(null);
            this.f78210b.quit();
        }
    }
}
