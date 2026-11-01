package com.mbridge.msdk.mbnative.controller;

import android.content.Context;
import android.os.Handler;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.setting.l;

/* JADX INFO: loaded from: classes5.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Handler f36331a;

    public abstract void a(int i11, long j11, int i12, l lVar, String str, String str2, com.mbridge.msdk.preload.listenter.a aVar, boolean z10);

    public synchronized void a(int i11, long j11, int i12, l lVar, String str, String str2, boolean z10, com.mbridge.msdk.preload.listenter.a aVar) {
        try {
            a(i11, j11, i12, lVar, str, str2, aVar, z10);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public void a(Context context, CampaignEx campaignEx) {
    }

    public void a(CampaignUnit campaignUnit) {
    }

    public void a(com.mbridge.msdk.foundation.same.net.wrapper.e eVar, int i11) {
    }
}
