package com.google.firebase.crashlytics.ndk;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.io.File;

/* JADX INFO: loaded from: classes4.dex */
class g implements ob.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f31805a;

    g(f fVar) {
        this.f31805a = fVar;
    }

    @Override // ob.h
    public File a() {
        return this.f31805a.f31794f;
    }

    @Override // ob.h
    public CrashlyticsReport.a b() {
        f.c cVar = this.f31805a.f31789a;
        if (cVar != null) {
            return cVar.f31804b;
        }
        return null;
    }

    @Override // ob.h
    public File c() {
        return this.f31805a.f31789a.f31803a;
    }

    @Override // ob.h
    public File d() {
        return this.f31805a.f31791c;
    }

    @Override // ob.h
    public File e() {
        return this.f31805a.f31793e;
    }

    @Override // ob.h
    public File f() {
        return this.f31805a.f31795g;
    }

    @Override // ob.h
    public File g() {
        return this.f31805a.f31792d;
    }
}
