package androidx.compose.foundation.lazy.layout;

import android.view.Choreographer;
import android.view.Display;
import android.view.View;
import androidx.compose.runtime.b2;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.http2.Http2Connection;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0001\u0018\u0000 %2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002&'B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0014\u0010\u000bJ\u000f\u0010\u0015\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0015\u0010\u000bJ\u000f\u0010\u0016\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0016\u0010\u000bR\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0017R\u001a\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00100\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001c\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u001c\u0010 \u001a\n \u001f*\u0004\u0018\u00010\u001e0\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010\"\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010\u001dR\u0016\u0010#\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$¨\u0006("}, d2 = {"Landroidx/compose/foundation/lazy/layout/AndroidPrefetchScheduler;", "Landroidx/compose/foundation/lazy/layout/i0;", "Landroidx/compose/runtime/b2;", "Ljava/lang/Runnable;", "Landroid/view/Choreographer$FrameCallback;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "<init>", "(Landroid/view/View;)V", "", "run", "()V", "", "frameTimeNanos", "doFrame", "(J)V", "Landroidx/compose/foundation/lazy/layout/g0;", "prefetchRequest", "schedulePrefetch", "(Landroidx/compose/foundation/lazy/layout/g0;)V", "onRemembered", "onForgotten", "onAbandoned", "Landroid/view/View;", "Landroidx/compose/runtime/collection/b;", "prefetchRequests", "Landroidx/compose/runtime/collection/b;", "", "prefetchScheduled", "Z", "Landroid/view/Choreographer;", "kotlin.jvm.PlatformType", "choreographer", "Landroid/view/Choreographer;", "isActive", "frameStartTimeNanos", "J", "Companion", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class AndroidPrefetchScheduler implements i0, b2, Runnable, Choreographer.FrameCallback {
    private static long frameIntervalNs;
    private long frameStartTimeNanos;
    private boolean isActive;
    private boolean prefetchScheduled;
    private final View view;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;
    private final androidx.compose.runtime.collection.b prefetchRequests = new androidx.compose.runtime.collection.b(new g0[16], 0);
    private final Choreographer choreographer = Choreographer.getInstance();

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.layout.AndroidPrefetchScheduler$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code duplicated, block: B:10:0x0021  */
        public final void b(View view) {
            float refreshRate;
            if (AndroidPrefetchScheduler.frameIntervalNs == 0) {
                Display display = view.getDisplay();
                if (view.isInEditMode() || display == null) {
                    refreshRate = 60.0f;
                } else {
                    refreshRate = display.getRefreshRate();
                    if (refreshRate < 30.0f) {
                        refreshRate = 60.0f;
                    }
                }
                AndroidPrefetchScheduler.frameIntervalNs = (long) (Http2Connection.DEGRADED_PONG_TIMEOUT_NS / refreshRate);
            }
        }
    }

    public static final class b implements h0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f2954a;

        public b(long j11) {
            this.f2954a = j11;
        }

        @Override // androidx.compose.foundation.lazy.layout.h0
        public long a() {
            return Math.max(0L, this.f2954a - System.nanoTime());
        }
    }

    public AndroidPrefetchScheduler(View view) {
        this.view = view;
        INSTANCE.b(view);
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long frameTimeNanos) {
        if (this.isActive) {
            this.frameStartTimeNanos = frameTimeNanos;
            this.view.post(this);
        }
    }

    @Override // androidx.compose.runtime.b2
    public void onAbandoned() {
    }

    @Override // androidx.compose.runtime.b2
    public void onForgotten() {
        this.isActive = false;
        this.view.removeCallbacks(this);
        this.choreographer.removeFrameCallback(this);
    }

    @Override // androidx.compose.runtime.b2
    public void onRemembered() {
        this.isActive = true;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.prefetchRequests.p() || !this.prefetchScheduled || !this.isActive || this.view.getWindowVisibility() != 0) {
            this.prefetchScheduled = false;
            return;
        }
        b bVar = new b(this.frameStartTimeNanos + frameIntervalNs);
        boolean z10 = false;
        while (this.prefetchRequests.q() && !z10) {
            if (bVar.a() <= 0 || ((g0) this.prefetchRequests.m()[0]).b(bVar)) {
                z10 = true;
            } else {
                this.prefetchRequests.v(0);
            }
        }
        if (z10) {
            this.choreographer.postFrameCallback(this);
        } else {
            this.prefetchScheduled = false;
        }
    }

    @Override // androidx.compose.foundation.lazy.layout.i0
    public void schedulePrefetch(g0 prefetchRequest) {
        this.prefetchRequests.b(prefetchRequest);
        if (this.prefetchScheduled) {
            return;
        }
        this.prefetchScheduled = true;
        this.view.post(this);
    }
}
