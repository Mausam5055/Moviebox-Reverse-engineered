package com.google.firebase.crashlytics.internal.common;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes4.dex */
class f implements j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f31172a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f31173b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f31174c;

    f(String str, String str2, byte[] bArr) {
        this.f31173b = str;
        this.f31174c = str2;
        this.f31172a = bArr;
    }

    private byte[] c() {
        if (d()) {
            return null;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                try {
                    gZIPOutputStream.write(this.f31172a);
                    gZIPOutputStream.finish();
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    gZIPOutputStream.close();
                    byteArrayOutputStream.close();
                    return byteArray;
                } catch (Throwable th2) {
                    try {
                        gZIPOutputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th5) {
                    th4.addSuppressed(th5);
                }
                throw th4;
            }
        } catch (IOException unused) {
            return null;
        }
    }

    private boolean d() {
        byte[] bArr = this.f31172a;
        return bArr == null || bArr.length == 0;
    }

    @Override // com.google.firebase.crashlytics.internal.common.j0
    public CrashlyticsReport.d.b a() {
        byte[] bArrC = c();
        if (bArrC == null) {
            return null;
        }
        return CrashlyticsReport.d.b.a().b(bArrC).c(this.f31173b).a();
    }

    @Override // com.google.firebase.crashlytics.internal.common.j0
    public String b() {
        return this.f31174c;
    }

    @Override // com.google.firebase.crashlytics.internal.common.j0
    public InputStream getStream() {
        if (d()) {
            return null;
        }
        return new ByteArrayInputStream(this.f31172a);
    }
}
