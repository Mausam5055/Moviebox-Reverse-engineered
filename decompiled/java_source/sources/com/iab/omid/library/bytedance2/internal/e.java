package com.iab.omid.library.bytedance2.internal;

import android.view.View;
import androidx.annotation.Nullable;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;

/* JADX INFO: loaded from: classes4.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.iab.omid.library.bytedance2.weakreference.a f33448a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f33449b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final FriendlyObstructionPurpose f33450c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f33451d;

    public e(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, @Nullable String str) {
        this.f33448a = new com.iab.omid.library.bytedance2.weakreference.a(view);
        this.f33449b = view.getClass().getCanonicalName();
        this.f33450c = friendlyObstructionPurpose;
        this.f33451d = str;
    }

    public String a() {
        return this.f33451d;
    }

    public FriendlyObstructionPurpose b() {
        return this.f33450c;
    }

    public com.iab.omid.library.bytedance2.weakreference.a c() {
        return this.f33448a;
    }

    public String d() {
        return this.f33449b;
    }
}
