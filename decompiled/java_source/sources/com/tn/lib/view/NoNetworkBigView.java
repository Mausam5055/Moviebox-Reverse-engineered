package com.tn.lib.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.blankj.utilcode.util.NetworkUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.TnTextView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bB\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\fB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\n\u0010\rB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000eJ\u001f\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\b2\b\b\u0002\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0013\u0010\u0014J\u001b\u0010\u0017\u001a\u00020\u00122\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00120\u0015¢\u0006\u0004\b\u0017\u0010\u0018J\u001b\u0010\u001a\u001a\u00020\u00122\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00120\u0015¢\u0006\u0004\b\u001a\u0010\u0018R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006\u001f"}, d2 = {"Lcom/tn/lib/view/NoNetworkBigView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "", "isShowTitleLayout", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V", "(Landroid/content/Context;Z)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "(Landroid/content/Context;)V", "visible", "", CampaignEx.JSON_KEY_TITLE, "", "showTitle", "(ZLjava/lang/String;)V", "Lkotlin/Function0;", "retryListener", "retry", "(Lkotlin/jvm/functions/Function0;)V", "setting", "goToSetting", "Lth/d;", "a", "Lth/d;", "binding", "UI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class NoNetworkBigView extends ConstraintLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private th.d binding;

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
    public NoNetworkBigView(Context context, AttributeSet attributeSet, int i11, boolean z10) {
        TitleLayout titleLayout;
        TitleLayout titleLayout2;
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.binding = th.d.b(LayoutInflater.from(context), this);
        setLayoutParams(new ConstraintLayout.b(-1, -1));
        setPadding(0, 0, 0, com.blankj.utilcode.util.a0.a(14.0f));
        setBackgroundResource(R$color.bg_01);
        if (z10) {
            th.d dVar = this.binding;
            if (dVar == null || (titleLayout2 = dVar.f76232e) == null) {
                return;
            }
            jg.c.k(titleLayout2);
            return;
        }
        th.d dVar2 = this.binding;
        if (dVar2 == null || (titleLayout = dVar2.f76232e) == null) {
            return;
        }
        jg.c.h(titleLayout);
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
    public static final void j(Function0 function0, View view) {
        try {
            NetworkUtils.v();
            function0.invoke();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(Function0 function0, View view) {
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
        th.d dVar = this.binding;
        if (dVar == null || (tnTextView = dVar.f76230c) == null) {
            return;
        }
        tnTextView.setOnClickListener(new View.OnClickListener() { // from class: com.tn.lib.view.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoNetworkBigView.j(setting, view);
            }
        });
    }

    public final void retry(final Function0<Unit> retryListener) {
        TnTextView tnTextView;
        Intrinsics.h(retryListener, "retryListener");
        th.d dVar = this.binding;
        if (dVar == null || (tnTextView = dVar.f76234g) == null) {
            return;
        }
        tnTextView.setOnClickListener(new View.OnClickListener() { // from class: com.tn.lib.view.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoNetworkBigView.k(retryListener, view);
            }
        });
    }

    public final void showTitle(boolean visible, String title) {
        TitleLayout titleLayout;
        Intrinsics.h(title, "title");
        th.d dVar = this.binding;
        if (dVar == null || (titleLayout = dVar.f76232e) == null) {
            return;
        }
        if (visible) {
            jg.c.k(titleLayout);
        } else {
            jg.c.g(titleLayout);
        }
        titleLayout.setTitleText(title);
    }
}
