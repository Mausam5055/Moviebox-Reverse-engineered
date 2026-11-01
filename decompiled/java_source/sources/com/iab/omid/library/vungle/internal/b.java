package com.iab.omid.library.vungle.internal;

import android.view.View;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class b extends d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static b f33805d = new b();

    private b() {
    }

    public static b k() {
        return f33805d;
    }

    @Override // com.iab.omid.library.vungle.internal.d
    public void f(boolean z10) {
        Iterator it = c.e().c().iterator();
        while (it.hasNext()) {
            ((com.iab.omid.library.vungle.adsession.h) it.next()).k().k(z10);
        }
    }

    @Override // com.iab.omid.library.vungle.internal.d
    public boolean h() {
        Iterator it = c.e().a().iterator();
        while (it.hasNext()) {
            View viewL = ((com.iab.omid.library.vungle.adsession.h) it.next()).l();
            if (viewL != null && viewL.hasWindowFocus()) {
                return true;
            }
        }
        return false;
    }
}
