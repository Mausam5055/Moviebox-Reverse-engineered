package com.iab.omid.library.vungle.adsession;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Owner f33770a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Owner f33771b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f33772c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final CreativeType f33773d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ImpressionType f33774e;

    private c(CreativeType creativeType, ImpressionType impressionType, Owner owner, Owner owner2, boolean z10) {
        this.f33773d = creativeType;
        this.f33774e = impressionType;
        this.f33770a = owner;
        if (owner2 == null) {
            this.f33771b = Owner.NONE;
        } else {
            this.f33771b = owner2;
        }
        this.f33772c = z10;
    }

    public static c a(CreativeType creativeType, ImpressionType impressionType, Owner owner, Owner owner2, boolean z10) {
        ue.g.d(creativeType, "CreativeType is null");
        ue.g.d(impressionType, "ImpressionType is null");
        ue.g.d(owner, "Impression owner is null");
        ue.g.b(owner, creativeType, impressionType);
        return new c(creativeType, impressionType, owner, owner2, z10);
    }

    public boolean b() {
        return Owner.NATIVE == this.f33770a;
    }

    public JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        ue.c.i(jSONObject, "impressionOwner", this.f33770a);
        ue.c.i(jSONObject, "mediaEventsOwner", this.f33771b);
        ue.c.i(jSONObject, "creativeType", this.f33773d);
        ue.c.i(jSONObject, "impressionType", this.f33774e);
        ue.c.i(jSONObject, "isolateVerificationScripts", Boolean.valueOf(this.f33772c));
        return jSONObject;
    }
}
