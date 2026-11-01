package com.transsion.usercenter.setting.dev;

import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.t0;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class f extends t0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f57391a = LazyKt.b(new Function0() { // from class: com.transsion.usercenter.setting.dev.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return f.c();
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public static final b0 c() {
        return new b0();
    }

    public final b0 d() {
        return (b0) this.f57391a.getValue();
    }

    public final void e(int i11, int i12, String id2) {
        Intrinsics.h(id2, "id");
        ArrayList arrayList = new ArrayList();
        int i13 = 1;
        if (1 <= i12) {
            while (true) {
                arrayList.add("page = " + i11 + " --- pageSize = " + i12 + " --- id = " + id2);
                if (i13 == i12) {
                    break;
                } else {
                    i13++;
                }
            }
        }
        d().n(arrayList);
    }
}
