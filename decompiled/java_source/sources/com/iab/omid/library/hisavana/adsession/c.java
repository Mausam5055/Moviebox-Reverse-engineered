package com.iab.omid.library.hisavana.adsession;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Owner f33536a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Owner f33537b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f33538c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final CreativeType f33539d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ImpressionType f33540e;

    private c(CreativeType creativeType, ImpressionType impressionType, Owner owner, Owner owner2, boolean z10) {
        this.f33539d = creativeType;
        this.f33540e = impressionType;
        this.f33536a = owner;
        if (owner2 == null) {
            this.f33537b = Owner.NONE;
        } else {
            this.f33537b = owner2;
        }
        this.f33538c = z10;
    }

    public static c a(CreativeType creativeType, ImpressionType impressionType, Owner owner, Owner owner2, boolean z10) {
        ie.g.d(creativeType, "CreativeType is null");
        ie.g.d(impressionType, "ImpressionType is null");
        ie.g.d(owner, "Impression owner is null");
        ie.g.b(owner, creativeType, impressionType);
        return new c(creativeType, impressionType, owner, owner2, z10);
    }

    public boolean b() {
        return Owner.NATIVE == this.f33536a;
    }

    public JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        ie.c.i(jSONObject, "impressionOwner", this.f33536a);
        ie.c.i(jSONObject, "mediaEventsOwner", this.f33537b);
        ie.c.i(jSONObject, "creativeType", this.f33539d);
        ie.c.i(jSONObject, "impressionType", this.f33540e);
        ie.c.i(jSONObject, "isolateVerificationScripts", Boolean.valueOf(this.f33538c));
        return jSONObject;
    }
}
