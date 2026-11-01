package com.tn.lib.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.blankj.utilcode.util.NetworkUtils;
import com.tn.lib.widget.R$mipmap;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\nB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\u000bJ\u001b\u0010\u000f\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0004\b\u000f\u0010\u0010J\u001b\u0010\u0012\u001a\u00020\r2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\r0\f¢\u0006\u0004\b\u0012\u0010\u0010R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0017"}, d2 = {"Lcom/tn/lib/view/NoNetworkSmallView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "(Landroid/content/Context;)V", "Lkotlin/Function0;", "", "retryListener", "retry", "(Lkotlin/jvm/functions/Function0;)V", "settingListener", "goToSetting", "Lth/e;", "a", "Lth/e;", "binding", "UI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class NoNetworkSmallView extends ConstraintLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private th.e binding;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NoNetworkSmallView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NoNetworkSmallView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoNetworkSmallView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.binding = th.e.b(LayoutInflater.from(context), this);
        setBackgroundResource(R$mipmap.bg_network_view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(NoNetworkSmallView noNetworkSmallView, Function0 function0, View view) {
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
    public static final void l(Function0 function0, final th.e eVar, NoNetworkSmallView noNetworkSmallView, View view) {
        function0.invoke();
        AppCompatTextView retry = eVar.f76238d;
        Intrinsics.g(retry, "retry");
        jg.c.g(retry);
        AppCompatTextView goToSetting = eVar.f76236b;
        Intrinsics.g(goToSetting, "goToSetting");
        jg.c.g(goToSetting);
        AppCompatTextView tvTitle = eVar.f76240f;
        Intrinsics.g(tvTitle, "tvTitle");
        jg.c.g(tvTitle);
        ProgressBar progressBar = eVar.f76237c;
        Intrinsics.g(progressBar, "progressBar");
        jg.c.k(progressBar);
        noNetworkSmallView.postDelayed(new Runnable() { // from class: com.tn.lib.view.u
            @Override // java.lang.Runnable
            public final void run() {
                NoNetworkSmallView.m(eVar);
            }
        }, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(th.e eVar) {
        AppCompatTextView retry = eVar.f76238d;
        Intrinsics.g(retry, "retry");
        jg.c.k(retry);
        AppCompatTextView goToSetting = eVar.f76236b;
        Intrinsics.g(goToSetting, "goToSetting");
        jg.c.k(goToSetting);
        AppCompatTextView tvTitle = eVar.f76240f;
        Intrinsics.g(tvTitle, "tvTitle");
        jg.c.k(tvTitle);
        ProgressBar progressBar = eVar.f76237c;
        Intrinsics.g(progressBar, "progressBar");
        jg.c.g(progressBar);
    }

    public final void goToSetting(final Function0<Unit> settingListener) {
        AppCompatTextView appCompatTextView;
        Intrinsics.h(settingListener, "settingListener");
        th.e eVar = this.binding;
        if (eVar == null || (appCompatTextView = eVar.f76236b) == null) {
            return;
        }
        appCompatTextView.setOnClickListener(new View.OnClickListener() { // from class: com.tn.lib.view.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoNetworkSmallView.k(this.f41380a, settingListener, view);
            }
        });
    }

    public final void retry(final Function0<Unit> retryListener) {
        Intrinsics.h(retryListener, "retryListener");
        final th.e eVar = this.binding;
        if (eVar != null) {
            eVar.f76238d.setOnClickListener(new View.OnClickListener() { // from class: com.tn.lib.view.s
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    NoNetworkSmallView.l(retryListener, eVar, this, view);
                }
            });
        }
    }
}
