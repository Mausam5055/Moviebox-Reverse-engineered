package com.iab.omid.library.mmadbridge.adsession.media;

import com.iab.omid.library.mmadbridge.adsession.h;
import com.iab.omid.library.mmadbridge.internal.i;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import oe.c;
import oe.g;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h f33679a;

    private a(h hVar) {
        this.f33679a = hVar;
    }

    private void e(float f11) {
        if (f11 <= 0.0f) {
            throw new IllegalArgumentException("Invalid Media duration");
        }
    }

    private void f(float f11) {
        if (f11 < 0.0f || f11 > 1.0f) {
            throw new IllegalArgumentException("Invalid Media volume");
        }
    }

    public static a g(com.iab.omid.library.mmadbridge.adsession.b bVar) {
        h hVar = (h) bVar;
        g.d(bVar, "AdSession is null");
        g.k(hVar);
        g.h(hVar);
        g.g(hVar);
        g.m(hVar);
        a aVar = new a(hVar);
        hVar.t().h(aVar);
        return aVar;
    }

    public void a(InteractionType interactionType) {
        g.d(interactionType, "InteractionType is null");
        g.c(this.f33679a);
        JSONObject jSONObject = new JSONObject();
        c.i(jSONObject, "interactionType", interactionType);
        this.f33679a.t().k("adUserInteraction", jSONObject);
    }

    public void b() {
        g.c(this.f33679a);
        this.f33679a.t().i("bufferFinish");
    }

    public void c() {
        g.c(this.f33679a);
        this.f33679a.t().i("bufferStart");
    }

    public void d() {
        g.c(this.f33679a);
        this.f33679a.t().i(CampaignEx.JSON_NATIVE_VIDEO_COMPLETE);
    }

    public void h() {
        g.c(this.f33679a);
        this.f33679a.t().i("firstQuartile");
    }

    public void i() {
        g.c(this.f33679a);
        this.f33679a.t().i(CampaignEx.JSON_NATIVE_VIDEO_MIDPOINT);
    }

    public void j() {
        g.c(this.f33679a);
        this.f33679a.t().i("pause");
    }

    public void k(PlayerState playerState) {
        g.d(playerState, "PlayerState is null");
        g.c(this.f33679a);
        JSONObject jSONObject = new JSONObject();
        c.i(jSONObject, "state", playerState);
        this.f33679a.t().k("playerStateChange", jSONObject);
    }

    public void l() {
        g.c(this.f33679a);
        this.f33679a.t().i(CampaignEx.JSON_NATIVE_VIDEO_RESUME);
    }

    public void m() {
        g.c(this.f33679a);
        this.f33679a.t().i("skipped");
    }

    public void n(float f11, float f12) {
        e(f11);
        f(f12);
        g.c(this.f33679a);
        JSONObject jSONObject = new JSONObject();
        c.i(jSONObject, "duration", Float.valueOf(f11));
        c.i(jSONObject, "mediaPlayerVolume", Float.valueOf(f12));
        c.i(jSONObject, "deviceVolume", Float.valueOf(i.d().c()));
        this.f33679a.t().k("start", jSONObject);
    }

    public void o() {
        g.c(this.f33679a);
        this.f33679a.t().i("thirdQuartile");
    }

    public void p(float f11) {
        f(f11);
        g.c(this.f33679a);
        JSONObject jSONObject = new JSONObject();
        c.i(jSONObject, "mediaPlayerVolume", Float.valueOf(f11));
        c.i(jSONObject, "deviceVolume", Float.valueOf(i.d().c()));
        this.f33679a.t().k("volumeChange", jSONObject);
    }
}
