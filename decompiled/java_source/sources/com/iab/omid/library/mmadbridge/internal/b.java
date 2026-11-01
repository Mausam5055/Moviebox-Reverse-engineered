package com.iab.omid.library.mmadbridge.internal;

import android.view.View;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public class b extends d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static b f33690d = new b();

    private b() {
    }

    public static b k() {
        return f33690d;
    }

    @Override // com.iab.omid.library.mmadbridge.internal.d
    public void f(boolean z10) {
        Iterator it = c.e().c().iterator();
        while (it.hasNext()) {
            ((com.iab.omid.library.mmadbridge.adsession.h) it.next()).t().n(z10);
        }
    }

    @Override // com.iab.omid.library.mmadbridge.internal.d
    public boolean h() {
        Iterator it = c.e().a().iterator();
        while (it.hasNext()) {
            View viewN = ((com.iab.omid.library.mmadbridge.adsession.h) it.next()).n();
            if (viewN != null && viewN.hasWindowFocus()) {
                return true;
            }
        }
        return false;
    }
}
