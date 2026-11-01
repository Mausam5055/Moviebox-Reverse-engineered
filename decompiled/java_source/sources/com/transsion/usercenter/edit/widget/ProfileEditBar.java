package com.transsion.usercenter.edit.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.R$styleable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u0010\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u0010\u0010\u000fJ\r\u0010\u0011\u001a\u00020\u000b¢\u0006\u0004\b\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\u000b¢\u0006\u0004\b\u0013\u0010\u0012J\r\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0006¢\u0006\u0004\b\u0018\u0010\u0019J\u0015\u0010\u001c\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001c\u0010\u001dR\u0018\u0010!\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0018\u0010'\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010$R\u0018\u0010+\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0018\u0010/\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.¨\u00060"}, d2 = {"Lcom/transsion/usercenter/edit/widget/ProfileEditBar;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "defStyleRes", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "", MimeTypes.BASE_TYPE_TEXT, "", "setBtnLeft", "(Ljava/lang/String;)V", "setBtnRight", "getBtnTextValue", "()Ljava/lang/String;", "getSetValue", "", "isEmpty", "()Z", "resId", "setRightIcon", "(I)V", "Landroid/view/View$OnClickListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setClickListener", "(Landroid/view/View$OnClickListener;)V", "Landroid/widget/RelativeLayout;", "a", "Landroid/widget/RelativeLayout;", "rlLayout", "Landroid/widget/TextView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Landroid/widget/TextView;", "tvLeft", "c", "tvRight", "Landroid/widget/ImageView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Landroid/widget/ImageView;", "ivMore", "Landroid/view/View;", "e", "Landroid/view/View;", "lineView", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ProfileEditBar extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private RelativeLayout rlLayout;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private TextView tvLeft;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private TextView tvRight;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private ImageView ivMore;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private View lineView;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ProfileEditBar(Context context) {
        this(context, null, 0, 0, 14, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ProfileEditBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ProfileEditBar(Context context, AttributeSet attributeSet, int i11) {
        this(context, attributeSet, i11, 0, 8, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ProfileEditBar(Context context, AttributeSet attributeSet, int i11, int i12) {
        int resourceId;
        TextView textView;
        int resourceId2;
        TextView textView2;
        super(context, attributeSet, i11, i12);
        Intrinsics.h(context, "context");
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.view_profile_edit_info_bar, this);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.profileEditView);
        Intrinsics.g(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        this.rlLayout = (RelativeLayout) viewInflate.findViewById(R$id.rlLayout);
        this.tvLeft = (TextView) viewInflate.findViewById(R$id.tv_profileleft);
        this.tvRight = (TextView) viewInflate.findViewById(R$id.tv_profileright);
        this.ivMore = (ImageView) viewInflate.findViewById(R$id.iv_profile_more);
        this.lineView = viewInflate.findViewById(R$id.view_line);
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.profileEditView_left_text) && (resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.profileEditView_left_text, 0)) > 0 && (textView2 = this.tvLeft) != null) {
            textView2.setText(resourceId2);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.profileEditView_right_text) && (resourceId = typedArrayObtainStyledAttributes.getResourceId(R$styleable.profileEditView_right_text, 0)) > 0 && (textView = this.tvRight) != null) {
            textView.setText(resourceId);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.profileEditView_right_icon)) {
            int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(R$styleable.profileEditView_right_icon, 0);
            if (resourceId3 <= 0) {
                ImageView imageView = this.ivMore;
                if (imageView != null) {
                    imageView.setVisibility(8);
                    return;
                }
                return;
            }
            ImageView imageView2 = this.ivMore;
            if (imageView2 != null) {
                imageView2.setVisibility(0);
            }
            ImageView imageView3 = this.ivMore;
            if (imageView3 != null) {
                imageView3.setImageResource(resourceId3);
            }
        }
    }

    public /* synthetic */ ProfileEditBar(Context context, AttributeSet attributeSet, int i11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i13 & 2) != 0 ? null : attributeSet, (i13 & 4) != 0 ? 0 : i11, (i13 & 8) != 0 ? 0 : i12);
    }

    public final String getBtnTextValue() {
        TextView textView = this.tvRight;
        return String.valueOf(textView != null ? textView.getText() : null);
    }

    public final String getSetValue() {
        TextView textView = this.tvRight;
        String strValueOf = String.valueOf(textView != null ? textView.getText() : null);
        return TextUtils.equals(strValueOf, getContext().getString(R$string.profile_empty_select)) ? "" : strValueOf;
    }

    public final boolean isEmpty() {
        TextView textView = this.tvRight;
        String strValueOf = String.valueOf(textView != null ? textView.getText() : null);
        return TextUtils.isEmpty(strValueOf) || TextUtils.equals(strValueOf, getContext().getString(R$string.profile_empty_select));
    }

    public final void setBtnLeft(String text) {
        Intrinsics.h(text, "text");
        TextView textView = this.tvLeft;
        if (textView != null) {
            textView.setText(text);
        }
    }

    public final void setBtnRight(String text) {
        Intrinsics.h(text, "text");
        if (TextUtils.isEmpty(text)) {
            TextView textView = this.tvRight;
            if (textView != null) {
                textView.setText(getContext().getString(R$string.profile_empty_select));
                return;
            }
            return;
        }
        TextView textView2 = this.tvRight;
        if (textView2 != null) {
            textView2.setText(text);
        }
    }

    public final void setClickListener(View.OnClickListener listener) {
        Intrinsics.h(listener, "listener");
        RelativeLayout relativeLayout = this.rlLayout;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(listener);
        }
    }

    public final void setRightIcon(int resId) {
        ImageView imageView = this.ivMore;
        if (imageView != null) {
            imageView.setImageResource(resId);
        }
    }
}
