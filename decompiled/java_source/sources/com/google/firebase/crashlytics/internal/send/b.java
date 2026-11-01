package com.google.firebase.crashlytics.internal.send;

import android.content.Context;
import com.google.android.datatransport.runtime.t;
import com.google.android.gms.tasks.Task;
import com.google.firebase.crashlytics.internal.common.a0;
import com.google.firebase.crashlytics.internal.common.l0;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.nio.charset.Charset;
import r8.g;
import r8.i;
import tb.j;

/* JADX INFO: loaded from: classes4.dex */
public class b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final j f31722c = new j();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f31723d = e("hts/cahyiseot-agolai.o/1frlglgc/aclg", "tp:/rsltcrprsp.ogepscmv/ieo/eaybtho");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f31724e = e("AzSBpY4F0rHiHFdinTvM", "IayrSTFL9eJ69YeSUO2");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final g f31725f = new g() { // from class: com.google.firebase.crashlytics.internal.send.a
        @Override // r8.g
        public final Object apply(Object obj) {
            return b.d((CrashlyticsReport) obj);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ReportQueue f31726a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f31727b;

    b(ReportQueue reportQueue, g gVar) {
        this.f31726a = reportQueue;
        this.f31727b = gVar;
    }

    public static b b(Context context, wb.b bVar, l0 l0Var) {
        t.f(context);
        i iVarG = t.c().g(new com.google.android.datatransport.cct.a(f31723d, f31724e));
        r8.c cVarB = r8.c.b("json");
        g gVar = f31725f;
        return new b(new ReportQueue(iVarG.b("FIREBASE_CRASHLYTICS_REPORT", CrashlyticsReport.class, cVarB, gVar), bVar.b(), l0Var), gVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ byte[] d(CrashlyticsReport crashlyticsReport) {
        return f31722c.M(crashlyticsReport).getBytes(Charset.forName("UTF-8"));
    }

    private static String e(String str, String str2) {
        int length = str.length() - str2.length();
        if (length < 0 || length > 1) {
            throw new IllegalArgumentException("Invalid input received");
        }
        StringBuilder sb2 = new StringBuilder(str.length() + str2.length());
        for (int i11 = 0; i11 < str.length(); i11++) {
            sb2.append(str.charAt(i11));
            if (str2.length() > i11) {
                sb2.append(str2.charAt(i11));
            }
        }
        return sb2.toString();
    }

    public Task c(a0 a0Var, boolean z10) {
        return this.f31726a.i(a0Var, z10).getTask();
    }
}
