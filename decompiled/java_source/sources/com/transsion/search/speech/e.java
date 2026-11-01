package com.transsion.search.speech;

import com.blankj.utilcode.util.Utils;
import com.transsion.search.R$string;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f52213a = new e();

    private e() {
    }

    public final String a(int i11) {
        if (i11 == 1 || i11 == 2) {
            String string = Utils.a().getResources().getString(R$string.search_sr_try_again);
            Intrinsics.e(string);
            return string;
        }
        if (i11 == 6 || i11 == 7) {
            String string2 = Utils.a().getResources().getString(R$string.search_sr_try_speaking_again);
            Intrinsics.e(string2);
            return string2;
        }
        if (i11 != 16) {
            String string3 = Utils.a().getResources().getString(R$string.search_sr_wrong_try_again);
            Intrinsics.e(string3);
            return string3;
        }
        String string4 = Utils.a().getResources().getString(R$string.search_sr_cancelled);
        Intrinsics.e(string4);
        return string4;
    }
}
