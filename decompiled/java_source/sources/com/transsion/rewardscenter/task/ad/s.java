package com.transsion.rewardscenter.task.ad;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.rewardscenter.R$layout;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class s extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f51120e = AdTaskType.TITLE.getValue();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f51121f = R$layout.member_task_title_item;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return this.f51120e;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return this.f51121f;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public BaseViewHolder r(ViewGroup parent, int i11) {
        Intrinsics.h(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(m(), parent, false);
        Intrinsics.e(viewInflate);
        return new BaseViewHolder(viewInflate);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, v item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
    }
}
