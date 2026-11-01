package com.transsion.usercenter.setting.adapter;

import android.view.View;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.tn.lib.view.SwitchButton;
import com.tn.lib.widget.TnTextView;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class g extends BaseItemProvider {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(BaseViewHolder baseViewHolder, View view) {
        baseViewHolder.getView(R$id.llRoot).performClick();
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public void f(BaseViewHolder helper, vw.b item, List payloads) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        super.f(helper, item, payloads);
        SwitchButton switchButton = (SwitchButton) helper.getViewOrNull(R$id.switchBtn);
        if (switchButton != null) {
            switchButton.setChecked(item.f());
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return 3;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.user_item_switch_setting;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void b(final BaseViewHolder helper, vw.b item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        ((TnTextView) helper.getView(R$id.tvTitle)).setTextById(item.i());
        TnTextView tnTextView = (TnTextView) helper.getView(R$id.tvDes);
        String strB = item.b();
        tnTextView.setVisibility(!(strB == null || strB.length() == 0) ? 0 : 8);
        if (tnTextView.getVisibility() == 0) {
            tnTextView.setText(item.b());
        }
        helper.getView(R$id.divider).setVisibility(item.d() ? 0 : 8);
        helper.getView(R$id.tvNew).setVisibility(item.e() ? 0 : 8);
        SwitchButton switchButton = (SwitchButton) helper.getView(R$id.switchBtn);
        switchButton.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.usercenter.setting.adapter.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                g.B(helper, view);
            }
        });
        switchButton.setChecked(item.f());
        View viewOrNull = helper.getViewOrNull(R$id.bgView);
        if (viewOrNull != null) {
            Integer numA = item.a();
            viewOrNull.setBackgroundResource(numA != null ? numA.intValue() : 0);
        }
    }
}
