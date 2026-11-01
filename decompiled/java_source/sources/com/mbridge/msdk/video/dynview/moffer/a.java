package com.mbridge.msdk.video.dynview.moffer;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.video.dynview.listener.g;
import com.mbridge.msdk.video.module.MBridgeNativeEndCardView;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile a f39033c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<String, SoftReference<MOfferModel>> f39034a = new ConcurrentHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f39035b = 500;

    /* JADX INFO: renamed from: com.mbridge.msdk.video.dynview.moffer.a$a, reason: collision with other inner class name */
    class C0557a implements g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f39036a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ MOfferModel f39037b;

        C0557a(ViewGroup viewGroup, MOfferModel mOfferModel) {
            this.f39036a = viewGroup;
            this.f39037b = mOfferModel;
        }

        @Override // com.mbridge.msdk.video.dynview.listener.g
        public void a(int i11, String str) {
            o0.b("MOfferEnergize", str);
        }

        @Override // com.mbridge.msdk.video.dynview.listener.g
        public void a(ViewGroup viewGroup, CampaignUnit campaignUnit) {
            ViewGroup viewGroup2;
            if (viewGroup == null || (viewGroup2 = this.f39036a) == null) {
                return;
            }
            try {
                a.this.a(this.f39037b, viewGroup2, viewGroup, campaignUnit);
            } catch (Exception e11) {
                o0.b("MOfferEnergize", e11.getMessage());
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ MOfferModel f39039a;

        b(MOfferModel mOfferModel) {
            this.f39039a = mOfferModel;
        }

        @Override // java.lang.Runnable
        public void run() {
            MOfferModel mOfferModel = this.f39039a;
            if (mOfferModel != null) {
                mOfferModel.checkViewVisiableState();
            }
        }
    }

    class c implements g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ MOfferModel f39041a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ViewGroup f39042b;

        c(MOfferModel mOfferModel, ViewGroup viewGroup) {
            this.f39041a = mOfferModel;
            this.f39042b = viewGroup;
        }

        @Override // com.mbridge.msdk.video.dynview.listener.g
        public void a(int i11, String str) {
        }

        @Override // com.mbridge.msdk.video.dynview.listener.g
        public void a(ViewGroup viewGroup, CampaignUnit campaignUnit) {
            if (viewGroup == null || campaignUnit == null) {
                return;
            }
            try {
                a.this.a(this.f39041a, this.f39042b, viewGroup, campaignUnit);
            } catch (Exception e11) {
                o0.b("MOfferEnergize", e11.getMessage());
            }
        }
    }

    private a() {
    }

    private int a(String str) {
        return g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), str, "id");
    }

    public static a a() {
        a aVar;
        if (f39033c != null) {
            return f39033c;
        }
        synchronized (a.class) {
            try {
                if (f39033c == null) {
                    f39033c = new a();
                }
                aVar = f39033c;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return aVar;
    }

    private void a(ViewGroup viewGroup) {
        View viewFindViewById;
        if (viewGroup != null && viewGroup.getBackground() == null) {
            try {
                Drawable drawable = com.mbridge.msdk.foundation.controller.c.m().d().getResources().getDrawable(g0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "mbridge_reward_more_offer_default_bg", "drawable"));
                if (drawable == null || (viewFindViewById = viewGroup.findViewById(a("mbridge_moreoffer_hls"))) == null) {
                    return;
                }
                viewFindViewById.setBackground(drawable);
            } catch (Exception e11) {
                o0.b("MOfferEnergize", e11.getMessage());
            }
        }
    }

    private void a(ViewGroup viewGroup, ViewGroup viewGroup2) {
        try {
            if (viewGroup instanceof MBridgeNativeEndCardView) {
                RelativeLayout relativeLayout = ((MBridgeNativeEndCardView) viewGroup).isDyXmlSuccess() ? (RelativeLayout) viewGroup.findViewById(-1642631508) : (RelativeLayout) viewGroup.findViewById(a("mbridge_native_ec_layout"));
                ArrayList arrayList = new ArrayList();
                arrayList.add(relativeLayout);
                new com.mbridge.msdk.video.dynview.ui.b().a(arrayList, 0, t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 100.0f), this.f39035b);
            }
            RelativeLayout relativeLayout2 = (RelativeLayout) viewGroup.findViewById(a("mbridge_reward_moreoffer_layout"));
            if (relativeLayout2 == null) {
                relativeLayout2 = (RelativeLayout) viewGroup.findViewById(-82036151);
            }
            if (relativeLayout2 == null) {
                viewGroup.addView(viewGroup2);
            } else if (viewGroup.isShown()) {
                relativeLayout2.setVisibility(0);
                relativeLayout2.addView(viewGroup2);
            }
        } catch (Exception e11) {
            o0.b("MOfferEnergize", e11.getMessage());
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0031  */
    private void a(MOfferModel mOfferModel, ViewGroup viewGroup, ViewGroup viewGroup2) {
        int iB;
        RelativeLayout relativeLayout;
        ImageView imageView;
        TextView textView;
        if (mOfferModel != null) {
            try {
                if (mOfferModel.getmMainOfferCampaignEx() == null || mOfferModel.getmMainOfferCampaignEx().getRewardTemplateMode() == null) {
                    iB = 1;
                } else {
                    iB = mOfferModel.getmMainOfferCampaignEx().getRewardTemplateMode().b();
                    if (iB == 0) {
                        iB = k0.F(com.mbridge.msdk.foundation.controller.c.m().d());
                    }
                }
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    e11.printStackTrace();
                    return;
                }
                return;
            }
        } else {
            iB = 1;
        }
        if (iB != 1 && (viewGroup instanceof MBridgeNativeEndCardView)) {
            ImageView imageView2 = ((MBridgeNativeEndCardView) viewGroup).isDyXmlSuccess() ? (ImageView) viewGroup.findViewById(-1803557032) : (ImageView) viewGroup.findViewById(a("mbridge_iv_adbanner"));
            int iH = t0.h(com.mbridge.msdk.foundation.controller.c.m().d()) - t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 220.0f);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) imageView2.getLayoutParams();
            layoutParams.height = iH;
            layoutParams.width = (iH * 16) / 9;
            imageView2.setLayoutParams(layoutParams);
        }
        if (viewGroup instanceof MBridgeNativeEndCardView) {
            if (((MBridgeNativeEndCardView) viewGroup).isDyXmlSuccess()) {
                relativeLayout = (RelativeLayout) viewGroup.findViewById(-1642631508);
                imageView = (ImageView) viewGroup.findViewById(389008949);
                textView = (TextView) viewGroup.findViewById(1561614848);
            } else {
                relativeLayout = (RelativeLayout) viewGroup.findViewById(a("mbridge_native_ec_layout"));
                imageView = (ImageView) viewGroup.findViewById(a("mbridge_iv_flag"));
                textView = (TextView) viewGroup.findViewById(a("mbridge_tv_flag"));
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(imageView);
            arrayList.add(textView);
            new com.mbridge.msdk.video.dynview.ui.b().a(arrayList, 0, t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 100.0f), this.f39035b);
        } else {
            relativeLayout = null;
        }
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) viewGroup2.getLayoutParams();
        layoutParams2.setMargins(0, 0, 0, 0);
        viewGroup2.setLayoutParams(layoutParams2);
        if (relativeLayout != null) {
            relativeLayout.addView(viewGroup2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MOfferModel mOfferModel, ViewGroup viewGroup, ViewGroup viewGroup2, CampaignUnit campaignUnit) {
        if (mOfferModel == null || viewGroup == null || viewGroup2 == null || campaignUnit == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) viewGroup2.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        }
        layoutParams.addRule(12, -1);
        int iA = t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 5.0f);
        layoutParams.setMargins(iA, iA, iA, iA);
        a(viewGroup2);
        viewGroup2.setLayoutParams(layoutParams);
        ViewGroup viewGroup3 = (ViewGroup) viewGroup2.getParent();
        if (viewGroup3 != null) {
            viewGroup3.removeAllViews();
        }
        if (mOfferModel.getECParentTemplateCode() == 1302) {
            a(mOfferModel, viewGroup, viewGroup2);
        } else {
            a(viewGroup, viewGroup2);
        }
        new com.mbridge.msdk.video.dynview.ui.b().a(viewGroup2, 0, t0.g(com.mbridge.msdk.foundation.controller.c.m().d()), 0, t0.a(com.mbridge.msdk.foundation.controller.c.m().d(), 100.0f), 0L);
        if (viewGroup instanceof MBridgeNativeEndCardView) {
            ((MBridgeNativeEndCardView) viewGroup).setMoreOfferCampaignUnit(campaignUnit);
        }
        viewGroup.postDelayed(new b(mOfferModel), this.f39035b + 500);
    }

    private void a(MOfferModel mOfferModel, ViewGroup viewGroup, com.mbridge.msdk.video.module.listener.a aVar) {
        if (mOfferModel == null) {
            return;
        }
        mOfferModel.setMoreOfferListener(new C0557a(viewGroup, mOfferModel), aVar);
        mOfferModel.showView();
    }

    public void a(ViewGroup viewGroup, String str, com.mbridge.msdk.video.module.listener.a aVar) {
        if (viewGroup == null || aVar == null || this.f39034a == null || TextUtils.isEmpty(str) || !this.f39034a.containsKey(str)) {
            return;
        }
        SoftReference<MOfferModel> softReference = this.f39034a.get(str);
        MOfferModel mOfferModel = (softReference == null || softReference.get() == null) ? null : softReference.get();
        if (mOfferModel == null) {
            return;
        }
        a(mOfferModel, viewGroup, aVar);
    }

    public void a(CampaignEx campaignEx, int i11) {
        if (campaignEx == null) {
            return;
        }
        String str = campaignEx.getRequestId() + "_" + campaignEx.getId();
        if (this.f39034a == null) {
            this.f39034a = new ConcurrentHashMap();
        }
        if (this.f39034a.containsKey(str)) {
            return;
        }
        try {
            MOfferModel mOfferModel = new MOfferModel();
            mOfferModel.setFromType(i11);
            SoftReference<MOfferModel> softReference = new SoftReference<>(mOfferModel);
            if (softReference.get() != null) {
                this.f39034a.put(str, softReference);
                softReference.get().buildMofferAd(campaignEx);
            }
        } catch (Exception e11) {
            o0.b("MOfferEnergize", e11.getMessage());
        }
    }

    public void a(CampaignEx campaignEx, ViewGroup viewGroup, com.mbridge.msdk.video.module.listener.a aVar, int i11) {
        if (campaignEx == null) {
            return;
        }
        String str = campaignEx.getRequestId() + "_" + campaignEx.getId();
        if (this.f39034a == null) {
            this.f39034a = new ConcurrentHashMap();
        }
        try {
            MOfferModel mOfferModel = new MOfferModel();
            mOfferModel.setFromType(i11);
            SoftReference<MOfferModel> softReference = new SoftReference<>(mOfferModel);
            if (softReference.get() != null) {
                this.f39034a.put(str, softReference);
                MOfferModel mOfferModel2 = softReference.get();
                mOfferModel2.setMoreOfferListener(new c(mOfferModel2, viewGroup), aVar);
                mOfferModel2.setIsRetry(true);
                mOfferModel2.buildMofferAd(campaignEx);
            }
        } catch (Exception e11) {
            o0.b("MOfferEnergize", e11.getMessage());
        }
    }

    public void b() {
        MOfferModel mOfferModel;
        try {
            Map<String, SoftReference<MOfferModel>> map = this.f39034a;
            if (map != null) {
                for (SoftReference<MOfferModel> softReference : map.values()) {
                    if (softReference != null && (mOfferModel = softReference.get()) != null) {
                        mOfferModel.mofDestroy();
                    }
                }
                this.f39034a.clear();
            }
        } catch (Exception e11) {
            o0.b("MOfferEnergize", e11.getMessage());
        }
    }

    public boolean b(String str) {
        if (this.f39034a == null || TextUtils.isEmpty(str)) {
            return false;
        }
        return this.f39034a.containsKey(str);
    }
}
