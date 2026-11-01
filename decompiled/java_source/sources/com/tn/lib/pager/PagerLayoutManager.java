package com.tn.lib.pager;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.n;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.pager.PagerLayoutManager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000m\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001D\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B+\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b¢\u0006\u0004\b\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J'\u0010\u0015\u001a\u00020\f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\f\u0010\u0014\u001a\b\u0018\u00010\u0013R\u00020\u000fH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b\u0018\u0010\u0019J/\u0010\u001d\u001a\u00020\b2\u0006\u0010\u001a\u001a\u00020\b2\f\u0010\u0014\u001a\b\u0018\u00010\u0013R\u00020\u000f2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ/\u0010 \u001a\u00020\b2\u0006\u0010\u001f\u001a\u00020\b2\f\u0010\u0014\u001a\b\u0018\u00010\u0013R\u00020\u000f2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b \u0010\u001eJ\u0017\u0010#\u001a\u00020\f2\b\u0010\"\u001a\u0004\u0018\u00010!¢\u0006\u0004\b#\u0010$J'\u0010%\u001a\u00020\f2\f\u0010\u0014\u001a\b\u0018\u00010\u0013R\u00020\u000f2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b%\u0010&J\u000f\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\b(\u0010)R\u001b\u0010/\u001a\u00020*8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.R\u0018\u00102\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0016\u00105\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\"\u0010(\u001a\u00020'8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b6\u0010#\u001a\u0004\b7\u0010)\"\u0004\b8\u00109R\"\u0010=\u001a\u00020'8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b:\u0010#\u001a\u0004\b;\u0010)\"\u0004\b<\u00109R\u0016\u0010?\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u00104R\u0016\u0010A\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u00104R\u0016\u0010C\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u00104R\u0014\u0010G\u001a\u00020D8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bE\u0010FR\u0014\u0010K\u001a\u00020H8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bI\u0010J¨\u0006L"}, d2 = {"Lcom/tn/lib/pager/PagerLayoutManager;", "Landroidx/recyclerview/widget/LinearLayoutManager;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "defStyleRes", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "", "T", "()V", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "onAttachedToWindow", "(Landroidx/recyclerview/widget/RecyclerView;)V", "Landroidx/recyclerview/widget/RecyclerView$t;", "recycler", "onDetachedFromWindow", "(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V", "Landroid/view/View;", "U", "()Landroid/view/View;", "dy", "Landroidx/recyclerview/widget/RecyclerView$y;", "state", "scrollVerticallyBy", "(ILandroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$y;)I", "dx", "scrollHorizontallyBy", "Lch/a;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Z", "(Lch/a;)V", "onLayoutChildren", "(Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$y;)V", "", "canScrollVertically", "()Z", "Landroidx/recyclerview/widget/n;", "a", "Lkotlin/Lazy;", "V", "()Landroidx/recyclerview/widget/n;", "pagerSnapHelper", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lch/a;", "onViewPagerListener", "c", "I", "direction", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "getCanScrollVertically", "X", "(Z)V", "e", "getEnableFadeEffect", "Y", "enableFadeEffect", "f", "oldState", "g", "oldPosition", "h", "oldPositionIdle", "com/tn/lib/pager/PagerLayoutManager$b", "i", "Lcom/tn/lib/pager/PagerLayoutManager$b;", "rvScrollListener", "Landroidx/recyclerview/widget/RecyclerView$o;", "j", "Landroidx/recyclerview/widget/RecyclerView$o;", "childAttachStateChangeListener", "UI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PagerLayoutManager extends LinearLayoutManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final Lazy pagerSnapHelper;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private ch.a onViewPagerListener;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private int direction;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private boolean canScrollVertically;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private boolean enableFadeEffect;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private int oldState;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private int oldPosition;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private int oldPositionIdle;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private final b rvScrollListener;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final RecyclerView.o childAttachStateChangeListener;

    public static final class a implements RecyclerView.o {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.o
        public void onChildViewAttachedToWindow(View view) {
            ch.a aVar;
            Intrinsics.h(view, "view");
            int position = PagerLayoutManager.this.getPosition(view);
            if (PagerLayoutManager.this.getChildCount() == 1 && position == 0 && (aVar = PagerLayoutManager.this.onViewPagerListener) != null) {
                aVar.b(view);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.o
        public void onChildViewDetachedFromWindow(View view) {
            Intrinsics.h(view, "view");
            if (PagerLayoutManager.this.direction >= 0) {
                ch.a aVar = PagerLayoutManager.this.onViewPagerListener;
                if (aVar != null) {
                    aVar.c(true, PagerLayoutManager.this.getPosition(view), view);
                    return;
                }
                return;
            }
            ch.a aVar2 = PagerLayoutManager.this.onViewPagerListener;
            if (aVar2 != null) {
                aVar2.c(false, PagerLayoutManager.this.getPosition(view), view);
            }
        }
    }

    public static final class b extends RecyclerView.r {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.r
        public void onScrollStateChanged(RecyclerView recyclerView, int i11) {
            Intrinsics.h(recyclerView, "recyclerView");
            super.onScrollStateChanged(recyclerView, i11);
            View viewFindSnapView = PagerLayoutManager.this.V().findSnapView(PagerLayoutManager.this);
            if (viewFindSnapView == null) {
                return;
            }
            int position = PagerLayoutManager.this.getPosition(viewFindSnapView);
            if (PagerLayoutManager.this.oldState != i11 && PagerLayoutManager.this.oldPosition != position) {
                PagerLayoutManager.this.oldState = i11;
                PagerLayoutManager.this.oldPosition = position;
                ch.a aVar = PagerLayoutManager.this.onViewPagerListener;
                if (aVar != null) {
                    aVar.a(position, position == PagerLayoutManager.this.getItemCount() - 1, viewFindSnapView);
                }
            }
            if (i11 == 0) {
                PagerLayoutManager.this.oldPositionIdle = position;
                ch.a aVar2 = PagerLayoutManager.this.onViewPagerListener;
                if (aVar2 != null) {
                    aVar2.d(position, position == PagerLayoutManager.this.getItemCount() - 1, viewFindSnapView);
                }
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagerLayoutManager(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        this.pagerSnapHelper = LazyKt.b(new Function0() { // from class: ch.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PagerLayoutManager.W();
            }
        });
        this.canScrollVertically = true;
        this.oldState = -1;
        this.oldPosition = -1;
        this.oldPositionIdle = -1;
        this.rvScrollListener = new b();
        this.childAttachStateChangeListener = new a();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagerLayoutManager(Context context, AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
        Intrinsics.h(context, "context");
        this.pagerSnapHelper = LazyKt.b(new Function0() { // from class: ch.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PagerLayoutManager.W();
            }
        });
        this.canScrollVertically = true;
        this.oldState = -1;
        this.oldPosition = -1;
        this.oldPositionIdle = -1;
        this.rvScrollListener = new b();
        this.childAttachStateChangeListener = new a();
    }

    private final void T() {
        if (getChildCount() == 0) {
            return;
        }
        float height = getHeight() / 2.0f;
        float height2 = getHeight() / 2.0f;
        try {
            Result.Companion companion = Result.INSTANCE;
            int childCount = getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = getChildAt(i11);
                if (childAt != null) {
                    childAt.setAlpha(RangesKt.l(1.0f - (Math.abs(height - ((getDecoratedTop(childAt) + getDecoratedBottom(childAt)) / 2.0f)) / height2), 0.3f, 1.0f));
                }
            }
            Result.m454constructorimpl(Unit.f67061a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final n V() {
        return (n) this.pagerSnapHelper.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final n W() {
        return new n();
    }

    public final View U() {
        return V().findSnapView(this);
    }

    public final void X(boolean z10) {
        this.canScrollVertically = z10;
    }

    public final void Y(boolean z10) {
        this.enableFadeEffect = z10;
    }

    public final void Z(ch.a listener) {
        this.onViewPagerListener = listener;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public boolean canScrollVertically() {
        return this.canScrollVertically & super.canScrollVertically();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        if ((recyclerView != null ? recyclerView.getOnFlingListener() : null) == null) {
            V().attachToRecyclerView(recyclerView);
        }
        if (recyclerView != null) {
            recyclerView.addOnChildAttachStateChangeListener(this.childAttachStateChangeListener);
        }
        if (recyclerView != null) {
            recyclerView.addOnScrollListener(this.rvScrollListener);
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.t recycler) {
        super.onDetachedFromWindow(recyclerView, recycler);
        if (recyclerView != null) {
            recyclerView.removeOnChildAttachStateChangeListener(this.childAttachStateChangeListener);
        }
        if (recyclerView != null) {
            recyclerView.removeOnScrollListener(this.rvScrollListener);
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public void onLayoutChildren(RecyclerView.t recycler, RecyclerView.y state) {
        try {
            super.onLayoutChildren(recycler, state);
        } catch (IndexOutOfBoundsException unused) {
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public int scrollHorizontallyBy(int dx2, RecyclerView.t recycler, RecyclerView.y state) {
        this.direction = dx2;
        return super.scrollHorizontallyBy(dx2, recycler, state);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public int scrollVerticallyBy(int dy2, RecyclerView.t recycler, RecyclerView.y state) {
        this.direction = dy2;
        int iScrollVerticallyBy = super.scrollVerticallyBy(dy2, recycler, state);
        if (this.enableFadeEffect) {
            T();
        }
        return iScrollVerticallyBy;
    }
}
