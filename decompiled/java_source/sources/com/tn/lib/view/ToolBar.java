package com.tn.lib.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
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
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\r\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 X2\u00020\u0001:\u0001GB#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\nB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0010\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\r2\b\b\u0001\u0010\u0011\u001a\u00020\u0006¢\u0006\u0004\b\u0012\u0010\u000fJ\u0017\u0010\u0015\u001a\u00020\r2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\r2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u001b\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u0006¢\u0006\u0004\b\u001b\u0010\u000fJ\u0017\u0010\u001e\u001a\u00020\r2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c¢\u0006\u0004\b\u001e\u0010\u001fJ\u0015\u0010\"\u001a\u00020\r2\u0006\u0010!\u001a\u00020 ¢\u0006\u0004\b\"\u0010#J\u0017\u0010\"\u001a\u00020\r2\b\b\u0001\u0010\u0011\u001a\u00020\u0006¢\u0006\u0004\b\"\u0010\u000fJ\u0017\u0010%\u001a\u00020\r2\b\b\u0001\u0010$\u001a\u00020\u0006¢\u0006\u0004\b%\u0010\u000fJ\u0015\u0010(\u001a\u00020\r2\u0006\u0010'\u001a\u00020&¢\u0006\u0004\b(\u0010)J\u0015\u0010*\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u0006¢\u0006\u0004\b*\u0010\u000fJ\u0017\u0010+\u001a\u00020\r2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c¢\u0006\u0004\b+\u0010\u001fJ\u000f\u0010-\u001a\u0004\u0018\u00010,¢\u0006\u0004\b-\u0010.J\u0017\u0010/\u001a\u00020\r2\b\b\u0001\u0010\u0011\u001a\u00020\u0006¢\u0006\u0004\b/\u0010\u000fJ\u0017\u00100\u001a\u00020\r2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b0\u0010\u0016J\u0017\u00101\u001a\u00020\r2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b1\u0010\u001aJ\u0015\u00102\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u0006¢\u0006\u0004\b2\u0010\u000fJ\u0017\u00103\u001a\u00020\r2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c¢\u0006\u0004\b3\u0010\u001fJ\u000f\u00104\u001a\u0004\u0018\u00010,¢\u0006\u0004\b4\u0010.J\u0017\u00105\u001a\u00020\r2\b\b\u0001\u0010\u0011\u001a\u00020\u0006¢\u0006\u0004\b5\u0010\u000fJ\u0017\u00106\u001a\u00020\r2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b6\u0010\u0016J\u0017\u00107\u001a\u00020\r2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b7\u0010\u001aJ\u0015\u00108\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u0006¢\u0006\u0004\b8\u0010\u000fJ\u001d\u00108\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u00062\u0006\u00109\u001a\u00020\u0006¢\u0006\u0004\b8\u0010:J\u0017\u0010;\u001a\u00020\r2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c¢\u0006\u0004\b;\u0010\u001fJ\u0015\u0010<\u001a\u00020\r2\u0006\u0010!\u001a\u00020 ¢\u0006\u0004\b<\u0010#J\u0017\u0010<\u001a\u00020\r2\b\b\u0001\u0010\u0011\u001a\u00020\u0006¢\u0006\u0004\b<\u0010\u000fJ\u0017\u0010=\u001a\u00020\r2\b\b\u0001\u0010$\u001a\u00020\u0006¢\u0006\u0004\b=\u0010\u000fJ\u0015\u0010>\u001a\u00020\r2\u0006\u0010'\u001a\u00020&¢\u0006\u0004\b>\u0010)J\u0015\u0010?\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u0006¢\u0006\u0004\b?\u0010\u000fJ\u0017\u0010@\u001a\u00020\r2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c¢\u0006\u0004\b@\u0010\u001fJ\u0015\u0010C\u001a\u00020\r2\u0006\u0010B\u001a\u00020A¢\u0006\u0004\bC\u0010DJ\u0017\u0010E\u001a\u00020\r2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c¢\u0006\u0004\bE\u0010\u001fJ\u0015\u0010F\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u0006¢\u0006\u0004\bF\u0010\u000fR\u0018\u0010I\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010HR\u0018\u0010M\u001a\u0004\u0018\u00010J8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u0018\u0010O\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010HR\u0018\u0010Q\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010HR\u0018\u0010S\u001a\u0004\u0018\u00010J8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010LR\u0018\u0010W\u001a\u0004\u0018\u00010T8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010V¨\u0006Y"}, d2 = {"Lcom/tn/lib/view/ToolBar;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "(Landroid/content/Context;)V", "visibility", "", "t", "(I)V", TmcStartParams.KEY_URL_SHORT, "resId", "setIvBackImageResource", "Landroid/graphics/drawable/Drawable;", "drawable", "setIvBackImageDrawable", "(Landroid/graphics/drawable/Drawable;)V", "Landroid/graphics/Bitmap;", "bitmap", "setIvBackImageBitmap", "(Landroid/graphics/Bitmap;)V", "setIvBackVisible", "Landroid/view/View$OnClickListener;", "onClickListener", "setIvBackOnClickListener", "(Landroid/view/View$OnClickListener;)V", "", MimeTypes.BASE_TYPE_TEXT, "setTitleText", "(Ljava/lang/CharSequence;)V", TtmlNode.ATTR_TTS_COLOR, "setTitleTextColor", "", "size", "seTTitleTextSize", "(F)V", "setTitleVisible", "setTitleOnClickListener", "Lcom/tn/lib/view/TRImageView;", "getIvRightAction1ImageView", "()Lcom/tn/lib/view/TRImageView;", "setIvRightAction1ImageResource", "setIvRightAction1ImageDrawable", "setIvRightAction1ImageBitmap", "setIvRightAction1Visible", "setIvRightAction1OnClickListener", "getIvRightAction2", "setIvRightAction2ImageResource", "setIvRightAction2ImageDrawable", "setIvRightAction2ImageBitmap", "setIvRightAction2Visible", NativeComponentConstants.KEY_COMPONENT_TYPE, "(II)V", "setIvRightAction2OnClickListener", "setRightActionText", "setRightActionTextColor", "setRightActionTextSize", "setRightActionVisible", "setTvRightActionOnClickListener", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "addRightAction3View", "(Landroid/view/View;)V", "setRightAction3OnClickListener", "setRightAction3Visible", "a", "Lcom/tn/lib/view/TRImageView;", "mIvBack", "Landroid/widget/TextView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/widget/TextView;", "mTvTitle", "c", "mIvRightAction1", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "mIvRightAction2", "e", "mTvRightAction", "Landroid/widget/FrameLayout;", "f", "Landroid/widget/FrameLayout;", "mFLRightAction3", "Companion", "UI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ToolBar extends ConstraintLayout {
    public static final int CENTER_IN_ALL = 1;
    public static final int CENTER_IN_SPACE = 2;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private TRImageView mIvBack;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private TextView mTvTitle;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private TRImageView mIvRightAction1;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private TRImageView mIvRightAction2;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private TextView mTvRightAction;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private FrameLayout mFLRightAction3;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ToolBar(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ToolBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ToolBar(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        LayoutInflater.from(context).inflate(R$layout.libui_layout_tool_bar, (ViewGroup) this, true);
        this.mTvTitle = (TextView) findViewById(R$id.tv_title);
        this.mIvBack = (TRImageView) findViewById(R$id.iv_back);
        this.mIvRightAction1 = (TRImageView) findViewById(R$id.iv_right_action1);
        this.mIvRightAction2 = (TRImageView) findViewById(R$id.iv_right_action2);
        this.mTvRightAction = (TextView) findViewById(R$id.tv_right_action);
        this.mFLRightAction3 = (FrameLayout) findViewById(R$id.vp_right_action3);
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

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(View.OnClickListener onClickListener, View view) {
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(View.OnClickListener onClickListener, View view) {
        if (onClickListener != null) {
            onClickListener.onClick(view);
        }
    }

    private final void t(int visibility) {
        TRImageView tRImageView = this.mIvRightAction2;
        if (tRImageView != null) {
            tRImageView.setVisibility(visibility);
        }
        TextView textView = this.mTvTitle;
        ViewGroup.LayoutParams layoutParams = textView != null ? textView.getLayoutParams() : null;
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        ((ViewGroup.MarginLayoutParams) bVar).width = 0;
        bVar.f7700t = 0;
        bVar.f7704v = 0;
        oh.h hVar = oh.h.f71021a;
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        bVar.setMarginStart(hVar.a(context, 84.0f));
        Context context2 = getContext();
        Intrinsics.g(context2, "getContext(...)");
        bVar.setMarginEnd(hVar.a(context2, 84.0f));
        TextView textView2 = this.mTvTitle;
        if (textView2 != null) {
            textView2.setLayoutParams(bVar);
        }
    }

    private final void u(int visibility) {
        TRImageView tRImageView = this.mIvRightAction2;
        if (tRImageView != null) {
            tRImageView.setVisibility(visibility);
        }
        TextView textView = this.mTvTitle;
        ViewGroup.LayoutParams layoutParams = textView != null ? textView.getLayoutParams() : null;
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        ((ViewGroup.MarginLayoutParams) bVar).width = 0;
        bVar.f7698s = R$id.iv_back;
        bVar.f7702u = R$id.iv_right_action2;
        bVar.f7700t = -1;
        bVar.f7704v = -1;
        oh.h hVar = oh.h.f71021a;
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        bVar.setMarginStart(hVar.a(context, 10.0f));
        Context context2 = getContext();
        Intrinsics.g(context2, "getContext(...)");
        bVar.setMarginEnd(hVar.a(context2, 10.0f));
        TextView textView2 = this.mTvTitle;
        if (textView2 != null) {
            textView2.setLayoutParams(bVar);
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

    /* JADX INFO: renamed from: getIvRightAction1ImageView, reason: from getter */
    public final TRImageView getMIvRightAction1() {
        return this.mIvRightAction1;
    }

    /* JADX INFO: renamed from: getIvRightAction2, reason: from getter */
    public final TRImageView getMIvRightAction2() {
        return this.mIvRightAction2;
    }

    public final void seTTitleTextSize(float size) {
        TextView textView = this.mTvTitle;
        if (textView != null) {
            textView.setTextSize(size);
        }
    }

    public final void setIvBackImageBitmap(Bitmap bitmap) {
        TRImageView tRImageView = this.mIvBack;
        if (tRImageView != null) {
            tRImageView.setImageBitmap(bitmap);
        }
    }

    public final void setIvBackImageDrawable(Drawable drawable) {
        TRImageView tRImageView = this.mIvBack;
        if (tRImageView != null) {
            tRImageView.setImageDrawable(drawable);
        }
    }

    public final void setIvBackImageResource(int resId) {
        TRImageView tRImageView = this.mIvBack;
        if (tRImageView != null) {
            tRImageView.setImageResource(resId);
        }
    }

    public final void setIvBackOnClickListener(final View.OnClickListener onClickListener) {
        TRImageView tRImageView = this.mIvBack;
        if (tRImageView != null) {
            tRImageView.setOnClickListener(new View.OnClickListener() { // from class: com.tn.lib.view.z
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ToolBar.n(onClickListener, view);
                }
            });
        }
    }

    public final void setIvBackVisible(int visibility) {
        TRImageView tRImageView = this.mIvBack;
        if (tRImageView != null) {
            tRImageView.setVisibility(visibility);
        }
    }

    public final void setIvRightAction1ImageBitmap(Bitmap bitmap) {
        TRImageView tRImageView = this.mIvRightAction1;
        if (tRImageView != null) {
            tRImageView.setImageBitmap(bitmap);
        }
    }

    public final void setIvRightAction1ImageDrawable(Drawable drawable) {
        TRImageView tRImageView = this.mIvRightAction1;
        if (tRImageView != null) {
            tRImageView.setImageDrawable(drawable);
        }
    }

    public final void setIvRightAction1ImageResource(int resId) {
        TRImageView tRImageView = this.mIvRightAction1;
        if (tRImageView != null) {
            tRImageView.setImageResource(resId);
        }
    }

    public final void setIvRightAction1OnClickListener(final View.OnClickListener onClickListener) {
        TRImageView tRImageView = this.mIvRightAction1;
        if (tRImageView != null) {
            tRImageView.setOnClickListener(new View.OnClickListener() { // from class: com.tn.lib.view.c0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ToolBar.o(onClickListener, view);
                }
            });
        }
    }

    public final void setIvRightAction1Visible(int visibility) {
        TRImageView tRImageView = this.mIvRightAction1;
        if (tRImageView != null) {
            tRImageView.setVisibility(visibility);
        }
    }

    public final void setIvRightAction2ImageBitmap(Bitmap bitmap) {
        TRImageView tRImageView = this.mIvRightAction2;
        if (tRImageView != null) {
            tRImageView.setImageBitmap(bitmap);
        }
    }

    public final void setIvRightAction2ImageDrawable(Drawable drawable) {
        TRImageView tRImageView = this.mIvRightAction2;
        if (tRImageView != null) {
            tRImageView.setImageDrawable(drawable);
        }
    }

    public final void setIvRightAction2ImageResource(int resId) {
        TRImageView tRImageView = this.mIvRightAction2;
        if (tRImageView != null) {
            tRImageView.setImageResource(resId);
        }
    }

    public final void setIvRightAction2OnClickListener(final View.OnClickListener onClickListener) {
        TRImageView tRImageView = this.mIvRightAction2;
        if (tRImageView != null) {
            tRImageView.setOnClickListener(new View.OnClickListener() { // from class: com.tn.lib.view.b0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ToolBar.p(onClickListener, view);
                }
            });
        }
    }

    public final void setIvRightAction2Visible(int visibility) {
        setIvRightAction2Visible(visibility, 1);
    }

    public final void setIvRightAction2Visible(int visibility, int type) {
        if (type == 1) {
            t(visibility);
        } else {
            u(visibility);
        }
    }

    public final void setRightAction3OnClickListener(final View.OnClickListener onClickListener) {
        FrameLayout frameLayout = this.mFLRightAction3;
        if (frameLayout != null) {
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.tn.lib.view.a0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ToolBar.q(onClickListener, view);
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

    public final void setRightActionText(int resId) {
        TextView textView = this.mTvRightAction;
        if (textView != null) {
            textView.setText(resId);
        }
    }

    public final void setRightActionText(CharSequence text) {
        Intrinsics.h(text, "text");
        TextView textView = this.mTvRightAction;
        if (textView != null) {
            textView.setText(text);
        }
    }

    public final void setRightActionTextColor(int color) {
        TextView textView = this.mTvRightAction;
        if (textView != null) {
            textView.setTextColor(color);
        }
    }

    public final void setRightActionTextSize(float size) {
        TextView textView = this.mTvRightAction;
        if (textView != null) {
            textView.setTextSize(size);
        }
    }

    public final void setRightActionVisible(int visibility) {
        TextView textView = this.mTvRightAction;
        if (textView != null) {
            textView.setVisibility(visibility);
        }
    }

    public final void setTitleOnClickListener(final View.OnClickListener onClickListener) {
        TextView textView = this.mTvTitle;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.tn.lib.view.e0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ToolBar.r(onClickListener, view);
                }
            });
        }
    }

    public final void setTitleText(int resId) {
        TextView textView = this.mTvTitle;
        if (textView != null) {
            textView.setText(resId);
        }
    }

    public final void setTitleText(CharSequence text) {
        Intrinsics.h(text, "text");
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

    public final void setTvRightActionOnClickListener(final View.OnClickListener onClickListener) {
        TextView textView = this.mTvRightAction;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() { // from class: com.tn.lib.view.d0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ToolBar.s(onClickListener, view);
                }
            });
        }
    }
}
