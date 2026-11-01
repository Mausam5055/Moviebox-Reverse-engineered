package com.apm.insight.runtime.a;

import android.content.Context;
import com.apm.insight.CrashType;
import com.apm.insight.entity.Header;

/* JADX INFO: loaded from: classes2.dex */
final class j extends c {
    j(Context context, b bVar, d dVar) {
        super(CrashType.JAVA, context, bVar, dVar);
    }

    @Override // com.apm.insight.runtime.a.c
    public final com.apm.insight.entity.a a(int i11, com.apm.insight.entity.a aVar) {
        com.apm.insight.entity.a aVarA = super.a(i11, aVar);
        if (i11 == 0) {
            aVarA.a("app_count", (Object) 1);
            aVarA.a("magic_tag", "ss_app_log");
            Header headerA = Header.a(this.f19768b);
            headerA.c();
            aVarA.a(headerA);
            com.apm.insight.a.a(aVarA, headerA, this.f19767a);
        } else if (i11 == 1) {
            Header headerD = aVarA.d();
            headerD.d();
            headerD.e();
        } else if (i11 == 2) {
            Header.a(aVarA.d());
        } else if (i11 == 5) {
            Header.b(aVarA.d());
        }
        return aVarA;
    }
}
