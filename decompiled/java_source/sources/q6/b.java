package q6;

import android.view.View;
import android.view.ViewGroup;
import com.chad.library.R$id;
import com.chad.library.R$layout;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class b extends a {
    @Override // q6.a
    public View getLoadComplete(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        return holder.getView(R$id.load_more_load_complete_view);
    }

    @Override // q6.a
    public View getLoadEndView(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        return holder.getView(R$id.load_more_load_end_view);
    }

    @Override // q6.a
    public View getLoadFailView(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        return holder.getView(R$id.load_more_load_fail_view);
    }

    @Override // q6.a
    public View getLoadingView(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        return holder.getView(R$id.load_more_loading_view);
    }

    @Override // q6.a
    public View getRootView(ViewGroup parent) {
        Intrinsics.h(parent, "parent");
        return s6.a.a(parent, R$layout.brvah_quick_view_load_more);
    }
}
