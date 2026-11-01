package com.transsion.commercialization.gameres.ps;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import com.therouter.TheRouter;
import com.tn.lib.widget.R$string;
import com.transsion.ad.ps.model.RecommendInfo;
import com.transsion.commercialization.gameres.GameResView;
import com.transsion.commercialization.pslink.PsLinkDownLoadButton;
import com.transsion.commercialization.pslink.PsLinkServiceHelper;
import com.transsion.memberapi.IMemberApi;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import nh.m;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0013\u0010\u0010¨\u0006\u0014"}, d2 = {"Lcom/transsion/commercialization/gameres/ps/PSGameResView;", "Lcom/transsion/commercialization/gameres/GameResView;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lmk/a;", "info", "", "i", "(Lmk/a;)V", "j", "()V", "setContent", "Commercialization_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PSGameResView extends GameResView {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PSGameResView(Context context) {
        super(context);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PSGameResView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PSGameResView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
    }

    private final void i(mk.a info) {
        String str;
        PsLinkServiceHelper psLinkServiceHelper = PsLinkServiceHelper.f43824a;
        if (psLinkServiceHelper.k()) {
            psLinkServiceHelper.h();
        }
        RecommendInfo recommendInfoI = info.i();
        qi.b bVar = qi.b.f73634a;
        if (bVar.c(recommendInfoI != null ? recommendInfoI.getPackageName() : null)) {
            if (!bVar.o(recommendInfoI != null ? recommendInfoI.getPackageName() : null)) {
                qi.b.b(bVar, recommendInfoI, true, "PSGame", null, 8, null);
            }
            str = MRAIDPresenter.OPEN;
        } else if (!m.f70474a.e()) {
            uh.b.f76753a.d(R$string.no_network_toast);
            return;
        } else {
            qi.b.b(bVar, recommendInfoI, true, "PSGame", null, 8, null);
            j();
            str = "install";
        }
        nk.a.f70478a.e(info, getGamePageStyle(), str);
    }

    private final void j() {
        IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        if (iMemberApi != null) {
            iMemberApi.v();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(PSGameResView pSGameResView, mk.a aVar, View view) {
        pSGameResView.i(aVar);
    }

    @Override // com.transsion.commercialization.gameres.GameResView
    public void setContent(final mk.a info) {
        Intrinsics.h(info, "info");
        super.setContent(info);
        PsLinkServiceHelper.f43824a.h();
        AppCompatTextView tvAhaBtn = getViewBinding().f66887c;
        Intrinsics.g(tvAhaBtn, "tvAhaBtn");
        jg.c.h(tvAhaBtn);
        PsLinkDownLoadButton tvPsBtn = getViewBinding().f66889e;
        Intrinsics.g(tvPsBtn, "tvPsBtn");
        jg.c.k(tvPsBtn);
        PsLinkDownLoadButton tvPsBtn2 = getViewBinding().f66889e;
        Intrinsics.g(tvPsBtn2, "tvPsBtn");
        jg.c.k(tvPsBtn2);
        RecommendInfo recommendInfoI = info.i();
        if (recommendInfoI != null) {
            getViewBinding().f66889e.setItemInfo(recommendInfoI);
        }
        getViewBinding().f66889e.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.commercialization.gameres.ps.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                PSGameResView.k(this.f43801a, info, view);
            }
        });
    }
}
