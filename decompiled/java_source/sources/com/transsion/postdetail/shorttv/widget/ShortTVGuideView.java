package com.transsion.postdetail.shorttv.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.blankj.utilcode.util.a0;
import com.tn.lib.widget.R$color;
import com.transsion.postdetail.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import so.f0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u001b2\u00020\u0001:\u0001\u0018B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\nB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\u000bJ\u0015\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\r\u0010\u0015\u001a\u00020\u000e¢\u0006\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001a\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019¨\u0006\u001c"}, d2 = {"Lcom/transsion/postdetail/shorttv/widget/ShortTVGuideView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "epText", "", "setEp", "(Ljava/lang/String;)V", "", "attachToMain", "setPage", "(Z)V", "removeGuide", "()V", "Lso/f0;", "a", "Lso/f0;", "viewBinding", "Companion", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ShortTVGuideView extends ConstraintLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final f0 viewBinding;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortTVGuideView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortTVGuideView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTVGuideView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        View.inflate(context, R$layout.layout_post_short_tv_guide, this);
        f0 f0VarA = f0.a(this);
        Intrinsics.g(f0VarA, "bind(...)");
        this.viewBinding = f0VarA;
        setBackgroundColor(androidx.core.content.b.getColor(context, R$color.black_50));
        setOnClickListener(new View.OnClickListener() { // from class: com.transsion.postdetail.shorttv.widget.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShortTVGuideView.j(this.f49290a, view);
            }
        });
        setFocusableInTouchMode(true);
        requestFocus();
        setOnKeyListener(new View.OnKeyListener() { // from class: com.transsion.postdetail.shorttv.widget.h
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i12, KeyEvent keyEvent) {
                return ShortTVGuideView.k(this.f49291a, view, i12, keyEvent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(ShortTVGuideView shortTVGuideView, View view) {
        shortTVGuideView.removeGuide();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean k(ShortTVGuideView shortTVGuideView, View view, int i11, KeyEvent keyEvent) {
        if (i11 != 4 || keyEvent.getAction() != 1) {
            return false;
        }
        shortTVGuideView.removeGuide();
        return false;
    }

    public final void removeGuide() {
        if (getParent() != null) {
            ViewParent parent = getParent();
            Intrinsics.f(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            ((ViewGroup) parent).removeView(this);
        }
    }

    public final void setEp(String epText) {
        Intrinsics.h(epText, "epText");
        this.viewBinding.f75519d.setText(epText);
    }

    public final void setPage(boolean attachToMain) {
        ViewGroup.LayoutParams layoutParams = this.viewBinding.f75520e.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        ((ViewGroup.MarginLayoutParams) bVar).bottomMargin = a0.a(attachToMain ? 90.0f : 64.0f);
        this.viewBinding.f75520e.setLayoutParams(bVar);
    }
}
