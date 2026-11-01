package com.transsion.postdetail.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.blankj.utilcode.util.NetworkUtils;
import com.transsion.postdetail.R$mipmap;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\nB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\u000bJ\u001b\u0010\u000f\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0004\b\u000f\u0010\u0010J\u001b\u0010\u0012\u001a\u00020\r2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0004\b\u0012\u0010\u0010R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0017"}, d2 = {"Lcom/transsion/postdetail/ui/view/ImmVideoNoNetworkView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "(Landroid/content/Context;)V", "Lkotlin/Function0;", "", "retryListener", "retry", "(Lkotlin/jvm/functions/Function0;)V", "setting", "goToSetting", "Lso/r0;", "a", "Lso/r0;", "binding", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ImmVideoNoNetworkView extends ConstraintLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final so.r0 binding;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmVideoNoNetworkView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmVideoNoNetworkView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmVideoNoNetworkView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        so.r0 r0VarB = so.r0.b(LayoutInflater.from(context), this);
        Intrinsics.g(r0VarB, "inflate(...)");
        this.binding = r0VarB;
        setLayoutParams(new ConstraintLayout.b(-1, -1));
        setBackgroundResource(R$mipmap.post_detail_local_video_bg);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(ImmVideoNoNetworkView immVideoNoNetworkView, Function0 function0, View view) {
        try {
            Result.Companion companion = Result.INSTANCE;
            NetworkUtils.v();
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(Function0 function0, View view) {
        function0.invoke();
    }

    public final void goToSetting(final Function0<Unit> setting) {
        Intrinsics.h(setting, "setting");
        this.binding.f75699b.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.view.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImmVideoNoNetworkView.j(this.f50114a, setting, view);
            }
        });
    }

    public final void retry(final Function0<Unit> retryListener) {
        Intrinsics.h(retryListener, "retryListener");
        this.binding.f75701d.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.ui.view.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImmVideoNoNetworkView.k(retryListener, view);
            }
        });
    }
}
