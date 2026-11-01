package com.cloud.tmc.integration.utils;

import android.graphics.Point;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.mbridge.msdk.MBridgeConstans;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/integration/utils/TouchEventUtils;", "", "()V", "TAG", "", "simulateTouchEvent", "", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/view/View;", "points", "", "Landroid/graphics/Point;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class TouchEventUtils {
    public static final TouchEventUtils INSTANCE = new TouchEventUtils();
    private static final String TAG = "TouchEventUtils";

    private TouchEventUtils() {
    }

    @JvmStatic
    public static final void simulateTouchEvent(View view, List<Point> points) {
        String str;
        String str2;
        String str3;
        String str4;
        View view2;
        View view3 = view;
        Intrinsics.h(view3, "view");
        Intrinsics.h(points, "points");
        long jUptimeMillis = SystemClock.uptimeMillis();
        Iterator it = points.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            Point point = (Point) next;
            if (i11 == 0) {
                long j11 = jUptimeMillis + ((long) 50);
                str4 = " eventTime: ";
                boolean zDispatchTouchEvent = view3.dispatchTouchEvent(MotionEvent.obtain(jUptimeMillis, j11, 0, point.x, point.y, 0));
                int i13 = point.x;
                int i14 = point.y;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("simulateTouchEvent: ACTION_DOWN ");
                sb2.append(zDispatchTouchEvent);
                str2 = " x: ";
                sb2.append(str2);
                sb2.append(i13);
                str3 = " y: ";
                sb2.append(str3);
                sb2.append(i14);
                sb2.append(" downTime: ");
                sb2.append(jUptimeMillis);
                sb2.append(str4);
                sb2.append(j11);
                String string = sb2.toString();
                str = TAG;
                TmcLogger.d(str, string);
            } else {
                str = TAG;
                str2 = " x: ";
                str3 = " y: ";
                str4 = " eventTime: ";
            }
            if (i11 != 0 && i11 != points.size() - 1) {
                long j12 = ((long) (i11 * 50)) + jUptimeMillis;
                long j13 = ((long) (i12 * 50)) + jUptimeMillis;
                TmcLogger.d(str, "simulateTouchEvent: ACTION_MOVE " + view3.dispatchTouchEvent(MotionEvent.obtain(j12, j13, 2, point.x, point.y, 0)) + str2 + point.x + str3 + point.y + "  downTime: " + j12 + str4 + j13);
            }
            if (i11 == points.size() - 1) {
                long j14 = jUptimeMillis + ((long) (i11 * 50));
                long j15 = jUptimeMillis + ((long) (i12 * 50));
                view2 = view;
                TmcLogger.d(str, "simulateTouchEvent: ACTION_UP " + view2.dispatchTouchEvent(MotionEvent.obtain(j14, j15, 1, point.x, point.y, 0)) + str2 + point.x + str3 + point.y + "  downTime: " + j14 + str4 + j15);
            } else {
                view2 = view;
            }
            view3 = view2;
            it = it;
            i11 = i12;
            jUptimeMillis = jUptimeMillis;
        }
    }
}
