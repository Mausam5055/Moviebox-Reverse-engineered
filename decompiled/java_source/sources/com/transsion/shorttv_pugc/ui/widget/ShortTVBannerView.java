package com.transsion.shorttv_pugc.ui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.to.aboomy.pager2banner.Banner;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\f\u0018\u00002\u00020\u0001B\u0013\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001d\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB%\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u0018\u001a\u00020\u000f2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0012H\u0016¢\u0006\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001e\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u001dR\u0016\u0010\u001f\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u001d¨\u0006 "}, d2 = {"Lcom/transsion/shorttv_pugc/ui/widget/ShortTVBannerView;", "Lcom/to/aboomy/pager2banner/Banner;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "orientation", "", FrameworkConstants.GLOBAL_DATA_KEY_DELTA, "", "v", "(IF)Z", "Landroid/view/MotionEvent;", "e", "", "w", "(Landroid/view/MotionEvent;)V", "ev", "onInterceptTouchEvent", "(Landroid/view/MotionEvent;)Z", TmcStartParams.KEY_URL_SHORT, "I", "touchSlop", "F", "initialX", "initialY", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ShortTVBannerView extends Banner {

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private int touchSlop;

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private float initialX;

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private float initialY;

    public ShortTVBannerView(Context context) {
        super(context);
        this.touchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }

    public ShortTVBannerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.touchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }

    public ShortTVBannerView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.touchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }

    private final boolean v(int orientation, float delta) {
        int i11 = -((int) Math.signum(delta));
        if (orientation == 0) {
            return canScrollHorizontally(i11);
        }
        if (orientation == 1) {
            return canScrollVertically(i11);
        }
        throw new IllegalArgumentException();
    }

    private final void w(MotionEvent e11) {
        int orientation = getViewPager2().getOrientation();
        if (e11.getAction() == 0) {
            this.initialX = e11.getX();
            this.initialY = e11.getY();
            getParent().requestDisallowInterceptTouchEvent(true);
            return;
        }
        if (e11.getAction() == 2) {
            float x10 = e11.getX() - this.initialX;
            float y10 = e11.getY() - this.initialY;
            boolean z10 = orientation == 0;
            float fAbs = Math.abs(x10) * (z10 ? 0.5f : 1.0f);
            float fAbs2 = Math.abs(y10) * (z10 ? 1.0f : 0.5f);
            int i11 = this.touchSlop;
            if (fAbs > i11 || fAbs2 > i11) {
                if (z10 == (fAbs2 > fAbs)) {
                    getParent().requestDisallowInterceptTouchEvent(false);
                    return;
                }
                if (!z10) {
                    x10 = y10;
                }
                if (v(orientation, x10)) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                } else {
                    getParent().requestDisallowInterceptTouchEvent(false);
                }
            }
        }
    }

    @Override // com.to.aboomy.pager2banner.Banner, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent ev2) {
        if (getCurrentPager() == 0 && getChildCount() == 0) {
            return false;
        }
        if (ev2 != null) {
            w(ev2);
        }
        return super.onInterceptTouchEvent(ev2);
    }
}
