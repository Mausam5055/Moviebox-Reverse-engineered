package le;

import android.content.Context;
import com.iab.omid.library.mmadbridge.internal.i;
import com.iab.omid.library.mmadbridge.internal.j;
import oe.g;

/* JADX INFO: loaded from: classes5.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f68810a;

    private void c(Context context) {
        g.d(context, "Application Context cannot be null");
    }

    void a(Context context) {
        c(context);
        if (d()) {
            return;
        }
        b(true);
        i.d().b(context);
        com.iab.omid.library.mmadbridge.internal.b.k().a(context);
        oe.a.b(context);
        oe.c.d(context);
        oe.e.c(context);
        com.iab.omid.library.mmadbridge.internal.g.c().b(context);
        com.iab.omid.library.mmadbridge.internal.a.a().b(context);
        j.f().b(context);
    }

    void b(boolean z10) {
        this.f68810a = z10;
    }

    boolean d() {
        return this.f68810a;
    }
}
