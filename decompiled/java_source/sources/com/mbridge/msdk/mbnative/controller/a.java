package com.mbridge.msdk.mbnative.controller;

import android.content.Context;
import android.os.Handler;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Handler f36330a;

    public abstract void a(int i11, long j11, int i12, String str);

    public synchronized void a(long j11, int i11, boolean z10, String str, String str2) {
        a(1, j11, i11, str2);
    }

    public void a(Context context, CampaignEx campaignEx) {
    }

    public void a(CampaignUnit campaignUnit) {
    }

    public void a(com.mbridge.msdk.foundation.same.net.wrapper.e eVar, int i11) {
    }

    public boolean a(com.mbridge.msdk.click.a aVar, Context context, CampaignEx campaignEx, String str, com.mbridge.msdk.widget.dialog.b bVar) {
        return false;
    }
}
