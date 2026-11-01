package com.transsion.baseui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bJ\u001f\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0015\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\r¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001b\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u001cR\u0016\u0010\u001f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001cR\u0016\u0010\u0016\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010%\u001a\u0004\u0018\u00010\"8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b#\u0010$R\u0016\u0010)\u001a\u0004\u0018\u00010&8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b'\u0010(¨\u0006*"}, d2 = {"Lcom/transsion/baseui/widget/OperateScrollableHost;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "orientation", "", FrameworkConstants.GLOBAL_DATA_KEY_DELTA, "", "a", "(IF)Z", "Landroid/view/MotionEvent;", "e", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Landroid/view/MotionEvent;)V", "interceptAll", "interceptAllEvent", "(Z)V", "onInterceptTouchEvent", "(Landroid/view/MotionEvent;)Z", "I", "touchSlop", "F", "initialX", "c", "initialY", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "Landroidx/viewpager2/widget/ViewPager2;", "getParentViewPager", "()Landroidx/viewpager2/widget/ViewPager2;", "parentViewPager", "Landroid/view/View;", "getChild", "()Landroid/view/View;", "child", "BaseUI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class OperateScrollableHost extends FrameLayout {
    public static final int $stable = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private int touchSlop;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private float initialX;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private float initialY;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private boolean interceptAllEvent;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OperateScrollableHost(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        this.touchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OperateScrollableHost(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        this.touchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }

    private final boolean a(int orientation, float delta) {
        if (this.interceptAllEvent) {
            return true;
        }
        int i11 = -((int) Math.signum(delta));
        if (orientation == 0) {
            View child = getChild();
            if (child != null) {
                return child.canScrollHorizontally(i11);
            }
            return false;
        }
        if (orientation != 1) {
            throw new IllegalArgumentException();
        }
        View child2 = getChild();
        if (child2 != null) {
            return child2.canScrollVertically(i11);
        }
        return false;
    }

    private final void b(MotionEvent e11) {
        ViewPager2 parentViewPager = getParentViewPager();
        if (parentViewPager != null) {
            int orientation = parentViewPager.getOrientation();
            if (a(orientation, -1.0f) || a(orientation, 1.0f)) {
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
                        } else {
                            getParent().requestDisallowInterceptTouchEvent(true);
                        }
                    }
                }
            }
        }
    }

    private final View getChild() {
        if (getChildCount() > 0) {
            return getChildAt(0);
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x000d, code lost:
    
        r0 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final ViewPager2 getParentViewPager() {
        Object parent = getParent();
        if (parent instanceof View) {
            View view = (View) parent;
            while (view != null && !(view instanceof ViewPager2)) {
                Object parent2 = view.getParent();
                view = parent2 instanceof View ? (View) parent2 : null;
            }
            if (view instanceof ViewPager2) {
                return (ViewPager2) view;
            }
            return null;
        }
    }

    public final void interceptAllEvent(boolean interceptAll) {
        this.interceptAllEvent = interceptAll;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent e11) {
        Intrinsics.h(e11, "e");
        b(e11);
        return super.onInterceptTouchEvent(e11);
    }
}
