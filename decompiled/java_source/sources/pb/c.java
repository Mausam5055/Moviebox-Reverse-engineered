package pb;

import android.os.Bundle;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import ob.g;

/* JADX INFO: loaded from: classes5.dex */
public class c implements b, a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f72399a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f72400b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final TimeUnit f72401c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private CountDownLatch f72403e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f72402d = new Object();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f72404f = false;

    public c(e eVar, int i11, TimeUnit timeUnit) {
        this.f72399a = eVar;
        this.f72400b = i11;
        this.f72401c = timeUnit;
    }

    @Override // pb.a
    public void a(String str, Bundle bundle) {
        synchronized (this.f72402d) {
            try {
                g.f().i("Logging event " + str + " to Firebase Analytics with params " + bundle);
                this.f72403e = new CountDownLatch(1);
                this.f72404f = false;
                this.f72399a.a(str, bundle);
                g.f().i("Awaiting app exception callback from Analytics...");
                try {
                    if (this.f72403e.await(this.f72400b, this.f72401c)) {
                        this.f72404f = true;
                        g.f().i("App exception callback received from Analytics listener.");
                    } else {
                        g.f().k("Timeout exceeded while awaiting app exception callback from Analytics listener.");
                    }
                } catch (InterruptedException unused) {
                    g.f().d("Interrupted while awaiting app exception callback from Analytics listener.");
                }
                this.f72403e = null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // pb.b
    public void c(String str, Bundle bundle) {
        CountDownLatch countDownLatch = this.f72403e;
        if (countDownLatch != null && "_ae".equals(str)) {
            countDownLatch.countDown();
        }
    }
}
