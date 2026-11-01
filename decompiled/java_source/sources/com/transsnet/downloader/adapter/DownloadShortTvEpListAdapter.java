package com.transsnet.downloader.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.mbridge.msdk.MBridgeConstans;
import com.transsnet.downloader.widget.DownloadShortTvEpItemView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class DownloadShortTvEpListAdapter extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f58432a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Function1 f58433b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/transsnet/downloader/adapter/DownloadShortTvEpListAdapter$EpisodeViewHolder;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "<init>", "(Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;)V", "a", "Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;", "f", "()Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class EpisodeViewHolder extends BaseViewHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
        private final DownloadShortTvEpItemView view;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EpisodeViewHolder(DownloadShortTvEpItemView view) {
            super(view);
            Intrinsics.h(view, "view");
            this.view = view;
        }

        /* JADX INFO: renamed from: f, reason: from getter */
        public final DownloadShortTvEpItemView getView() {
            return this.view;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(DownloadShortTvEpListAdapter downloadShortTvEpListAdapter, my.c cVar, View view) {
        Function1 function1 = downloadShortTvEpListAdapter.f58433b;
        if (function1 != null) {
            function1.invoke(Integer.valueOf(cVar.a()));
        }
    }

    public final List getData() {
        return this.f58432a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f58432a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(EpisodeViewHolder holder, int i11) {
        Intrinsics.h(holder, "holder");
        final my.c cVar = (my.c) this.f58432a.get(i11);
        holder.getView().showIndex(cVar.a() + 1);
        holder.getView().showLockImg(!cVar.c());
        if (cVar.c()) {
            holder.getView().setSelect(cVar.d());
            holder.getView().showDownloadImg(cVar.b());
        }
        holder.getView().setOnClickListener(new View.OnClickListener() { // from class: com.transsnet.downloader.adapter.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DownloadShortTvEpListAdapter.j(this.f58541a, cVar, view);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(EpisodeViewHolder holder, int i11, List payloads) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(payloads, "payloads");
        super.onBindViewHolder(holder, i11, payloads);
        if (payloads.isEmpty()) {
            return;
        }
        Object obj = payloads.get(0);
        if (obj instanceof my.c) {
            my.c cVar = (my.c) obj;
            holder.getView().showLockImg(!cVar.c());
            if (cVar.c()) {
                holder.getView().setSelect(cVar.d());
                holder.getView().showDownloadImg(cVar.b());
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public EpisodeViewHolder onCreateViewHolder(ViewGroup parent, int i11) {
        Intrinsics.h(parent, "parent");
        Context context = parent.getContext();
        Intrinsics.g(context, "getContext(...)");
        DownloadShortTvEpItemView downloadShortTvEpItemView = new DownloadShortTvEpItemView(context);
        downloadShortTvEpItemView.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        return new EpisodeViewHolder(downloadShortTvEpItemView);
    }

    public final void l(Function1 function1) {
        this.f58433b = function1;
    }
}
