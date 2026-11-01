package com.apm.insight.runtime.a;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apm.insight.CrashType;
import com.apm.insight.entity.Header;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes2.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static volatile f f19776a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f19777b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map<CrashType, c> f19778c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f19779d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private d f19780e;

    /* JADX INFO: renamed from: com.apm.insight.runtime.a.f$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f19781a;

        static {
            int[] iArr = new int[CrashType.values().length];
            f19781a = iArr;
            try {
                iArr[CrashType.JAVA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19781a[CrashType.LAUNCH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19781a[CrashType.NATIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19781a[CrashType.ANR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f19781a[CrashType.DART.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f19781a[CrashType.CUSTOM_JAVA.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f19781a[CrashType.BLOCK.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f19781a[CrashType.ENSURE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    private f(@NonNull Context context) {
        this.f19777b = context;
        try {
            this.f19779d = b.d();
            this.f19780e = new d(this.f19777b);
        } catch (Throwable th2) {
            com.apm.insight.c.a();
            com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
        }
    }

    @Nullable
    private c a(CrashType crashType) {
        c jVar = this.f19778c.get(crashType);
        if (jVar != null) {
            return jVar;
        }
        switch (AnonymousClass1.f19781a[crashType.ordinal()]) {
            case 1:
                jVar = new j(this.f19777b, this.f19779d, this.f19780e);
                break;
            case 2:
                jVar = new k(this.f19777b, this.f19779d, this.f19780e);
                break;
            case 3:
                jVar = new l(this.f19777b, this.f19779d, this.f19780e);
                break;
            case 4:
                jVar = new a(this.f19777b, this.f19779d, this.f19780e);
                break;
            case 5:
                jVar = new h(this.f19777b, this.f19779d, this.f19780e);
                break;
            case 6:
                jVar = new g(this.f19777b, this.f19779d, this.f19780e);
                break;
            case 7:
                jVar = new e(this.f19777b, this.f19779d, this.f19780e);
                break;
            case 8:
                jVar = new i(this.f19777b, this.f19779d, this.f19780e);
                break;
        }
        if (jVar != null) {
            this.f19778c.put(crashType, jVar);
        }
        return jVar;
    }

    public static f a() {
        if (f19776a == null) {
            Context contextG = com.apm.insight.e.g();
            if (contextG == null) {
                throw new IllegalArgumentException("NpthBus not init");
            }
            f19776a = new f(contextG);
        }
        return f19776a;
    }

    public final com.apm.insight.entity.a a(CrashType crashType, com.apm.insight.entity.a aVar) {
        c cVarA;
        return (crashType == null || (cVarA = a(crashType)) == null) ? aVar : cVarA.a(aVar, null, false);
    }

    public final com.apm.insight.entity.a a(CrashType crashType, @Nullable c.a aVar) {
        c cVarA;
        if (crashType == null || (cVarA = a(crashType)) == null) {
            return null;
        }
        return cVarA.a(null, aVar, true);
    }

    public final com.apm.insight.entity.a a(List<com.apm.insight.entity.a> list, JSONArray jSONArray) {
        if (list.isEmpty()) {
            return null;
        }
        com.apm.insight.entity.a aVar = new com.apm.insight.entity.a();
        JSONArray jSONArray2 = new JSONArray();
        Iterator<com.apm.insight.entity.a> it = list.iterator();
        while (it.hasNext()) {
            jSONArray2.put(it.next().c());
        }
        aVar.a("data", (Object) jSONArray2);
        aVar.a("all_data", (Object) jSONArray);
        Header headerA = Header.a(this.f19777b);
        Header.a(headerA);
        headerA.c();
        headerA.d();
        headerA.e();
        Header.b(headerA);
        aVar.a(headerA);
        return aVar;
    }
}
