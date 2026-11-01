package com.transsion.usercenter.me.adapter;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.widget.R$mipmap;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.profile.bean.ButtonInfo;
import com.transsion.usercenter.profile.bean.MeItemInfo;
import com.transsion.usercenter.profile.bean.ZeroInfo;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class h0 extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final o f56944e;

    /* JADX WARN: Multi-variable type inference failed */
    public h0() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public h0(o oVar) {
        this.f56944e = oVar;
    }

    public /* synthetic */ h0(o oVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : oVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit A(ButtonInfo buttonInfo, h0 h0Var, MeItemInfo meItemInfo, View it) {
        Function1<MeItemInfo, Unit> function1Q1;
        String link;
        Intrinsics.h(it, "it");
        if (buttonInfo != null && (link = buttonInfo.getLink()) != null) {
            ak.k.h(link, null, 1, null);
        }
        com.transsion.usercenter.me.u.f57015a.b("free_buy");
        o oVar = h0Var.f56944e;
        if (oVar != null && (function1Q1 = oVar.Q1()) != null) {
            function1Q1.invoke(meItemInfo);
        }
        return Unit.f67061a;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return 3;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.mine_item_vip_layout;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, final MeItemInfo item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Object data = item.getData();
        ZeroInfo zeroInfo = data instanceof ZeroInfo ? (ZeroInfo) data : null;
        if (zeroInfo == null) {
            return;
        }
        final ButtonInfo button = zeroInfo.getButton();
        View itemView = helper.itemView;
        Intrinsics.g(itemView, "itemView");
        jg.c.c(itemView, 0L, new Function1() { // from class: com.transsion.usercenter.me.adapter.g0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return h0.A(button, this, item, (View) obj);
            }
        }, 1, null);
        ((TextView) helper.getView(R$id.titleTv)).setText(zeroInfo.getTitle());
        TextView textView = (TextView) helper.getView(R$id.desTv);
        textView.setText(zeroInfo.getSubtitle());
        String subtitle = zeroInfo.getSubtitle();
        textView.setVisibility(!(subtitle == null || subtitle.length() == 0) ? 0 : 8);
        ej.f.f61882a.m(k()).g(zeroInfo.getIconUrl()).i(R$mipmap.ic_point_purchase).d((ImageView) helper.getView(R$id.icIV));
        TextView textView2 = (TextView) helper.getView(R$id.btnTv);
        View view = helper.getView(R$id.arrowIV);
        textView2.setVisibility(8);
        view.setVisibility(8);
        if (zeroInfo.getShowButton()) {
            String type = button != null ? button.getType() : null;
            if (Intrinsics.c(type, "TEXT")) {
                textView2.setText(button.getText());
                textView2.setVisibility(0);
            } else if (Intrinsics.c(type, "ARROW")) {
                view.setVisibility(0);
            }
        }
    }
}
