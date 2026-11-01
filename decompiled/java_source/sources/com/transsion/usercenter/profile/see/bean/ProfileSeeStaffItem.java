package com.transsion.usercenter.profile.see.bean;

import com.transsion.moviedetailapi.bean.Staff;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import n6.a;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\t\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcom/transsion/usercenter/profile/see/bean/ProfileSeeStaffItem;", "Lcom/transsion/moviedetailapi/bean/Staff;", "Ln6/a;", "Ljava/io/Serializable;", "<init>", "()V", "", "getItemType", "()I", "itemType", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ProfileSeeStaffItem extends Staff implements a, Serializable {
    @Override // n6.a
    public int getItemType() {
        return 3;
    }
}
