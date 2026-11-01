package com.transsion.usercenter.setting.adapter;

import android.widget.TextView;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class c extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f57370e = 2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f57371f = R$layout.dialog_locale_language_item;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return this.f57370e;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return this.f57371f;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder holder, vw.a item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        ((TextView) holder.getView(R$id.tv_language)).setText(item.a());
    }
}
