package com.mbridge.msdk.click;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.mbridge.msdk.click.entity.JumpLoaderResult;
import com.mbridge.msdk.foundation.entity.CampaignEx;

/* JADX INFO: loaded from: classes5.dex */
public class e extends f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f34305e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.mbridge.msdk.foundation.same.task.b f34308h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private p f34309i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    JumpLoaderResult f34302b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f34303c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f34304d = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private g f34306f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f34307g = true;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Handler f34310j = new Handler(Looper.getMainLooper());

    public e(Context context) {
        this.f34308h = new com.mbridge.msdk.foundation.same.task.b(context);
        this.f34309i = new p(context);
    }

    public void a() {
        this.f34307g = false;
    }

    public void a(String str, CampaignEx campaignEx, g gVar) {
        this.f34304d = new String(campaignEx.getClickURL());
        this.f34306f = gVar;
        this.f34302b = null;
        this.f34309i.a(campaignEx.getClickURL(), gVar, "5".equals(campaignEx.getClick_mode()) || PrepareException.ERROR_NO_URL.equals(campaignEx.getClick_mode()), campaignEx.getId(), str, campaignEx, true, false, com.mbridge.msdk.click.retry.a.f34421p);
    }

    public void a(String str, CampaignEx campaignEx, g gVar, String str2, boolean z10, boolean z11, int i11) {
        String id2;
        this.f34304d = str2;
        this.f34306f = gVar;
        this.f34302b = null;
        this.f34305e = i11;
        boolean z12 = false;
        if (campaignEx != null) {
            z12 = "5".equals(campaignEx.getClick_mode()) || PrepareException.ERROR_NO_URL.equals(campaignEx.getClick_mode());
            id2 = campaignEx.getId();
        } else {
            id2 = "";
        }
        this.f34309i.a(str2, gVar, z12, id2, str, campaignEx, z10, z11, i11);
    }
}
