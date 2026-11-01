package com.apm.insight.k;

import androidx.annotation.Nullable;
import com.apm.insight.CrashType;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static ConcurrentLinkedQueue<c> f19605a = new ConcurrentLinkedQueue<>();

    /* JADX INFO: renamed from: com.apm.insight.k.c$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f19606a;

        static {
            int[] iArr = new int[CrashType.values().length];
            f19606a = iArr;
            try {
                iArr[CrashType.JAVA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19606a[CrashType.LAUNCH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19606a[CrashType.NATIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private JSONObject f19607a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private JSONObject f19608b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private CrashType f19609c;

        a(JSONObject jSONObject, CrashType crashType) {
            this.f19609c = crashType;
            if (crashType == CrashType.LAUNCH) {
                this.f19607a = ((JSONArray) jSONObject.opt("data")).optJSONObject(0);
            } else {
                this.f19607a = jSONObject;
            }
            this.f19608b = jSONObject.optJSONObject("header");
        }

        @Nullable
        public final String a() {
            return this.f19607a.optString("crash_thread_name", null);
        }

        public final long b() {
            return this.f19607a.optInt("app_start_time", -1);
        }

        @Nullable
        public final String c() {
            int i11 = AnonymousClass1.f19606a[this.f19609c.ordinal()];
            if (i11 == 1) {
                return this.f19607a.optString("data", null);
            }
            if (i11 == 2) {
                return this.f19607a.optString("stack", null);
            }
            if (i11 != 3) {
                return null;
            }
            return this.f19607a.optString("data", null);
        }
    }

    static void a(CrashType crashType, JSONObject jSONObject) {
        ConcurrentLinkedQueue<c> concurrentLinkedQueue = f19605a;
        if (concurrentLinkedQueue == null || concurrentLinkedQueue.isEmpty()) {
            return;
        }
        new a(jSONObject, crashType);
        while (!f19605a.isEmpty()) {
            f19605a.poll();
        }
        f19605a = null;
    }
}
