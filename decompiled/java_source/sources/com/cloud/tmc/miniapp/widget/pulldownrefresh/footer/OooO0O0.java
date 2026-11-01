package com.cloud.tmc.miniapp.widget.pulldownrefresh.footer;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO;
import com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOOO;
import com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.MiniRefreshState;
import com.cloud.tmc.miniapp.widget.pulldownrefresh.internal.OooO0OO;

/* JADX INFO: loaded from: classes3.dex */
public class OooO0O0 extends OooO0OO<OooO0O0> implements OooO {
    public String OooOOo;
    public String OooOOo0;
    public String OooOOoo;
    public boolean OooOo;
    public String OooOo0;
    public String OooOo00;
    public String OooOo0O;
    public String OooOo0o;
    public boolean OooOoO0;

    public static /* synthetic */ class OooO00o {
        public static final /* synthetic */ int[] OooO00o;

        static {
            int[] iArr = new int[MiniRefreshState.values().length];
            OooO00o = iArr;
            try {
                iArr[MiniRefreshState.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                OooO00o[MiniRefreshState.PULL_UP_TO_LOAD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                OooO00o[MiniRefreshState.LOADING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                OooO00o[MiniRefreshState.LOAD_RELEASED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                OooO00o[MiniRefreshState.RELEASE_TO_LOAD.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                OooO00o[MiniRefreshState.REFRESHING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public OooO0O0(Context context, AttributeSet attributeSet) {
        super(context, null, 0);
        this.OooOo = false;
        this.OooOoO0 = true;
        View.inflate(context, R.layout.layout_classics_footer, this);
        ImageView imageView = (ImageView) findViewById(R.id.srl_classics_arrow);
        this.OooO0o0 = imageView;
        ImageView imageView2 = (ImageView) findViewById(R.id.srl_classics_progress);
        this.OooO0o = imageView2;
        this.OooO0Oo = (TextView) findViewById(R.id.srl_classics_title);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, R.styleable.MiniClassicsFooter);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) imageView2.getLayoutParams();
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.MiniClassicsFooter_srlDrawableMarginRight, layoutParams2.rightMargin);
        layoutParams2.rightMargin = dimensionPixelSize;
        layoutParams.rightMargin = dimensionPixelSize;
        layoutParams.width = typedArrayObtainStyledAttributes.getLayoutDimension(R.styleable.MiniClassicsFooter_srlDrawableArrowSize, layoutParams.width);
        layoutParams.height = typedArrayObtainStyledAttributes.getLayoutDimension(R.styleable.MiniClassicsFooter_srlDrawableArrowSize, layoutParams.height);
        layoutParams2.width = typedArrayObtainStyledAttributes.getLayoutDimension(R.styleable.MiniClassicsFooter_srlDrawableProgressSize, layoutParams2.width);
        layoutParams2.height = typedArrayObtainStyledAttributes.getLayoutDimension(R.styleable.MiniClassicsFooter_srlDrawableProgressSize, layoutParams2.height);
        layoutParams.width = typedArrayObtainStyledAttributes.getLayoutDimension(R.styleable.MiniClassicsFooter_srlDrawableSize, layoutParams.width);
        layoutParams.height = typedArrayObtainStyledAttributes.getLayoutDimension(R.styleable.MiniClassicsFooter_srlDrawableSize, layoutParams.height);
        layoutParams2.width = typedArrayObtainStyledAttributes.getLayoutDimension(R.styleable.MiniClassicsFooter_srlDrawableSize, layoutParams2.width);
        layoutParams2.height = typedArrayObtainStyledAttributes.getLayoutDimension(R.styleable.MiniClassicsFooter_srlDrawableSize, layoutParams2.height);
        this.OooOOO0 = typedArrayObtainStyledAttributes.getInt(R.styleable.MiniClassicsFooter_srlFinishDuration, this.OooOOO0);
        this.OooO0O0 = com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0.OooO0oo[typedArrayObtainStyledAttributes.getInt(R.styleable.MiniClassicsFooter_srlClassicsSpinnerStyle, this.OooO0O0.OooO00o)];
        this.OooOoO0 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.MiniClassicsFooter_srlEnableArrowView, this.OooOoO0);
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.MiniClassicsFooter_srlDrawableArrow)) {
            this.OooO0o0.setImageDrawable(typedArrayObtainStyledAttributes.getDrawable(R.styleable.MiniClassicsFooter_srlDrawableArrow));
        } else if (this.OooO0o0.getDrawable() == null) {
            com.cloud.tmc.miniapp.widget.pulldownrefresh.internal.OooO00o oooO00o = new com.cloud.tmc.miniapp.widget.pulldownrefresh.internal.OooO00o();
            this.OooO0oo = oooO00o;
            oooO00o.OooO00o(-10066330);
            this.OooO0o0.setImageDrawable(this.OooO0oo);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.MiniClassicsFooter_srlDrawableProgress)) {
            this.OooO0o.setImageDrawable(typedArrayObtainStyledAttributes.getDrawable(R.styleable.MiniClassicsFooter_srlDrawableProgress));
        } else if (this.OooO0o.getDrawable() == null) {
            com.cloud.tmc.miniapp.widget.pulldownrefresh.internal.OooO oooO = new com.cloud.tmc.miniapp.widget.pulldownrefresh.internal.OooO();
            this.OooO = oooO;
            oooO.OooO00o(-10066330);
            this.OooO0o.setImageDrawable(this.OooO);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.MiniClassicsFooter_srlTextSizeTitle)) {
            this.OooO0Oo.setTextSize(0, typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.MiniClassicsFooter_srlTextSizeTitle, com.cloud.tmc.miniapp.widget.pulldownrefresh.util.OooO0O0.OooO00o(16.0f)));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.MiniClassicsFooter_srlPrimaryColor)) {
            OooO0O0(typedArrayObtainStyledAttributes.getColor(R.styleable.MiniClassicsFooter_srlPrimaryColor, 0));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.MiniClassicsFooter_srlAccentColor)) {
            OooO00o(typedArrayObtainStyledAttributes.getColor(R.styleable.MiniClassicsFooter_srlAccentColor, 0));
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.MiniClassicsFooter_srlTextPulling)) {
            this.OooOOo0 = typedArrayObtainStyledAttributes.getString(R.styleable.MiniClassicsFooter_srlTextPulling);
        } else {
            this.OooOOo0 = context.getString(R.string.srl_footer_pulling);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.MiniClassicsFooter_srlTextRelease)) {
            this.OooOOo = typedArrayObtainStyledAttributes.getString(R.styleable.MiniClassicsFooter_srlTextRelease);
        } else {
            this.OooOOo = context.getString(R.string.srl_footer_release);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.MiniClassicsFooter_srlTextLoading)) {
            this.OooOOoo = typedArrayObtainStyledAttributes.getString(R.styleable.MiniClassicsFooter_srlTextLoading);
        } else {
            this.OooOOoo = context.getString(R.string.srl_footer_loading);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.MiniClassicsFooter_srlTextRefreshing)) {
            this.OooOo00 = typedArrayObtainStyledAttributes.getString(R.styleable.MiniClassicsFooter_srlTextRefreshing);
        } else {
            this.OooOo00 = context.getString(R.string.srl_footer_refreshing);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.MiniClassicsFooter_srlTextFinish)) {
            this.OooOo0 = typedArrayObtainStyledAttributes.getString(R.styleable.MiniClassicsFooter_srlTextFinish);
        } else {
            this.OooOo0 = context.getString(R.string.srl_footer_finish);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.MiniClassicsFooter_srlTextFailed)) {
            this.OooOo0O = typedArrayObtainStyledAttributes.getString(R.styleable.MiniClassicsFooter_srlTextFailed);
        } else {
            this.OooOo0O = context.getString(R.string.srl_footer_failed);
        }
        if (typedArrayObtainStyledAttributes.hasValue(R.styleable.MiniClassicsFooter_srlTextNothing)) {
            this.OooOo0o = typedArrayObtainStyledAttributes.getString(R.styleable.MiniClassicsFooter_srlTextNothing);
        } else {
            this.OooOo0o = context.getString(R.string.srl_footer_nothing);
        }
        typedArrayObtainStyledAttributes.recycle();
        imageView2.animate().setInterpolator(null);
        this.OooO0o0.setVisibility(this.OooOoO0 ? 0 : 8);
        this.OooO0Oo.setText(isInEditMode() ? this.OooOOoo : this.OooOOo0);
        if (isInEditMode()) {
            imageView.setVisibility(8);
        } else {
            imageView2.setVisibility(8);
        }
    }

    @Override // com.cloud.tmc.miniapp.widget.pulldownrefresh.internal.OooO0OO, com.cloud.tmc.miniapp.widget.pulldownrefresh.internal.OooO0O0, com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O
    public int OooO00o(@NonNull OooOOO oooOOO, boolean z10) {
        super.OooO00o(oooOOO, z10);
        if (this.OooOo) {
            return 0;
        }
        this.OooO0Oo.setText(z10 ? this.OooOo0 : this.OooOo0O);
        return this.OooOOO0;
    }

    @Override // com.cloud.tmc.miniapp.widget.pulldownrefresh.internal.OooO0O0, com.cloud.tmc.miniapp.widget.pulldownrefresh.listener.OooO0o
    public void OooO00o(@NonNull OooOOO oooOOO, @NonNull MiniRefreshState miniRefreshState, @NonNull MiniRefreshState miniRefreshState2) {
        ImageView imageView = this.OooO0o0;
        if (this.OooOo) {
            return;
        }
        switch (OooO00o.OooO00o[miniRefreshState2.ordinal()]) {
            case 1:
                if (this.OooOoO0) {
                    imageView.setVisibility(0);
                }
                this.OooO0Oo.setText(this.OooOOo0);
                if (this.OooOoO0) {
                    imageView.animate().rotation(180.0f);
                }
                break;
            case 2:
                this.OooO0Oo.setText(this.OooOOo0);
                if (this.OooOoO0) {
                    imageView.animate().rotation(180.0f);
                }
                break;
            case 3:
            case 4:
                this.OooO0Oo.setText(this.OooOOoo);
                if (this.OooOoO0) {
                    imageView.setVisibility(8);
                }
                break;
            case 5:
                this.OooO0Oo.setText(this.OooOOo);
                if (this.OooOoO0) {
                    imageView.animate().rotation(0.0f);
                }
                break;
            case 6:
                this.OooO0Oo.setText(this.OooOo00);
                if (this.OooOoO0) {
                    imageView.setVisibility(8);
                }
                break;
        }
    }

    @Override // com.cloud.tmc.miniapp.widget.pulldownrefresh.internal.OooO0O0, com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooO
    public boolean OooO00o(boolean z10) {
        if (this.OooOo == z10) {
            return true;
        }
        this.OooOo = z10;
        ImageView imageView = this.OooO0o0;
        if (z10) {
            this.OooO0Oo.setText(this.OooOo0o);
            if (!this.OooOoO0) {
                return true;
            }
            imageView.setVisibility(8);
            return true;
        }
        this.OooO0Oo.setText(this.OooOOo0);
        if (!this.OooOoO0) {
            return true;
        }
        imageView.setVisibility(0);
        return true;
    }

    @Override // com.cloud.tmc.miniapp.widget.pulldownrefresh.internal.OooO0OO, com.cloud.tmc.miniapp.widget.pulldownrefresh.internal.OooO0O0, com.cloud.tmc.miniapp.widget.pulldownrefresh.api.OooOO0O
    @Deprecated
    public void setPrimaryColors(int... iArr) {
        if (this.OooO0O0 == com.cloud.tmc.miniapp.widget.pulldownrefresh.constant.OooO0O0.OooO0o0) {
            super.setPrimaryColors(iArr);
        }
    }
}
