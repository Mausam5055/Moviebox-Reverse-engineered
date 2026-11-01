package com.transsion.ad.scene;

import android.app.Application;
import com.blankj.utilcode.util.Utils;
import com.transsion.ad.db.MbAdDatabase;
import com.transsion.ad.db.scene.AdSceneLimitDao;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import ti.p;

/* JADX INFO: loaded from: classes5.dex */
public final class AdSceneDisplayLimitManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AdSceneDisplayLimitManager f42199a = new AdSceneDisplayLimitManager();

    private AdSceneDisplayLimitManager() {
    }

    public final Object a(String str, Continuation continuation) {
        MbAdDatabase.Companion nVar = MbAdDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        AdSceneLimitDao adSceneLimitDaoV0 = nVar.b(applicationA).v0();
        String strC = p.f76266a.c();
        long jCurrentTimeMillis = System.currentTimeMillis();
        a aVar = a.f42201a;
        return adSceneLimitDaoV0.b(str, strC, jCurrentTimeMillis, ((long) aVar.f(str)) * 1000, aVar.d(str), continuation);
    }

    public final void b(String sceneId) {
        Intrinsics.h(sceneId, "sceneId");
        k.d(o0.a(y0.b()), null, null, new AdSceneDisplayLimitManager$recordDisplay$1(sceneId, null), 3, null);
    }
}
