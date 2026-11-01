package wq;

import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.bean.SuggestEntity;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a extends BaseItemProvider {
    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return 0;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.fragment_search_suggest_copy_writing_layout;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, SuggestEntity item) {
        String strQ1;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        int i11 = R$id.tvSearchSuggest;
        com.transsion.search.fragment.suggest.d.Companion aVar = com.transsion.search.fragment.suggest.d.INSTANCE;
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        com.transsion.search.fragment.suggest.d dVar = baseProviderMultiAdapterG instanceof com.transsion.search.fragment.suggest.d ? (com.transsion.search.fragment.suggest.d) baseProviderMultiAdapterG : null;
        if (dVar == null || (strQ1 = dVar.getMKeyWord()) == null) {
            strQ1 = "";
        }
        helper.setText(i11, aVar.a(strQ1, item.getWord()));
    }
}
