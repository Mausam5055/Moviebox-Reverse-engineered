package com.apm.insight.runtime.a;

import android.content.Context;
import com.apm.insight.CrashType;
import com.apm.insight.entity.Header;
import com.apm.insight.nativecrash.NativeCrashCollector;

/* JADX INFO: loaded from: classes2.dex */
final class l extends c {
    l(Context context, b bVar, d dVar) {
        super(CrashType.NATIVE, context, bVar, dVar);
    }

    @Override // com.apm.insight.runtime.a.c
    public final int a() {
        return NativeCrashCollector.a();
    }

    @Override // com.apm.insight.runtime.a.c
    public final com.apm.insight.entity.a a(int i11, com.apm.insight.entity.a aVar) {
        com.apm.insight.entity.a aVarA = super.a(i11, aVar);
        if (i11 == 0) {
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
        }
        return aVarA;
    }

    @Override // com.apm.insight.runtime.a.c
    protected final boolean c() {
        return false;
    }
}
