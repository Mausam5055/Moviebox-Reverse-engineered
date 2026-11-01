package com.transsion.rewardscenter.task.member;

import android.widget.TextView;
import com.transsion.rewardscenterapi.MemberTaskItem;
import com.transsion.rewardscenterapi.TaskType;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes6.dex */
public final class g extends BaseTaskCommonProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(wp.a config) {
        super(config);
        Intrinsics.h(config, "config");
    }

    @Override // com.transsion.rewardscenter.task.member.BaseTaskCommonProvider
    public String D(MemberTaskItem item) {
        Intrinsics.h(item, "item");
        Integer durationCondition = item.getDurationCondition();
        long jIntValue = ((long) (durationCondition != null ? durationCondition.intValue() : 0)) / 60;
        long j11 = RangesKt.j(xm.k.f78381a.D(), jIntValue);
        return item.getTitle() + " (" + j11 + "/" + jIntValue + " mins)";
    }

    @Override // com.transsion.rewardscenter.task.member.BaseTaskCommonProvider
    public boolean F(MemberTaskItem memberTaskItem) {
        Integer status;
        Integer durationCondition;
        return (memberTaskItem == null || (status = memberTaskItem.getStatus()) == null || status.intValue() != 3) && xm.k.f78381a.D() >= ((long) ((memberTaskItem == null || (durationCondition = memberTaskItem.getDurationCondition()) == null) ? 0 : durationCondition.intValue())) / 60;
    }

    @Override // com.transsion.rewardscenter.task.member.BaseTaskCommonProvider
    public void K(TextView button, MemberTaskItem item) {
        String jumpUrl;
        Intrinsics.h(button, "button");
        Intrinsics.h(item, "item");
        String jumpUrl2 = item.getJumpUrl();
        if (jumpUrl2 == null || jumpUrl2.length() == 0) {
            jumpUrl = "oneroom://com.community.oneroom?type=/main/tab&bottomTab=home&topTab=Game";
        } else {
            jumpUrl = item.getJumpUrl();
            if (jumpUrl == null) {
                jumpUrl = "";
            }
        }
        zj.b.d(zj.b.f79427a, k(), jumpUrl, null, 4, null);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return TaskType.GAME_RES_BROWSE.getValue();
    }
}
