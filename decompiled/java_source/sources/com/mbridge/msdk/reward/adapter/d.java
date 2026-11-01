package com.mbridge.msdk.reward.adapter;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CopyOnWriteArrayList<CampaignEx> f37049a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private CampaignEx f37050b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f37051c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f37052d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f37053e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f37054f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f37055g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f37056h = 0;

    public void a(CampaignEx campaignEx) {
        if (campaignEx != null) {
            this.f37050b = campaignEx;
            this.f37052d = campaignEx.getSecondRequestIndex();
            this.f37053e = campaignEx.getSecondShowIndex();
            this.f37054f = campaignEx.getFilterCallBackState();
            this.f37056h = campaignEx.getFilterAdsShowCallState();
            this.f37055g = campaignEx.getFilterAdsVideoCallState();
        }
    }

    public void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
        this.f37049a = copyOnWriteArrayList;
    }

    public void a(boolean z10) {
        this.f37051c = z10;
    }

    public boolean a() {
        return this.f37052d == 1 && this.f37051c;
    }

    public CopyOnWriteArrayList<CampaignEx> b() {
        return this.f37049a;
    }

    public int c() {
        return this.f37055g;
    }

    public int d() {
        return this.f37054f;
    }

    public boolean e() {
        return this.f37051c;
    }
}
