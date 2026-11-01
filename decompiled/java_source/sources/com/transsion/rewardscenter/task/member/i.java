package com.transsion.rewardscenter.task.member;

import android.widget.TextView;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.rewardscenter.R$id;
import com.transsion.rewardscenterapi.MemberTaskItem;
import com.transsion.rewardscenterapi.TaskType;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class i extends BaseTaskCommonProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(wp.a config) {
        super(config);
        Intrinsics.h(config, "config");
    }

    @Override // com.transsion.rewardscenter.task.member.BaseTaskCommonProvider
    public String D(MemberTaskItem item) {
        Intrinsics.h(item, "item");
        return String.valueOf(item.getTitle());
    }

    @Override // com.transsion.rewardscenter.task.member.BaseTaskCommonProvider
    public boolean F(MemberTaskItem memberTaskItem) {
        return false;
    }

    @Override // com.transsion.rewardscenter.task.member.BaseTaskCommonProvider
    public void G() {
    }

    @Override // com.transsion.rewardscenter.task.member.BaseTaskCommonProvider
    public void K(TextView button, MemberTaskItem item) {
        String jumpUrl;
        Intrinsics.h(button, "button");
        Intrinsics.h(item, "item");
        String jumpUrl2 = item.getJumpUrl();
        if (jumpUrl2 == null || jumpUrl2.length() == 0) {
            jumpUrl = "https://h5-aoneroom.com/spa/fissionh5/pp";
        } else {
            jumpUrl = item.getJumpUrl();
            if (jumpUrl == null) {
                jumpUrl = "";
            }
        }
        zj.b.d(zj.b.f79427a, k(), "oneroom://com.community.oneroom?type=/web/web&url=" + jumpUrl, null, 4, null);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return TaskType.PALM_PAY.getValue();
    }

    @Override // com.transsion.rewardscenter.task.member.BaseTaskCommonProvider, com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: z */
    public void b(BaseViewHolder helper, MemberTaskItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        super.b(helper, item);
        TextView textView = (TextView) helper.getView(R$id.member_item_task_button);
        item.setStatus(0);
        E(textView, item);
    }
}
