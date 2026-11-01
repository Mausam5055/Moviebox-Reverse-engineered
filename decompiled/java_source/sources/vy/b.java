package vy;

import com.transsion.mb.config.manager.ConfigBean;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f77479a = new b();

    private b() {
    }

    public final int a() {
        Object objM454constructorimpl;
        String value;
        Integer numV;
        try {
            Result.Companion companion = Result.INSTANCE;
            ConfigBean configBeanC = sm.f.f75407c.a().c("login_method_config", true);
            objM454constructorimpl = Result.m454constructorimpl(Integer.valueOf((configBeanC == null || (value = configBeanC.getValue()) == null || (numV = StringsKt.v(value)) == null) ? 0 : numV.intValue()));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            objM454constructorimpl = 0;
        }
        return ((Number) objM454constructorimpl).intValue();
    }

    public final boolean b() {
        return a() == 1;
    }
}
