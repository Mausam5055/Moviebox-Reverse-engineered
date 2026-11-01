package qw;

import android.text.TextUtils;
import com.tencent.mmkv.MMKV;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import ti.p;

/* JADX INFO: loaded from: classes7.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f73882a = new c();

    private c() {
    }

    public final String a() {
        MMKV mmkvC = bh.a.f16469a.c();
        if (mmkvC != null) {
            return mmkvC.getString("key_user_agent", "");
        }
        return null;
    }

    public final void b() {
        try {
            Result.Companion companion = Result.INSTANCE;
            bh.a.C0148a c0148a = bh.a.f16469a;
            MMKV mmkvC = c0148a.c();
            Object objPutString = null;
            String string = mmkvC != null ? mmkvC.getString("key_custom_date", "") : null;
            if (TextUtils.isEmpty(string)) {
                return;
            }
            if (Intrinsics.c(p.f76266a.c(), string)) {
                lg.a.C0828a.g(lg.a.f68839a, "AdDeveloperUtil --> 特殊权限已授予", false, 2, null);
                objPutString = Unit.f67061a;
            } else {
                lg.a.C0828a.g(lg.a.f68839a, "AdDeveloperUtil --> 特殊权限授权已过期", false, 2, null);
                MMKV mmkvC2 = c0148a.c();
                if (mmkvC2 != null) {
                    mmkvC2.putString("sp_code", "");
                }
                MMKV mmkvC3 = c0148a.c();
                if (mmkvC3 != null) {
                    mmkvC3.putString("custom_local_iso", "");
                }
                MMKV mmkvC4 = c0148a.c();
                if (mmkvC4 != null) {
                    mmkvC4.putString("custom_local_country", "");
                }
                MMKV mmkvC5 = c0148a.c();
                if (mmkvC5 != null) {
                    objPutString = mmkvC5.putString("custom_country_code", "");
                }
            }
            Result.m454constructorimpl(objPutString);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
    }

    public final void c(String customDate) {
        Intrinsics.h(customDate, "customDate");
        MMKV mmkvC = bh.a.f16469a.c();
        if (mmkvC != null) {
            mmkvC.putString("key_custom_date", customDate);
        }
    }

    public final void d(String str) {
        MMKV mmkvC = bh.a.f16469a.c();
        if (mmkvC != null) {
            mmkvC.putString("key_user_agent", str);
        }
    }
}
