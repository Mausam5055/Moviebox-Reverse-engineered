package com.transsion.rewardscenter.task.member;

import android.widget.TextView;
import com.transsion.rewardscenterapi.MemberTaskItem;
import com.transsion.rewardscenterapi.TaskType;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes6.dex */
public final class e extends BaseTaskCommonProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(wp.a config) {
        super(config);
        Intrinsics.h(config, "config");
    }

    @Override // com.transsion.rewardscenter.task.member.BaseTaskCommonProvider
    public String D(MemberTaskItem item) {
        Intrinsics.h(item, "item");
        Integer timesCondition = item.getTimesCondition();
        int iIntValue = timesCondition != null ? timesCondition.intValue() : 0;
        int i11 = RangesKt.i(xm.k.f78381a.G(), iIntValue);
        return item.getTitle() + " (" + i11 + "/" + iIntValue + ")";
    }

    @Override // com.transsion.rewardscenter.task.member.BaseTaskCommonProvider
    public boolean F(MemberTaskItem memberTaskItem) {
        Integer timesCondition;
        return xm.k.f78381a.G() >= ((memberTaskItem == null || (timesCondition = memberTaskItem.getTimesCondition()) == null) ? 0 : timesCondition.intValue());
    }

    @Override // com.transsion.rewardscenter.task.member.BaseTaskCommonProvider
    public void G() {
        xm.k.f78381a.u();
    }

    @Override // com.transsion.rewardscenter.task.member.BaseTaskCommonProvider
    public void K(TextView button, MemberTaskItem item) {
        String jumpUrl;
        Intrinsics.h(button, "button");
        Intrinsics.h(item, "item");
        String jumpUrl2 = item.getJumpUrl();
        if (jumpUrl2 == null || jumpUrl2.length() == 0) {
            jumpUrl = "oneroom://com.community.oneroom?type=/main/tab&tabIndex=0";
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
        return TaskType.DOWNLOAD_MOVIE.getValue();
    }
}
