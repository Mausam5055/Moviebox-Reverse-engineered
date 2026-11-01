package com.transsion.commercialization.gameres.aha;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.commercialization.gameres.GameResView;
import com.transsion.commercialization.pslink.PsLinkDownLoadButton;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0011\u0010\u0010¨\u0006\u0012"}, d2 = {"Lcom/transsion/commercialization/gameres/aha/AHAGameResView;", "Lcom/transsion/commercialization/gameres/GameResView;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lmk/a;", "info", "", "i", "(Lmk/a;)V", "setContent", "Commercialization_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AHAGameResView extends GameResView {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AHAGameResView(Context context) {
        super(context);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AHAGameResView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AHAGameResView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
    }

    private final void i(mk.a info) {
        String strA;
        c cVarA = info.a();
        if (cVarA == null || (strA = cVarA.a()) == null) {
            return;
        }
        nk.a.f70478a.d(info, getGamePageStyle());
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(strA));
        getContext().startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(AHAGameResView aHAGameResView, mk.a aVar, View view) {
        aHAGameResView.i(aVar);
    }

    @Override // com.transsion.commercialization.gameres.GameResView
    public void setContent(final mk.a info) {
        Intrinsics.h(info, "info");
        super.setContent(info);
        PsLinkDownLoadButton tvPsBtn = getViewBinding().f66889e;
        Intrinsics.g(tvPsBtn, "tvPsBtn");
        jg.c.h(tvPsBtn);
        AppCompatTextView tvAhaBtn = getViewBinding().f66887c;
        Intrinsics.g(tvAhaBtn, "tvAhaBtn");
        jg.c.k(tvAhaBtn);
        getViewBinding().f66887c.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.commercialization.gameres.aha.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AHAGameResView.j(this.f43793a, info, view);
            }
        });
    }
}
