package com.transsion.member;

import com.transsion.memberapi.MemberRemindData;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class a1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a1 f46408a = new a1();

    private a1() {
    }

    public final boolean a(MemberRemindData memberRemindData, int i11) {
        String type;
        String remindUnit;
        String remindUnit2;
        if (memberRemindData == null || (type = memberRemindData.getType()) == null || type.length() == 0 || memberRemindData.getRemindValue() == null || (remindUnit = memberRemindData.getRemindUnit()) == null || remindUnit.length() == 0 || Intrinsics.c(memberRemindData.getType(), "REMIND_TYPE_UNSPECIFIED") || Intrinsics.c(memberRemindData.getRemindUnit(), "REMIND_UNIT_UNSPECIFIED") || (remindUnit2 = memberRemindData.getRemindUnit()) == null) {
            return false;
        }
        switch (remindUnit2) {
            case "REMIND_UNIT_HOUR":
                int i12 = i11 * 24;
                Integer remindValue = memberRemindData.getRemindValue();
                Intrinsics.e(remindValue);
                return i12 <= remindValue.intValue();
            case "REMIND_UNIT_MINUTE":
                int i13 = i11 * 1440;
                Integer remindValue2 = memberRemindData.getRemindValue();
                Intrinsics.e(remindValue2);
                return i13 <= remindValue2.intValue();
            case "REMIND_UNIT_MONTH":
                Integer remindValue3 = memberRemindData.getRemindValue();
                Intrinsics.e(remindValue3);
                return i11 <= remindValue3.intValue() * 30;
            case "REMIND_UNIT_DAY":
                Integer remindValue4 = memberRemindData.getRemindValue();
                Intrinsics.e(remindValue4);
                return i11 <= remindValue4.intValue();
            default:
                return false;
        }
    }
}
