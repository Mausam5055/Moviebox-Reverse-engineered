package oq;

import android.content.Context;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.g;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.bean.SearchSubject;
import ej.f;
import jn.e;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b extends BaseItemProvider {
    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return 0;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.item_works_layout_room;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, SearchSubject item) {
        String url;
        String thumbnail;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Context context = helper.itemView.getContext();
        ImageView imageView = (ImageView) helper.itemView.findViewById(R$id.ivCover);
        Cover cover = item.getCover();
        if (cover != null && (url = cover.getUrl()) != null) {
            f.a aVar = f.f61882a;
            Intrinsics.e(context);
            f.b bVarG = aVar.m(context).g(url);
            Cover cover2 = item.getCover();
            if (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) {
                thumbnail = "";
            }
            f.b bVarL = bVarG.l(thumbnail);
            Intrinsics.e(imageView);
            bVarL.d(imageView);
        }
        helper.setText(R$id.tvSubject, item.getTitle());
        AppCompatTextView appCompatTextView = (AppCompatTextView) helper.getViewOrNull(R$id.tvTag);
        if (appCompatTextView != null) {
            appCompatTextView.setText(e.f66245a.e(item));
            appCompatTextView.setCompoundDrawablesWithIntrinsicBounds(g.a(item.getSubjectType()), 0, 0, 0);
        }
    }
}
