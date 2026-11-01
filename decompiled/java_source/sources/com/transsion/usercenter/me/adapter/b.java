package com.transsion.usercenter.me.adapter;

import android.view.View;
import android.widget.TextView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.share.R$string;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.profile.bean.MeItemInfo;
import com.transsion.usercenter.profile.bean.MineNoticeConfig;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b extends BaseItemProvider {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit A(MineNoticeConfig mineNoticeConfig, View it) {
        Intrinsics.h(it, "it");
        com.blankj.utilcode.util.g.a(mineNoticeConfig.getLink());
        com.tn.lib.widget.toast.core.h.f41479a.k(R$string.player_copy_link_success);
        com.transsion.usercenter.me.u.f57015a.b("copy_link");
        return Unit.f67061a;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return 9;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.mine_item_bottom_layout;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, MeItemInfo item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Object data = item.getData();
        final MineNoticeConfig mineNoticeConfig = data instanceof MineNoticeConfig ? (MineNoticeConfig) data : null;
        if (mineNoticeConfig == null) {
            return;
        }
        View itemView = helper.itemView;
        Intrinsics.g(itemView, "itemView");
        String bottomContent = mineNoticeConfig.getBottomContent();
        boolean z10 = true;
        itemView.setVisibility(!(bottomContent == null || bottomContent.length() == 0) ? 0 : 8);
        ((TextView) helper.getView(R$id.titleTv)).setText(mineNoticeConfig.getBottomContent());
        TextView textView = (TextView) helper.getView(R$id.copyTv);
        String link = mineNoticeConfig.getLink();
        if (link != null && link.length() != 0) {
            z10 = false;
        }
        textView.setVisibility(z10 ? 8 : 0);
        jg.c.c(textView, 0L, new Function1() { // from class: com.transsion.usercenter.me.adapter.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return b.A(mineNoticeConfig, (View) obj);
            }
        }, 1, null);
    }
}
