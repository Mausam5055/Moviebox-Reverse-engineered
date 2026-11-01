package com.google.android.exoplayer2.source.rtsp;

import com.google.android.exoplayer2.util.p0;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes3.dex */
public final class g {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final byte[] f26372l = new byte[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte f26373a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f26374b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f26375c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final byte f26376d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f26377e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final byte f26378f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f26379g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f26380h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f26381i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final byte[] f26382j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final byte[] f26383k;

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f26384a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f26385b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private byte f26386c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f26387d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f26388e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f26389f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private byte[] f26390g = g.f26372l;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private byte[] f26391h = g.f26372l;

        public g i() {
            return new g(this);
        }

        public b j(byte[] bArr) {
            com.google.android.exoplayer2.util.a.e(bArr);
            this.f26390g = bArr;
            return this;
        }

        public b k(boolean z10) {
            this.f26385b = z10;
            return this;
        }

        public b l(boolean z10) {
            this.f26384a = z10;
            return this;
        }

        public b m(byte[] bArr) {
            com.google.android.exoplayer2.util.a.e(bArr);
            this.f26391h = bArr;
            return this;
        }

        public b n(byte b11) {
            this.f26386c = b11;
            return this;
        }

        public b o(int i11) {
            com.google.android.exoplayer2.util.a.a(i11 >= 0 && i11 <= 65535);
            this.f26387d = i11 & Settings.DEFAULT_INITIAL_WINDOW_SIZE;
            return this;
        }

        public b p(int i11) {
            this.f26389f = i11;
            return this;
        }

        public b q(long j11) {
            this.f26388e = j11;
            return this;
        }
    }

    private g(b bVar) {
        this.f26373a = (byte) 2;
        this.f26374b = bVar.f26384a;
        this.f26375c = false;
        this.f26377e = bVar.f26385b;
        this.f26378f = bVar.f26386c;
        this.f26379g = bVar.f26387d;
        this.f26380h = bVar.f26388e;
        this.f26381i = bVar.f26389f;
        byte[] bArr = bVar.f26390g;
        this.f26382j = bArr;
        this.f26376d = (byte) (bArr.length / 4);
        this.f26383k = bVar.f26391h;
    }

    public static int b(int i11) {
        return com.google.common.math.d.g(i11 + 1, 65536);
    }

    public static int c(int i11) {
        return com.google.common.math.d.g(i11 - 1, 65536);
    }

    public static g d(com.google.android.exoplayer2.util.d0 d0Var) {
        byte[] bArr;
        if (d0Var.a() < 12) {
            return null;
        }
        int iD = d0Var.D();
        byte b11 = (byte) (iD >> 6);
        boolean z10 = ((iD >> 5) & 1) == 1;
        byte b12 = (byte) (iD & 15);
        if (b11 != 2) {
            return null;
        }
        int iD2 = d0Var.D();
        boolean z11 = ((iD2 >> 7) & 1) == 1;
        byte b13 = (byte) (iD2 & 127);
        int iJ = d0Var.J();
        long jF = d0Var.F();
        int iN = d0Var.n();
        if (b12 > 0) {
            bArr = new byte[b12 * 4];
            for (int i11 = 0; i11 < b12; i11++) {
                d0Var.j(bArr, i11 * 4, 4);
            }
        } else {
            bArr = f26372l;
        }
        byte[] bArr2 = new byte[d0Var.a()];
        d0Var.j(bArr2, 0, d0Var.a());
        return new b().l(z10).k(z11).n(b13).o(iJ).q(jF).p(iN).j(bArr).m(bArr2).i();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || g.class != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        return this.f26378f == gVar.f26378f && this.f26379g == gVar.f26379g && this.f26377e == gVar.f26377e && this.f26380h == gVar.f26380h && this.f26381i == gVar.f26381i;
    }

    public int hashCode() {
        int i11 = (((((527 + this.f26378f) * 31) + this.f26379g) * 31) + (this.f26377e ? 1 : 0)) * 31;
        long j11 = this.f26380h;
        return ((i11 + ((int) (j11 ^ (j11 >>> 32)))) * 31) + this.f26381i;
    }

    public String toString() {
        return p0.C("RtpPacket(payloadType=%d, seq=%d, timestamp=%d, ssrc=%x, marker=%b)", Byte.valueOf(this.f26378f), Integer.valueOf(this.f26379g), Long.valueOf(this.f26380h), Integer.valueOf(this.f26381i), Boolean.valueOf(this.f26377e));
    }
}
