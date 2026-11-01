package tz;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final List f76419j;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f76421b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    byte[] f76424e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f76425f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    InputStream f76426g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean[] f76428i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    byte[] f76420a = new byte[8000];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    short[] f76422c = new short[256];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f76423d = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f76427h = false;

    /* JADX INFO: renamed from: tz.a$a, reason: collision with other inner class name */
    private static class C0928a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        h f76429a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f76430b;

        C0928a(h hVar, boolean z10) {
            this.f76429a = hVar;
            this.f76430b = z10;
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C0928a(new d(), true));
        arrayList.add(new C0928a(new e.a(), true));
        arrayList.add(new C0928a(new e.b(), true));
        arrayList.add(new C0928a(new e.d(), true));
        arrayList.add(new C0928a(new e.C0930e(), true));
        arrayList.add(new C0928a(new f.d(), true));
        arrayList.add(new C0928a(new c.b(), true));
        arrayList.add(new C0928a(new c.a(), true));
        arrayList.add(new C0928a(new c.C0929c(), true));
        arrayList.add(new C0928a(new f.c(), true));
        arrayList.add(new C0928a(new f.b.a(), true));
        arrayList.add(new C0928a(new f.b.C0931b(), true));
        arrayList.add(new C0928a(new f.a(), true));
        arrayList.add(new C0928a(new g.a(), true));
        arrayList.add(new C0928a(new g.b(), true));
        arrayList.add(new C0928a(new g.d(), true));
        arrayList.add(new C0928a(new g.f(), true));
        arrayList.add(new C0928a(new g.h(), true));
        arrayList.add(new C0928a(new g.j(), true));
        arrayList.add(new C0928a(new g.k(), true));
        arrayList.add(new C0928a(new g.u(), true));
        arrayList.add(new C0928a(new g.v(), true));
        arrayList.add(new C0928a(new g.t(), true));
        arrayList.add(new C0928a(new g.m(), true));
        arrayList.add(new C0928a(new g.s(), false));
        arrayList.add(new C0928a(new g.r(), false));
        arrayList.add(new C0928a(new g.p(), false));
        arrayList.add(new C0928a(new g.o(), false));
        f76419j = Collections.unmodifiableList(arrayList);
    }

    private void a() {
        int i11;
        int i12;
        if (this.f76427h) {
            int i13 = 0;
            i11 = 0;
            i12 = 0;
            boolean z10 = false;
            for (int i14 = 0; i14 < this.f76425f; i14++) {
                byte[] bArr = this.f76420a;
                if (i13 >= bArr.length) {
                    break;
                }
                byte b11 = this.f76424e[i14];
                if (b11 == 60) {
                    if (z10) {
                        i12++;
                    }
                    i11++;
                    z10 = true;
                }
                if (!z10) {
                    bArr[i13] = b11;
                    i13++;
                }
                if (b11 == 62) {
                    z10 = false;
                }
            }
            this.f76421b = i13;
        } else {
            i11 = 0;
            i12 = 0;
        }
        if (i11 < 5 || i11 / 5 < i12 || (this.f76421b < 100 && this.f76425f > 600)) {
            int i15 = this.f76425f;
            if (i15 > 8000) {
                i15 = 8000;
            }
            int i16 = 0;
            while (i16 < i15) {
                this.f76420a[i16] = this.f76424e[i16];
                i16++;
            }
            this.f76421b = i16;
        }
        Arrays.fill(this.f76422c, (short) 0);
        for (int i17 = 0; i17 < this.f76421b; i17++) {
            int i18 = this.f76420a[i17] & 255;
            short[] sArr = this.f76422c;
            sArr[i18] = (short) (sArr[i18] + 1);
        }
        this.f76423d = false;
        for (int i19 = 128; i19 <= 159; i19++) {
            if (this.f76422c[i19] != 0) {
                this.f76423d = true;
                return;
            }
        }
    }

    public b b() {
        b[] bVarArrC = c();
        if (bVarArrC == null || bVarArrC.length == 0) {
            return null;
        }
        return bVarArrC[0];
    }

    public b[] c() {
        b bVarC;
        ArrayList arrayList = new ArrayList();
        a();
        int i11 = 0;
        while (true) {
            List list = f76419j;
            if (i11 >= list.size()) {
                Collections.sort(arrayList);
                Collections.reverse(arrayList);
                return (b[]) arrayList.toArray(new b[arrayList.size()]);
            }
            C0928a c0928a = (C0928a) list.get(i11);
            boolean[] zArr = this.f76428i;
            if ((zArr != null ? zArr[i11] : c0928a.f76430b) && (bVarC = c0928a.f76429a.c(this)) != null) {
                arrayList.add(bVarC);
            }
            i11++;
        }
    }

    public a d(byte[] bArr) {
        this.f76424e = bArr;
        this.f76425f = bArr.length;
        return this;
    }
}
