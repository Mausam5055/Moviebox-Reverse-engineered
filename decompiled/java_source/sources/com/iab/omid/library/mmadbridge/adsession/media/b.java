package com.iab.omid.library.mmadbridge.adsession.media;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import oe.d;
import oe.g;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f33680a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Float f33681b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f33682c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Position f33683d;

    private b(boolean z10, Float f11, boolean z11, Position position) {
        this.f33680a = z10;
        this.f33681b = f11;
        this.f33682c = z11;
        this.f33683d = position;
    }

    public static b b(boolean z10, Position position) {
        g.d(position, "Position is null");
        return new b(false, null, z10, position);
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("skippable", this.f33680a);
            if (this.f33680a) {
                jSONObject.put("skipOffset", this.f33681b);
            }
            jSONObject.put("autoPlay", this.f33682c);
            jSONObject.put(RequestParameters.POSITION, this.f33683d);
        } catch (JSONException e11) {
            d.b("VastProperties: JSON error", e11);
        }
        return jSONObject;
    }
}
