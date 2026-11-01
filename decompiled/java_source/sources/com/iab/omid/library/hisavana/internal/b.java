package com.iab.omid.library.hisavana.internal;

import android.view.View;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class b extends d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static b f33571d = new b();

    private b() {
    }

    public static b k() {
        return f33571d;
    }

    @Override // com.iab.omid.library.hisavana.internal.d
    public void f(boolean z10) {
        Iterator it = c.e().c().iterator();
        while (it.hasNext()) {
            ((com.iab.omid.library.hisavana.adsession.h) it.next()).l().k(z10);
        }
    }

    @Override // com.iab.omid.library.hisavana.internal.d
    public boolean h() {
        Iterator it = c.e().a().iterator();
        while (it.hasNext()) {
            View viewM = ((com.iab.omid.library.hisavana.adsession.h) it.next()).m();
            if (viewM != null && viewM.hasWindowFocus()) {
                return true;
            }
        }
        return false;
    }
}
