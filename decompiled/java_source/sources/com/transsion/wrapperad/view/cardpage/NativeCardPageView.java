package com.transsion.wrapperad.view.cardpage;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.CompositePageTransformer;
import androidx.viewpager2.widget.MarginPageTransformer;
import androidx.viewpager2.widget.ViewPager2;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001a\b\u0007\u0018\u0000 b2\u00020\u0001:\u00026cB'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J'\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0017\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0019\u0010\u0012J\u000f\u0010\u001a\u001a\u00020\nH\u0002¢\u0006\u0004\b\u001a\u0010\fJ\u000f\u0010\u001b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u001b\u0010\fJ\u0017\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u001b\u0010!\u001a\u00020\u00002\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001f0\u001e¢\u0006\u0004\b!\u0010\"J\r\u0010#\u001a\u00020\u0000¢\u0006\u0004\b#\u0010$J\r\u0010%\u001a\u00020\u0000¢\u0006\u0004\b%\u0010$J\u0015\u0010(\u001a\u00020\u00002\u0006\u0010'\u001a\u00020&¢\u0006\u0004\b(\u0010)J\u0015\u0010,\u001a\u00020\u00002\u0006\u0010+\u001a\u00020*¢\u0006\u0004\b,\u0010-J\u0015\u00100\u001a\u00020\u00002\u0006\u0010/\u001a\u00020.¢\u0006\u0004\b0\u00101J\r\u00103\u001a\u000202¢\u0006\u0004\b3\u00104J\r\u00105\u001a\u00020\u0000¢\u0006\u0004\b5\u0010$R\"\u0010;\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b6\u00107\u001a\u0004\b8\u00109\"\u0004\b:\u0010\u0012R\"\u0010?\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b<\u00107\u001a\u0004\b=\u00109\"\u0004\b>\u0010\u0012R\u0016\u0010A\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010@R\u0016\u0010C\u001a\u0002028\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000b\u0010BR\u0016\u0010F\u001a\u00020D8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0019\u0010ER\u0018\u0010I\u001a\u0004\u0018\u00010G8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010HR\u0016\u0010L\u001a\u00020J8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010KR\u001c\u0010N\u001a\b\u0012\u0004\u0012\u00020\u001f0\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010MR\u0018\u0010P\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010OR\u0016\u0010Q\u001a\u00020.8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000e\u0010OR\u0016\u0010T\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010SR\u0016\u0010W\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bU\u0010VR\u0016\u0010Y\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u00107R\u0016\u0010[\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u00107R\u0016\u0010]\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010SR\u0016\u0010_\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010VR\u0016\u0010a\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010V¨\u0006d"}, d2 = {"Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()V", "Landroidx/viewpager2/widget/CompositePageTransformer;", "j", "()Landroidx/viewpager2/widget/CompositePageTransformer;", RequestParameters.POSITION, "g", "(I)V", "", "positionOffset", "positionOffsetPixels", "f", "(IFI)V", "state", "e", "i", "h", "c", "(I)I", "", "Lcom/transsion/wrapperad/view/cardpage/f;", "data", "setPageData", "(Ljava/util/List;)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;", "startAutoScroll", "()Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;", "pauseAutoScroll", "", "interval", "setScrollInterval", "(J)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;", "", "disable", "setDisableRightSwipe", "(Z)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;", "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setOnPageChangeListener", "(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;", "Landroidx/viewpager2/widget/ViewPager2;", "getViewPager", "()Landroidx/viewpager2/widget/ViewPager2;", PushConstants.PROVIDER_FIELD_DESTROY, "a", "I", "getContentWidth", "()I", "setContentWidth", "contentWidth", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "getStackOffset", "setStackOffset", "stackOffset", "J", "scrollInterval", "Landroidx/viewpager2/widget/ViewPager2;", "viewPager2", "Lcom/transsion/wrapperad/view/cardpage/e;", "Lcom/transsion/wrapperad/view/cardpage/e;", "pageAdapter", "Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$AutoScrollRunnable;", "Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$AutoScrollRunnable;", "autoScrollRunnable", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isAutoScrolling", "Ljava/util/List;", "pageDataList", "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;", "onPageChangeListener", "pageChangeCallback", CampaignEx.JSON_KEY_AD_K, "Z", "isScrolling", "l", "F", "stackPageScale", "m", "lastOffsetX", "n", "lastPosition", "o", "disableRightSwipe", TtmlNode.TAG_P, "disableRightSwipeThreshold", CampaignEx.JSON_KEY_AD_Q, "switchPagePercent", "Companion", "AutoScrollRunnable", "wrapperad_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SuppressLint({"ClickableViewAccessibility"})
@SourceDebugExtension
public final class NativeCardPageView extends FrameLayout {
    public static final float STACK_OFFSET = 12.0f;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private int contentWidth;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private int stackOffset;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private long scrollInterval;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private ViewPager2 viewPager2;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private e pageAdapter;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private AutoScrollRunnable autoScrollRunnable;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private AtomicBoolean isAutoScrolling;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private List pageDataList;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private ViewPager2.OnPageChangeCallback onPageChangeListener;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private ViewPager2.OnPageChangeCallback pageChangeCallback;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private boolean isScrolling;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private float stackPageScale;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private int lastOffsetX;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private int lastPosition;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private boolean disableRightSwipe;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private float disableRightSwipeThreshold;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private float switchPagePercent;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\b\u001a\u00020\tH\u0016R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView$AutoScrollRunnable;", "Ljava/lang/Runnable;", "nativeCardPageView", "Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;", "<init>", "(Lcom/transsion/wrapperad/view/cardpage/NativeCardPageView;)V", "nativeCardPageViewRef", "Ljava/lang/ref/WeakReference;", "run", "", "wrapperad_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    private static final class AutoScrollRunnable implements Runnable {
        private final WeakReference<NativeCardPageView> nativeCardPageViewRef;

        public AutoScrollRunnable(NativeCardPageView nativeCardPageView) {
            Intrinsics.h(nativeCardPageView, "nativeCardPageView");
            this.nativeCardPageViewRef = new WeakReference<>(nativeCardPageView);
        }

        @Override // java.lang.Runnable
        public void run() {
            NativeCardPageView nativeCardPageView = this.nativeCardPageViewRef.get();
            if (nativeCardPageView == null || !nativeCardPageView.isAutoScrolling.get()) {
                return;
            }
            ViewPager2 viewPager2 = nativeCardPageView.viewPager2;
            ViewPager2 viewPager3 = null;
            if (viewPager2 == null) {
                Intrinsics.z("viewPager2");
                viewPager2 = null;
            }
            int currentItem = viewPager2.getCurrentItem() + 1;
            ViewPager2 viewPager4 = nativeCardPageView.viewPager2;
            if (viewPager4 == null) {
                Intrinsics.z("viewPager2");
                viewPager4 = null;
            }
            viewPager4.setCurrentItem(currentItem, true);
            ViewPager2 viewPager5 = nativeCardPageView.viewPager2;
            if (viewPager5 == null) {
                Intrinsics.z("viewPager2");
            } else {
                viewPager3 = viewPager5;
            }
            viewPager3.postDelayed(this, nativeCardPageView.scrollInterval);
        }
    }

    public static final class b extends ViewPager2.OnPageChangeCallback {
        b() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrollStateChanged(int i11) {
            super.onPageScrollStateChanged(i11);
            NativeCardPageView.this.e(i11);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrolled(int i11, float f11, int i12) {
            super.onPageScrolled(i11, f11, i12);
            NativeCardPageView.this.f(i11, f11, i12);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i11) {
            super.onPageSelected(i11);
            NativeCardPageView.this.g(i11);
        }
    }

    public static final class c implements RecyclerView.q {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private float f58332a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f58333b;

        c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void e(NativeCardPageView nativeCardPageView) {
            ViewPager2 viewPager2 = nativeCardPageView.viewPager2;
            if (viewPager2 == null) {
                Intrinsics.z("viewPager2");
                viewPager2 = null;
            }
            viewPager2.setCurrentItem(nativeCardPageView.lastPosition, false);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.q
        public void a(RecyclerView rv2, MotionEvent e11) {
            Intrinsics.h(rv2, "rv");
            Intrinsics.h(e11, "e");
            if (this.f58333b) {
                int action = e11.getAction();
                if (action == 1 || action == 3) {
                    final NativeCardPageView nativeCardPageView = NativeCardPageView.this;
                    rv2.post(new Runnable() { // from class: com.transsion.wrapperad.view.cardpage.i
                        @Override // java.lang.Runnable
                        public final void run() {
                            NativeCardPageView.c.e(nativeCardPageView);
                        }
                    });
                }
            }
        }

        /* JADX WARN: Code duplicated, block: B:23:0x004c  */
        @Override // androidx.recyclerview.widget.RecyclerView.q
        public boolean b(RecyclerView rv2, MotionEvent e11) {
            Intrinsics.h(rv2, "rv");
            Intrinsics.h(e11, "e");
            ViewPager2 viewPager2 = NativeCardPageView.this.viewPager2;
            if (viewPager2 == null) {
                Intrinsics.z("viewPager2");
                viewPager2 = null;
            }
            if (!viewPager2.isUserInputEnabled()) {
                return false;
            }
            int action = e11.getAction();
            if (action == 0) {
                NativeCardPageView.this.pauseAutoScroll();
                this.f58332a = e11.getX();
                this.f58333b = false;
            } else if (action == 1) {
                NativeCardPageView.this.startAutoScroll();
            } else if (action == 2) {
                float x10 = e11.getX() - this.f58332a;
                if (NativeCardPageView.this.disableRightSwipe && x10 > NativeCardPageView.this.disableRightSwipeThreshold) {
                    this.f58333b = true;
                    return true;
                }
            } else if (action == 3) {
                NativeCardPageView.this.startAutoScroll();
            }
            return false;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.q
        public void c(boolean z10) {
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public NativeCardPageView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public NativeCardPageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public NativeCardPageView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.stackOffset = a0.a(12.0f);
        this.scrollInterval = 30000L;
        this.isAutoScrolling = new AtomicBoolean(false);
        this.pageDataList = CollectionsKt.l();
        this.stackPageScale = 0.1f;
        this.disableRightSwipe = true;
        this.disableRightSwipeThreshold = 10.0f;
        this.switchPagePercent = 0.05f;
        d();
        i();
    }

    public /* synthetic */ NativeCardPageView(Context context, AttributeSet attributeSet, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i12 & 2) != 0 ? null : attributeSet, (i12 & 4) != 0 ? 0 : i11);
    }

    private final int c(int position) {
        if (this.pageDataList.isEmpty()) {
            return 0;
        }
        return position % this.pageDataList.size();
    }

    private final void d() {
        ViewPager2 viewPager2 = new ViewPager2(getContext());
        this.viewPager2 = viewPager2;
        viewPager2.setLayoutParams(new FrameLayout.LayoutParams(y.e() - a0.a(24.0f), -2));
        ViewPager2 viewPager3 = this.viewPager2;
        ViewPager2.OnPageChangeCallback onPageChangeCallback = null;
        if (viewPager3 == null) {
            Intrinsics.z("viewPager2");
            viewPager3 = null;
        }
        viewPager3.setClipChildren(false);
        ViewPager2 viewPager4 = this.viewPager2;
        if (viewPager4 == null) {
            Intrinsics.z("viewPager2");
            viewPager4 = null;
        }
        viewPager4.setClipToPadding(false);
        ViewPager2 viewPager5 = this.viewPager2;
        if (viewPager5 == null) {
            Intrinsics.z("viewPager2");
            viewPager5 = null;
        }
        viewPager5.setOverScrollMode(2);
        ViewPager2 viewPager6 = this.viewPager2;
        if (viewPager6 == null) {
            Intrinsics.z("viewPager2");
            viewPager6 = null;
        }
        viewPager6.setOrientation(0);
        ViewPager2 viewPager7 = this.viewPager2;
        if (viewPager7 == null) {
            Intrinsics.z("viewPager2");
            viewPager7 = null;
        }
        viewPager7.setUserInputEnabled(false);
        ViewPager2 viewPager8 = this.viewPager2;
        if (viewPager8 == null) {
            Intrinsics.z("viewPager2");
            viewPager8 = null;
        }
        addView(viewPager8);
        this.pageChangeCallback = new b();
        ViewPager2 viewPager9 = this.viewPager2;
        if (viewPager9 == null) {
            Intrinsics.z("viewPager2");
            viewPager9 = null;
        }
        ViewPager2.OnPageChangeCallback onPageChangeCallback2 = this.pageChangeCallback;
        if (onPageChangeCallback2 == null) {
            Intrinsics.z("pageChangeCallback");
        } else {
            onPageChangeCallback = onPageChangeCallback2;
        }
        viewPager9.registerOnPageChangeCallback(onPageChangeCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e(int state) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.onPageChangeListener;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageScrollStateChanged(state);
        }
        if (state != 0) {
            if (state != 1) {
                return;
            }
            this.isScrolling = true;
            return;
        }
        this.lastOffsetX = 0;
        ViewPager2 viewPager2 = null;
        if (this.isScrolling) {
            ViewPager2 viewPager3 = this.viewPager2;
            if (viewPager3 == null) {
                Intrinsics.z("viewPager2");
                viewPager3 = null;
            }
            if (viewPager3.getCurrentItem() == this.lastPosition) {
                h();
            } else if (this.disableRightSwipe) {
                ViewPager2 viewPager4 = this.viewPager2;
                if (viewPager4 == null) {
                    Intrinsics.z("viewPager2");
                    viewPager4 = null;
                }
                if (viewPager4.getCurrentItem() < this.lastPosition) {
                    ViewPager2 viewPager5 = this.viewPager2;
                    if (viewPager5 == null) {
                        Intrinsics.z("viewPager2");
                        viewPager5 = null;
                    }
                    viewPager5.setCurrentItem(this.lastPosition, false);
                    h();
                }
            }
        }
        ViewPager2 viewPager6 = this.viewPager2;
        if (viewPager6 == null) {
            Intrinsics.z("viewPager2");
        } else {
            viewPager2 = viewPager6;
        }
        this.lastPosition = viewPager2.getCurrentItem();
        this.isScrolling = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f(int position, float positionOffset, int positionOffsetPixels) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.onPageChangeListener;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageScrolled(position, positionOffset, positionOffsetPixels);
        }
        ViewPager2 viewPager2 = this.viewPager2;
        if (viewPager2 == null) {
            Intrinsics.z("viewPager2");
            viewPager2 = null;
        }
        View childAt = viewPager2.getChildAt(0);
        RecyclerView recyclerView = childAt instanceof RecyclerView ? (RecyclerView) childAt : null;
        if (recyclerView == null || positionOffset <= this.switchPagePercent || this.lastOffsetX != 0) {
            return;
        }
        int i11 = position + 1;
        RecyclerView.b0 b0VarFindViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(i11);
        e.a aVar = b0VarFindViewHolderForAdapterPosition instanceof e.a ? (e.a) b0VarFindViewHolderForAdapterPosition : null;
        if (aVar != null) {
            Result.m453boximpl(aVar.f((f) this.pageDataList.get(c(i11))));
        }
        this.lastOffsetX = positionOffsetPixels;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g(int position) {
        int iC = c(position);
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.onPageChangeListener;
        if (onPageChangeCallback != null) {
            onPageChangeCallback.onPageSelected(iC);
        }
        ViewPager2 viewPager2 = this.viewPager2;
        if (viewPager2 == null) {
            Intrinsics.z("viewPager2");
            viewPager2 = null;
        }
        View childAt = viewPager2.getChildAt(0);
        RecyclerView recyclerView = childAt instanceof RecyclerView ? (RecyclerView) childAt : null;
        if (recyclerView != null) {
            RecyclerView.b0 b0VarFindViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(position);
            e.a aVar = b0VarFindViewHolderForAdapterPosition instanceof e.a ? (e.a) b0VarFindViewHolderForAdapterPosition : null;
            if (aVar == null || aVar.g().getChildCount() > 0) {
                return;
            }
            aVar.f((f) this.pageDataList.get(iC));
        }
    }

    private final void h() {
        FrameLayout frameLayoutG;
        ViewPager2 viewPager2 = this.viewPager2;
        if (viewPager2 == null) {
            Intrinsics.z("viewPager2");
            viewPager2 = null;
        }
        int currentItem = viewPager2.getCurrentItem() + 1;
        ViewPager2 viewPager3 = this.viewPager2;
        if (viewPager3 == null) {
            Intrinsics.z("viewPager2");
            viewPager3 = null;
        }
        View childAt = viewPager3.getChildAt(0);
        RecyclerView recyclerView = childAt instanceof RecyclerView ? (RecyclerView) childAt : null;
        if (recyclerView != null) {
            RecyclerView.b0 b0VarFindViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition(currentItem);
            e.a aVar = b0VarFindViewHolderForAdapterPosition instanceof e.a ? (e.a) b0VarFindViewHolderForAdapterPosition : null;
            if (aVar == null || (frameLayoutG = aVar.g()) == null) {
                return;
            }
            frameLayoutG.removeAllViews();
        }
    }

    private final void i() {
        ViewPager2 viewPager2 = this.viewPager2;
        if (viewPager2 == null) {
            Intrinsics.z("viewPager2");
            viewPager2 = null;
        }
        viewPager2.post(new Runnable() { // from class: com.transsion.wrapperad.view.cardpage.h
            @Override // java.lang.Runnable
            public final void run() {
                NativeCardPageView.setupTouchEventListener$lambda$5(this.f58351a);
            }
        });
    }

    private final CompositePageTransformer j() {
        CompositePageTransformer compositePageTransformer = new CompositePageTransformer();
        compositePageTransformer.addTransformer(new MarginPageTransformer(10));
        compositePageTransformer.addTransformer(new ViewPager2.PageTransformer() { // from class: com.transsion.wrapperad.view.cardpage.g
            @Override // androidx.viewpager2.widget.ViewPager2.PageTransformer
            public final void transformPage(View view, float f11) {
                NativeCardPageView.k(this.f58350a, view, f11);
            }
        });
        return compositePageTransformer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(NativeCardPageView nativeCardPageView, View page, float f11) {
        Intrinsics.h(page, "page");
        if (f11 <= 0.0f) {
            page.setScaleX(1.0f);
            page.setScaleY(1.0f);
            page.setTranslationX(0.0f);
            page.setTranslationZ(0.0f);
            return;
        }
        float f12 = 1;
        float f13 = f12 - (nativeCardPageView.stackPageScale * f11);
        float f14 = ((-page.getWidth()) * f11) + ((nativeCardPageView.contentWidth * (f12 - f13)) / 2) + (nativeCardPageView.stackOffset * f11);
        page.setScaleX(f13);
        page.setScaleY(f13);
        page.setTranslationX(f14);
        page.setTranslationZ(-f11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupTouchEventListener$lambda$5(NativeCardPageView nativeCardPageView) {
        c cVar = nativeCardPageView.new c();
        ViewPager2 viewPager2 = nativeCardPageView.viewPager2;
        if (viewPager2 == null) {
            Intrinsics.z("viewPager2");
            viewPager2 = null;
        }
        View childAt = viewPager2.getChildAt(0);
        RecyclerView recyclerView = childAt instanceof RecyclerView ? (RecyclerView) childAt : null;
        if (recyclerView != null) {
            recyclerView.removeOnItemTouchListener(cVar);
        }
        if (recyclerView != null) {
            recyclerView.addOnItemTouchListener(cVar);
        }
    }

    public final NativeCardPageView destroy() {
        pauseAutoScroll();
        ViewPager2 viewPager2 = this.viewPager2;
        if (viewPager2 == null) {
            Intrinsics.z("viewPager2");
            viewPager2 = null;
        }
        ViewPager2.OnPageChangeCallback onPageChangeCallback = this.pageChangeCallback;
        if (onPageChangeCallback == null) {
            Intrinsics.z("pageChangeCallback");
            onPageChangeCallback = null;
        }
        viewPager2.unregisterOnPageChangeCallback(onPageChangeCallback);
        ViewPager2 viewPager3 = this.viewPager2;
        if (viewPager3 == null) {
            Intrinsics.z("viewPager2");
            viewPager3 = null;
        }
        viewPager3.setAdapter(null);
        this.onPageChangeListener = null;
        for (f fVar : this.pageDataList) {
            ViewParent parent = fVar.d().getParent();
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                viewGroup.removeView(fVar.d());
            }
            fVar.g(null);
        }
        this.pageDataList = CollectionsKt.l();
        removeAllViews();
        return this;
    }

    public final int getContentWidth() {
        return this.contentWidth;
    }

    public final int getStackOffset() {
        return this.stackOffset;
    }

    public final ViewPager2 getViewPager() {
        ViewPager2 viewPager2 = this.viewPager2;
        if (viewPager2 != null) {
            return viewPager2;
        }
        Intrinsics.z("viewPager2");
        return null;
    }

    public final NativeCardPageView pauseAutoScroll() {
        if (!this.isAutoScrolling.get()) {
            return this;
        }
        this.isAutoScrolling.set(false);
        AutoScrollRunnable autoScrollRunnable = this.autoScrollRunnable;
        if (autoScrollRunnable != null) {
            ViewPager2 viewPager2 = this.viewPager2;
            if (viewPager2 == null) {
                Intrinsics.z("viewPager2");
                viewPager2 = null;
            }
            viewPager2.removeCallbacks(autoScrollRunnable);
        }
        return this;
    }

    public final void setContentWidth(int i11) {
        this.contentWidth = i11;
    }

    public final NativeCardPageView setDisableRightSwipe(boolean disable) {
        this.disableRightSwipe = disable;
        return this;
    }

    public final NativeCardPageView setOnPageChangeListener(ViewPager2.OnPageChangeCallback listener) {
        Intrinsics.h(listener, "listener");
        this.onPageChangeListener = listener;
        return this;
    }

    public final NativeCardPageView setPageData(List<f> data) {
        Intrinsics.h(data, "data");
        this.pageDataList = data;
        ViewPager2 viewPager2 = this.viewPager2;
        ViewPager2 viewPager3 = null;
        if (viewPager2 == null) {
            Intrinsics.z("viewPager2");
            viewPager2 = null;
        }
        this.contentWidth = viewPager2.getMeasuredWidth() - ((this.stackOffset + 5) * (this.pageDataList.size() - 1));
        ViewPager2 viewPager4 = this.viewPager2;
        if (viewPager4 == null) {
            Intrinsics.z("viewPager2");
            viewPager4 = null;
        }
        viewPager4.setPageTransformer(j());
        this.pageAdapter = new e(this.pageDataList, this.contentWidth);
        ViewPager2 viewPager5 = this.viewPager2;
        if (viewPager5 == null) {
            Intrinsics.z("viewPager2");
            viewPager5 = null;
        }
        e eVar = this.pageAdapter;
        if (eVar == null) {
            Intrinsics.z("pageAdapter");
            eVar = null;
        }
        viewPager5.setAdapter(eVar);
        ViewPager2 viewPager6 = this.viewPager2;
        if (viewPager6 == null) {
            Intrinsics.z("viewPager2");
            viewPager6 = null;
        }
        viewPager6.setUserInputEnabled(data.size() > 1);
        ViewPager2 viewPager7 = this.viewPager2;
        if (viewPager7 == null) {
            Intrinsics.z("viewPager2");
            viewPager7 = null;
        }
        ViewPager2 viewPager8 = this.viewPager2;
        if (viewPager8 == null) {
            Intrinsics.z("viewPager2");
        } else {
            viewPager3 = viewPager8;
        }
        viewPager7.setOffscreenPageLimit(viewPager3.isUserInputEnabled() ? RangesKt.i(data.size() - 1, 2) : -1);
        startAutoScroll();
        return this;
    }

    public final NativeCardPageView setScrollInterval(long interval) {
        this.scrollInterval = interval;
        if (this.isAutoScrolling.get()) {
            pauseAutoScroll();
            startAutoScroll();
        }
        return this;
    }

    public final void setStackOffset(int i11) {
        this.stackOffset = i11;
    }

    public final NativeCardPageView startAutoScroll() {
        ViewPager2 viewPager2 = this.viewPager2;
        ViewPager2 viewPager3 = null;
        if (viewPager2 == null) {
            Intrinsics.z("viewPager2");
            viewPager2 = null;
        }
        if (viewPager2.isUserInputEnabled() && !this.isAutoScrolling.get()) {
            this.isAutoScrolling.set(true);
            this.autoScrollRunnable = new AutoScrollRunnable(this);
            ViewPager2 viewPager4 = this.viewPager2;
            if (viewPager4 == null) {
                Intrinsics.z("viewPager2");
            } else {
                viewPager3 = viewPager4;
            }
            AutoScrollRunnable autoScrollRunnable = this.autoScrollRunnable;
            Intrinsics.e(autoScrollRunnable);
            viewPager3.postDelayed(autoScrollRunnable, this.scrollInterval);
        }
        return this;
    }
}
