package androidx.media3.exoplayer.drm;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import y1.f4;

/* JADX INFO: loaded from: classes2.dex */
public interface b0 {

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final byte[] f11563a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f11564b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f11565c;

        public a(byte[] bArr, String str, int i11) {
            this.f11563a = bArr;
            this.f11564b = str;
            this.f11565c = i11;
        }

        public byte[] a() {
            return this.f11563a;
        }

        public String b() {
            return this.f11564b;
        }
    }

    public interface b {
        void a(b0 b0Var, byte[] bArr, int i11, int i12, byte[] bArr2);
    }

    public interface c {
        b0 a(UUID uuid);
    }

    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final byte[] f11566a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f11567b;

        public d(byte[] bArr, String str) {
            this.f11566a = bArr;
            this.f11567b = str;
        }

        public byte[] a() {
            return this.f11566a;
        }

        public String b() {
            return this.f11567b;
        }
    }

    int a();

    androidx.media3.decoder.b b(byte[] bArr);

    boolean c(byte[] bArr, String str);

    void closeSession(byte[] bArr);

    a d(byte[] bArr, List list, int i11, HashMap map);

    void e(byte[] bArr, f4 f4Var);

    void f(b bVar);

    d getProvisionRequest();

    byte[] openSession();

    byte[] provideKeyResponse(byte[] bArr, byte[] bArr2);

    void provideProvisionResponse(byte[] bArr);

    Map queryKeyStatus(byte[] bArr);

    void release();

    void restoreKeys(byte[] bArr, byte[] bArr2);
}
