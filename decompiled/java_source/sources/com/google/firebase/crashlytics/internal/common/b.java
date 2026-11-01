package com.google.firebase.crashlytics.internal.common;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.io.File;

/* JADX INFO: loaded from: classes4.dex */
final class b extends a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CrashlyticsReport f31145a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f31146b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final File f31147c;

    b(CrashlyticsReport crashlyticsReport, String str, File file) {
        if (crashlyticsReport == null) {
            throw new NullPointerException("Null report");
        }
        this.f31145a = crashlyticsReport;
        if (str == null) {
            throw new NullPointerException("Null sessionId");
        }
        this.f31146b = str;
        if (file == null) {
            throw new NullPointerException("Null reportFile");
        }
        this.f31147c = file;
    }

    @Override // com.google.firebase.crashlytics.internal.common.a0
    public CrashlyticsReport b() {
        return this.f31145a;
    }

    @Override // com.google.firebase.crashlytics.internal.common.a0
    public File c() {
        return this.f31147c;
    }

    @Override // com.google.firebase.crashlytics.internal.common.a0
    public String d() {
        return this.f31146b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a0)) {
            return false;
        }
        a0 a0Var = (a0) obj;
        return this.f31145a.equals(a0Var.b()) && this.f31146b.equals(a0Var.d()) && this.f31147c.equals(a0Var.c());
    }

    public int hashCode() {
        return ((((this.f31145a.hashCode() ^ 1000003) * 1000003) ^ this.f31146b.hashCode()) * 1000003) ^ this.f31147c.hashCode();
    }

    public String toString() {
        return "CrashlyticsReportWithSessionId{report=" + this.f31145a + ", sessionId=" + this.f31146b + ", reportFile=" + this.f31147c + "}";
    }
}
