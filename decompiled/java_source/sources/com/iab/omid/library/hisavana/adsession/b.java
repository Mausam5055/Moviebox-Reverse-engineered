package com.iab.omid.library.hisavana.adsession;

import android.view.View;

/* JADX INFO: loaded from: classes4.dex */
public abstract class b {
    public static b b(c cVar, d dVar) {
        ie.g.a();
        ie.g.d(cVar, "AdSessionConfiguration is null");
        ie.g.d(dVar, "AdSessionContext is null");
        return new h(cVar, dVar);
    }

    public abstract void a(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str);

    public abstract void c();

    public abstract void d(View view);

    public abstract void e();
}
