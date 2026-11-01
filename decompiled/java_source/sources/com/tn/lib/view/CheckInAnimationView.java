package com.tn.lib.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.integration.webp.decoder.WebpDrawable;
import com.bumptech.glide.integration.webp.decoder.WebpDrawableTransformation;
import com.bumptech.glide.load.resource.bitmap.CenterInside;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$drawable;
import com.tn.lib.widget.R$id;
import com.tn.lib.widget.R$layout;
import com.tn.lib.widget.R$mipmap;
import com.tn.lib.widget.R$string;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0016\u0018\u0000 !2\u00020\u0001:\u0001\u0010B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\"\u0010 \u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010\u000e¨\u0006\""}, d2 = {"Lcom/tn/lib/view/CheckInAnimationView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "initView", "()V", "", "state", "upDateState", "(I)V", "Landroid/widget/TextView;", "a", "Landroid/widget/TextView;", "tvTitle", "Landroid/widget/ImageView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/widget/ImageView;", "ivLoading", "Landroidx/constraintlayout/widget/ConstraintLayout;", "c", "Landroidx/constraintlayout/widget/ConstraintLayout;", "rootView", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", "getCurrentState", "()I", "setCurrentState", "currentState", "Companion", "UI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public class CheckInAnimationView extends FrameLayout {
    public static final int BUTTON_STATE_EXIT_ING = 4;
    public static final int BUTTON_STATE_JOINED = 3;
    public static final int BUTTON_STATE_JOIN_ING = 2;
    public static final int BUTTON_STATE_NOT_TO_JOIN = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private TextView tvTitle;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private ImageView ivLoading;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private ConstraintLayout rootView;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private int currentState;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CheckInAnimationView(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.h(context, "context");
        Intrinsics.h(attrs, "attrs");
        this.currentState = 2;
        initView();
    }

    public final int getCurrentState() {
        return this.currentState;
    }

    public void initView() {
        LayoutInflater.from(getContext()).inflate(R$layout.view_check_in_layout, this);
        this.tvTitle = (TextView) findViewById(R$id.tvTitle);
        this.ivLoading = (ImageView) findViewById(R$id.ivLoading);
        this.rootView = (ConstraintLayout) findViewById(R$id.rootView);
        TextView textView = this.tvTitle;
        if (textView != null) {
            textView.setVisibility(8);
        }
        if (this.ivLoading != null) {
            CenterInside centerInside = new CenterInside();
            RequestBuilder requestBuilderOptionalTransform = Glide.with(getContext().getApplicationContext()).load2(Integer.valueOf(R$mipmap.loading_1_whit)).optionalTransform(centerInside).optionalTransform(WebpDrawable.class, new WebpDrawableTransformation(centerInside));
            ImageView imageView = this.ivLoading;
            Intrinsics.e(imageView);
            requestBuilderOptionalTransform.into(imageView);
        }
    }

    public final void setCurrentState(int i11) {
        this.currentState = i11;
    }

    public void upDateState(int state) {
        this.currentState = state;
        if (state == 1) {
            TextView textView = this.tvTitle;
            if (textView != null) {
                textView.setVisibility(0);
            }
            TextView textView2 = this.tvTitle;
            if (textView2 != null) {
                textView2.setText(getResources().getString(R$string.Join));
            }
            TextView textView3 = this.tvTitle;
            if (textView3 != null) {
                textView3.setTextColor(getResources().getColor(R$color.white));
            }
            ImageView imageView = this.ivLoading;
            if (imageView != null) {
                imageView.setVisibility(8);
            }
            ConstraintLayout constraintLayout = this.rootView;
            if (constraintLayout != null) {
                constraintLayout.setBackgroundResource(R$drawable.libui_join_1);
                return;
            }
            return;
        }
        if (state == 2) {
            TextView textView4 = this.tvTitle;
            if (textView4 != null) {
                textView4.setVisibility(8);
            }
            ImageView imageView2 = this.ivLoading;
            if (imageView2 != null) {
                imageView2.setVisibility(0);
            }
            ConstraintLayout constraintLayout2 = this.rootView;
            if (constraintLayout2 != null) {
                constraintLayout2.setBackgroundResource(R$drawable.libui_join_1);
                return;
            }
            return;
        }
        if (state != 3) {
            if (state != 4) {
                return;
            }
            TextView textView5 = this.tvTitle;
            if (textView5 != null) {
                textView5.setVisibility(8);
            }
            ImageView imageView3 = this.ivLoading;
            if (imageView3 != null) {
                imageView3.setVisibility(0);
            }
            ConstraintLayout constraintLayout3 = this.rootView;
            if (constraintLayout3 != null) {
                constraintLayout3.setBackgroundResource(R$drawable.libui_join_2);
                return;
            }
            return;
        }
        TextView textView6 = this.tvTitle;
        if (textView6 != null) {
            textView6.setVisibility(0);
        }
        TextView textView7 = this.tvTitle;
        if (textView7 != null) {
            textView7.setText(getResources().getString(R$string.Joined));
        }
        TextView textView8 = this.tvTitle;
        if (textView8 != null) {
            textView8.setTextColor(getResources().getColor(R$color.white));
        }
        ImageView imageView4 = this.ivLoading;
        if (imageView4 != null) {
            imageView4.setVisibility(8);
        }
        ConstraintLayout constraintLayout4 = this.rootView;
        if (constraintLayout4 != null) {
            constraintLayout4.setBackgroundResource(R$drawable.libui_join_2);
        }
    }
}
