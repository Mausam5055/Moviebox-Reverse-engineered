package com.iab.omid.library.mmadbridge.adsession;

import android.view.View;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b {
    public static b b(c cVar, d dVar) {
        oe.g.a();
        oe.g.d(cVar, "AdSessionConfiguration is null");
        oe.g.d(dVar, "AdSessionContext is null");
        return new h(cVar, dVar);
    }

    public abstract void a(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str);

    public abstract void c();

    public abstract void d(View view);

    public abstract void e();

    public abstract void f(View view);

    public abstract void g();
}
