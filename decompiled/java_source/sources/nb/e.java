package nb;

import android.os.Bundle;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
class e implements kb.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private pb.b f70298a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private pb.b f70299b;

    e() {
    }

    private static void b(pb.b bVar, String str, Bundle bundle) {
        if (bVar == null) {
            return;
        }
        bVar.c(str, bundle);
    }

    private void c(String str, Bundle bundle) {
        b("clx".equals(bundle.getString("_o")) ? this.f70298a : this.f70299b, str, bundle);
    }

    @Override // kb.a.b
    public void a(int i11, Bundle bundle) {
        String string;
        ob.g.f().i(String.format(Locale.US, "Analytics listener received message. ID: %d, Extras: %s", Integer.valueOf(i11), bundle));
        if (bundle == null || (string = bundle.getString("name")) == null) {
            return;
        }
        Bundle bundle2 = bundle.getBundle("params");
        if (bundle2 == null) {
            bundle2 = new Bundle();
        }
        c(string, bundle2);
    }

    public void d(pb.b bVar) {
        this.f70299b = bVar;
    }

    public void e(pb.b bVar) {
        this.f70298a = bVar;
    }
}
