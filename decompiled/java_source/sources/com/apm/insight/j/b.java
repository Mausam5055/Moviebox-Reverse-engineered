package com.apm.insight.j;

import android.content.Context;
import android.os.Handler;
import com.apm.insight.e;
import com.apm.insight.runtime.m;
import com.apm.insight.runtime.o;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Runnable f19569b = new Runnable() { // from class: com.apm.insight.j.b.1
        @Override // java.lang.Runnable
        public final void run() {
            m.a().a().removeCallbacks(this);
            m.a().a(new b(m.a().a(), e.g()));
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f19570a;

    public b(Handler handler, Context context) {
        super(handler, 30000L);
        this.f19570a = context;
    }

    public static void c() {
        m.a().a(f19569b, 100L);
    }

    @Override // java.lang.Runnable
    public final void run() {
        Map<String, Object> commonParams;
        try {
            commonParams = e.a().c().getCommonParams();
        } catch (Throwable unused) {
            commonParams = null;
        }
        if (commonParams != null) {
            try {
                if (com.apm.insight.nativecrash.b.a(commonParams)) {
                    a(b());
                    return;
                }
            } catch (Throwable unused2) {
                return;
            }
        }
        o.a().a(commonParams, com.apm.insight.entity.b.b());
    }
}
