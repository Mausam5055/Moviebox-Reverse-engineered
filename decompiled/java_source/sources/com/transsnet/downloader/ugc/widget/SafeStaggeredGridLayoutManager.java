package com.transsnet.downloader.ugc.widget;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B)\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nB\u0019\b\u0016\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\u0006\u0010\f\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J/\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\f\u0010\u0015\u001a\b\u0018\u00010\u0013R\u00020\u00142\b\u0010\u000e\u001a\u0004\u0018\u00010\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J/\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00062\f\u0010\u0015\u001a\b\u0018\u00010\u0013R\u00020\u00142\b\u0010\u000e\u001a\u0004\u0018\u00010\u0016H\u0016¢\u0006\u0004\b\u001a\u0010\u0018J'\u0010\u001b\u001a\u00020\u000f2\f\u0010\u0015\u001a\b\u0018\u00010\u0013R\u00020\u00142\b\u0010\u000e\u001a\u0004\u0018\u00010\u0016H\u0016¢\u0006\u0004\b\u001b\u0010\u001c¨\u0006\u001d"}, d2 = {"Lcom/transsnet/downloader/ugc/widget/SafeStaggeredGridLayoutManager;", "Landroidx/recyclerview/widget/StaggeredGridLayoutManager;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "defStyleRes", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "spanCount", "orientation", "(II)V", "state", "", "onScrollStateChanged", "(I)V", "dy", "Landroidx/recyclerview/widget/RecyclerView$t;", "Landroidx/recyclerview/widget/RecyclerView;", "recycler", "Landroidx/recyclerview/widget/RecyclerView$y;", "scrollVerticallyBy", "(ILandroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$y;)I", "dx", "scrollHorizontallyBy", "onLayoutChildren", "(Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$y;)V", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SafeStaggeredGridLayoutManager extends StaggeredGridLayoutManager {
    public SafeStaggeredGridLayoutManager(int i11, int i12) {
        super(i11, i12);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SafeStaggeredGridLayoutManager(Context context, AttributeSet attrs, int i11, int i12) {
        super(context, attrs, i11, i12);
        Intrinsics.h(context, "context");
        Intrinsics.h(attrs, "attrs");
    }

    @Override // androidx.recyclerview.widget.StaggeredGridLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public void onLayoutChildren(RecyclerView.t recycler, RecyclerView.y state) {
        try {
            super.onLayoutChildren(recycler, state);
        } catch (IndexOutOfBoundsException e11) {
            e11.printStackTrace();
        }
    }

    @Override // androidx.recyclerview.widget.StaggeredGridLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public void onScrollStateChanged(int state) {
        try {
            super.onScrollStateChanged(state);
        } catch (IndexOutOfBoundsException e11) {
            e11.printStackTrace();
        }
    }

    @Override // androidx.recyclerview.widget.StaggeredGridLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public int scrollHorizontallyBy(int dx2, RecyclerView.t recycler, RecyclerView.y state) {
        try {
            return super.scrollHorizontallyBy(dx2, recycler, state);
        } catch (IndexOutOfBoundsException e11) {
            e11.printStackTrace();
            return 0;
        }
    }

    @Override // androidx.recyclerview.widget.StaggeredGridLayoutManager, androidx.recyclerview.widget.RecyclerView.m
    public int scrollVerticallyBy(int dy2, RecyclerView.t recycler, RecyclerView.y state) {
        try {
            return super.scrollVerticallyBy(dy2, recycler, state);
        } catch (IndexOutOfBoundsException e11) {
            e11.printStackTrace();
            return 0;
        }
    }
}
