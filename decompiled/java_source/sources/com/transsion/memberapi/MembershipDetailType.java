package com.transsion.memberapi;

import androidx.annotation.Keep;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\n\b\u0087\u0081\u0002\u0018\u0000 \u00042\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0005B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/transsion/memberapi/MembershipDetailType;", "", "<init>", "(Ljava/lang/String;I)V", "Companion", "a", "GUEST", "TRIAL", "SUBSCRIPTION_MEMBER", "FINANCIAL_MEMBER", "EXPIRED", "MemberApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum MembershipDetailType {
    GUEST,
    TRIAL,
    SUBSCRIPTION_MEMBER,
    FINANCIAL_MEMBER,
    EXPIRED;

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: com.transsion.memberapi.MembershipDetailType$a, reason: from kotlin metadata */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MembershipDetailType a(MemberInfo memberInfo) {
            if (memberInfo == null || !memberInfo.isActive()) {
                return (memberInfo == null || memberInfo.getMemberType() != 0) ? MembershipDetailType.EXPIRED : MembershipDetailType.GUEST;
            }
            if (memberInfo.getMemberType() == 1) {
                return MembershipDetailType.TRIAL;
            }
            return memberInfo.isAutoRenew() ? MembershipDetailType.SUBSCRIPTION_MEMBER : MembershipDetailType.FINANCIAL_MEMBER;
        }
    }

    public static EnumEntries<MembershipDetailType> getEntries() {
        return $ENTRIES;
    }
}
