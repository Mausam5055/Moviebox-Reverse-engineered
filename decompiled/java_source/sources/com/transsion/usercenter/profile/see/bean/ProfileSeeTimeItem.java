package com.transsion.usercenter.profile.see.bean;

import androidx.annotation.Keep;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import n6.a;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0007\u001a\u0004\b\b\u0010\tR\u0014\u0010\r\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/transsion/usercenter/profile/see/bean/ProfileSeeTimeItem;", "Ln6/a;", "Ljava/io/Serializable;", "", "date", "<init>", "(Ljava/lang/String;)V", "Ljava/lang/String;", "getDate", "()Ljava/lang/String;", "", "getItemType", "()I", "itemType", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ProfileSeeTimeItem implements a, Serializable {
    private final String date;

    public ProfileSeeTimeItem(String date) {
        Intrinsics.h(date, "date");
        this.date = date;
    }

    public final String getDate() {
        return this.date;
    }

    @Override // n6.a
    public int getItemType() {
        return 1;
    }
}
