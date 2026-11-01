package com.transsnet.downloader.ugc.adapter.provider;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.ugc.adapter.UGCDownloadStaggeredAdapter;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class d extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Function0 f59626e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private View f59627f;

    public d(Function0 function0) {
        this.f59626e = function0;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return UGCDownloadStaggeredAdapter.ItemType.EMPTY.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.adapter_ugc_empty_item;
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
        View view = helper.itemView;
        ViewGroup viewGroup = view instanceof ViewGroup ? (ViewGroup) view : null;
        if (viewGroup != null && viewGroup.getChildCount() == 0) {
            if (this.f59627f == null) {
                Function0 function0 = this.f59626e;
                this.f59627f = function0 != null ? (View) function0.invoke() : null;
            }
            View view2 = this.f59627f;
            if (view2 != null) {
                if (view2.getParent() != null) {
                    ViewParent parent = view2.getParent();
                    ViewGroup viewGroup2 = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                    if (viewGroup2 != null) {
                        viewGroup2.removeView(view2);
                    }
                }
                view2.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                viewGroup.addView(view2);
            }
        }
    }
}
