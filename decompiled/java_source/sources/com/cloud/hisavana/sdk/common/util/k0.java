package com.cloud.hisavana.sdk.common.util;

import android.util.Log;
import com.cloud.hisavana.abtestkit.ABTestKit;
import com.cloud.hisavana.sdk.c2;
import com.cloud.hisavana.sdk.c6;
import com.cloud.hisavana.sdk.database.HSRoomDatabase;
import com.cloud.hisavana.sdk.f5;
import com.cloud.hisavana.sdk.m1;
import com.cloud.hisavana.sdk.v0;
import com.cloud.hisavana.sdk.v3;
import com.cloud.sdk.commonutil.util.HSScopeHelper;

/* JADX INFO: loaded from: classes3.dex */
public final class k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final k0 f22161a = new k0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static HSRoomDatabase f22162b;

    private k0() {
    }

    public static final void b(boolean z10) {
        int iG = j7.a.e().g("key_data_status", -1);
        final int i11 = !z10 ? 1 : 0;
        com.cloud.sdk.commonutil.util.c.Log().i("TestChecker", "sp save env status = " + iG + " and isDebug = " + z10);
        if (iG == -1) {
            j7.a.e().p("key_data_status", i11);
        } else if (iG != i11) {
            HSScopeHelper.f23167a.i(new Runnable() { // from class: com.cloud.hisavana.sdk.common.util.j0
                @Override // java.lang.Runnable
                public final void run() {
                    k0.c(i11);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(int i11) {
        f22161a.d();
        j7.a.e().p("key_data_status", i11);
    }

    private final void d() {
        try {
            j7.a.e().b();
        } catch (Exception e11) {
            com.cloud.sdk.commonutil.util.c.Log().e("TestChecker", "delete sp fail = " + e11.getMessage());
        }
        e();
    }

    private final void e() {
        f5 f5VarK0;
        c6 c6VarN0;
        m1 m1VarX0;
        c2 c2VarT0;
        v3 v3VarH0;
        v0 v0VarP0;
        com.cloud.sdk.commonutil.util.c.Log().i("TestChecker", "execSQL delete");
        try {
            f();
            HSRoomDatabase hSRoomDatabase = f22162b;
            if (hSRoomDatabase != null && (v0VarP0 = hSRoomDatabase.p0()) != null) {
                v0VarP0.a();
            }
            HSRoomDatabase hSRoomDatabase2 = f22162b;
            if (hSRoomDatabase2 != null && (v3VarH0 = hSRoomDatabase2.h0()) != null) {
                v3VarH0.a();
            }
            HSRoomDatabase hSRoomDatabase3 = f22162b;
            if (hSRoomDatabase3 != null && (c2VarT0 = hSRoomDatabase3.t0()) != null) {
                c2VarT0.b();
            }
            HSRoomDatabase hSRoomDatabase4 = f22162b;
            if (hSRoomDatabase4 != null && (m1VarX0 = hSRoomDatabase4.x0()) != null) {
                m1VarX0.b();
            }
            HSRoomDatabase hSRoomDatabase5 = f22162b;
            if (hSRoomDatabase5 != null && (c6VarN0 = hSRoomDatabase5.n0()) != null) {
                c6VarN0.a();
            }
            HSRoomDatabase hSRoomDatabase6 = f22162b;
            if (hSRoomDatabase6 != null && (f5VarK0 = hSRoomDatabase6.k0()) != null) {
                f5VarK0.a();
            }
            ABTestKit.deleteTable();
        } catch (Exception e11) {
            com.cloud.sdk.commonutil.util.c.Log().e("TestChecker", "delete db fail = " + e11.getMessage());
        }
    }

    public final synchronized void f() {
        HSRoomDatabase hSRoomDatabase = f22162b;
        if (hSRoomDatabase == null || !hSRoomDatabase.S()) {
            try {
                f22162b = HSRoomDatabase.v0();
            } catch (Exception e11) {
                com.cloud.sdk.commonutil.util.c.Log().e("TestChecker", "openDB ex " + Log.getStackTraceString(e11));
            }
        }
    }
}
