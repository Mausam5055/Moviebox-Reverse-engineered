package com.transsion.ad.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.b;
import com.blankj.utilcode.util.a0;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.transsion.ad.R$color;
import com.transsion.ad.view.AdCountdownView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ji.f0;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\r\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u000e\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u0006¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"Lcom/transsion/ad/view/AdCountdownView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "onCountdown", "()V", "i", "onRefresh", "(I)V", "Landroid/view/View$OnClickListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setSkipListener", "(Landroid/view/View$OnClickListener;)V", "Lji/f0;", "a", "Lji/f0;", "binding", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AdCountdownView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final f0 binding;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public AdCountdownView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public AdCountdownView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public AdCountdownView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        f0 f0VarC = f0.c(LayoutInflater.from(context), this, true);
        Intrinsics.g(f0VarC, "inflate(...)");
        this.binding = f0VarC;
        f0VarC.f66083b.setOnClickListener(new View.OnClickListener() { // from class: vi.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AdCountdownView.b(view);
            }
        });
    }

    public /* synthetic */ AdCountdownView(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(View view) {
    }

    public final void onCountdown() {
        this.binding.f66084c.setVisibility(8);
        this.binding.f66086e.setVisibility(8);
        AppCompatTextView appCompatTextView = this.binding.f66085d;
        int iA = a0.a(7.0f);
        appCompatTextView.setPaddingRelative(iA, 0, iA, 0);
        appCompatTextView.setTextColor(b.getColor(appCompatTextView.getContext(), R$color.ad_white));
    }

    public final void onRefresh(int i11) {
        this.binding.f66084c.setText(i11 + "s");
        this.binding.f66086e.setVisibility(0);
    }

    public final void setSkipListener(View.OnClickListener listener) {
        Intrinsics.h(listener, "listener");
        this.binding.f66085d.setOnClickListener(listener);
    }
}
