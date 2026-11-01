package com.transsion.shorttv._channel.ui;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B)\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0010\u0010\u0011R0\u0010\u0016\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0012j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004`\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0017"}, d2 = {"Lcom/transsion/shorttv/_channel/ui/ShortTvOffsetGridLayoutManager;", "Landroidx/recyclerview/widget/GridLayoutManager;", "Landroid/content/Context;", "context", "", "spanCount", "orientation", "", "reverseLayout", "<init>", "(Landroid/content/Context;IIZ)V", "Landroidx/recyclerview/widget/RecyclerView$y;", "state", "", "onLayoutCompleted", "(Landroidx/recyclerview/widget/RecyclerView$y;)V", "computeVerticalScrollOffset", "(Landroidx/recyclerview/widget/RecyclerView$y;)I", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "j", "Ljava/util/HashMap;", "heightMap", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ShortTvOffsetGridLayoutManager extends GridLayoutManager {

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private final HashMap heightMap;

    public ShortTvOffsetGridLayoutManager(Context context, int i11, int i12, boolean z10) {
        super(context, i11, i12, z10);
        this.heightMap = new HashMap();
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public int computeVerticalScrollOffset(RecyclerView.y state) {
        Intrinsics.h(state, "state");
        if (getChildCount() == 0) {
            return 0;
        }
        try {
            int iFindFirstVisibleItemPosition = findFirstVisibleItemPosition();
            View viewFindViewByPosition = findViewByPosition(iFindFirstVisibleItemPosition);
            int iIntValue = 0;
            for (int i11 = 0; i11 < iFindFirstVisibleItemPosition; i11++) {
                Integer num = (Integer) this.heightMap.get(Integer.valueOf(i11));
                iIntValue += num != null ? num.intValue() : 0;
            }
            return iIntValue - (viewFindViewByPosition != null ? viewFindViewByPosition.getTop() : 0);
        } catch (Exception e11) {
            e11.printStackTrace();
            return super.computeVerticalScrollOffset(state);
        }
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public void onLayoutCompleted(RecyclerView.y state) {
        super.onLayoutCompleted(state);
        int iFindFirstVisibleItemPosition = findFirstVisibleItemPosition();
        int iFindLastVisibleItemPosition = findLastVisibleItemPosition();
        if (iFindFirstVisibleItemPosition < 0 || iFindLastVisibleItemPosition < 0 || iFindLastVisibleItemPosition < iFindFirstVisibleItemPosition) {
            return;
        }
        while (iFindFirstVisibleItemPosition < iFindLastVisibleItemPosition) {
            View childAt = getChildAt(iFindFirstVisibleItemPosition);
            if (childAt != null) {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager.LayoutParams");
                if (((GridLayoutManager.b) layoutParams).a() == 0) {
                    this.heightMap.put(Integer.valueOf(iFindFirstVisibleItemPosition), Integer.valueOf(childAt.getHeight()));
                } else {
                    this.heightMap.put(Integer.valueOf(iFindFirstVisibleItemPosition), 0);
                }
            }
            iFindFirstVisibleItemPosition++;
        }
    }
}
