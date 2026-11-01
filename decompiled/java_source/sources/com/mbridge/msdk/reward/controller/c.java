package com.mbridge.msdk.reward.controller;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.directory.e;
import com.mbridge.msdk.foundation.tools.m0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes5.dex */
public class c implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f37159a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f37160b;

    public c(Context context, String str) {
        this.f37159a = context;
        this.f37160b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListC;
        if (this.f37159a == null || TextUtils.isEmpty(this.f37160b)) {
            return;
        }
        try {
            com.mbridge.msdk.reward.report.a.a(this.f37159a, this.f37160b);
            m0.a();
            m0.a(e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_RES));
            m0.a(e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_HTML));
            com.mbridge.msdk.videocommon.setting.b.b().b(this.f37160b);
            if (q0.a().a("c_d_v_w_i", false) || TextUtils.isEmpty(this.f37160b) || (copyOnWriteArrayListC = com.mbridge.msdk.videocommon.cache.a.a().c(this.f37160b, 1)) == null || copyOnWriteArrayListC.size() <= 0) {
                return;
            }
            com.mbridge.msdk.videocommon.download.b.getInstance().createUnitCache(this.f37159a, this.f37160b, copyOnWriteArrayListC, 94, (com.mbridge.msdk.videocommon.listener.a) null);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("RewardVideoControllerInitTask", "initRewardVideoController task ", e11);
            }
        }
    }
}
