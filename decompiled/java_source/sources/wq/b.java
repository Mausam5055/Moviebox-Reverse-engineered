package wq;

import android.widget.ImageView;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.search.R$drawable;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.bean.SuggestEntity;
import com.transsion.search.bean.VerticalRank;
import ej.f;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b extends BaseItemProvider {
    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return 2;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.fragment_search_suggest_list_cover_layout;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, SuggestEntity item) {
        String url;
        String strQ1;
        Cover cover;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        f.b bVarM = f.f61882a.m(k());
        VerticalRank verticalRank = item.getVerticalRank();
        String str = "";
        if (verticalRank == null || (cover = verticalRank.getCover()) == null || (url = cover.getUrl()) == null) {
            url = "";
        }
        bVarM.g(url).i(R$drawable.ic_list_cover).d((ImageView) helper.getView(R$id.ivCover));
        int i11 = R$id.tvTitle;
        com.transsion.search.fragment.suggest.d.Companion aVar = com.transsion.search.fragment.suggest.d.INSTANCE;
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        com.transsion.search.fragment.suggest.d dVar = baseProviderMultiAdapterG instanceof com.transsion.search.fragment.suggest.d ? (com.transsion.search.fragment.suggest.d) baseProviderMultiAdapterG : null;
        if (dVar != null && (strQ1 = dVar.getMKeyWord()) != null) {
            str = strQ1;
        }
        VerticalRank verticalRank2 = item.getVerticalRank();
        helper.setText(i11, aVar.a(str, verticalRank2 != null ? verticalRank2.getTitle() : null));
        int i12 = R$id.tvDes;
        VerticalRank verticalRank3 = item.getVerticalRank();
        helper.setText(i12, verticalRank3 != null ? verticalRank3.getDescription() : null);
    }
}
