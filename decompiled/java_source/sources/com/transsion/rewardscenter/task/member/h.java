package com.transsion.rewardscenter.task.member;

import android.widget.TextView;
import com.transsion.rewardscenterapi.MemberTaskItem;
import com.transsion.rewardscenterapi.TaskType;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class h extends BaseTaskCommonProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(wp.a config) {
        super(config);
        Intrinsics.h(config, "config");
    }

    @Override // com.transsion.rewardscenter.task.member.BaseTaskCommonProvider
    public void E(TextView button, MemberTaskItem item) {
        Intrinsics.h(button, "button");
        Intrinsics.h(item, "item");
        super.E(button, item);
        button.setAlpha(0.5f);
    }

    @Override // com.transsion.rewardscenter.task.member.BaseTaskCommonProvider
    public void K(TextView button, MemberTaskItem item) {
        Intrinsics.h(button, "button");
        Intrinsics.h(item, "item");
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return TaskType.OPEN_APP.getValue();
    }
}
