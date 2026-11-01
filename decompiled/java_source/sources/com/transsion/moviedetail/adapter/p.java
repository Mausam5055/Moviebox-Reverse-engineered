package com.transsion.moviedetail.adapter;

import android.content.Context;
import android.text.TextUtils;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.p009lifecycle.Lifecycle;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.baselib.db.download.VipInfo;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.moviedetail.R$id;
import com.transsion.moviedetail.R$layout;
import com.transsion.moviedetailapi.DownloadItem;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.widget.DownloadView;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.AddToDownloadEvent;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B!\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\n2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015¢\u0006\u0004\b\u0017\u0010\u0018R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR$\u0010#\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u0018\u0010'\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)¨\u0006*"}, d2 = {"Lcom/transsion/moviedetail/adapter/p;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/moviedetailapi/DownloadItem;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lcom/transsion/moviedetailapi/bean/Subject;", "movieDetailBean", "", "list", "<init>", "(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/util/List;)V", "", "E1", "()V", "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "onAttachedToRecyclerView", "(Landroidx/recyclerview/widget/RecyclerView;)V", "holder", WebConstants.FIELD_ITEM, "C1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/DownloadItem;)V", "Lcom/transsion/baselib/db/download/VipInfo;", "vipInfo", "H1", "(Lcom/transsion/baselib/db/download/VipInfo;)V", "", "F", "Ljava/lang/String;", "resourceId", "G", "Lcom/transsion/moviedetailapi/bean/Subject;", "D1", "()Lcom/transsion/moviedetailapi/bean/Subject;", "G1", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "mMovieDetailBean", "Lcom/transsnet/downloader/widget/DownloadView;", "H", "Lcom/transsnet/downloader/widget/DownloadView;", "downloadView", "I", "Lcom/transsion/baselib/db/download/VipInfo;", "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class p extends BaseQuickAdapter {

    /* JADX INFO: renamed from: F, reason: from kotlin metadata */
    private String resourceId;

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private Subject mMovieDetailBean;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private DownloadView downloadView;

    /* JADX INFO: renamed from: I, reason: from kotlin metadata */
    private VipInfo vipInfo;

    public p(Subject subject, List<DownloadItem> list) {
        super(R$layout.adapter_resource_detector_alone_layout, list);
        this.mMovieDetailBean = subject;
    }

    private final void E1() {
        Context context = getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        Function1 function1 = new Function1() { // from class: com.transsion.moviedetail.adapter.o
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return p.F1(this.f46961a, (AddToDownloadEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = AddToDownloadEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent((AppCompatActivity) context, name, Lifecycle.State.CREATED, y0.c().q(), false, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit F1(p pVar, AddToDownloadEvent value) {
        Intrinsics.h(value, "value");
        try {
            Iterator<Object> it = pVar.getData().iterator();
            int i11 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i11 = -1;
                    break;
                }
                if (TextUtils.equals(((DownloadItem) it.next()).getResourceId(), value.getResourceId())) {
                    break;
                }
                i11++;
            }
            if (i11 >= 0) {
                pVar.notifyItemChanged(i11);
            }
        } catch (Exception unused) {
            lg.a.C0828a.g(lg.a.f68839a, " callback change data fail", false, 2, null);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: C1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, DownloadItem item) {
        Subject subject;
        Integer requireMemberType;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        int i11 = R$id.tvTitle;
        Integer resolution = item.getResolution();
        Subject subject2 = this.mMovieDetailBean;
        holder.setText(i11, resolution + "P " + (subject2 != null ? subject2.getTitle() : null));
        Long size = item.getSize();
        long jLongValue = size != null ? size.longValue() : 0L;
        Long duration = item.getDuration();
        long jLongValue2 = duration != null ? duration.longValue() : 0L;
        String strA = oh.b.a(jLongValue, 1);
        if (jLongValue2 > 0) {
            strA = strA + " · " + TimeUtilKt.n(jLongValue2 * 1000);
        }
        holder.setText(R$id.tvSize, strA);
        DownloadView downloadView = (DownloadView) holder.getView(R$id.innerIvDownload);
        this.downloadView = downloadView;
        if (downloadView != null) {
            downloadView.setPageFrom("subjectdetail");
        }
        String resourceId = item.getResourceId();
        this.resourceId = resourceId;
        DownloadView downloadView2 = this.downloadView;
        if (downloadView2 != null) {
            Subject subject3 = this.mMovieDetailBean;
            DownloadView.setShowType$default(downloadView2, null, resourceId, subject3 != null ? Boolean.valueOf(subject3.isSeries()) : null, false, 0, 24, null);
        }
        Subject subject4 = this.mMovieDetailBean;
        if ((subject4 != null && subject4.isMusicType()) || ((subject = this.mMovieDetailBean) != null && subject.isEduType())) {
            ((AppCompatImageView) holder.getView(R$id.vipIcon)).setVisibility(8);
            return;
        }
        VipInfo vipInfo = this.vipInfo;
        if (vipInfo == null || (requireMemberType = vipInfo.getRequireMemberType()) == null || requireMemberType.intValue() != 1) {
            ((AppCompatImageView) holder.getView(R$id.vipIcon)).setVisibility(8);
        } else {
            ((AppCompatImageView) holder.getView(R$id.vipIcon)).setVisibility(0);
        }
    }

    /* JADX INFO: renamed from: D1, reason: from getter */
    public final Subject getMMovieDetailBean() {
        return this.mMovieDetailBean;
    }

    public final void G1(Subject subject) {
        this.mMovieDetailBean = subject;
    }

    public final void H1(VipInfo vipInfo) {
        this.vipInfo = vipInfo;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        Intrinsics.h(recyclerView, "recyclerView");
        super.onAttachedToRecyclerView(recyclerView);
        E1();
    }
}
