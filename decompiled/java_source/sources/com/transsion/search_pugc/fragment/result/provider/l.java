package com.transsion.search_pugc.fragment.result.provider;

import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.search.R$layout;
import com.transsion.search_pugc.bean.SearchResultItem;
import com.transsion.search_pugc.constant.SearchType;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class l extends BaseItemProvider {
    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return SearchType.UNKNOW.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.provider_result_unkown;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, SearchResultItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
    }
}
