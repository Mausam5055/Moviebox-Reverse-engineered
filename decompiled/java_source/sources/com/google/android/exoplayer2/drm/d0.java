package com.google.android.exoplayer2.drm;

import com.google.android.exoplayer2.util.p0;
import java.util.UUID;

/* JADX INFO: loaded from: classes3.dex */
public final class d0 implements com.google.android.exoplayer2.decoder.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final boolean f24975d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UUID f24976a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f24977b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f24978c;

    /* JADX WARN: Code duplicated, block: B:9:0x001e  */
    static {
        boolean z10;
        if ("Amazon".equals(p0.f27628c)) {
            String str = p0.f27629d;
            if ("AFTM".equals(str) || "AFTB".equals(str)) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        f24975d = z10;
    }

    public d0(UUID uuid, byte[] bArr, boolean z10) {
        this.f24976a = uuid;
        this.f24977b = bArr;
        this.f24978c = z10;
    }
}
