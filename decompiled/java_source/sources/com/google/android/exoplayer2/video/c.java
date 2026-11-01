package com.google.android.exoplayer2.video;

import android.os.Bundle;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class c implements com.google.android.exoplayer2.k {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final com.google.android.exoplayer2.k.a f27825f = new com.google.android.exoplayer2.k.a() { // from class: com.google.android.exoplayer2.video.b
        @Override // com.google.android.exoplayer2.k.a
        public final com.google.android.exoplayer2.k a(Bundle bundle) {
            return c.e(bundle);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f27826a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f27827b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f27828c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final byte[] f27829d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f27830e;

    public c(int i11, int i12, int i13, byte[] bArr) {
        this.f27826a = i11;
        this.f27827b = i12;
        this.f27828c = i13;
        this.f27829d = bArr;
    }

    public static int b(int i11) {
        if (i11 == 1) {
            return 1;
        }
        if (i11 != 9) {
            return (i11 == 4 || i11 == 5 || i11 == 6 || i11 == 7) ? 2 : -1;
        }
        return 6;
    }

    public static int c(int i11) {
        if (i11 == 1) {
            return 3;
        }
        if (i11 == 16) {
            return 6;
        }
        if (i11 != 18) {
            return (i11 == 6 || i11 == 7) ? 3 : -1;
        }
        return 7;
    }

    private static String d(int i11) {
        return Integer.toString(i11, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ c e(Bundle bundle) {
        return new c(bundle.getInt(d(0), -1), bundle.getInt(d(1), -1), bundle.getInt(d(2), -1), bundle.getByteArray(d(3)));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f27826a == cVar.f27826a && this.f27827b == cVar.f27827b && this.f27828c == cVar.f27828c && Arrays.equals(this.f27829d, cVar.f27829d);
    }

    public int hashCode() {
        if (this.f27830e == 0) {
            this.f27830e = ((((((527 + this.f27826a) * 31) + this.f27827b) * 31) + this.f27828c) * 31) + Arrays.hashCode(this.f27829d);
        }
        return this.f27830e;
    }

    @Override // com.google.android.exoplayer2.k
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(d(0), this.f27826a);
        bundle.putInt(d(1), this.f27827b);
        bundle.putInt(d(2), this.f27828c);
        bundle.putByteArray(d(3), this.f27829d);
        return bundle;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ColorInfo(");
        sb2.append(this.f27826a);
        sb2.append(", ");
        sb2.append(this.f27827b);
        sb2.append(", ");
        sb2.append(this.f27828c);
        sb2.append(", ");
        sb2.append(this.f27829d != null);
        sb2.append(")");
        return sb2.toString();
    }
}
