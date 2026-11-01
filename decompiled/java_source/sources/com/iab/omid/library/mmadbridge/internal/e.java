package com.iab.omid.library.mmadbridge.internal;

import android.view.View;
import com.iab.omid.library.mmadbridge.adsession.FriendlyObstructionPurpose;

/* JADX INFO: loaded from: classes4.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final qe.a f33697a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f33698b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final FriendlyObstructionPurpose f33699c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f33700d;

    public e(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        this.f33697a = new qe.a(view);
        this.f33698b = view.getClass().getCanonicalName();
        this.f33699c = friendlyObstructionPurpose;
        this.f33700d = str;
    }

    public String a() {
        return this.f33700d;
    }

    public FriendlyObstructionPurpose b() {
        return this.f33699c;
    }

    public qe.a c() {
        return this.f33697a;
    }

    public String d() {
        return this.f33698b;
    }
}
