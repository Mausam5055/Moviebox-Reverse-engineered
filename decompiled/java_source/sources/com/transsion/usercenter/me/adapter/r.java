package com.transsion.usercenter.me.adapter;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.baselib.kids.KidsAccountManager;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.kids.AccountSwitchDialog;
import com.transsion.usercenter.kids.CreateKidsProfileDialog;
import com.transsion.usercenter.profile.bean.MeItemInfo;
import com.transsion.usercenter.profile.bean.MineNoticeConfig;
import java.util.Locale;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class r extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f56963e = "open_account";

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit A(MineNoticeConfig mineNoticeConfig, r rVar, View it) {
        String lowerCase;
        Intrinsics.h(it, "it");
        String noticeDeepLink = mineNoticeConfig.getNoticeDeepLink();
        if (noticeDeepLink == null || noticeDeepLink.length() == 0) {
            return Unit.f67061a;
        }
        com.transsion.usercenter.me.u.f57015a.b("notice");
        String noticeDeepLink2 = mineNoticeConfig.getNoticeDeepLink();
        if (noticeDeepLink2 != null) {
            lowerCase = noticeDeepLink2.toLowerCase(Locale.ROOT);
            Intrinsics.g(lowerCase, "toLowerCase(...)");
        } else {
            lowerCase = null;
        }
        if (Intrinsics.c(lowerCase, rVar.f56963e)) {
            String strE = KidsAccountManager.f43286a.e();
            if (strE == null || strE.length() == 0) {
                CreateKidsProfileDialog.Companion.b(CreateKidsProfileDialog.INSTANCE, false, false, false, 7, null).X(rVar.k(), "CreateKidsProfileDialog");
            } else {
                AccountSwitchDialog.Companion.b(AccountSwitchDialog.INSTANCE, false, 1, null).X(rVar.k(), "AccountSwitchDialog");
            }
        } else {
            String noticeDeepLink3 = mineNoticeConfig.getNoticeDeepLink();
            if (noticeDeepLink3 != null) {
                ak.k.h(noticeDeepLink3, null, 1, null);
            }
        }
        return Unit.f67061a;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return 8;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.mine_item_notice_layout;
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
        itemView.setVisibility(mineNoticeConfig.getNoticeEnable() ? 0 : 8);
        ((TextView) helper.getView(R$id.titleTv)).setText(mineNoticeConfig.getNoticeContent());
        ImageView imageView = (ImageView) helper.getView(R$id.arrowIV);
        String noticeDeepLink = mineNoticeConfig.getNoticeDeepLink();
        if (noticeDeepLink == null || noticeDeepLink.length() == 0) {
            jg.c.g(imageView);
        } else {
            jg.c.k(imageView);
        }
        View itemView2 = helper.itemView;
        Intrinsics.g(itemView2, "itemView");
        jg.c.c(itemView2, 0L, new Function1() { // from class: com.transsion.usercenter.me.adapter.q
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return r.A(mineNoticeConfig, this, (View) obj);
            }
        }, 1, null);
    }
}
