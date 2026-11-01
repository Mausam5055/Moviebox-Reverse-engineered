package com.hisavana.common.base;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import com.cloud.hisavana.sdk.api.view.AdCloseView;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.sdk.commonutil.R$id;
import com.cloud.sdk.commonutil.widget.TranCircleImageView;
import com.hisavana.common.bean.CommonViewBinder;
import com.hisavana.common.bean.TAdNativeInfo;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BaseNativeViewHolder {
    private View adBadgeView;
    private View adCloseView;
    protected View adDisclaimerView;
    private View attributionView;
    protected View choicesView;
    protected View iconView;
    protected View mediaView;
    protected View storeMarkView;
    private String tag;

    public void addContentView(View view) {
    }

    protected View createAdBadgeView(Context context, TAdNativeInfo tAdNativeInfo) {
        return null;
    }

    protected View createAdCloseView(Context context, TAdNativeInfo tAdNativeInfo) {
        if (context == null) {
            return null;
        }
        AdCloseView adCloseView = new AdCloseView(context);
        adCloseView.setId(R$id.native_close_view_id);
        adCloseView.setDisplayStyle(Constants.AdDisplayRule.UNIVERSAL, AdCloseView.CloseImageType.CLOSE);
        return adCloseView;
    }

    protected View createAdDisclaimerView(Context context, TAdNativeInfo tAdNativeInfo) {
        return null;
    }

    protected View createChoicesView(Context context, TAdNativeInfo tAdNativeInfo) {
        return null;
    }

    protected View createIconView(Context context) {
        return new TranCircleImageView(context);
    }

    protected View createMediaView(Context context, TAdNativeInfo tAdNativeInfo, ViewGroup viewGroup) {
        return new ImageView(context);
    }

    protected View createStoreMarkView(Context context, TAdNativeInfo tAdNativeInfo) {
        return null;
    }

    public void destroy() {
        removeView(this.iconView);
        removeView(this.choicesView);
        removeView(this.mediaView);
        removeView(this.storeMarkView);
        this.iconView = null;
        this.choicesView = null;
        this.mediaView = null;
        this.storeMarkView = null;
    }

    public final View getAdBadgeView(Context context, TAdNativeInfo tAdNativeInfo) {
        View view = this.adBadgeView;
        if (view == null) {
            this.adBadgeView = createAdBadgeView(context.getApplicationContext(), tAdNativeInfo);
        } else if (view.getParent() != null && (this.adBadgeView.getParent() instanceof ViewGroup)) {
            ((ViewGroup) this.adBadgeView.getParent()).removeView(this.adBadgeView);
        }
        return this.adBadgeView;
    }

    public final View getAdDisclaimerView(Context context, TAdNativeInfo tAdNativeInfo) {
        View view = this.adDisclaimerView;
        if (view == null) {
            this.adDisclaimerView = createAdDisclaimerView(context.getApplicationContext(), tAdNativeInfo);
        } else if (view.getParent() != null) {
            ((ViewGroup) this.adDisclaimerView.getParent()).removeView(this.adDisclaimerView);
        }
        return this.adDisclaimerView;
    }

    public final View getChoicesView(Context context, TAdNativeInfo tAdNativeInfo) {
        View view = this.choicesView;
        if (view == null) {
            this.choicesView = createChoicesView(context.getApplicationContext(), tAdNativeInfo);
        } else if (view.getParent() != null && (this.choicesView.getParent() instanceof ViewGroup)) {
            ((ViewGroup) this.choicesView.getParent()).removeView(this.choicesView);
        }
        return this.choicesView;
    }

    public final View getCloseView(Context context, TAdNativeInfo tAdNativeInfo) {
        View view = this.adCloseView;
        if (view == null) {
            this.adCloseView = createAdCloseView(context.getApplicationContext(), tAdNativeInfo);
        } else if (view.getParent() != null && (this.adCloseView.getParent() instanceof ViewGroup)) {
            ((ViewGroup) this.adCloseView.getParent()).removeView(this.adCloseView);
        }
        return this.adCloseView;
    }

    public View getContainer(TAdNativeInfo tAdNativeInfo, ViewGroup viewGroup) {
        return null;
    }

    public View getIconView(Context context) {
        View view = this.iconView;
        if (view == null) {
            this.iconView = createIconView(context.getApplicationContext());
        } else {
            removeView(view);
        }
        return this.iconView;
    }

    public View getMediaView(Context context, TAdNativeInfo tAdNativeInfo, ViewGroup viewGroup) {
        View view = this.mediaView;
        if (view == null) {
            this.mediaView = createMediaView(context.getApplicationContext(), tAdNativeInfo, viewGroup);
        } else {
            removeView(view);
        }
        return this.mediaView;
    }

    public final View getStoreMarkView(Context context, TAdNativeInfo tAdNativeInfo) {
        View view = this.storeMarkView;
        if (view == null) {
            this.storeMarkView = createStoreMarkView(context.getApplicationContext(), tAdNativeInfo);
        } else if (view.getParent() != null) {
            ((ViewGroup) this.storeMarkView.getParent()).removeView(this.storeMarkView);
        }
        return this.storeMarkView;
    }

    public String getTag() {
        return this.tag;
    }

    public boolean isCachedAdView() {
        return false;
    }

    public void removeAttributionView() {
        removePointView(this.attributionView);
    }

    public void removeChoiceView() {
        removePointView(this.choicesView);
    }

    public void removePointView(View view) {
        removeView(view);
    }

    protected void removeView(View view) {
        if (view == null) {
            return;
        }
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(view);
        }
    }

    public void setBinderLayoutId(CommonViewBinder commonViewBinder) {
    }

    public void setBodyView(View view) {
    }

    public void setCallToActionOtherView(View view) {
    }

    public void setCallToActionView(View view) {
    }

    public void setDomain(View view) {
    }

    public void setFeedback(View view) {
    }

    public void setHeadlineView(View view) {
    }

    public void setIconDrawable(Drawable drawable) {
        View view = this.iconView;
        if (view == null || !(view instanceof ImageView)) {
            return;
        }
        ((ImageView) view).setImageDrawable(drawable);
    }

    public void setIconView(View view) {
    }

    public void setMediaView(View view, ImageView.ScaleType scaleType) {
    }

    public void setNativeAd(TAdNativeInfo tAdNativeInfo) {
    }

    public void setPrice(View view) {
    }

    public void setSponsored(View view) {
    }

    public void setTag(String str) {
        this.tag = str;
    }
}
