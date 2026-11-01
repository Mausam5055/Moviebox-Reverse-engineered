package com.iab.omid.library.vungle.adsession;

import android.view.View;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b {
    public static b a(c cVar, d dVar) {
        ue.g.a();
        ue.g.d(cVar, "AdSessionConfiguration is null");
        ue.g.d(dVar, "AdSessionContext is null");
        return new h(cVar, dVar);
    }

    public abstract void b();

    public abstract void c(View view);

    public abstract void d();
}
