package com.transsion.postdetail.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.cloud.tmc.integration.event.EventConstants;
import com.therouter.TheRouter;
import com.transsion.memberapi.IMemberApi;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.R$string;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u0015\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\u000e\u0010\u000fR$\u0010\u0017\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"Lcom/transsion/postdetail/ui/view/AdCountDownView;", "Landroid/widget/LinearLayout;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", EventConstants.KEY_TIME, "", "refreshCountDown", "(I)V", "Lso/q0;", "a", "Lso/q0;", "getBind", "()Lso/q0;", "setBind", "(Lso/q0;)V", "bind", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AdCountDownView extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private so.q0 bind;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AdCountDownView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AdCountDownView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdCountDownView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.bind = so.q0.a(LayoutInflater.from(getContext()).inflate(R$layout.view_ad_count_down_layout, this));
    }

    public final so.q0 getBind() {
        return this.bind;
    }

    public final void refreshCountDown(int time) {
        ImageView imageView;
        TextView textView;
        View view;
        TextView textView2;
        TextView textView3;
        View view2;
        LinearLayout linearLayout;
        TextView textView4;
        TextView textView5;
        View view3;
        if (time < 0) {
            IMemberApi iMemberApi = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
            if (iMemberApi != null ? iMemberApi.B() : false) {
                so.q0 q0Var = this.bind;
                if (q0Var != null && (view3 = q0Var.f75690f) != null) {
                    view3.setVisibility(8);
                }
                so.q0 q0Var2 = this.bind;
                if (q0Var2 != null && (textView5 = q0Var2.f75689e) != null) {
                    textView5.setText(getContext().getString(R$string.post_count_down_get_ad_free));
                }
            } else {
                so.q0 q0Var3 = this.bind;
                if (q0Var3 != null && (linearLayout = q0Var3.f75687c) != null) {
                    linearLayout.setVisibility(8);
                }
            }
            so.q0 q0Var4 = this.bind;
            if (q0Var4 == null || (textView4 = q0Var4.f75688d) == null) {
                return;
            }
            textView4.setText("");
            return;
        }
        IMemberApi iMemberApi2 = (IMemberApi) TheRouter.d(IMemberApi.class, new Object[0]);
        if (iMemberApi2 != null ? iMemberApi2.B() : false) {
            so.q0 q0Var5 = this.bind;
            if (q0Var5 != null && (view2 = q0Var5.f75690f) != null) {
                view2.setVisibility(0);
            }
            so.q0 q0Var6 = this.bind;
            if (q0Var6 != null && (textView3 = q0Var6.f75689e) != null) {
                textView3.setText(getContext().getString(R$string.post_count_down_get_ad_free));
            }
        } else {
            so.q0 q0Var7 = this.bind;
            if (q0Var7 != null && (view = q0Var7.f75690f) != null) {
                view.setVisibility(8);
            }
            so.q0 q0Var8 = this.bind;
            if (q0Var8 != null && (textView = q0Var8.f75689e) != null) {
                textView.setVisibility(8);
            }
            so.q0 q0Var9 = this.bind;
            if (q0Var9 != null && (imageView = q0Var9.f75686b) != null) {
                imageView.setVisibility(8);
            }
        }
        so.q0 q0Var10 = this.bind;
        if (q0Var10 == null || (textView2 = q0Var10.f75688d) == null) {
            return;
        }
        textView2.setText(time + "s");
    }

    public final void setBind(so.q0 q0Var) {
        this.bind = q0Var;
    }
}
