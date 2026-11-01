package androidx.profileinstaller;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public abstract class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final byte[] f14068a = {48, 49, 53, 0};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final byte[] f14069b = {48, 49, 48, 0};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final byte[] f14070c = {48, 48, 57, 0};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final byte[] f14071d = {48, 48, 53, 0};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final byte[] f14072e = {48, 48, 49, 0};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final byte[] f14073f = {48, 48, 49, 0};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final byte[] f14074g = {48, 48, 50, 0};

    static String a(byte[] bArr) {
        return (Arrays.equals(bArr, f14072e) || Arrays.equals(bArr, f14071d)) ? ":" : "!";
    }
}
