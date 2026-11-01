package com.vungle.ads.internal;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import androidx.core.view.ViewCompat;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import com.vungle.ads.internal.util.o;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class ImpressionTracker {
    private static final int MIN_VISIBILITY_PERCENTAGE = 1;
    private static final int VISIBILITY_THROTTLE_MILLIS = 100;
    private final Rect clipRect;
    private boolean isVisibilityScheduled;
    private final ViewTreeObserver.OnPreDrawListener onPreDrawListener;
    private boolean setViewTreeObserverSucceed;
    private final Map<View, c> trackedViews;
    private final Handler visibilityHandler;
    private final VisibilityRunnable visibilityRunnable;
    private WeakReference<ViewTreeObserver> weakViewTreeObserver;
    public static final a Companion = new a(null);
    private static final String TAG = ImpressionTracker.class.getSimpleName();

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\b\u0081\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0016R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/vungle/ads/internal/ImpressionTracker$VisibilityRunnable;", "Ljava/lang/Runnable;", "(Lcom/vungle/ads/internal/ImpressionTracker;)V", "invisibleViews", "Ljava/util/ArrayList;", "Landroid/view/View;", "visibleViews", "run", "", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public final class VisibilityRunnable implements Runnable {
        private final ArrayList<View> visibleViews = new ArrayList<>();
        private final ArrayList<View> invisibleViews = new ArrayList<>();

        public VisibilityRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b impressionListener;
            b impressionListener2;
            ImpressionTracker.this.isVisibilityScheduled = false;
            for (Map.Entry entry : ImpressionTracker.this.trackedViews.entrySet()) {
                View view = (View) entry.getKey();
                if (ImpressionTracker.this.isVisible(view, ((c) entry.getValue()).getMinViewablePercent())) {
                    this.visibleViews.add(view);
                } else {
                    this.invisibleViews.add(view);
                }
            }
            for (View view2 : this.visibleViews) {
                c cVar = (c) ImpressionTracker.this.trackedViews.get(view2);
                if (cVar != null && (impressionListener2 = cVar.getImpressionListener()) != null) {
                    impressionListener2.onImpression(view2);
                }
                ImpressionTracker impressionTracker = ImpressionTracker.this;
                Intrinsics.g(view2, "view");
                impressionTracker.removeView(view2);
            }
            this.visibleViews.clear();
            for (View view3 : this.invisibleViews) {
                c cVar2 = (c) ImpressionTracker.this.trackedViews.get(view3);
                if (cVar2 != null && (impressionListener = cVar2.getImpressionListener()) != null) {
                    impressionListener.onViewInvisible(view3);
                }
            }
            this.invisibleViews.clear();
            if (ImpressionTracker.this.trackedViews.isEmpty() || ImpressionTracker.this.setViewTreeObserverSucceed) {
                return;
            }
            ImpressionTracker.this.scheduleVisibilityCheck();
        }
    }

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public interface b {
        void onImpression(View view);

        void onViewInvisible(View view);
    }

    public static final class c {
        private b impressionListener;
        private int minViewablePercent;

        public final b getImpressionListener() {
            return this.impressionListener;
        }

        public final int getMinViewablePercent() {
            return this.minViewablePercent;
        }

        public final void setImpressionListener(b bVar) {
            this.impressionListener = bVar;
        }

        public final void setMinViewablePercent(int i11) {
            this.minViewablePercent = i11;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImpressionTracker(Context context) {
        this(context, new WeakHashMap(10), new Handler(Looper.getMainLooper()));
        Intrinsics.h(context, "context");
    }

    public ImpressionTracker(Context context, Map<View, c> trackedViews, Handler visibilityHandler) {
        Intrinsics.h(context, "context");
        Intrinsics.h(trackedViews, "trackedViews");
        Intrinsics.h(visibilityHandler, "visibilityHandler");
        this.trackedViews = trackedViews;
        this.visibilityHandler = visibilityHandler;
        this.clipRect = new Rect();
        this.visibilityRunnable = new VisibilityRunnable();
        this.onPreDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: com.vungle.ads.internal.d
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public final boolean onPreDraw() {
                return ImpressionTracker.m372_init_$lambda0(this.f60591a);
            }
        };
        this.weakViewTreeObserver = new WeakReference<>(null);
        this.setViewTreeObserverSucceed = setViewTreeObserver(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: _init_$lambda-0, reason: not valid java name */
    public static final boolean m372_init_$lambda0(ImpressionTracker this$0) {
        Intrinsics.h(this$0, "this$0");
        this$0.scheduleVisibilityCheck();
        return true;
    }

    public static /* synthetic */ void getOnPreDrawListener$annotations() {
    }

    private final View getTopView(Context context, View view) {
        View viewFindViewById = context instanceof Activity ? ((Activity) context).getWindow().getDecorView().findViewById(R.id.content) : null;
        if (viewFindViewById != null || view == null) {
            return viewFindViewById;
        }
        if (!ViewCompat.isAttachedToWindow(view)) {
            o.a aVar = o.Companion;
            String TAG2 = TAG;
            Intrinsics.g(TAG2, "TAG");
            aVar.w(TAG2, "Trying to call View#rootView() on an unattached View.");
        }
        View rootView = view.getRootView();
        if (rootView != null) {
            viewFindViewById = rootView.findViewById(R.id.content);
        }
        return viewFindViewById == null ? rootView : viewFindViewById;
    }

    public static /* synthetic */ void getWeakViewTreeObserver$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isVisible(View view, int i11) {
        if (view == null || view.getVisibility() != 0 || view.getParent() == null) {
            return false;
        }
        ViewParent parent = view.getParent();
        while (parent instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) parent;
            if (viewGroup.getVisibility() != 0) {
                o.Companion.w("ImpressionTracker", "Parent visibility is not visible: " + parent);
                return false;
            }
            parent = viewGroup.getParent();
        }
        if (!view.getGlobalVisibleRect(this.clipRect)) {
            return false;
        }
        long jHeight = ((long) this.clipRect.height()) * ((long) this.clipRect.width());
        long height = ((long) view.getHeight()) * ((long) view.getWidth());
        return height > 0 && ((long) 100) * jHeight >= ((long) i11) * height;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void scheduleVisibilityCheck() {
        if (this.isVisibilityScheduled) {
            return;
        }
        this.isVisibilityScheduled = true;
        this.visibilityHandler.postDelayed(this.visibilityRunnable, 100L);
    }

    private final boolean setViewTreeObserver(Context context, View view) {
        ViewTreeObserver viewTreeObserver = this.weakViewTreeObserver.get();
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            return true;
        }
        View topView = getTopView(context, view);
        if (topView == null) {
            o.a aVar = o.Companion;
            String TAG2 = TAG;
            Intrinsics.g(TAG2, "TAG");
            aVar.d(TAG2, "Unable to set ViewTreeObserver due to no available root view.");
            return false;
        }
        ViewTreeObserver viewTreeObserver2 = topView.getViewTreeObserver();
        if (viewTreeObserver2.isAlive()) {
            this.weakViewTreeObserver = new WeakReference<>(viewTreeObserver2);
            viewTreeObserver2.addOnPreDrawListener(this.onPreDrawListener);
            return true;
        }
        o.a aVar2 = o.Companion;
        String TAG3 = TAG;
        Intrinsics.g(TAG3, "TAG");
        aVar2.d(TAG3, "The root view tree observer was not alive");
        return false;
    }

    public final void addView(View view, b bVar) {
        Intrinsics.h(view, "view");
        this.setViewTreeObserverSucceed = setViewTreeObserver(view.getContext(), view);
        c cVar = this.trackedViews.get(view);
        if (cVar == null) {
            cVar = new c();
            this.trackedViews.put(view, cVar);
            scheduleVisibilityCheck();
        }
        cVar.setMinViewablePercent(1);
        cVar.setImpressionListener(bVar);
    }

    public final void clear() {
        this.trackedViews.clear();
        this.visibilityHandler.removeMessages(0);
        this.isVisibilityScheduled = false;
    }

    public final void destroy() {
        clear();
        ViewTreeObserver viewTreeObserver = this.weakViewTreeObserver.get();
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this.onPreDrawListener);
        }
        this.weakViewTreeObserver.clear();
    }

    public final ViewTreeObserver.OnPreDrawListener getOnPreDrawListener() {
        return this.onPreDrawListener;
    }

    public final WeakReference<ViewTreeObserver> getWeakViewTreeObserver() {
        return this.weakViewTreeObserver;
    }

    public final void removeView(View view) {
        Intrinsics.h(view, "view");
        this.trackedViews.remove(view);
    }

    public final void setWeakViewTreeObserver(WeakReference<ViewTreeObserver> weakReference) {
        Intrinsics.h(weakReference, "<set-?>");
        this.weakViewTreeObserver = weakReference;
    }
}
