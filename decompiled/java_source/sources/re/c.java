package re;

import android.content.Context;
import com.iab.omid.library.vungle.internal.i;
import com.iab.omid.library.vungle.internal.j;
import ue.e;
import ue.g;

/* JADX INFO: loaded from: classes5.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f74334a;

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
        com.iab.omid.library.vungle.internal.b.k().a(context);
        ue.a.b(context);
        ue.c.d(context);
        e.c(context);
        com.iab.omid.library.vungle.internal.g.c().b(context);
        com.iab.omid.library.vungle.internal.a.a().b(context);
        j.f().b(context);
    }

    void b(boolean z10) {
        this.f74334a = z10;
    }

    boolean d() {
        return this.f74334a;
    }
}
