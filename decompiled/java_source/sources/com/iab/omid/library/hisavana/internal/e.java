package com.iab.omid.library.hisavana.internal;

import android.view.View;
import com.iab.omid.library.hisavana.adsession.FriendlyObstructionPurpose;

/* JADX INFO: loaded from: classes4.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ke.a f33578a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f33579b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final FriendlyObstructionPurpose f33580c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f33581d;

    public e(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        this.f33578a = new ke.a(view);
        this.f33579b = view.getClass().getCanonicalName();
        this.f33580c = friendlyObstructionPurpose;
        this.f33581d = str;
    }

    public String a() {
        return this.f33581d;
    }

    public FriendlyObstructionPurpose b() {
        return this.f33580c;
    }

    public ke.a c() {
        return this.f33578a;
    }

    public String d() {
        return this.f33579b;
    }
}
