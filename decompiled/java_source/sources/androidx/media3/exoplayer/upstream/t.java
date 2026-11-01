package androidx.media3.exoplayer.upstream;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
public class t {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Comparator f13020h = new Comparator() { // from class: androidx.media3.exoplayer.upstream.r
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return t.g((t.b) obj, (t.b) obj2);
        }
    };

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Comparator f13021i = new Comparator() { // from class: androidx.media3.exoplayer.upstream.s
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return t.h((t.b) obj, (t.b) obj2);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f13022a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f13026e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f13027f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f13028g;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b[] f13024c = new b[5];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayList f13023b = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f13025d = -1;

    /* JADX INFO: Access modifiers changed from: private */
    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f13029a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f13030b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f13031c;

        private b() {
        }
    }

    public t(int i11) {
        this.f13022a = i11;
    }

    private void d() {
        if (this.f13025d != 1) {
            Collections.sort(this.f13023b, f13020h);
            this.f13025d = 1;
        }
    }

    private void e() {
        if (this.f13025d != 0) {
            Collections.sort(this.f13023b, f13021i);
            this.f13025d = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int g(b bVar, b bVar2) {
        return bVar.f13029a - bVar2.f13029a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int h(b bVar, b bVar2) {
        return Float.compare(bVar.f13031c, bVar2.f13031c);
    }

    public void c(int i11, float f11) {
        b bVar;
        d();
        int i12 = this.f13028g;
        if (i12 > 0) {
            b[] bVarArr = this.f13024c;
            int i13 = i12 - 1;
            this.f13028g = i13;
            bVar = bVarArr[i13];
        } else {
            bVar = new b();
        }
        int i14 = this.f13026e;
        this.f13026e = i14 + 1;
        bVar.f13029a = i14;
        bVar.f13030b = i11;
        bVar.f13031c = f11;
        this.f13023b.add(bVar);
        this.f13027f += i11;
        while (true) {
            int i15 = this.f13027f;
            int i16 = this.f13022a;
            if (i15 <= i16) {
                return;
            }
            int i17 = i15 - i16;
            b bVar2 = (b) this.f13023b.get(0);
            int i18 = bVar2.f13030b;
            if (i18 <= i17) {
                this.f13027f -= i18;
                this.f13023b.remove(0);
                int i19 = this.f13028g;
                if (i19 < 5) {
                    b[] bVarArr2 = this.f13024c;
                    this.f13028g = i19 + 1;
                    bVarArr2[i19] = bVar2;
                }
            } else {
                bVar2.f13030b = i18 - i17;
                this.f13027f -= i17;
            }
        }
    }

    public float f(float f11) {
        e();
        float f12 = f11 * this.f13027f;
        int i11 = 0;
        for (int i12 = 0; i12 < this.f13023b.size(); i12++) {
            b bVar = (b) this.f13023b.get(i12);
            i11 += bVar.f13030b;
            if (i11 >= f12) {
                return bVar.f13031c;
            }
        }
        if (this.f13023b.isEmpty()) {
            return Float.NaN;
        }
        ArrayList arrayList = this.f13023b;
        return ((b) arrayList.get(arrayList.size() - 1)).f13031c;
    }

    public void i() {
        this.f13023b.clear();
        this.f13025d = -1;
        this.f13026e = 0;
        this.f13027f = 0;
    }
}
