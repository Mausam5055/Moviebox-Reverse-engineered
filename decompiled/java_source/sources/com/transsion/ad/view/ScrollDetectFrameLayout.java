package com.transsion.ad.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.wrapperad.view.secondfloor.CustomSwipeRefreshLayout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\r\u0018\u00002\u00020\u0001:\u0002\u0014#B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u001a\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u0019R\u0016\u0010\u001f\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010\"\u001a\u00020\u00068\u0002X\u0082D¢\u0006\u0006\n\u0004\b \u0010!¨\u0006$"}, d2 = {"Lcom/transsion/ad/view/ScrollDetectFrameLayout;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lcom/transsion/ad/view/ScrollDetectFrameLayout$a;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "setOnScrollListener", "(Lcom/transsion/ad/view/ScrollDetectFrameLayout$a;)V", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "dispatchTouchEvent", "(Landroid/view/MotionEvent;)Z", "a", "Lcom/transsion/ad/view/ScrollDetectFrameLayout$a;", "scrollListener", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "F", "lastX", "c", "lastY", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "isScrolling", "e", "I", "defaultMinMovie", "ScrollDirection", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ScrollDetectFrameLayout extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private a scrollListener;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private float lastX;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private float lastY;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private boolean isScrolling;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private final int defaultMinMovie;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/transsion/ad/view/ScrollDetectFrameLayout$ScrollDirection;", "", "<init>", "(Ljava/lang/String;I)V", CustomSwipeRefreshLayout.UP, CustomSwipeRefreshLayout.DOWN, "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum ScrollDirection {
        UP,
        DOWN;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

        public static EnumEntries<ScrollDirection> getEntries() {
            return $ENTRIES;
        }
    }

    public interface a {
        void a();

        void b();

        void c(float f11, float f12, ScrollDirection scrollDirection);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ScrollDetectFrameLayout(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ScrollDetectFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ScrollDetectFrameLayout(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.defaultMinMovie = 10;
    }

    public /* synthetic */ ScrollDetectFrameLayout(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent event) {
        a aVar;
        Integer numValueOf = event != null ? Integer.valueOf(event.getAction()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0) {
            this.lastX = event.getX();
            this.lastY = event.getY();
            this.isScrolling = false;
        } else if (numValueOf != null && numValueOf.intValue() == 2) {
            float x10 = event.getX();
            float y10 = event.getY();
            float f11 = x10 - this.lastX;
            float f12 = y10 - this.lastY;
            if (!this.isScrolling && Math.abs(f12) > this.defaultMinMovie) {
                this.isScrolling = true;
                a aVar2 = this.scrollListener;
                if (aVar2 != null) {
                    aVar2.b();
                }
            }
            if (this.isScrolling) {
                ScrollDirection scrollDirection = f12 > 0.0f ? ScrollDirection.DOWN : ScrollDirection.UP;
                a aVar3 = this.scrollListener;
                if (aVar3 != null) {
                    aVar3.c(f11, f12, scrollDirection);
                }
            }
            this.lastX = x10;
            this.lastY = y10;
        } else if ((numValueOf != null && numValueOf.intValue() == 1) || (numValueOf != null && numValueOf.intValue() == 3)) {
            if (this.isScrolling && (aVar = this.scrollListener) != null) {
                aVar.a();
            }
            this.isScrolling = false;
        }
        return super.dispatchTouchEvent(event);
    }

    public final void setOnScrollListener(a listener) {
        Intrinsics.h(listener, "listener");
        this.scrollListener = listener;
    }
}
