package com.cloud.hisavana.sdk;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
public final class k5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final k5 f22606a = new k5();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Integer f22607b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Integer f22608c;

    private k5() {
    }

    public static final void b(Integer num, Integer num2) {
        if (num != null) {
            f22607b = num;
            j7.a.e().p("show_data_sync_time_interval", num.intValue());
        }
        if (num2 != null) {
            f22608c = num2;
            j7.a.e().p("click_data_sync_time_interval", num2.intValue());
        }
        e4.b().i("AttrDataManager", "showDataSyncTimeInterval = " + num + "，clickDataSyncTimeInterval = " + num2);
        y.f23090a.h();
    }

    public final int a() {
        if (f22608c == null) {
            f22608c = Integer.valueOf(j7.a.e().g("click_data_sync_time_interval", -1));
        }
        Integer num = f22608c;
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }

    public final void c(Function1 function1, Function0 function0, Function0 function2) {
        int iA = a();
        e4.b().i("AttrDataManager", "clickDataSyncAction timeInterval = " + iA);
        if (iA > 0) {
            if (function1 != null) {
                function1.invoke(Integer.valueOf(iA));
            }
        } else if (iA == 0) {
            if (function0 != null) {
                function0.invoke();
            }
        } else if (function2 != null) {
            function2.invoke();
        }
    }

    public final int d() {
        if (f22607b == null) {
            f22607b = Integer.valueOf(j7.a.e().g("show_data_sync_time_interval", -1));
        }
        Integer num = f22607b;
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }
}
