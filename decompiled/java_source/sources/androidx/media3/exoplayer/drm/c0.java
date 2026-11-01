package androidx.media3.exoplayer.drm;

import android.os.Build;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public final class c0 implements androidx.media3.decoder.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final boolean f11568d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UUID f11569a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f11570b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f11571c;

    /* JADX WARN: Code duplicated, block: B:9:0x001e  */
    static {
        boolean z10;
        if ("Amazon".equals(Build.MANUFACTURER)) {
            String str = Build.MODEL;
            if ("AFTM".equals(str) || "AFTB".equals(str)) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        f11568d = z10;
    }

    public c0(UUID uuid, byte[] bArr) {
        this(uuid, bArr, false);
    }

    public c0(UUID uuid, byte[] bArr, boolean z10) {
        this.f11569a = uuid;
        this.f11570b = bArr;
        this.f11571c = z10;
    }
}
