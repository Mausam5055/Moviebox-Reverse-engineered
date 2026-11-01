package fe;

import android.content.Context;
import com.iab.omid.library.hisavana.internal.i;
import com.iab.omid.library.hisavana.internal.j;
import ie.e;
import ie.g;

/* JADX INFO: loaded from: classes5.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f62381a;

    private void d(Context context) {
        g.d(context, "Application Context cannot be null");
    }

    String a() {
        return "1.5.4-Hisavana";
    }

    void b(Context context) {
        d(context);
        if (e()) {
            return;
        }
        c(true);
        i.d().b(context);
        com.iab.omid.library.hisavana.internal.b.k().a(context);
        ie.a.b(context);
        ie.c.d(context);
        e.c(context);
        com.iab.omid.library.hisavana.internal.g.c().b(context);
        com.iab.omid.library.hisavana.internal.a.a().b(context);
        j.f().b(context);
    }

    void c(boolean z10) {
        this.f62381a = z10;
    }

    boolean e() {
        return this.f62381a;
    }
}
