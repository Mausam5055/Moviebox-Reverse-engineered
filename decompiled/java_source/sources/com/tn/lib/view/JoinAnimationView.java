package com.tn.lib.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.integration.webp.decoder.WebpDrawable;
import com.bumptech.glide.integration.webp.decoder.WebpDrawableTransformation;
import com.bumptech.glide.load.resource.bitmap.CenterInside;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.widget.R$id;
import com.tn.lib.widget.R$layout;
import com.tn.lib.widget.R$mipmap;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 B2\u00020\u0001:\u0001+B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\b2\b\b\u0001\u0010\u0013\u001a\u00020\u000b¢\u0006\u0004\b\u0014\u0010\u000eJ\u0015\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018J5\u0010\u001d\u001a\u00020\b2\b\b\u0001\u0010\u0019\u001a\u00020\u000b2\b\b\u0001\u0010\u001a\u001a\u00020\u000b2\b\b\u0001\u0010\u001b\u001a\u00020\u000b2\b\b\u0001\u0010\u001c\u001a\u00020\u000b¢\u0006\u0004\b\u001d\u0010\u001eJ\u001b\u0010!\u001a\u00020\b2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\b0\u001f¢\u0006\u0004\b!\u0010\"J\u0015\u0010$\u001a\u00020\b2\u0006\u0010#\u001a\u00020\u000b¢\u0006\u0004\b$\u0010\u000eJ\u0017\u0010&\u001a\u00020\b2\b\b\u0001\u0010%\u001a\u00020\u000b¢\u0006\u0004\b&\u0010\u000eJ\u001d\u0010)\u001a\u00020\b2\u0006\u0010'\u001a\u00020\u000b2\u0006\u0010(\u001a\u00020\u000b¢\u0006\u0004\b)\u0010*R\u001c\u0010-\u001a\b\u0012\u0004\u0012\u00020\b0\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0018\u00101\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0018\u00105\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0018\u00109\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R\u0014\u0010<\u001a\u00020:8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010;R\"\u0010A\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010=\u001a\u0004\b>\u0010?\"\u0004\b@\u0010\u000e¨\u0006C"}, d2 = {"Lcom/tn/lib/view/JoinAnimationView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "e", "()V", "", "resource", "f", "(I)V", "", CampaignEx.JSON_KEY_TITLE, "setTitle", "(Ljava/lang/String;)V", TtmlNode.ATTR_TTS_COLOR, "setTextColor", "", "textSize", "setTextSize", "(F)V", "start", IntegrationConstants.TAB_BAR_POSITION_TOP, TtmlNode.END, IntegrationConstants.TAB_BAR_POSITION_DEFAULT, "setCompoundDrawablesRelativeWithIntrinsicBounds", "(IIII)V", "Lkotlin/Function0;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setChangeListener", "(Lkotlin/jvm/functions/Function0;)V", "state", "upDateState", "resid", "setJoinBackgroundResource", "width", "height", "setJoinWH", "(II)V", "a", "Lkotlin/jvm/functions/Function0;", "changeListener", "Landroid/widget/TextView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/widget/TextView;", "tvTitle", "Landroid/widget/ImageView;", "c", "Landroid/widget/ImageView;", "ivLoading", "Landroidx/constraintlayout/widget/ConstraintLayout;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroidx/constraintlayout/widget/ConstraintLayout;", "rootView", "Ljava/lang/Runnable;", "Ljava/lang/Runnable;", "runnable", "I", "getCurrentState", "()I", "setCurrentState", "currentState", "Companion", "UI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class JoinAnimationView extends FrameLayout {
    public static final int BUTTON_STATE_JOINED = 3;
    public static final int BUTTON_STATE_JOIN_ING = 2;
    public static final int BUTTON_STATE_NOT_TO_JOIN = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private Function0 changeListener;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private TextView tvTitle;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private ImageView ivLoading;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private ConstraintLayout rootView;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final Runnable runnable;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private int currentState;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JoinAnimationView(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.h(context, "context");
        Intrinsics.h(attrs, "attrs");
        this.changeListener = new Function0() { // from class: com.tn.lib.view.k
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return JoinAnimationView.d(this.f41365a);
            }
        };
        this.runnable = new Runnable() { // from class: com.tn.lib.view.l
            @Override // java.lang.Runnable
            public final void run() {
                JoinAnimationView.g(this.f41366a);
            }
        };
        this.currentState = 1;
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d(JoinAnimationView joinAnimationView) {
        joinAnimationView.setVisibility(8);
        return Unit.f67061a;
    }

    private final void e() {
        LayoutInflater.from(getContext()).inflate(R$layout.view_join_in_layout, this);
        this.tvTitle = (TextView) findViewById(R$id.tvTitle);
        this.ivLoading = (ImageView) findViewById(R$id.ivLoading);
        this.rootView = (ConstraintLayout) findViewById(R$id.rootView);
    }

    private final void f(int resource) {
        CenterInside centerInside = new CenterInside();
        RequestBuilder requestBuilderOptionalTransform = Glide.with(getContext().getApplicationContext()).load2(Integer.valueOf(resource)).optionalTransform(centerInside).optionalTransform(WebpDrawable.class, new WebpDrawableTransformation(centerInside));
        ImageView imageView = this.ivLoading;
        Intrinsics.e(imageView);
        requestBuilderOptionalTransform.into(imageView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(JoinAnimationView joinAnimationView) {
        joinAnimationView.changeListener.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(Function0 function0) {
        function0.invoke();
    }

    public final int getCurrentState() {
        return this.currentState;
    }

    public final void setChangeListener(Function0<Unit> listener) {
        Intrinsics.h(listener, "listener");
        this.changeListener = listener;
    }

    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int start, int top, int end, int bottom) {
        TextView textView = this.tvTitle;
        if (textView != null) {
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(start, top, end, bottom);
        }
    }

    public final void setCurrentState(int i11) {
        this.currentState = i11;
    }

    public final void setJoinBackgroundResource(int resid) {
        ConstraintLayout constraintLayout = this.rootView;
        if (constraintLayout != null) {
            constraintLayout.setBackgroundResource(resid);
        }
    }

    public final void setJoinWH(int width, int height) {
        ConstraintLayout constraintLayout = this.rootView;
        ViewGroup.LayoutParams layoutParams = constraintLayout != null ? constraintLayout.getLayoutParams() : null;
        FrameLayout.LayoutParams layoutParams2 = layoutParams instanceof FrameLayout.LayoutParams ? (FrameLayout.LayoutParams) layoutParams : null;
        if (layoutParams2 != null) {
            layoutParams2.width = width;
        }
        if (layoutParams2 != null) {
            layoutParams2.height = height;
        }
        ConstraintLayout constraintLayout2 = this.rootView;
        if (constraintLayout2 != null) {
            constraintLayout2.setLayoutParams(layoutParams2);
        }
    }

    public final void setTextColor(int color) {
        TextView textView = this.tvTitle;
        if (textView != null) {
            textView.setTextColor(color);
        }
    }

    public final void setTextSize(float textSize) {
        TextView textView = this.tvTitle;
        if (textView != null) {
            textView.setTextSize(textSize);
        }
    }

    public final void setTitle(String title) {
        Intrinsics.h(title, "title");
        TextView textView = this.tvTitle;
        if (textView != null) {
            textView.setText(title);
        }
    }

    public final void upDateState(int state) {
        final Function0 function0 = this.changeListener;
        removeCallbacks(new Runnable() { // from class: com.tn.lib.view.j
            @Override // java.lang.Runnable
            public final void run() {
                JoinAnimationView.h(function0);
            }
        });
        this.currentState = state;
        if (state == 1) {
            TextView textView = this.tvTitle;
            if (textView != null) {
                textView.setVisibility(0);
            }
            ImageView imageView = this.ivLoading;
            if (imageView != null) {
                imageView.setVisibility(4);
                return;
            }
            return;
        }
        if (state != 2) {
            if (state != 3) {
                return;
            }
            postDelayed(this.runnable, 1000L);
            f(R$mipmap.join_right);
            return;
        }
        ImageView imageView2 = this.ivLoading;
        if (imageView2 != null) {
            imageView2.setVisibility(0);
        }
        TextView textView2 = this.tvTitle;
        if (textView2 != null) {
            textView2.setVisibility(4);
        }
        f(R$mipmap.loading_2_red);
    }
}
