package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class z {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Map f31286g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final String f31287h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f31288a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g0 f31289b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f31290c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final xb.d f31291d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final wb.b f31292e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ob.j f31293f = ob.j.f70958a;

    static {
        HashMap map = new HashMap();
        f31286g = map;
        map.put("armeabi", 5);
        map.put("armeabi-v7a", 6);
        map.put("arm64-v8a", 9);
        map.put("x86", 0);
        map.put("x86_64", 1);
        f31287h = String.format(Locale.US, "Crashlytics Android SDK/%s", "19.3.0");
    }

    public z(Context context, g0 g0Var, a aVar, xb.d dVar, wb.b bVar) {
        this.f31288a = context;
        this.f31289b = g0Var;
        this.f31290c = aVar;
        this.f31291d = dVar;
        this.f31292e = bVar;
    }

    private CrashlyticsReport.e.d.a.c A(CrashlyticsReport.a aVar) {
        return this.f31293f.a(aVar.e(), aVar.d(), aVar.c());
    }

    private CrashlyticsReport.a a(CrashlyticsReport.a aVar) {
        List listUnmodifiableList;
        if (!this.f31292e.b().f31738b.f31747c || this.f31290c.f31139c.size() <= 0) {
            listUnmodifiableList = null;
        } else {
            ArrayList arrayList = new ArrayList();
            for (e eVar : this.f31290c.f31139c) {
                arrayList.add(CrashlyticsReport.a.AbstractC0420a.a().d(eVar.c()).b(eVar.a()).c(eVar.b()).a());
            }
            listUnmodifiableList = Collections.unmodifiableList(arrayList);
        }
        return CrashlyticsReport.a.a().c(aVar.c()).e(aVar.e()).g(aVar.g()).i(aVar.i()).d(aVar.d()).f(aVar.f()).h(aVar.h()).j(aVar.j()).b(listUnmodifiableList).a();
    }

    private CrashlyticsReport.b b() {
        return CrashlyticsReport.b().l("19.3.0").h(this.f31290c.f31137a).i(this.f31289b.a().c()).g(this.f31289b.a().e()).f(this.f31289b.a().d()).d(this.f31290c.f31142f).e(this.f31290c.f31143g).k(4);
    }

    private static long f(long j11) {
        if (j11 > 0) {
            return j11;
        }
        return 0L;
    }

    private static int g() {
        Integer num;
        String str = Build.CPU_ABI;
        if (TextUtils.isEmpty(str) || (num = (Integer) f31286g.get(str.toLowerCase(Locale.US))) == null) {
            return 7;
        }
        return num.intValue();
    }

    private CrashlyticsReport.e.d.a.b.AbstractC0424a h() {
        return CrashlyticsReport.e.d.a.b.AbstractC0424a.a().b(0L).d(0L).c(this.f31290c.f31141e).e(this.f31290c.f31138b).a();
    }

    private List i() {
        return Collections.singletonList(h());
    }

    private CrashlyticsReport.e.d.a j(int i11, CrashlyticsReport.a aVar) {
        return CrashlyticsReport.e.d.a.a().c(Boolean.valueOf(aVar.c() != 100)).d(A(aVar)).h(i11).f(o(aVar)).a();
    }

    private CrashlyticsReport.e.d.a k(int i11, xb.e eVar, Thread thread, int i12, int i13, boolean z10) {
        Boolean boolValueOf;
        CrashlyticsReport.e.d.a.c cVarE = this.f31293f.e(this.f31288a);
        if (cVarE.b() > 0) {
            boolValueOf = Boolean.valueOf(cVarE.b() != 100);
        } else {
            boolValueOf = null;
        }
        return CrashlyticsReport.e.d.a.a().c(boolValueOf).d(cVarE).b(this.f31293f.d(this.f31288a)).h(i11).f(p(eVar, thread, i12, i13, z10)).a();
    }

    private CrashlyticsReport.e.d.c l(int i11) {
        d dVarA = d.a(this.f31288a);
        Float fB = dVarA.b();
        Double dValueOf = fB != null ? Double.valueOf(fB.doubleValue()) : null;
        int iC = dVarA.c();
        boolean zN = CommonUtils.n(this.f31288a);
        return CrashlyticsReport.e.d.c.a().b(dValueOf).c(iC).f(zN).e(i11).g(f(CommonUtils.b(this.f31288a) - CommonUtils.a(this.f31288a))).d(CommonUtils.c(Environment.getDataDirectory().getPath())).a();
    }

    private CrashlyticsReport.e.d.a.b.c m(xb.e eVar, int i11, int i12) {
        return n(eVar, i11, i12, 0);
    }

    private CrashlyticsReport.e.d.a.b.c n(xb.e eVar, int i11, int i12, int i13) {
        String str = eVar.f78186b;
        String str2 = eVar.f78185a;
        StackTraceElement[] stackTraceElementArr = eVar.f78187c;
        int i14 = 0;
        if (stackTraceElementArr == null) {
            stackTraceElementArr = new StackTraceElement[0];
        }
        xb.e eVar2 = eVar.f78188d;
        if (i13 >= i12) {
            xb.e eVar3 = eVar2;
            while (eVar3 != null) {
                eVar3 = eVar3.f78188d;
                i14++;
            }
        }
        CrashlyticsReport.e.d.a.b.c.AbstractC0427a abstractC0427aD = CrashlyticsReport.e.d.a.b.c.a().f(str).e(str2).c(r(stackTraceElementArr, i11)).d(i14);
        if (eVar2 != null && i14 == 0) {
            abstractC0427aD.b(n(eVar2, i11, i12, i13 + 1));
        }
        return abstractC0427aD.a();
    }

    private CrashlyticsReport.e.d.a.b o(CrashlyticsReport.a aVar) {
        return CrashlyticsReport.e.d.a.b.a().b(aVar).e(w()).c(i()).a();
    }

    private CrashlyticsReport.e.d.a.b p(xb.e eVar, Thread thread, int i11, int i12, boolean z10) {
        return CrashlyticsReport.e.d.a.b.a().f(z(eVar, thread, i11, z10)).d(m(eVar, i11, i12)).e(w()).c(i()).a();
    }

    private CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0432b q(StackTraceElement stackTraceElement, CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0432b.AbstractC0433a abstractC0433a) {
        long lineNumber = 0;
        long jMax = stackTraceElement.isNativeMethod() ? Math.max(stackTraceElement.getLineNumber(), 0L) : 0L;
        String str = stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName();
        String fileName = stackTraceElement.getFileName();
        if (!stackTraceElement.isNativeMethod() && stackTraceElement.getLineNumber() > 0) {
            lineNumber = stackTraceElement.getLineNumber();
        }
        return abstractC0433a.e(jMax).f(str).b(fileName).d(lineNumber).a();
    }

    private List r(StackTraceElement[] stackTraceElementArr, int i11) {
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            arrayList.add(q(stackTraceElement, CrashlyticsReport.e.d.a.b.AbstractC0430e.AbstractC0432b.a().c(i11)));
        }
        return Collections.unmodifiableList(arrayList);
    }

    private CrashlyticsReport.e.a s() {
        return CrashlyticsReport.e.a.a().e(this.f31289b.f()).g(this.f31290c.f31142f).d(this.f31290c.f31143g).f(this.f31289b.a().c()).b(this.f31290c.f31144h.d()).c(this.f31290c.f31144h.e()).a();
    }

    private CrashlyticsReport.e t(String str, long j11) {
        return CrashlyticsReport.e.a().m(j11).j(str).h(f31287h).b(s()).l(v()).e(u()).i(3).a();
    }

    private CrashlyticsReport.e.c u() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        int iG = g();
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        long jB = CommonUtils.b(this.f31288a);
        long blockCount = ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
        boolean zW = CommonUtils.w();
        int iL = CommonUtils.l();
        String str = Build.MANUFACTURER;
        return CrashlyticsReport.e.c.a().b(iG).f(Build.MODEL).c(iAvailableProcessors).h(jB).d(blockCount).i(zW).j(iL).e(str).g(Build.PRODUCT).a();
    }

    private CrashlyticsReport.e.AbstractC0437e v() {
        return CrashlyticsReport.e.AbstractC0437e.a().d(3).e(Build.VERSION.RELEASE).b(Build.VERSION.CODENAME).c(CommonUtils.x()).a();
    }

    private CrashlyticsReport.e.d.a.b.AbstractC0428d w() {
        return CrashlyticsReport.e.d.a.b.AbstractC0428d.a().d("0").c("0").b(0L).a();
    }

    private CrashlyticsReport.e.d.a.b.AbstractC0430e x(Thread thread, StackTraceElement[] stackTraceElementArr) {
        return y(thread, stackTraceElementArr, 0);
    }

    private CrashlyticsReport.e.d.a.b.AbstractC0430e y(Thread thread, StackTraceElement[] stackTraceElementArr, int i11) {
        return CrashlyticsReport.e.d.a.b.AbstractC0430e.a().d(thread.getName()).c(i11).b(r(stackTraceElementArr, i11)).a();
    }

    private List z(xb.e eVar, Thread thread, int i11, boolean z10) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(y(thread, eVar.f78187c, i11));
        if (z10) {
            for (Map.Entry<Thread, StackTraceElement[]> entry : Thread.getAllStackTraces().entrySet()) {
                Thread key = entry.getKey();
                if (!key.equals(thread)) {
                    arrayList.add(x(key, this.f31291d.a(entry.getValue())));
                }
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public CrashlyticsReport.e.d c(CrashlyticsReport.a aVar) {
        int i11 = this.f31288a.getResources().getConfiguration().orientation;
        return CrashlyticsReport.e.d.a().g("anr").f(aVar.i()).b(j(i11, a(aVar))).c(l(i11)).a();
    }

    public CrashlyticsReport.e.d d(Throwable th2, Thread thread, String str, long j11, int i11, int i12, boolean z10) {
        int i13 = this.f31288a.getResources().getConfiguration().orientation;
        return CrashlyticsReport.e.d.a().g(str).f(j11).b(k(i13, xb.e.a(th2, this.f31291d), thread, i11, i12, z10)).c(l(i13)).a();
    }

    public CrashlyticsReport e(String str, long j11) {
        return b().m(t(str, j11)).a();
    }
}
