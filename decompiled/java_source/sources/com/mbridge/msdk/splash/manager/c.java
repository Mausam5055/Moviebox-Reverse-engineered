package com.mbridge.msdk.splash.manager;

import android.content.Context;
import android.view.View;
import com.mbridge.msdk.dycreator.binding.response.SplashResData;
import com.mbridge.msdk.dycreator.binding.response.base.BaseRespData;
import com.mbridge.msdk.dycreator.listener.DyCountDownListener;
import com.mbridge.msdk.dycreator.listener.action.EAction;
import com.mbridge.msdk.dycreator.wrapper.DyAdType;
import com.mbridge.msdk.dycreator.wrapper.DyOption;
import com.mbridge.msdk.dycreator.wrapper.DynamicViewBackListener;
import com.mbridge.msdk.dycreator.wrapper.DynamicViewCreator;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.splash.view.MBSplashView;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
class c extends com.mbridge.msdk.splash.manager.a {

    class a implements DyCountDownListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ DyOption f37452a;

        a(DyOption dyOption) {
            this.f37452a = dyOption;
        }

        @Override // com.mbridge.msdk.dycreator.listener.DyCountDownListener
        public void getCountDownValue(int i11) {
            this.f37452a.setDyCountDownListener(i11);
        }
    }

    class b implements DynamicViewBackListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.splash.inter.a f37454a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MBSplashView f37455b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.splash.common.c f37456c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ DyOption f37457d;

        b(com.mbridge.msdk.splash.inter.a aVar, MBSplashView mBSplashView, com.mbridge.msdk.splash.common.c cVar, DyOption dyOption) {
            this.f37454a = aVar;
            this.f37455b = mBSplashView;
            this.f37456c = cVar;
            this.f37457d = dyOption;
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DynamicViewBackListener
        public void viewClicked(BaseRespData baseRespData) {
            com.mbridge.msdk.splash.signal.b splashSignalCommunicationImpl;
            MBSplashView mBSplashView = this.f37455b;
            com.mbridge.msdk.splash.middle.a aVarA = (mBSplashView == null || (splashSignalCommunicationImpl = mBSplashView.getSplashSignalCommunicationImpl()) == null) ? null : splashSignalCommunicationImpl.a();
            DyOption dyOption = this.f37457d;
            CampaignEx campaignEx = dyOption != null ? dyOption.getCampaignEx() : null;
            EAction eAction = baseRespData instanceof SplashResData ? ((SplashResData) baseRespData).geteAction() : null;
            if (eAction != null) {
                int i11 = C0542c.f37459a[eAction.ordinal()];
                if (i11 == 1) {
                    if (aVarA != null) {
                        if (baseRespData == null) {
                            aVarA.a(campaignEx);
                            return;
                        } else {
                            if (baseRespData instanceof SplashResData) {
                                SplashResData splashResData = (SplashResData) baseRespData;
                                if (splashResData.getBaseViewData() != null) {
                                    c.this.a(splashResData.getBaseViewData(), aVarA, campaignEx);
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                    }
                    return;
                }
                if (i11 == 2) {
                    if (aVarA != null) {
                        aVarA.close();
                    }
                } else if (i11 == 3) {
                    if (this.f37457d != null) {
                        com.mbridge.msdk.click.c.e(com.mbridge.msdk.foundation.controller.c.m().d(), this.f37457d.getAdChoiceLink());
                    }
                } else if (i11 == 4 && baseRespData != null && (baseRespData instanceof SplashResData)) {
                    SplashResData splashResData2 = (SplashResData) baseRespData;
                    if (splashResData2.getBaseViewData() != null) {
                        c.this.a(aVarA, campaignEx, splashResData2.getBaseViewData());
                    }
                }
            }
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DynamicViewBackListener
        public void viewCreateFail(com.mbridge.msdk.dycreator.error.a aVar) {
            MBSplashView mBSplashView = this.f37455b;
            if (mBSplashView != null) {
                Context context = mBSplashView.getContext();
                if (context == null) {
                    context = com.mbridge.msdk.foundation.controller.c.m().d();
                }
                c.this.a(context, this.f37455b, this.f37456c, this.f37454a);
            }
        }

        @Override // com.mbridge.msdk.dycreator.wrapper.DynamicViewBackListener
        public void viewCreatedSuccess(View view) {
            com.mbridge.msdk.splash.inter.a aVar = this.f37454a;
            if (aVar != null) {
                if (view != null) {
                    aVar.a(view);
                } else {
                    aVar.onError("View render error.");
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.mbridge.msdk.splash.manager.c$c, reason: collision with other inner class name */
    static /* synthetic */ class C0542c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f37459a;

        static {
            int[] iArr = new int[EAction.values().length];
            f37459a = iArr;
            try {
                iArr[EAction.DOWNLOAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f37459a[EAction.CLOSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f37459a[EAction.NOTICE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f37459a[EAction.FEEDBACK.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final c f37460a = new c(null);
    }

    private c() {
    }

    /* synthetic */ c(a aVar) {
        this();
    }

    public static c a() {
        return d.f37460a;
    }

    @Override // com.mbridge.msdk.splash.manager.a
    protected void a(List<String> list, MBSplashView mBSplashView, com.mbridge.msdk.splash.common.c cVar, com.mbridge.msdk.splash.inter.a aVar) {
        h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        DyOption dyOptionBuild = new DyOption.Builder().campaignEx(cVar.b()).fileDirs(list).dyAdType(DyAdType.SPLASH).canSkip(cVar.m()).isScreenClick(cVar.f() == 1).isClickButtonVisible(cVar.c() == 0).isShakeVisible(cVar.i() == 1).isApkInfoVisible(cVar.a() == 0).isLogoVisible(cVar.e() == 1).shakeStrenght(cVar.j()).shakeTime(cVar.k()).orientation(cVar.g()).countDownTime(cVar.d()).adChoiceLink(t0.a(cVar.b())).build();
        mBSplashView.setDyCountDownListener(new a(dyOptionBuild));
        DynamicViewCreator.getInstance().createDynamicView(dyOptionBuild, new b(aVar, mBSplashView, cVar, dyOptionBuild));
    }
}
