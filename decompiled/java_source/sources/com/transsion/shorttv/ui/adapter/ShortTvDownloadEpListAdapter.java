package com.transsion.shorttv.ui.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.mbridge.msdk.MBridgeConstans;
import com.transsion.shorttv.bean.Subject;
import com.transsion.shorttv.ui.widget.ShortTvDownloadEpItemView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class ShortTvDownloadEpListAdapter extends RecyclerView.Adapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f53112a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Subject f53113b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Function1 f53114c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/transsion/shorttv/ui/adapter/ShortTvDownloadEpListAdapter$EpisodeViewHolder;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lcom/transsion/shorttv/ui/widget/ShortTvDownloadEpItemView;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "<init>", "(Lcom/transsion/shorttv/ui/widget/ShortTvDownloadEpItemView;)V", "a", "Lcom/transsion/shorttv/ui/widget/ShortTvDownloadEpItemView;", "f", "()Lcom/transsion/shorttv/ui/widget/ShortTvDownloadEpItemView;", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class EpisodeViewHolder extends BaseViewHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
        private final ShortTvDownloadEpItemView view;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EpisodeViewHolder(ShortTvDownloadEpItemView view) {
            super(view);
            Intrinsics.h(view, "view");
            this.view = view;
        }

        /* JADX INFO: renamed from: f, reason: from getter */
        public final ShortTvDownloadEpItemView getView() {
            return this.view;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(ShortTvDownloadEpListAdapter shortTvDownloadEpListAdapter, js.d dVar, View view) {
        Function1 function1 = shortTvDownloadEpListAdapter.f53114c;
        if (function1 != null) {
            function1.invoke(Integer.valueOf(dVar.b()));
        }
    }

    public final List getData() {
        return this.f53112a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f53112a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(EpisodeViewHolder holder, int i11) {
        Intrinsics.h(holder, "holder");
        final js.d dVar = (js.d) this.f53112a.get(i11);
        holder.getView().showIndex(dVar.b() + 1);
        holder.getView().showLockedImg(zr.b.f79451a.c(this.f53113b, dVar.a()));
        holder.getView().setSelect(dVar.d());
        holder.getView().showDownloadedImg(dVar.c());
        holder.getView().setOnClickListener(new View.OnClickListener() { // from class: com.transsion.shorttv.ui.adapter.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShortTvDownloadEpListAdapter.j(this.f53125a, dVar, view);
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
        if (obj instanceof js.d) {
            js.d dVar = (js.d) obj;
            holder.getView().showLockedImg(zr.b.f79451a.c(this.f53113b, dVar.a()));
            holder.getView().setSelect(dVar.d());
            holder.getView().showDownloadedImg(dVar.c());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public EpisodeViewHolder onCreateViewHolder(ViewGroup parent, int i11) {
        Intrinsics.h(parent, "parent");
        Context context = parent.getContext();
        Intrinsics.g(context, "getContext(...)");
        ShortTvDownloadEpItemView shortTvDownloadEpItemView = new ShortTvDownloadEpItemView(context);
        shortTvDownloadEpItemView.useForDownloadList();
        shortTvDownloadEpItemView.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        return new EpisodeViewHolder(shortTvDownloadEpItemView);
    }

    public final void l(Function1 function1) {
        this.f53114c = function1;
    }

    public final void m(Subject subject) {
        this.f53113b = subject;
        notifyDataSetChanged();
    }
}
