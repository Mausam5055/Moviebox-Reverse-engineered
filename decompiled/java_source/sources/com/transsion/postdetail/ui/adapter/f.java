package com.transsion.postdetail.ui.adapter;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import bp.m;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u001f\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ%\u0010\u000e\u001a\u00020\f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\n2\u0006\u0010\r\u001a\u00020\fH\u0014¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0014R\u001d\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c¨\u0006\u001d"}, d2 = {"Lcom/transsion/postdetail/ui/adapter/f;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "Lr6/i;", "", "list", "Lsj/b;", "exposureHelper", "<init>", "(Ljava/util/List;Lsj/b;)V", "", "data", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "holder", "", "B0", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "G", "Ljava/util/List;", "R1", "()Ljava/util/List;", "H", "Lsj/b;", "Q1", "()Lsj/b;", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class f extends BaseProviderMultiAdapter<PostSubjectItem> implements r6.i {

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final List<PostSubjectItem> list;

    /* JADX INFO: renamed from: H, reason: from kotlin metadata */
    private final sj.b exposureHelper;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(List<PostSubjectItem> list, sj.b bVar) {
        super(list);
        Intrinsics.h(list, "list");
        this.list = list;
        this.exposureHelper = bVar;
        F1(new bp.h());
        F1(new m());
        F1(new bp.k());
        F1(new bp.f());
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter, com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: B0 */
    public void onViewAttachedToWindow(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.onViewAttachedToWindow(holder);
        int adapterPosition = holder.getAdapterPosition();
        sj.b bVar = this.exposureHelper;
        if (bVar != null) {
            RecyclerView.m layoutManager = getRecyclerView().getLayoutManager();
            Intrinsics.f(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
            sj.b.j(bVar, (LinearLayoutManager) layoutManager, adapterPosition, true, false, 8, null);
        }
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int N1(List<? extends PostSubjectItem> data, int position) {
        Intrinsics.h(data, "data");
        if (data.get(position).getNonAdDelegate() != null) {
            return MediaType.POST_DETAIL_FOR_YOU_NATIVE_AD.ordinal();
        }
        Media media = data.get(position).getMedia();
        String mediaType = media != null ? media.getMediaType() : null;
        if (Intrinsics.c(mediaType, MediaType.TEXT.getValue())) {
            return MediaType.IMAGE.ordinal();
        }
        MediaType mediaType2 = MediaType.IMAGE;
        if (Intrinsics.c(mediaType, mediaType2.getValue())) {
            return mediaType2.ordinal();
        }
        MediaType mediaType3 = MediaType.AUDIO;
        if (Intrinsics.c(mediaType, mediaType3.getValue())) {
            return mediaType3.ordinal();
        }
        MediaType mediaType4 = MediaType.VIDEO;
        return Intrinsics.c(mediaType, mediaType4.getValue()) ? mediaType4.ordinal() : mediaType2.ordinal();
    }

    /* JADX INFO: renamed from: Q1, reason: from getter */
    public final sj.b getExposureHelper() {
        return this.exposureHelper;
    }

    public final List<PostSubjectItem> R1() {
        return this.list;
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return r6.h.a(this, baseQuickAdapter);
    }
}
