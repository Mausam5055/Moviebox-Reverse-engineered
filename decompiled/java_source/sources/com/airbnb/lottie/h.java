package com.airbnb.lottie;

import android.graphics.Rect;
import androidx.collection.y0;
import com.airbnb.lottie.model.layer.Layer;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class h {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map f17732c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map f17733d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f17734e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Map f17735f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List f17736g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private y0 f17737h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private androidx.collection.x f17738i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private List f17739j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Rect f17740k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f17741l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f17742m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f17743n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f17744o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f17746q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f17747r;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final PerformanceTracker f17730a = new PerformanceTracker();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashSet f17731b = new HashSet();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f17745p = 0;

    public void a(String str) {
        v4.f.c(str);
        this.f17731b.add(str);
    }

    public Rect b() {
        return this.f17740k;
    }

    public y0 c() {
        return this.f17737h;
    }

    public float d() {
        return (long) ((e() / this.f17743n) * 1000.0f);
    }

    public float e() {
        return this.f17742m - this.f17741l;
    }

    public float f() {
        return this.f17742m;
    }

    public Map g() {
        return this.f17735f;
    }

    public float h(float f11) {
        return v4.k.i(this.f17741l, this.f17742m, f11);
    }

    public float i() {
        return this.f17743n;
    }

    public Map j() {
        float fE = v4.l.e();
        if (fE != this.f17734e) {
            for (Map.Entry entry : this.f17733d.entrySet()) {
                this.f17733d.put((String) entry.getKey(), ((l0) entry.getValue()).a(this.f17734e / fE));
            }
        }
        this.f17734e = fE;
        return this.f17733d;
    }

    public List k() {
        return this.f17739j;
    }

    public p4.g l(String str) {
        int size = this.f17736g.size();
        for (int i11 = 0; i11 < size; i11++) {
            p4.g gVar = (p4.g) this.f17736g.get(i11);
            if (gVar.a(str)) {
                return gVar;
            }
        }
        return null;
    }

    public int m() {
        return this.f17745p;
    }

    public PerformanceTracker n() {
        return this.f17730a;
    }

    public List o(String str) {
        return (List) this.f17732c.get(str);
    }

    public float p() {
        return this.f17741l;
    }

    public boolean q() {
        return this.f17744o;
    }

    public void r(int i11) {
        this.f17745p += i11;
    }

    public void s(Rect rect, float f11, float f12, float f13, List list, androidx.collection.x xVar, Map map, Map map2, float f14, y0 y0Var, Map map3, List list2, int i11, int i12) {
        this.f17740k = rect;
        this.f17741l = f11;
        this.f17742m = f12;
        this.f17743n = f13;
        this.f17739j = list;
        this.f17738i = xVar;
        this.f17732c = map;
        this.f17733d = map2;
        this.f17734e = f14;
        this.f17737h = y0Var;
        this.f17735f = map3;
        this.f17736g = list2;
        this.f17746q = i11;
        this.f17747r = i12;
    }

    public Layer t(long j11) {
        return (Layer) this.f17738i.e(j11);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("LottieComposition:\n");
        Iterator it = this.f17739j.iterator();
        while (it.hasNext()) {
            sb2.append(((Layer) it.next()).z("\t"));
        }
        return sb2.toString();
    }

    public void u(boolean z10) {
        this.f17744o = z10;
    }

    public void v(boolean z10) {
        this.f17730a.b(z10);
    }
}
