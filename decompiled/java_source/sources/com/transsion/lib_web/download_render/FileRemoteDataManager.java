package com.transsion.lib_web.download_render;

import com.blankj.utilcode.util.o;
import com.tencent.mmkv.MMKV;
import com.transsion.lib_web.download_render.data.config.ConfigData;
import com.transsion.lib_web.download_render.timer.SyncDataTimerTask;
import com.transsion.mb.config.manager.ConfigBean;
import gm.i;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.k;
import kotlinx.coroutines.m1;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;

/* JADX INFO: loaded from: classes5.dex */
public final class FileRemoteDataManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FileRemoteDataManager f46158a = new FileRemoteDataManager();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final AtomicBoolean f46159b = new AtomicBoolean(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final nm.b f46160c = new nm.b();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final SyncDataTimerTask f46161d = new SyncDataTimerTask();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final n0 f46162e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Lazy f46163f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Lazy f46164g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f46165h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static String f46166i;

    static {
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        Intrinsics.g(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor(...)");
        f46162e = o0.a(m1.c(executorServiceNewSingleThreadExecutor));
        f46163f = LazyKt.b(new Function0() { // from class: com.transsion.lib_web.download_render.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return FileRemoteDataManager.f();
            }
        });
        f46164g = LazyKt.b(new Function0() { // from class: com.transsion.lib_web.download_render.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return FileRemoteDataManager.j();
            }
        });
        f46165h = "requestTime";
        f46166i = "wefeed-mobile-bff";
    }

    private FileRemoteDataManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final g f() {
        return (g) zg.c.f79414e.a().h(g.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final g g() {
        return (g) f46163f.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final MMKV h() {
        Object value = f46164g.getValue();
        Intrinsics.g(value, "getValue(...)");
        return (MMKV) value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV j() {
        return MMKV.I("web_file_download_with_render_request");
    }

    public final String i() {
        return f46166i;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0034  */
    public final void k() {
        String str;
        String value;
        try {
            long jCurrentTimeMillis = System.currentTimeMillis() - h().getLong(f46165h, 0L);
            long requestMinInterval = 3600000;
            try {
                ConfigBean configBeanD = sm.f.d(sm.f.f75407c.a(), "dr_config", false, 2, null);
                if (configBeanD == null || (value = configBeanD.getValue()) == null) {
                    str = "{}";
                } else {
                    str = StringsKt.q0(value) ? null : value;
                    if (str == null) {
                        str = "{}";
                    }
                }
                requestMinInterval = ((ConfigData) o.d(str, ConfigData.class)).getRequestMinInterval();
                i.f63883a.a("DR_Config", "config:" + str + ", intervalTime:" + requestMinInterval);
            } catch (Throwable unused) {
            }
            if (jCurrentTimeMillis > requestMinInterval) {
                m();
            }
        } catch (Throwable unused2) {
        }
    }

    public final void l(String str) {
        Intrinsics.h(str, "<set-?>");
        f46166i = str;
    }

    public final void m() {
        k.d(f46162e, null, null, new FileRemoteDataManager$syncData$1(null), 3, null);
    }
}
