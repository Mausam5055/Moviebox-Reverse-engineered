package com.iab.omid.library.mmadbridge.adsession;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Owner f33650a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Owner f33651b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f33652c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final CreativeType f33653d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ImpressionType f33654e;

    private c(CreativeType creativeType, ImpressionType impressionType, Owner owner, Owner owner2, boolean z10) {
        this.f33653d = creativeType;
        this.f33654e = impressionType;
        this.f33650a = owner;
        if (owner2 == null) {
            this.f33651b = Owner.NONE;
        } else {
            this.f33651b = owner2;
        }
        this.f33652c = z10;
    }

    public static c a(CreativeType creativeType, ImpressionType impressionType, Owner owner, Owner owner2, boolean z10) {
        oe.g.d(creativeType, "CreativeType is null");
        oe.g.d(impressionType, "ImpressionType is null");
        oe.g.d(owner, "Impression owner is null");
        oe.g.b(owner, creativeType, impressionType);
        return new c(creativeType, impressionType, owner, owner2, z10);
    }

    public boolean b() {
        return Owner.NATIVE == this.f33650a;
    }

    public boolean c() {
        return Owner.NATIVE == this.f33651b;
    }

    public JSONObject d() {
        JSONObject jSONObject = new JSONObject();
        oe.c.i(jSONObject, "impressionOwner", this.f33650a);
        oe.c.i(jSONObject, "mediaEventsOwner", this.f33651b);
        oe.c.i(jSONObject, "creativeType", this.f33653d);
        oe.c.i(jSONObject, "impressionType", this.f33654e);
        oe.c.i(jSONObject, "isolateVerificationScripts", Boolean.valueOf(this.f33652c));
        return jSONObject;
    }
}
