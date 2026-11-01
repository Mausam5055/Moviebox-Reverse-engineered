package com.transsion.home.view;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.GridLayoutManager;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.OperateItem;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.DownloadManagerApi;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import java.util.SortedSet;
import java.util.TreeSet;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\nB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u000e2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u001b\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00060\u00172\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010 \u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u001a\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00060!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#¨\u0006%"}, d2 = {"Lcom/transsion/home/view/OpRankingView;", "Landroidx/appcompat/widget/LinearLayoutCompat;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "(Landroid/content/Context;)V", "Lcom/transsion/moviedetailapi/bean/Subject;", WebConstants.FIELD_ITEM, "", "e", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "Lcom/transsion/home/bean/OperateItem;", "operateItem", "setDatas", "(Lcom/transsion/home/bean/OperateItem;)V", "Landroidx/recyclerview/widget/GridLayoutManager;", "gridLayoutManager", "Ljava/util/SortedSet;", "calcExposureLines", "(Landroidx/recyclerview/widget/GridLayoutManager;)Ljava/util/SortedSet;", "Lcom/transsion/home/view/RankingAdapter;", "a", "Lcom/transsion/home/view/RankingAdapter;", "mAdapter", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "I", "mRow", "Ljava/util/TreeSet;", "c", "Ljava/util/TreeSet;", "set", "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class OpRankingView extends LinearLayoutCompat {
    public static final int $stable = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private RankingAdapter mAdapter;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private int mRow;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final TreeSet set;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OpRankingView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OpRankingView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OpRankingView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        LayoutInflater.from(context).inflate(R$layout.post_list_item_ranking_view, (ViewGroup) this, true);
        setOrientation(1);
        this.set = SetsKt.e(new Integer[0]);
    }

    private final void e(Subject item) {
        Integer subjectType = item.getSubjectType();
        int value = SubjectType.SHORT_TV.getValue();
        if (subjectType == null || subjectType.intValue() != value) {
            Navigator navigatorC = TheRouter.c("/movie/detail");
            Integer subjectType2 = item.getSubjectType();
            Navigator.x(navigatorC.F("subject_type", subjectType2 != null ? subjectType2.intValue() : SubjectType.MOVIE.getValue()).K("id", item.getSubjectId()).K("module_name", "opt_ranking").K("ops", item.getOps()), getContext(), null, 2, null);
        } else {
            DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f58398j.a();
            Context context = getContext();
            Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
            downloadManagerApiA.d0((FragmentActivity) context, "Trending", (384 & 4) != 0 ? "" : "", item.getOps(), (384 & 16) != 0 ? null : "download_subject", (384 & 32) != 0 ? false : false, (384 & 64) != 0 ? null : item, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? Boolean.FALSE : null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(List list, OpRankingView opRankingView, OperateItem operateItem, BaseQuickAdapter adapter, View view, int i11) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        Subject subject = (Subject) list.get(i11);
        opRankingView.e((Subject) list.get(i11));
        rl.c.f74547a.c("Trending", "opt", PostItemType.OP_RANKING.getValue(), (1424 & 8) != 0 ? null : subject.getSubjectId(), (1424 & 16) != 0 ? null : null, (1424 & 32) != 0 ? null : subject.getOps(), (1424 & 64) != 0 ? null : subject.getHasResource(), (1424 & 128) != 0 ? null : null, (1424 & 256) != 0 ? null : null, (1424 & 512) != 0 ? null : Integer.valueOf(i11), (1424 & 1024) != 0 ? null : null, (1424 & 2048) != 0 ? Boolean.FALSE : Boolean.valueOf(subject.getBuiltIn()), (1424 & 4096) != 0 ? null : subject.getTag(), (1424 & 8192) != 0 ? null : operateItem.getTitle(), (1424 & 16384) != 0 ? null : operateItem.getOpId());
    }

    public final SortedSet<Integer> calcExposureLines(GridLayoutManager gridLayoutManager) {
        List<Object> data;
        Intrinsics.h(gridLayoutManager, "gridLayoutManager");
        int i11 = 0;
        if (gridLayoutManager.getChildCount() == 0) {
            RankingAdapter rankingAdapter = this.mAdapter;
            if (rankingAdapter != null && (data = rankingAdapter.getData()) != null) {
                for (Object obj : data) {
                    int i12 = i11 + 1;
                    if (i11 < 0) {
                        CollectionsKt.u();
                    }
                    this.set.add(Integer.valueOf(i11));
                    i11 = i12;
                }
            }
        } else {
            int i13 = this.mRow;
            for (int i14 = 0; i14 < i13; i14++) {
                View viewFindViewByPosition = gridLayoutManager.findViewByPosition(i14 * 3);
                if (viewFindViewByPosition != null ? viewFindViewByPosition.getGlobalVisibleRect(new Rect()) : false) {
                    this.set.add(Integer.valueOf(i14));
                }
            }
        }
        return this.set;
    }

    public final void setDatas(final OperateItem operateItem) {
        List<Subject> rankings;
        if (operateItem == null) {
            return;
        }
        AppCompatTextView appCompatTextView = (AppCompatTextView) findViewById(R$id.tv_title);
        if (appCompatTextView != null) {
            appCompatTextView.setText(operateItem.getTitle());
        }
        HRecyclerView hRecyclerView = (HRecyclerView) findViewById(R$id.recycler_view);
        if (hRecyclerView == null || (rankings = operateItem.getRankings()) == null) {
            return;
        }
        final Context context = hRecyclerView.getContext();
        hRecyclerView.setLayoutManager(new NpaGridLayoutManager(context) { // from class: com.transsion.home.view.OpRankingView$setDatas$2$1$1
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
            public boolean canScrollHorizontally() {
                return false;
            }

            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
            public boolean canScrollVertically() {
                return false;
            }
        });
        if (hRecyclerView.getItemDecorationCount() < 1) {
            hRecyclerView.addItemDecoration(new ig.b(a0.a(4.0f), a0.a(4.0f), a0.a(16.0f), a0.a(16.0f)));
        }
        int size = rankings.size() / 3;
        this.mRow = size;
        final List<Subject> listSubList = rankings.subList(0, size * 3);
        RankingAdapter rankingAdapter = new RankingAdapter(CollectionsKt.U0(listSubList));
        rankingAdapter.w1(new p6.d() { // from class: com.transsion.home.view.e
            @Override // p6.d
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                OpRankingView.f(listSubList, this, operateItem, baseQuickAdapter, view, i11);
            }
        });
        hRecyclerView.setAdapter(rankingAdapter);
        this.mAdapter = rankingAdapter;
    }
}
