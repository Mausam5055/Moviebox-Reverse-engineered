package com.mbridge.msdk.advanced.manager;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.s0;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.NativeListener;

/* JADX INFO: loaded from: classes5.dex */
public class c extends com.mbridge.msdk.advanced.manager.a {

    class a implements NativeListener.TrackingExListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CampaignEx f34156a;

        a(CampaignEx campaignEx) {
            this.f34156a = campaignEx;
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDismissLoading(Campaign campaign) {
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDownloadFinish(Campaign campaign) {
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDownloadProgress(int i11) {
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onDownloadStart(Campaign campaign) {
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onFinishRedirection(Campaign campaign, String str) {
            if (campaign == null) {
                return;
            }
            s0.a(campaign, c.this.f34061c);
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public boolean onInterceptDefaultLoadingDialog() {
            return false;
        }

        @Override // com.mbridge.msdk.out.NativeListener.TrackingExListener
        public void onLeaveApp() {
            c cVar = c.this;
            com.mbridge.msdk.advanced.middle.d dVar = cVar.f34062d;
            if (dVar != null) {
                dVar.d(cVar.f34070l);
            }
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onRedirectionFailed(Campaign campaign, String str) {
            if (campaign == null) {
                return;
            }
            s0.a(campaign, c.this.f34061c);
        }

        @Override // com.mbridge.msdk.out.NativeListener.NativeTrackingListener
        public void onShowLoading(Campaign campaign) {
        }

        @Override // com.mbridge.msdk.out.BaseTrackingListener
        public void onStartRedirection(Campaign campaign, String str) {
            s0.b(this.f34156a, c.this.f34061c);
        }
    }

    public c(Context context, String str, String str2) {
        super(context, str, str2);
    }

    @Override // com.mbridge.msdk.advanced.manager.a
    public void a(CampaignEx campaignEx, boolean z10, String str) {
        if (this.f34063e == null) {
            this.f34063e = new com.mbridge.msdk.click.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f34068j);
        }
        this.f34063e.a(new a(campaignEx));
        if (z10 && !TextUtils.isEmpty(str)) {
            com.mbridge.msdk.advanced.report.a.a(campaignEx, this.f34068j, str);
        }
        campaignEx.setCampaignUnitId(this.f34068j);
        this.f34063e.a(campaignEx);
        if (!this.f34060b.isReportClick()) {
            this.f34060b.setReportClick(true);
            com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx);
        }
        com.mbridge.msdk.advanced.middle.d dVar = this.f34062d;
        if (dVar != null) {
            dVar.b(this.f34070l);
        }
    }
}
