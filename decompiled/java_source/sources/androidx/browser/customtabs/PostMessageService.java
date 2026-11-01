package androidx.browser.customtabs;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;

/* JADX INFO: loaded from: classes.dex */
public class PostMessageService extends Service {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c.d.a f2156a = new a();

    class a extends c.d.a {
        a() {
        }

        @Override // c.d
        public void E0(c.a aVar, String str, Bundle bundle) {
            aVar.P0(str, bundle);
        }

        @Override // c.d
        public void m(c.a aVar, Bundle bundle) {
            aVar.S0(bundle);
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f2156a;
    }
}
