package com.chad.library.adapter.base.viewholder;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Keep;
import androidx.core.content.b;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.g;
import androidx.recyclerview.widget.RecyclerView;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes.dex */
@Keep
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\r\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0017\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001b\u0010\b\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\u0007*\u00020\u0006H\u0017¢\u0006\u0004\b\b\u0010\tJ#\u0010\r\u001a\u00028\u0000\"\b\b\u0000\u0010\n*\u00020\u00022\b\b\u0001\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ%\u0010\u000f\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\n*\u00020\u00022\b\b\u0001\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000f\u0010\u000eJ\u001f\u0010\u0010\u001a\u0004\u0018\u00018\u0000\"\b\b\u0000\u0010\n*\u00020\u0002*\u00020\u000bH\u0016¢\u0006\u0004\b\u0010\u0010\u000eJ#\u0010\u0013\u001a\u00020\u00002\b\b\u0001\u0010\f\u001a\u00020\u000b2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J%\u0010\u0013\u001a\u0004\u0018\u00010\u00002\b\b\u0001\u0010\f\u001a\u00020\u000b2\b\b\u0001\u0010\u0015\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0013\u0010\u0016J#\u0010\u0018\u001a\u00020\u00002\b\b\u0001\u0010\f\u001a\u00020\u000b2\b\b\u0001\u0010\u0017\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0018\u0010\u0016J#\u0010\u001a\u001a\u00020\u00002\b\b\u0001\u0010\f\u001a\u00020\u000b2\b\b\u0001\u0010\u0019\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u001a\u0010\u0016J#\u0010\u001c\u001a\u00020\u00002\b\b\u0001\u0010\f\u001a\u00020\u000b2\b\b\u0001\u0010\u001b\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u001c\u0010\u0016J#\u0010\u001f\u001a\u00020\u00002\b\b\u0001\u0010\f\u001a\u00020\u000b2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016¢\u0006\u0004\b\u001f\u0010 J#\u0010#\u001a\u00020\u00002\b\b\u0001\u0010\f\u001a\u00020\u000b2\b\u0010\"\u001a\u0004\u0018\u00010!H\u0016¢\u0006\u0004\b#\u0010$J#\u0010%\u001a\u00020\u00002\b\b\u0001\u0010\f\u001a\u00020\u000b2\b\b\u0001\u0010\u0017\u001a\u00020\u000bH\u0016¢\u0006\u0004\b%\u0010\u0016J#\u0010'\u001a\u00020\u00002\b\b\u0001\u0010\f\u001a\u00020\u000b2\b\b\u0001\u0010&\u001a\u00020\u000bH\u0016¢\u0006\u0004\b'\u0010\u0016J!\u0010*\u001a\u00020\u00002\b\b\u0001\u0010\f\u001a\u00020\u000b2\u0006\u0010)\u001a\u00020(H\u0016¢\u0006\u0004\b*\u0010+J!\u0010-\u001a\u00020\u00002\b\b\u0001\u0010\f\u001a\u00020\u000b2\u0006\u0010,\u001a\u00020(H\u0016¢\u0006\u0004\b-\u0010+J!\u0010/\u001a\u00020\u00002\b\b\u0001\u0010\f\u001a\u00020\u000b2\u0006\u0010.\u001a\u00020(H\u0016¢\u0006\u0004\b/\u0010+R\u001a\u00101\u001a\b\u0012\u0004\u0012\u00020\u0002008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102¨\u00063"}, d2 = {"Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$b0;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "<init>", "(Landroid/view/View;)V", "Landroidx/databinding/ViewDataBinding;", "B", "getBinding", "()Landroidx/databinding/ViewDataBinding;", "T", "", NativeComponentConstants.KEY_COMPONENT_VIEW_ID, "getView", "(I)Landroid/view/View;", "getViewOrNull", "findView", "", AppMeasurementSdk.ConditionalUserProperty.VALUE, "setText", "(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "strId", "(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", TtmlNode.ATTR_TTS_COLOR, "setTextColor", "colorRes", "setTextColorRes", "imageResId", "setImageResource", "Landroid/graphics/drawable/Drawable;", "drawable", "setImageDrawable", "(ILandroid/graphics/drawable/Drawable;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Landroid/graphics/Bitmap;", "bitmap", "setImageBitmap", "(ILandroid/graphics/Bitmap;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "setBackgroundColor", "backgroundRes", "setBackgroundResource", "", "isVisible", "setVisible", "(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "isGone", "setGone", "isEnabled", "setEnabled", "Landroid/util/SparseArray;", "views", "Landroid/util/SparseArray;", "com.github.CymChad.brvah"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public class BaseViewHolder extends RecyclerView.b0 {
    private final SparseArray<View> views;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseViewHolder(View view) {
        super(view);
        Intrinsics.h(view, "view");
        this.views = new SparseArray<>();
    }

    public <T extends View> T findView(int i11) {
        return (T) this.itemView.findViewById(i11);
    }

    @Deprecated
    public <B extends ViewDataBinding> B getBinding() {
        g.c(this.itemView);
        return null;
    }

    public <T extends View> T getView(int viewId) {
        T t11 = (T) getViewOrNull(viewId);
        if (t11 != null) {
            return t11;
        }
        throw new IllegalStateException(("No view found with id " + viewId).toString());
    }

    public <T extends View> T getViewOrNull(int viewId) {
        T t11;
        T t12 = (T) this.views.get(viewId);
        if (t12 == null && (t11 = (T) this.itemView.findViewById(viewId)) != null) {
            this.views.put(viewId, t11);
            return t11;
        }
        if (t12 == null) {
            return null;
        }
        return t12;
    }

    public BaseViewHolder setBackgroundColor(int viewId, int color) {
        getView(viewId).setBackgroundColor(color);
        return this;
    }

    public BaseViewHolder setBackgroundResource(int viewId, int backgroundRes) {
        getView(viewId).setBackgroundResource(backgroundRes);
        return this;
    }

    public BaseViewHolder setEnabled(int viewId, boolean isEnabled) {
        getView(viewId).setEnabled(isEnabled);
        return this;
    }

    public BaseViewHolder setGone(int viewId, boolean isGone) {
        getView(viewId).setVisibility(isGone ? 8 : 0);
        return this;
    }

    public BaseViewHolder setImageBitmap(int viewId, Bitmap bitmap) {
        ((ImageView) getView(viewId)).setImageBitmap(bitmap);
        return this;
    }

    public BaseViewHolder setImageDrawable(int viewId, Drawable drawable) {
        ((ImageView) getView(viewId)).setImageDrawable(drawable);
        return this;
    }

    public BaseViewHolder setImageResource(int viewId, int imageResId) {
        ((ImageView) getView(viewId)).setImageResource(imageResId);
        return this;
    }

    public BaseViewHolder setText(int viewId, int strId) {
        ((TextView) getView(viewId)).setText(strId);
        return this;
    }

    public BaseViewHolder setText(int viewId, CharSequence value) {
        ((TextView) getView(viewId)).setText(value);
        return this;
    }

    public BaseViewHolder setTextColor(int viewId, int color) {
        ((TextView) getView(viewId)).setTextColor(color);
        return this;
    }

    public BaseViewHolder setTextColorRes(int viewId, int colorRes) {
        ((TextView) getView(viewId)).setTextColor(b.getColor(this.itemView.getContext(), colorRes));
        return this;
    }

    public BaseViewHolder setVisible(int viewId, boolean isVisible) {
        getView(viewId).setVisibility(isVisible ? 0 : 4);
        return this;
    }
}
