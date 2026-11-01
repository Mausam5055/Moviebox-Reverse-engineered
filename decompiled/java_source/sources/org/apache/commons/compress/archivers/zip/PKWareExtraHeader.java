package org.apache.commons.compress.archivers.zip;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.ZipException;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes7.dex */
public abstract class PKWareExtraHeader implements t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ZipShort f71120a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private byte[] f71121b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private byte[] f71122c;

    public enum EncryptionAlgorithm {
        DES(26113),
        RC2pre52(26114),
        TripleDES168(26115),
        TripleDES192(26121),
        AES128(26126),
        AES192(26127),
        AES256(26128),
        RC2(26370),
        RC4(26625),
        UNKNOWN(Settings.DEFAULT_INITIAL_WINDOW_SIZE);

        private static final Map<Integer, EncryptionAlgorithm> codeToEnum;
        private final int code;

        static {
            HashMap map = new HashMap();
            for (EncryptionAlgorithm encryptionAlgorithm : values()) {
                map.put(Integer.valueOf(encryptionAlgorithm.getCode()), encryptionAlgorithm);
            }
            codeToEnum = Collections.unmodifiableMap(map);
        }

        EncryptionAlgorithm(int i11) {
            this.code = i11;
        }

        public static EncryptionAlgorithm getAlgorithmByCode(int i11) {
            return codeToEnum.get(Integer.valueOf(i11));
        }

        public int getCode() {
            return this.code;
        }
    }

    public enum HashAlgorithm {
        NONE(0),
        CRC32(1),
        MD5(32771),
        SHA1(32772),
        RIPEND160(32775),
        SHA256(32780),
        SHA384(32781),
        SHA512(32782);

        private static final Map<Integer, HashAlgorithm> codeToEnum;
        private final int code;

        static {
            HashMap map = new HashMap();
            for (HashAlgorithm hashAlgorithm : values()) {
                map.put(Integer.valueOf(hashAlgorithm.getCode()), hashAlgorithm);
            }
            codeToEnum = Collections.unmodifiableMap(map);
        }

        HashAlgorithm(int i11) {
            this.code = i11;
        }

        public static HashAlgorithm getAlgorithmByCode(int i11) {
            return codeToEnum.get(Integer.valueOf(i11));
        }

        public int getCode() {
            return this.code;
        }
    }

    protected PKWareExtraHeader(ZipShort zipShort) {
        this.f71120a = zipShort;
    }

    protected final void a(int i11, int i12) throws ZipException {
        if (i12 >= i11) {
            return;
        }
        throw new ZipException(getClass().getName() + " is too short, only " + i12 + " bytes, expected at least " + i11);
    }

    public void b(byte[] bArr) {
        this.f71122c = u.c(bArr);
    }

    public void c(byte[] bArr) {
        this.f71121b = u.c(bArr);
    }

    @Override // org.apache.commons.compress.archivers.zip.t
    public ZipShort getHeaderId() {
        return this.f71120a;
    }

    @Override // org.apache.commons.compress.archivers.zip.t
    public void parseFromCentralDirectoryData(byte[] bArr, int i11, int i12) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i11, i12 + i11);
        b(bArrCopyOfRange);
        if (this.f71121b == null) {
            c(bArrCopyOfRange);
        }
    }

    @Override // org.apache.commons.compress.archivers.zip.t
    public void parseFromLocalFileData(byte[] bArr, int i11, int i12) {
        c(Arrays.copyOfRange(bArr, i11, i12 + i11));
    }
}
