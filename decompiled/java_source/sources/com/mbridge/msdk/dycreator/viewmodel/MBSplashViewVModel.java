package com.mbridge.msdk.dycreator.viewmodel;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.dycreator.binding.b;
import com.mbridge.msdk.dycreator.binding.response.SplashResData;
import com.mbridge.msdk.dycreator.bridge.MBSplashData;
import com.mbridge.msdk.dycreator.bus.EventBus;
import com.mbridge.msdk.dycreator.listener.action.EAction;
import com.mbridge.msdk.dycreator.viewobserver.c;
import com.mbridge.msdk.dycreator.viewobserver.d;
import com.mbridge.msdk.dycreator.viewobserver.f;
import com.mbridge.msdk.dycreator.viewobserver.h;
import com.mbridge.msdk.dycreator.wrapper.DyOption;
import com.mbridge.msdk.dycreator.wrapper.DynamicViewBackListener;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.k0;

/* JADX INFO: loaded from: classes5.dex */
public class MBSplashViewVModel implements BaseViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private d f34912a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f34913b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private f f34914c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private h f34915d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private DynamicViewBackListener f34916e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private DyOption f34917f;

    /* JADX INFO: renamed from: com.mbridge.msdk.dycreator.viewmodel.MBSplashViewVModel$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f34918a;

        static {
            int[] iArr = new int[EAction.values().length];
            f34918a = iArr;
            try {
                iArr[EAction.DOWNLOAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f34918a[EAction.CLOSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public MBSplashViewVModel(DyOption dyOption) {
        this.f34917f = dyOption;
        String campaignUnitId = (dyOption == null || dyOption.getCampaignEx() == null) ? "" : dyOption.getCampaignEx().getCampaignUnitId();
        if (TextUtils.isEmpty(campaignUnitId)) {
            EventBus.getDefault().register(this);
        } else {
            EventBus.getDefault().register(campaignUnitId, this);
        }
    }

    private void a(SplashResData splashResData) {
        if (this.f34916e == null || splashResData == null) {
            return;
        }
        int i11 = AnonymousClass1.f34918a[splashResData.geteAction().ordinal()];
        if (i11 == 1 || i11 == 2) {
            b(splashResData);
        }
        this.f34916e.viewClicked(splashResData);
    }

    private void a(Object obj) {
        c cVar = this.f34913b;
        if (cVar != null) {
            cVar.a(obj);
        }
    }

    private void b(SplashResData splashResData) {
        try {
            String campaignUnitId = "";
            if (splashResData.getBaseViewData() != null && splashResData.getBaseViewData().getBindData() != null) {
                campaignUnitId = splashResData.getBaseViewData().getBindData().getCampaignUnitId();
            }
            if (TextUtils.isEmpty(campaignUnitId)) {
                EventBus.getDefault().unregister(this);
                b.a().b();
            } else {
                EventBus.getDefault().unregister(campaignUnitId);
                b.a().b();
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            EventBus.getDefault().unregister(this);
            EventBus.getDefault().release();
            b.a().b();
        }
    }

    private void b(Object obj) {
        d dVar = this.f34912a;
        if (dVar != null) {
            dVar.a(obj);
        }
    }

    private void c(Object obj) {
        f fVar = this.f34914c;
        if (fVar != null) {
            fVar.a(obj);
        }
    }

    public void onEventMainThread(SplashResData splashResData) {
        a(splashResData);
    }

    @Override // com.mbridge.msdk.dycreator.viewmodel.BaseViewModel
    public void setClickSubject(c cVar) {
        if (cVar != null) {
            this.f34913b = cVar;
        }
    }

    @Override // com.mbridge.msdk.dycreator.viewmodel.BaseViewModel
    public void setConcreteSubject(d dVar) {
        if (dVar != null) {
            this.f34912a = dVar;
        }
    }

    @Override // com.mbridge.msdk.dycreator.viewmodel.BaseViewModel
    public void setDynamicViewBackListener(DynamicViewBackListener dynamicViewBackListener) {
        if (dynamicViewBackListener != null) {
            this.f34916e = dynamicViewBackListener;
        }
    }

    @Override // com.mbridge.msdk.dycreator.viewmodel.BaseViewModel
    public void setEffectSubject(f fVar) {
        if (fVar != null) {
            this.f34914c = fVar;
        }
    }

    @Override // com.mbridge.msdk.dycreator.viewmodel.BaseViewModel
    public void setModelDataAndBind() {
        MBSplashData mBSplashData = new MBSplashData(this.f34917f);
        Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
        if (contextD != null) {
            DyOption dyOption = this.f34917f;
            if (dyOption != null) {
                CampaignEx campaignEx = dyOption.getCampaignEx();
                if (campaignEx != null) {
                    mBSplashData.setAdClickText(campaignEx.getAdCall());
                }
                mBSplashData.setCountDownText(contextD.getResources().getString(g0.a(contextD, this.f34917f.isCanSkip() ? "mbridge_splash_count_time_can_skip" : "mbridge_splash_count_time_can_skip_not", "string")));
            }
            mBSplashData.setNoticeImage(g0.a(contextD, "mbridge_splash_notice", "drawable"));
            String strP = k0.p(contextD);
            mBSplashData.setLogoText((TextUtils.isEmpty(strP) || !strP.contains("zh")) ? "AD" : "广告");
        }
        b(mBSplashData);
        a(mBSplashData);
        c(mBSplashData);
    }

    @Override // com.mbridge.msdk.dycreator.viewmodel.BaseViewModel
    public void setReportSubject(h hVar) {
        if (hVar != null) {
            this.f34915d = hVar;
        }
    }
}
