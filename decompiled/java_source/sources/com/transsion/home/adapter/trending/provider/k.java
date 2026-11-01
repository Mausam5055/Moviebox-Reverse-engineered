package com.transsion.home.adapter.trending.provider;

import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.view.NoNetworkSmallView;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.moviedetailapi.bean.PostItemType;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class k extends BaseItemProvider {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit B(k kVar) {
        Function0<Unit> function0R1;
        BaseProviderMultiAdapter baseProviderMultiAdapterG = kVar.g();
        if ((baseProviderMultiAdapterG instanceof com.transsion.home.adapter.trending.b) && (function0R1 = ((com.transsion.home.adapter.trending.b) baseProviderMultiAdapterG).R1()) != null) {
            function0R1.invoke();
        }
        com.tn.lib.view.r.b(SubTabFragment.INSTANCE.a(HomeTabId.INSTANCE.g()));
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit C() {
        com.tn.lib.view.r.c(SubTabFragment.INSTANCE.a(HomeTabId.INSTANCE.g()));
        return Unit.f67061a;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, OperateItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        NoNetworkSmallView noNetworkSmallView = (NoNetworkSmallView) helper.getViewOrNull(R$id.no_network);
        if (noNetworkSmallView != null) {
            noNetworkSmallView.retry(new Function0() { // from class: com.transsion.home.adapter.trending.provider.i
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return k.B(this.f44768a);
                }
            });
            noNetworkSmallView.goToSetting(new Function0() { // from class: com.transsion.home.adapter.trending.provider.j
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return k.C();
                }
            });
        }
        com.tn.lib.view.r.a(SubTabFragment.INSTANCE.a(HomeTabId.INSTANCE.g()));
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return PostItemType.NO_NETWORK.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.item_no_network;
    }
}
