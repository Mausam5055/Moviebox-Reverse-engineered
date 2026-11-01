package com.google.android.exoplayer2.upstream;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* JADX INFO: loaded from: classes3.dex */
public class h0 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Comparator f27411h = new Comparator() { // from class: com.google.android.exoplayer2.upstream.f0
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return h0.g((h0.b) obj, (h0.b) obj2);
        }
    };

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Comparator f27412i = new Comparator() { // from class: com.google.android.exoplayer2.upstream.g0
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return h0.h((h0.b) obj, (h0.b) obj2);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f27413a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f27417e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f27418f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f27419g;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b[] f27415c = new b[5];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayList f27414b = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f27416d = -1;

    /* JADX INFO: Access modifiers changed from: private */
    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f27420a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f27421b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f27422c;

        private b() {
        }
    }

    public h0(int i11) {
        this.f27413a = i11;
    }

    private void d() {
        if (this.f27416d != 1) {
            Collections.sort(this.f27414b, f27411h);
            this.f27416d = 1;
        }
    }

    private void e() {
        if (this.f27416d != 0) {
            Collections.sort(this.f27414b, f27412i);
            this.f27416d = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int g(b bVar, b bVar2) {
        return bVar.f27420a - bVar2.f27420a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int h(b bVar, b bVar2) {
        return Float.compare(bVar.f27422c, bVar2.f27422c);
    }

    public void c(int i11, float f11) {
        b bVar;
        d();
        int i12 = this.f27419g;
        if (i12 > 0) {
            b[] bVarArr = this.f27415c;
            int i13 = i12 - 1;
            this.f27419g = i13;
            bVar = bVarArr[i13];
        } else {
            bVar = new b();
        }
        int i14 = this.f27417e;
        this.f27417e = i14 + 1;
        bVar.f27420a = i14;
        bVar.f27421b = i11;
        bVar.f27422c = f11;
        this.f27414b.add(bVar);
        this.f27418f += i11;
        while (true) {
            int i15 = this.f27418f;
            int i16 = this.f27413a;
            if (i15 <= i16) {
                return;
            }
            int i17 = i15 - i16;
            b bVar2 = (b) this.f27414b.get(0);
            int i18 = bVar2.f27421b;
            if (i18 <= i17) {
                this.f27418f -= i18;
                this.f27414b.remove(0);
                int i19 = this.f27419g;
                if (i19 < 5) {
                    b[] bVarArr2 = this.f27415c;
                    this.f27419g = i19 + 1;
                    bVarArr2[i19] = bVar2;
                }
            } else {
                bVar2.f27421b = i18 - i17;
                this.f27418f -= i17;
            }
        }
    }

    public float f(float f11) {
        e();
        float f12 = f11 * this.f27418f;
        int i11 = 0;
        for (int i12 = 0; i12 < this.f27414b.size(); i12++) {
            b bVar = (b) this.f27414b.get(i12);
            i11 += bVar.f27421b;
            if (i11 >= f12) {
                return bVar.f27422c;
            }
        }
        if (this.f27414b.isEmpty()) {
            return Float.NaN;
        }
        ArrayList arrayList = this.f27414b;
        return ((b) arrayList.get(arrayList.size() - 1)).f27422c;
    }

    public void i() {
        this.f27414b.clear();
        this.f27416d = -1;
        this.f27417e = 0;
        this.f27418f = 0;
    }
}
