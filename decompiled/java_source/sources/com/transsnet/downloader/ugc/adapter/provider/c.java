package com.transsnet.downloader.ugc.adapter.provider;

import android.view.ViewGroup;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.ugc.adapter.UGCDownloadStaggeredAdapter;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ly.g;

/* JADX INFO: loaded from: classes7.dex */
public final class c extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final g f59625e = new g();

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return UGCDownloadStaggeredAdapter.ItemType.DOWNLOADING.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.adapter_downloading_item;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, com.transsnet.downloader.ugc.adapter.c item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        ViewGroup.LayoutParams layoutParams = helper.itemView.getLayoutParams();
        if (layoutParams instanceof StaggeredGridLayoutManager.b) {
            ((StaggeredGridLayoutManager.b) layoutParams).c(true);
        }
        this.f59625e.b(helper, ((com.transsnet.downloader.ugc.adapter.c.C0695c) item).b());
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void f(BaseViewHolder helper, com.transsnet.downloader.ugc.adapter.c item, List payloads) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        ViewGroup.LayoutParams layoutParams = helper.itemView.getLayoutParams();
        if (layoutParams instanceof StaggeredGridLayoutManager.b) {
            ((StaggeredGridLayoutManager.b) layoutParams).c(true);
        }
        this.f59625e.f(helper, ((com.transsnet.downloader.ugc.adapter.c.C0695c) item).b(), payloads);
    }
}
