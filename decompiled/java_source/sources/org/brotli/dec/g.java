package org.brotli.dec;

/* JADX INFO: loaded from: classes7.dex */
final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f71634a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int[] f71635b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int[] f71636c;

    g() {
    }

    static void a(g gVar, a aVar) {
        int length = gVar.f71636c.length;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            gVar.f71636c[i12] = i11;
            d.n(gVar.f71634a, gVar.f71635b, i11, aVar);
            i11 += 1080;
        }
    }

    static void b(g gVar, int i11, int i12) {
        gVar.f71634a = i11;
        gVar.f71635b = new int[i12 * 1080];
        gVar.f71636c = new int[i12];
    }
}
