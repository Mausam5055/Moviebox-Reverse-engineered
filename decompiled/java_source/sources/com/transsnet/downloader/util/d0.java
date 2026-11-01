package com.transsnet.downloader.util;

import com.tencent.mmkv.MMKV;
import com.transsion.mb.config.manager.ConfigBean;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public final class d0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f59928c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f59929d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d0 f59926a = new d0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f59927b = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.util.c0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return d0.f();
        }
    });

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f59930e = 20;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f59931f = 3;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static CopyOnWriteArrayList f59932g = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final androidx.p009lifecycle.b0 f59933h = new androidx.p009lifecycle.b0();

    private d0() {
    }

    private final int b() {
        int iOptInt;
        String value;
        if (f59928c <= 0) {
            try {
                ConfigBean configBeanC = sm.f.f75407c.a().c("shorts_unlock_config", true);
                iOptInt = (configBeanC == null || (value = configBeanC.getValue()) == null) ? f59930e : new JSONObject(value).optInt("maxUnlockCount");
            } catch (Exception unused) {
                iOptInt = f59930e;
            }
            f59928c = iOptInt;
        }
        return f59928c;
    }

    private final MMKV d() {
        return (MMKV) f59927b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MMKV f() {
        MMKV mmkvI = MMKV.I("short_tv");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final int c(String subjectId) {
        Intrinsics.h(subjectId, "subjectId");
        return d().getInt(subjectId, b());
    }

    public final int e() {
        int iOptInt;
        String value;
        if (f59929d <= 0) {
            try {
                ConfigBean configBeanC = sm.f.f75407c.a().c("shorts_unlock_config", true);
                iOptInt = (configBeanC == null || (value = configBeanC.getValue()) == null) ? f59931f : new JSONObject(value).optInt("perUnlockCount");
            } catch (Exception unused) {
                iOptInt = f59931f;
            }
            f59929d = iOptInt;
        }
        return f59929d;
    }

    public final void g(String subjectId, int i11) {
        Intrinsics.h(subjectId, "subjectId");
        d().putInt(subjectId, i11);
        Iterator it = f59932g.iterator();
        while (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
        }
    }
}
