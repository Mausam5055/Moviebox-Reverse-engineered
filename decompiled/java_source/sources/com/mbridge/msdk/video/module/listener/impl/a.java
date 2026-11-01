package com.mbridge.msdk.video.module.listener.impl;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;

/* JADX INFO: loaded from: classes5.dex */
public class a extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Activity f39447a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private CampaignEx f39448b;

    public a(Activity activity, CampaignEx campaignEx) {
        this.f39447a = activity;
        this.f39448b = campaignEx;
    }

    @Override // com.mbridge.msdk.video.module.listener.impl.f, com.mbridge.msdk.video.module.listener.a
    public void a(int i11, Object obj) {
        super.a(i11, obj);
        if (i11 != 106 || this.f39447a == null || this.f39448b == null) {
            return;
        }
        try {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            String strA = com.mbridge.msdk.click.c.a(this.f39448b.getClickURL(), "-999", "-999");
            if (!TextUtils.isEmpty(strA)) {
                intent.setData(Uri.parse(strA));
                this.f39447a.startActivity(intent);
            }
        } catch (Throwable th2) {
            o0.b("NotifyListener", th2.getMessage(), th2);
        }
        this.f39447a.finish();
    }
}
