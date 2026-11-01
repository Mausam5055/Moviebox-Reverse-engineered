package com.tn.lib.view;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.tn.lib.widget.R$id;
import com.tn.lib.widget.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\r\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\nB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\r2\b\b\u0001\u0010\f\u001a\u00020\u0006¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0006¢\u0006\u0004\b\u0011\u0010\u000fJ\u0017\u0010\u0014\u001a\u00020\r2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0006¢\u0006\u0004\b\u0016\u0010\u000fJ\u0017\u0010\u0017\u001a\u00020\r2\b\b\u0001\u0010\f\u001a\u00020\u0006¢\u0006\u0004\b\u0017\u0010\u000fJ\u0015\u0010\u001a\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001a\u001a\u00020\r2\b\b\u0001\u0010\u001c\u001a\u00020\u0006¢\u0006\u0004\b\u001a\u0010\u000fJ\u0017\u0010\u001d\u001a\u00020\r2\b\b\u0001\u0010\f\u001a\u00020\u0006¢\u0006\u0004\b\u001d\u0010\u000fJ\u0015\u0010 \u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b \u0010!J\u0015\u0010\"\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0006¢\u0006\u0004\b\"\u0010\u000fJ\u0017\u0010#\u001a\u00020\r2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b#\u0010\u0015J\u000f\u0010%\u001a\u0004\u0018\u00010$¢\u0006\u0004\b%\u0010&J\u0015\u0010'\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b'\u0010\u001bJ\u0015\u0010(\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0006¢\u0006\u0004\b(\u0010\u000fJ\u0017\u0010)\u001a\u00020\r2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b)\u0010\u0015J\u000f\u0010*\u001a\u0004\u0018\u00010$¢\u0006\u0004\b*\u0010&J\u0015\u0010+\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b+\u0010\u001bJ\u0015\u0010,\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0006¢\u0006\u0004\b,\u0010\u000fJ\u0017\u0010-\u001a\u00020\r2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b-\u0010\u0015J\u0015\u00100\u001a\u00020\r2\u0006\u0010/\u001a\u00020.¢\u0006\u0004\b0\u00101J\u0017\u00102\u001a\u00020\r2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b2\u0010\u0015J\u0015\u00103\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0006¢\u0006\u0004\b3\u0010\u000fJ\u0017\u00104\u001a\u00020\r2\b\b\u0001\u0010\f\u001a\u00020\u0006¢\u0006\u0004\b4\u0010\u000fR\u0018\u00107\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0018\u00109\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00106R\u0018\u0010;\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u00106R\u0018\u0010=\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u00106R\u0018\u0010A\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u0018\u0010D\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010C¨\u0006E"}, d2 = {"Lcom/tn/lib/view/ToolBar2;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "(Landroid/content/Context;)V", TtmlNode.ATTR_TTS_COLOR, "", "setBackColor", "(I)V", "visibility", "setBackVisible", "Landroid/view/View$OnClickListener;", "onClickListener", "setBackOnClickListener", "(Landroid/view/View$OnClickListener;)V", "setLineVisible", "setLineColor", "", MimeTypes.BASE_TYPE_TEXT, "setTitleText", "(Ljava/lang/CharSequence;)V", "resId", "setTitleTextColor", "", "size", "seTTitleTextSize", "(F)V", "setTitleVisible", "setTitleOnClickListener", "Landroid/widget/TextView;", "getRightAction1", "()Landroid/widget/TextView;", "setRightAction1Text", "setRightAction1Visible", "setRightAction1OnClickListener", "getRightAction2", "setRightAction2Text", "setRightAction2Visible", "setRightAction2OnClickListener", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "addRightAction3View", "(Landroid/view/View;)V", "setRightAction3OnClickListener", "setRightAction3Visible", "setRightAction1TextColor", "a", "Landroid/widget/TextView;", "mTvBack", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "mTvTitle", "c", "mTvRightAction1", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "mTvRightAction2", "Landroid/widget/FrameLayout;", "e", "Landroid/widget/FrameLayout;", "mFLRightAction3", "f", "Landroid/view/View;", "mViewLine", "UI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ToolBar2 extends ConstraintLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private TextView mTvBack;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private TextView mTvTitle;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private TextView mTvRightAction1;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private TextView mTvRightAction2;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private FrameLayout mFLRightAction3;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private View mViewLine;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ToolBar2(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ToolBar2(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ToolBar2(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        LayoutInflater.from(context).inflate(R$layout.libui_layout_tool_bar2, (ViewGroup) this, true);
        this.mTvTitle = (TextView) findViewById(R$id.tv_title);
        this.mTvBack = (TextView) findViewById(R$id.tv_back);
        this.mTvRightAction1 = (TextView) findViewById(R$id.tv_right_action1);
        this.mTvRightAction2 = (TextView) findViewById(R$id.tv_right_action2);
        this.mFLRightAction3 = (FrameLayout) findViewById(R$id.vp_right_action3);
        this.mViewLine = findViewById(R$id.view_line);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(View.OnClickListener onClickListener, View view) {
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(View.OnClickListener onClickListener, View view) {
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(View.OnClickListener onClickListener, View view) {
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(View.OnClickListener onClickListener, View view) {
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(View.OnClickListener onClickListener, View view) {
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    public final void addRightAction3View(View view) {
        Intrinsics.h(view, "view");
        FrameLayout frameLayout = this.mFLRightAction3;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        FrameLayout frameLayout2 = this.mFLRightAction3;
        if (frameLayout2 != null) {
            frameLayout2.setVisibility(0);
        }
        FrameLayout frameLayout3 = this.mFLRightAction3;
        if (frameLayout3 != null) {
            frameLayout3.addView(view);
        }
        TextView textView = this.mTvTitle;
        ViewGroup.LayoutParams layoutParams = textView != null ? textView.getLayoutParams() : null;
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        oh.h hVar = oh.h.f71021a;
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        int iE = hVar.e(context);
        Context context2 = getContext();
        Intrinsics.g(context2, "getContext(...)");
        ((ViewGroup.MarginLayoutParams) bVar).width = iE - hVar.a(context2, 180.0f);
        bVar.f7698s = R$id.iv_back;
        bVar.f7702u = R$id.vp_right_action3;
        bVar.f7700t = -1;
        bVar.f7704v = -1;
        TextView textView2 = this.mTvTitle;
        if (textView2 != null) {
            textView2.setLayoutParams(bVar);
        }
    }

    /* JADX INFO: renamed from: getRightAction1, reason: from getter */
    public final TextView getMTvRightAction1() {
        return this.mTvRightAction1;
    }

    /* JADX INFO: renamed from: getRightAction2, reason: from getter */
    public final TextView getMTvRightAction2() {
        return this.mTvRightAction2;
    }

    public final void seTTitleTextSize(float size) {
        TextView textView = this.mTvTitle;
        if (textView != null) {
            textView.setTextSize(size);
        }
    }

    public final void setBackColor(int color) {
        TextView textView = this.mTvBack;
        if (textView != null) {
            textView.setTextColor(color);
        }
    }

    public final void setBackOnClickListener(final View.OnClickListener onClickListener) {
        TextView textView = this.mTvBack;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.tn.lib.view.g0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ToolBar2.m(onClickListener, view);
                }
            });
        }
    }

    public final void setBackVisible(int visibility) {
        TextView textView = this.mTvBack;
        if (textView != null) {
            textView.setVisibility(visibility);
        }
    }

    public final void setLineColor(int color) {
        View view = this.mViewLine;
        if (view != null) {
            view.setBackgroundColor(color);
        }
    }

    public final void setLineVisible(int visibility) {
        View view = this.mViewLine;
        if (view != null) {
            view.setVisibility(visibility);
        }
    }

    public final void setRightAction1OnClickListener(final View.OnClickListener onClickListener) {
        TextView textView = this.mTvRightAction1;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.tn.lib.view.f0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ToolBar2.n(onClickListener, view);
                }
            });
        }
    }

    public final void setRightAction1Text(CharSequence text) {
        Intrinsics.h(text, "text");
        if (TextUtils.isEmpty(text)) {
            return;
        }
        TextView textView = this.mTvRightAction1;
        if (textView != null) {
            textView.setVisibility(0);
        }
        TextView textView2 = this.mTvRightAction1;
        if (textView2 != null) {
            textView2.setText(text);
        }
    }

    public final void setRightAction1TextColor(int color) {
    }

    public final void setRightAction1Visible(int visibility) {
        TextView textView = this.mTvRightAction1;
        if (textView != null) {
            textView.setVisibility(visibility);
        }
    }

    public final void setRightAction2OnClickListener(final View.OnClickListener onClickListener) {
        TextView textView = this.mTvRightAction2;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.tn.lib.view.j0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ToolBar2.o(onClickListener, view);
                }
            });
        }
    }

    public final void setRightAction2Text(CharSequence text) {
        Intrinsics.h(text, "text");
        if (TextUtils.isEmpty(text)) {
            return;
        }
        TextView textView = this.mTvRightAction2;
        if (textView != null) {
            textView.setVisibility(0);
        }
        TextView textView2 = this.mTvRightAction2;
        if (textView2 != null) {
            textView2.setText(text);
        }
    }

    public final void setRightAction2Visible(int visibility) {
        TextView textView = this.mTvRightAction2;
        if (textView != null) {
            textView.setVisibility(visibility);
        }
        TextView textView2 = this.mTvTitle;
        ViewGroup.LayoutParams layoutParams = textView2 != null ? textView2.getLayoutParams() : null;
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        oh.h hVar = oh.h.f71021a;
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        int iE = hVar.e(context);
        Context context2 = getContext();
        Intrinsics.g(context2, "getContext(...)");
        ((ViewGroup.MarginLayoutParams) bVar).width = iE - hVar.a(context2, 140.0f);
        bVar.f7698s = R$id.tv_back;
        bVar.f7702u = R$id.tv_right_action2;
        bVar.f7700t = -1;
        bVar.f7704v = -1;
        TextView textView3 = this.mTvTitle;
        if (textView3 != null) {
            textView3.setLayoutParams(bVar);
        }
    }

    public final void setRightAction3OnClickListener(final View.OnClickListener onClickListener) {
        FrameLayout frameLayout = this.mFLRightAction3;
        if (frameLayout != null) {
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.tn.lib.view.h0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ToolBar2.p(onClickListener, view);
                }
            });
        }
    }

    public final void setRightAction3Visible(int visibility) {
        FrameLayout frameLayout = this.mFLRightAction3;
        if (frameLayout != null) {
            frameLayout.setVisibility(visibility);
        }
    }

    public final void setTitleOnClickListener(final View.OnClickListener onClickListener) {
        TextView textView = this.mTvTitle;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.tn.lib.view.i0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ToolBar2.q(onClickListener, view);
                }
            });
        }
    }

    public final void setTitleText(int resId) {
        TextView textView = this.mTvTitle;
        if (textView != null) {
            textView.setVisibility(0);
        }
        TextView textView2 = this.mTvTitle;
        if (textView2 != null) {
            textView2.setText(resId);
        }
    }

    public final void setTitleText(CharSequence text) {
        Intrinsics.h(text, "text");
        if (TextUtils.isEmpty(text)) {
            return;
        }
        setTitleVisible(0);
        TextView textView = this.mTvTitle;
        if (textView != null) {
            textView.setText(text);
        }
    }

    public final void setTitleTextColor(int color) {
        TextView textView = this.mTvTitle;
        if (textView != null) {
            textView.setTextColor(color);
        }
    }

    public final void setTitleVisible(int visibility) {
        TextView textView = this.mTvTitle;
        if (textView != null) {
            textView.setVisibility(visibility);
        }
    }
}
