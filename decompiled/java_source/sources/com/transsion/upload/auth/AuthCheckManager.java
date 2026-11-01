package com.transsion.upload.auth;

import com.transsion.upload.bean.TstTokenEntity;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class AuthCheckManager {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static TstTokenEntity f56633b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AuthCheckManager f56632a = new AuthCheckManager();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final CopyOnWriteArrayList f56634c = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final AtomicBoolean f56635d = new AtomicBoolean(false);

    private AuthCheckManager() {
    }

    private final boolean e() {
        Object objM454constructorimpl;
        Long expireTime;
        try {
            Result.Companion companion = Result.INSTANCE;
            TstTokenEntity tstTokenEntity = f56633b;
            objM454constructorimpl = Result.m454constructorimpl(Boolean.valueOf(((tstTokenEntity == null || (expireTime = tstTokenEntity.getExpireTime()) == null) ? 0L : expireTime.longValue()) - ((long) 60) > System.currentTimeMillis() / ((long) 1000)));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            objM454constructorimpl = Boolean.FALSE;
        }
        return ((Boolean) objM454constructorimpl).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String g() {
        String simpleName = AuthCheckManager.class.getSimpleName();
        Intrinsics.g(simpleName, "javaClass.simpleName");
        return simpleName;
    }

    private final boolean h(a aVar) {
        AtomicBoolean atomicBoolean = f56635d;
        if (!atomicBoolean.get()) {
            atomicBoolean.set(true);
            return false;
        }
        f56634c.add(aVar);
        ew.a.f62032a.b(g() + " --> 正在请求中...");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i() {
        f56635d.set(false);
        for (a aVar : f56634c) {
            TstTokenEntity tstTokenEntity = f56633b;
            if (tstTokenEntity == null) {
                aVar.onFail("tstToken is empty");
            } else {
                aVar.a(tstTokenEntity);
            }
        }
        f56634c.clear();
        ew.a.f62032a.b(g() + " --> notifyCallback() --> clear()");
    }

    private final void j(a aVar) {
        if (h(aVar)) {
            return;
        }
        k.d(o0.a(y0.b()), null, null, new AuthCheckManager$requestAuth$1(aVar, null), 3, null);
    }

    public final void f(a aVar) {
        if (!e()) {
            j(aVar);
        } else if (aVar != null) {
            aVar.a(f56633b);
        }
    }
}
