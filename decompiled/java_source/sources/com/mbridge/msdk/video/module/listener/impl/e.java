package com.mbridge.msdk.video.module.listener.impl;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;

/* JADX INFO: loaded from: classes5.dex */
public class e implements com.mbridge.msdk.foundation.same.image.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected ImageView f39452a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private CampaignEx f39453b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f39454c;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f39455a;

        a(String str) {
            this.f39455a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                com.mbridge.msdk.foundation.db.n nVarA = com.mbridge.msdk.foundation.db.n.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                if (e.this.f39453b == null) {
                    o0.a("ImageLoaderListener", "campaign is null");
                    return;
                }
                com.mbridge.msdk.foundation.entity.m mVar = new com.mbridge.msdk.foundation.entity.m();
                mVar.j("2000044");
                mVar.c(k0.s(com.mbridge.msdk.foundation.controller.c.m().d()));
                mVar.b(e.this.f39453b.getId());
                mVar.i(e.this.f39453b.getImageUrl());
                mVar.n(e.this.f39453b.getRequestId());
                mVar.o(e.this.f39453b.getRequestIdNotice());
                mVar.u(e.this.f39454c);
                mVar.m(this.f39455a);
                nVarA.a(mVar);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public e(ImageView imageView) {
        this.f39452a = imageView;
    }

    public e(ImageView imageView, CampaignEx campaignEx, String str) {
        this.f39452a = imageView;
        this.f39453b = campaignEx;
        this.f39454c = str;
    }

    @Override // com.mbridge.msdk.foundation.same.image.c
    public void onFailedLoad(String str, String str2) {
        a aVar = new a(str);
        if (com.mbridge.msdk.foundation.controller.d.a().e()) {
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(aVar);
        } else {
            aVar.run();
        }
        o0.b("ImageLoaderListener", "desc:" + str);
    }

    @Override // com.mbridge.msdk.foundation.same.image.c
    public void onSuccessLoad(Bitmap bitmap, String str) {
        try {
            if (bitmap == null) {
                o0.b("ImageLoaderListener", "bitmap=null");
            } else {
                if (this.f39452a == null || bitmap.isRecycled()) {
                    return;
                }
                this.f39452a.setImageBitmap(bitmap);
                this.f39452a.setVisibility(0);
            }
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                th2.printStackTrace();
            }
        }
    }
}
