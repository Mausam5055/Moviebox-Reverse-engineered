package com.mbridge.msdk.mbbanner.common.util;

import android.os.Handler;
import android.os.Looper;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.tools.o0;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f36149c = "a";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f36150a = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f36151b;

    /* JADX INFO: renamed from: com.mbridge.msdk.mbbanner.common.util.a$a, reason: collision with other inner class name */
    class RunnableC0504a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.mbbanner.common.listener.b f36152a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f36153b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CampaignUnit f36154c;

        RunnableC0504a(com.mbridge.msdk.mbbanner.common.listener.b bVar, String str, CampaignUnit campaignUnit) {
            this.f36152a = bVar;
            this.f36153b = str;
            this.f36154c = campaignUnit;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.mbbanner.common.listener.b bVar = this.f36152a;
            if (bVar != null) {
                bVar.a(this.f36153b, this.f36154c, a.this.f36151b);
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.mbbanner.common.listener.b f36156a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.foundation.error.b f36157b;

        b(com.mbridge.msdk.mbbanner.common.listener.b bVar, com.mbridge.msdk.foundation.error.b bVar2) {
            this.f36156a = bVar;
            this.f36157b = bVar2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f36156a != null) {
                this.f36157b.a(a.this.f36151b);
                this.f36156a.a(this.f36157b);
            }
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.mbbanner.common.listener.b f36159a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f36160b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f36161c;

        c(com.mbridge.msdk.mbbanner.common.listener.b bVar, String str, int i11) {
            this.f36159a = bVar;
            this.f36160b = str;
            this.f36161c = i11;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.mbbanner.common.listener.b bVar = this.f36159a;
            if (bVar != null) {
                bVar.a(this.f36160b, this.f36161c, a.this.f36151b);
            }
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.mbbanner.common.listener.b f36163a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.foundation.error.b f36164b;

        d(com.mbridge.msdk.mbbanner.common.listener.b bVar, com.mbridge.msdk.foundation.error.b bVar2) {
            this.f36163a = bVar;
            this.f36164b = bVar2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f36163a != null) {
                this.f36164b.a(a.this.f36151b);
                this.f36163a.b(this.f36164b);
            }
        }
    }

    public void a(com.mbridge.msdk.mbbanner.common.listener.b bVar, CampaignUnit campaignUnit, String str) {
        o0.b(f36149c, "postCampaignSuccess unitId=" + str);
        this.f36150a.post(new RunnableC0504a(bVar, str, campaignUnit));
    }

    public void a(com.mbridge.msdk.mbbanner.common.listener.b bVar, com.mbridge.msdk.foundation.error.b bVar2) {
        this.f36150a.post(new b(bVar, bVar2));
    }

    public void a(com.mbridge.msdk.mbbanner.common.listener.b bVar, String str, int i11) {
        o0.b(f36149c, "postResourceSuccess unitId=" + str);
        this.f36150a.post(new c(bVar, str, i11));
    }

    public void a(boolean z10) {
        this.f36151b = z10;
    }

    public void b(com.mbridge.msdk.mbbanner.common.listener.b bVar, com.mbridge.msdk.foundation.error.b bVar2) {
        o0.b(f36149c, "postResourceFail unitId=" + bVar2);
        this.f36150a.post(new d(bVar, bVar2));
    }
}
