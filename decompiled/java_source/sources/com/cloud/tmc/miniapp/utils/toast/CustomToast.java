package com.cloud.tmc.miniapp.utils.toast;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.cloud.tmc.miniapp.utils.toast.config.IToast;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CustomToast implements IToast {
    private int mAnimationId;
    private int mDuration;
    private int mGravity;
    private float mHorizontalMargin;
    private TextView mMessageView;
    private ToastParams mToastParams;
    private float mVerticalMargin;
    private View mView;
    private int mXOffset;
    private int mYOffset;
    private long mShortDuration = 2000;
    private long mLongDuration = ToastStrategy.LONG_DURATION_TIMEOUT;

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToast
    public ImageView findIconView(View view) {
        return IToast.DefaultImpls.findIconView(this, view);
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToast
    public TextView findMessageView(View view) {
        return IToast.DefaultImpls.findMessageView(this, view);
    }

    public final int getAnimationId() {
        return this.mAnimationId;
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToast
    public int getDuration() {
        return this.mDuration;
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToast
    public int getGravity() {
        return this.mGravity;
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToast
    public float getHorizontalMargin() {
        return this.mHorizontalMargin;
    }

    public final long getLongDuration() {
        return this.mLongDuration;
    }

    public final long getShortDuration() {
        return this.mShortDuration;
    }

    public final ToastParams getToastParams() {
        return this.mToastParams;
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToast
    public float getVerticalMargin() {
        return this.mVerticalMargin;
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToast
    public View getView() {
        return this.mView;
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToast
    public int getXOffset() {
        return this.mXOffset;
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToast
    public int getYOffset() {
        return this.mYOffset;
    }

    public abstract boolean isShow();

    public final void setAnimationId(int i11) {
        this.mAnimationId = i11;
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToast
    public void setDuration(int i11) {
        this.mDuration = i11;
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToast
    public void setGravity(int i11, int i12, int i13) {
        this.mGravity = i11;
        this.mXOffset = i12;
        this.mYOffset = i13;
    }

    public final void setLongDuration(long j11) {
        this.mLongDuration = j11;
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToast
    public void setMargin(float f11, float f12) {
        this.mHorizontalMargin = f11;
        this.mVerticalMargin = f12;
    }

    public final void setShortDuration(long j11) {
        this.mShortDuration = j11;
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToast
    public void setText(int i11) {
        View view = this.mView;
        if (view != null) {
            setText(view.getResources().getText(i11));
        }
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToast
    public void setText(CharSequence charSequence) {
        TextView textView = this.mMessageView;
        if (textView == null) {
            return;
        }
        textView.setText(charSequence);
    }

    public final void setToastParams(ToastParams params) {
        Intrinsics.h(params, "params");
        this.mToastParams = params;
    }

    @Override // com.cloud.tmc.miniapp.utils.toast.config.IToast
    public void setView(View view) {
        this.mView = view;
        if (view == null) {
            this.mMessageView = null;
        } else {
            this.mMessageView = findMessageView(view);
        }
    }
}
