package com.google.android.exoplayer2.drm;

import e9.u1;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes3.dex */
public interface c0 {

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final byte[] f24969a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f24970b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f24971c;

        public a(byte[] bArr, String str, int i11) {
            this.f24969a = bArr;
            this.f24970b = str;
            this.f24971c = i11;
        }

        public byte[] a() {
            return this.f24969a;
        }

        public String b() {
            return this.f24970b;
        }
    }

    public interface b {
        void a(c0 c0Var, byte[] bArr, int i11, int i12, byte[] bArr2);
    }

    public interface c {
        c0 a(UUID uuid);
    }

    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final byte[] f24972a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f24973b;

        public d(byte[] bArr, String str) {
            this.f24972a = bArr;
            this.f24973b = str;
        }

        public byte[] a() {
            return this.f24972a;
        }

        public String b() {
            return this.f24973b;
        }
    }

    int a();

    com.google.android.exoplayer2.decoder.b b(byte[] bArr);

    boolean c(byte[] bArr, String str);

    void closeSession(byte[] bArr);

    a d(byte[] bArr, List list, int i11, HashMap map);

    void e(b bVar);

    void f(byte[] bArr, u1 u1Var);

    d getProvisionRequest();

    byte[] openSession();

    byte[] provideKeyResponse(byte[] bArr, byte[] bArr2);

    void provideProvisionResponse(byte[] bArr);

    Map queryKeyStatus(byte[] bArr);

    void release();

    void restoreKeys(byte[] bArr, byte[] bArr2);
}
