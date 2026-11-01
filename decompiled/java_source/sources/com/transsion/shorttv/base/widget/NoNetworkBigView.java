package com.transsion.shorttv.base.widget;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.blankj.utilcode.util.NetworkUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.shorttv.R$color;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.r0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bB\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\fB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\n\u0010\rB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0006¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\b2\b\b\u0002\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u001b\u0010\u001a\u001a\u00020\u00102\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00100\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\u001b\u0010\u001d\u001a\u00020\u00102\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00100\u0018¢\u0006\u0004\b\u001d\u0010\u001bJ\r\u0010\u001e\u001a\u00020\u0010¢\u0006\u0004\b\u001e\u0010\u001fR\u0018\u0010#\u001a\u0004\u0018\u00010 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"¨\u0006$"}, d2 = {"Lcom/transsion/shorttv/base/widget/NoNetworkBigView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "", "isShowTitleLayout", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V", "(Landroid/content/Context;Z)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "(Landroid/content/Context;)V", "marin", "", "setTopMargin", "(I)V", "visible", "", CampaignEx.JSON_KEY_TITLE, "showTitle", "(ZLjava/lang/String;)V", "Lkotlin/Function0;", "retryListener", "retry", "(Lkotlin/jvm/functions/Function0;)V", "setting", "goToSetting", "onBackClick", "()V", "Lms/r0;", "a", "Lms/r0;", "binding", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class NoNetworkBigView extends ConstraintLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private r0 binding;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NoNetworkBigView(Context context) {
        this(context, (AttributeSet) null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NoNetworkBigView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, false, 8, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoNetworkBigView(final Context context, AttributeSet attributeSet, int i11, boolean z10) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.binding = r0.b(LayoutInflater.from(context), this);
        setLayoutParams(new ConstraintLayout.b(-1, -1));
        setBackgroundResource(R$color.short_tv_bg_01);
        r0 r0Var = this.binding;
        if (r0Var != null) {
            if (z10) {
                AppCompatImageView ivBack = r0Var.f69911c;
                Intrinsics.g(ivBack, "ivBack");
                yr.b.e(ivBack);
                TnTextView tvTitle = r0Var.f69915g;
                Intrinsics.g(tvTitle, "tvTitle");
                yr.b.e(tvTitle);
            } else {
                AppCompatImageView ivBack2 = r0Var.f69911c;
                Intrinsics.g(ivBack2, "ivBack");
                yr.b.b(ivBack2);
                TnTextView tvTitle2 = r0Var.f69915g;
                Intrinsics.g(tvTitle2, "tvTitle");
                yr.b.b(tvTitle2);
            }
            r0Var.f69911c.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv.base.widget.i
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    NoNetworkBigView.l(context, view);
                }
            });
        }
    }

    public /* synthetic */ NoNetworkBigView(Context context, AttributeSet attributeSet, int i11, boolean z10, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, attributeSet, i11, (i12 & 8) != 0 ? true : z10);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NoNetworkBigView(Context context, boolean z10) {
        this(context, null, 0, z10);
        Intrinsics.h(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(Function0 function0, View view) {
        NetworkUtils.v();
        function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(Context context, View view) {
        if (context instanceof Activity) {
            ((Activity) context).onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(Function0 function0, View view) {
        function0.invoke();
    }

    public static /* synthetic */ void showTitle$default(NoNetworkBigView noNetworkBigView, boolean z10, String str, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str = "";
        }
        noNetworkBigView.showTitle(z10, str);
    }

    public final void goToSetting(final Function0<Unit> setting) {
        TnTextView tnTextView;
        Intrinsics.h(setting, "setting");
        r0 r0Var = this.binding;
        if (r0Var == null || (tnTextView = r0Var.f69910b) == null) {
            return;
        }
        tnTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv.base.widget.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoNetworkBigView.k(setting, view);
            }
        });
    }

    public final void onBackClick() {
    }

    public final void retry(final Function0<Unit> retryListener) {
        TnTextView tnTextView;
        Intrinsics.h(retryListener, "retryListener");
        r0 r0Var = this.binding;
        if (r0Var == null || (tnTextView = r0Var.f69914f) == null) {
            return;
        }
        tnTextView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv.base.widget.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoNetworkBigView.m(retryListener, view);
            }
        });
    }

    public final void setTopMargin(int marin) {
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        r0 r0Var = this.binding;
        ViewGroup.LayoutParams layoutParams = (r0Var == null || (appCompatImageView2 = r0Var.f69912d) == null) ? null : appCompatImageView2.getLayoutParams();
        ConstraintLayout.b bVar = layoutParams instanceof ConstraintLayout.b ? (ConstraintLayout.b) layoutParams : null;
        if (bVar == null) {
            bVar = new ConstraintLayout.b(0, -1);
        }
        ((ViewGroup.MarginLayoutParams) bVar).topMargin = marin;
        r0 r0Var2 = this.binding;
        if (r0Var2 == null || (appCompatImageView = r0Var2.f69912d) == null) {
            return;
        }
        appCompatImageView.setLayoutParams(bVar);
    }

    public final void showTitle(boolean visible, String title) {
        Intrinsics.h(title, "title");
        r0 r0Var = this.binding;
        if (r0Var != null) {
            if (visible) {
                AppCompatImageView ivBack = r0Var.f69911c;
                Intrinsics.g(ivBack, "ivBack");
                yr.b.e(ivBack);
                TnTextView tvTitle = r0Var.f69915g;
                Intrinsics.g(tvTitle, "tvTitle");
                yr.b.e(tvTitle);
            } else {
                AppCompatImageView ivBack2 = r0Var.f69911c;
                Intrinsics.g(ivBack2, "ivBack");
                yr.b.b(ivBack2);
                TnTextView tvTitle2 = r0Var.f69915g;
                Intrinsics.g(tvTitle2, "tvTitle");
                yr.b.b(tvTitle2);
            }
            r0Var.f69915g.setText(title);
        }
    }
}
