package com.iab.omid.library.bytedance2.adsession.media;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.iab.omid.library.bytedance2.utils.d;
import com.iab.omid.library.bytedance2.utils.g;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class VastProperties {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f33418a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Float f33419b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f33420c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Position f33421d;

    private VastProperties(boolean z10, Float f11, boolean z11, Position position) {
        this.f33418a = z10;
        this.f33419b = f11;
        this.f33420c = z11;
        this.f33421d = position;
    }

    public static VastProperties createVastPropertiesForNonSkippableMedia(boolean z10, Position position) {
        g.a(position, "Position is null");
        return new VastProperties(false, null, z10, position);
    }

    public static VastProperties createVastPropertiesForSkippableMedia(float f11, boolean z10, Position position) {
        g.a(position, "Position is null");
        return new VastProperties(true, Float.valueOf(f11), z10, position);
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("skippable", this.f33418a);
            if (this.f33418a) {
                jSONObject.put("skipOffset", this.f33419b);
            }
            jSONObject.put("autoPlay", this.f33420c);
            jSONObject.put(RequestParameters.POSITION, this.f33421d);
        } catch (JSONException e11) {
            d.a("VastProperties: JSON error", e11);
        }
        return jSONObject;
    }

    public Position getPosition() {
        return this.f33421d;
    }

    public Float getSkipOffset() {
        return this.f33419b;
    }

    public boolean isAutoPlay() {
        return this.f33420c;
    }

    public boolean isSkippable() {
        return this.f33418a;
    }
}
