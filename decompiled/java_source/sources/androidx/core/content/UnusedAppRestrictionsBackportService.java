package androidx.core.content;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

/* JADX INFO: loaded from: classes.dex */
public abstract class UnusedAppRestrictionsBackportService extends Service {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private w0.b.a f8136a = new a();

    class a extends w0.b.a {
        a() {
        }

        @Override // w0.b
        public void I0(w0.a aVar) {
            if (aVar == null) {
                return;
            }
            UnusedAppRestrictionsBackportService.this.a(new g(aVar));
        }
    }

    protected abstract void a(g gVar);

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f8136a;
    }
}
