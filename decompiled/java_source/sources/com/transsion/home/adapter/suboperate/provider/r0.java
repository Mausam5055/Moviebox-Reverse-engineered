package com.transsion.home.adapter.suboperate.provider;

import android.view.View;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.OperateItem;
import com.transsion.moviedetailapi.bean.PostItemType;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class r0 extends BaseItemProvider {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(View view) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(OperateItem operateItem, View view) {
        String deepLink = operateItem.getDeepLink();
        if (deepLink != null) {
            ak.k.h(deepLink, null, 1, null);
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, final OperateItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        helper.itemView.setTag("TrendingTitle");
        helper.setText(R$id.sub_operation_title_text, item.getTitle());
        helper.setGone(R$id.sub_operation_title_more, true);
        helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.suboperate.provider.p0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                r0.B(view);
            }
        });
        String deepLink = item.getDeepLink();
        if (deepLink == null || deepLink.length() == 0) {
            return;
        }
        helper.setVisible(R$id.sub_operation_title_more, true);
        helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.home.adapter.suboperate.provider.q0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                r0.C(item, view);
            }
        });
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return PostItemType.FEEDS_TITLE.ordinal();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.item_sub_operation_title;
    }
}
