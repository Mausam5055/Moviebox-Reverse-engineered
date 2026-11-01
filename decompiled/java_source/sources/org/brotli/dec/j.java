package org.brotli.dec;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes7.dex */
final class j {
    byte[] A;
    int B;
    int C;
    int D;
    int E;
    int F;
    int G;
    byte[] H;
    int I;
    int J;
    int K;
    int L;
    int M;
    int N;
    int O;
    int P;
    int U;
    int V;
    int W;
    int X;
    int Y;
    byte[] Z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f71648b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    byte[] f71650d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f71653g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f71654h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    boolean f71655i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    boolean f71656j;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    int f71669w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    int f71670x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    int f71671y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    byte[] f71672z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f71647a = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final a f71649c = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final int[] f71651e = new int[3240];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final int[] f71652f = new int[3240];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final g f71657k = new g();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    final g f71658l = new g();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    final g f71659m = new g();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    final int[] f71660n = new int[3];

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final int[] f71661o = new int[3];

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final int[] f71662p = new int[6];

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final int[] f71663q = {16, 15, 11, 4};

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int f71664r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f71665s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    int f71666t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    boolean f71667u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    int f71668v = 0;
    int Q = 0;
    long R = 0;
    byte[] S = new byte[0];
    int T = 0;

    j() {
    }

    static void a(j jVar) throws IOException {
        int i11 = jVar.f71647a;
        if (i11 == 0) {
            throw new IllegalStateException("State MUST be initialized");
        }
        if (i11 == 11) {
            return;
        }
        jVar.f71647a = 11;
        a.b(jVar.f71649c);
    }

    private static int b(a aVar) {
        if (a.i(aVar, 1) == 0) {
            return 16;
        }
        int i11 = a.i(aVar, 3);
        if (i11 != 0) {
            return i11 + 17;
        }
        int i12 = a.i(aVar, 3);
        if (i12 != 0) {
            return i12 + 8;
        }
        return 17;
    }

    static void c(j jVar, InputStream inputStream) {
        if (jVar.f71647a != 0) {
            throw new IllegalStateException("State MUST be uninitialized");
        }
        a.e(jVar.f71649c, inputStream);
        int iB = b(jVar.f71649c);
        if (iB == 9) {
            throw new BrotliRuntimeException("Invalid 'windowBits' code");
        }
        int i11 = 1 << iB;
        jVar.P = i11;
        jVar.O = i11 - 16;
        jVar.f71647a = 1;
    }
}
