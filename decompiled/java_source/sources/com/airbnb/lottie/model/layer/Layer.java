package com.airbnb.lottie.model.layer;

import com.airbnb.lottie.h;
import com.airbnb.lottie.model.content.LBlendMode;
import java.util.List;
import java.util.Locale;
import q4.j;
import q4.k;
import q4.n;

/* JADX INFO: loaded from: classes.dex */
public class Layer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f17833a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h f17834b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f17835c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f17836d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final LayerType f17837e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f17838f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f17839g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List f17840h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final n f17841i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f17842j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f17843k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f17844l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final float f17845m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final float f17846n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final float f17847o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final float f17848p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final j f17849q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final k f17850r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final q4.b f17851s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final List f17852t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final MatteType f17853u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final boolean f17854v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final r4.a f17855w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final u4.j f17856x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final LBlendMode f17857y;

    public enum LayerType {
        PRE_COMP,
        SOLID,
        IMAGE,
        NULL,
        SHAPE,
        TEXT,
        UNKNOWN
    }

    public enum MatteType {
        NONE,
        ADD,
        INVERT,
        LUMA,
        LUMA_INVERTED,
        UNKNOWN
    }

    public Layer(List list, h hVar, String str, long j11, LayerType layerType, long j12, String str2, List list2, n nVar, int i11, int i12, int i13, float f11, float f12, float f13, float f14, j jVar, k kVar, List list3, MatteType matteType, q4.b bVar, boolean z10, r4.a aVar, u4.j jVar2, LBlendMode lBlendMode) {
        this.f17833a = list;
        this.f17834b = hVar;
        this.f17835c = str;
        this.f17836d = j11;
        this.f17837e = layerType;
        this.f17838f = j12;
        this.f17839g = str2;
        this.f17840h = list2;
        this.f17841i = nVar;
        this.f17842j = i11;
        this.f17843k = i12;
        this.f17844l = i13;
        this.f17845m = f11;
        this.f17846n = f12;
        this.f17847o = f13;
        this.f17848p = f14;
        this.f17849q = jVar;
        this.f17850r = kVar;
        this.f17852t = list3;
        this.f17853u = matteType;
        this.f17851s = bVar;
        this.f17854v = z10;
        this.f17855w = aVar;
        this.f17856x = jVar2;
        this.f17857y = lBlendMode;
    }

    public LBlendMode a() {
        return this.f17857y;
    }

    public r4.a b() {
        return this.f17855w;
    }

    h c() {
        return this.f17834b;
    }

    public u4.j d() {
        return this.f17856x;
    }

    public long e() {
        return this.f17836d;
    }

    List f() {
        return this.f17852t;
    }

    public LayerType g() {
        return this.f17837e;
    }

    List h() {
        return this.f17840h;
    }

    MatteType i() {
        return this.f17853u;
    }

    public String j() {
        return this.f17835c;
    }

    long k() {
        return this.f17838f;
    }

    float l() {
        return this.f17848p;
    }

    float m() {
        return this.f17847o;
    }

    public String n() {
        return this.f17839g;
    }

    List o() {
        return this.f17833a;
    }

    int p() {
        return this.f17844l;
    }

    int q() {
        return this.f17843k;
    }

    int r() {
        return this.f17842j;
    }

    float s() {
        return this.f17846n / this.f17834b.e();
    }

    j t() {
        return this.f17849q;
    }

    public String toString() {
        return z("");
    }

    k u() {
        return this.f17850r;
    }

    q4.b v() {
        return this.f17851s;
    }

    float w() {
        return this.f17845m;
    }

    n x() {
        return this.f17841i;
    }

    public boolean y() {
        return this.f17854v;
    }

    public String z(String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(j());
        sb2.append("\n");
        Layer layerT = this.f17834b.t(k());
        if (layerT != null) {
            sb2.append("\t\tParents: ");
            sb2.append(layerT.j());
            Layer layerT2 = this.f17834b.t(layerT.k());
            while (layerT2 != null) {
                sb2.append("->");
                sb2.append(layerT2.j());
                layerT2 = this.f17834b.t(layerT2.k());
            }
            sb2.append(str);
            sb2.append("\n");
        }
        if (!h().isEmpty()) {
            sb2.append(str);
            sb2.append("\tMasks: ");
            sb2.append(h().size());
            sb2.append("\n");
        }
        if (r() != 0 && q() != 0) {
            sb2.append(str);
            sb2.append("\tBackground: ");
            sb2.append(String.format(Locale.US, "%dx%d %X\n", Integer.valueOf(r()), Integer.valueOf(q()), Integer.valueOf(p())));
        }
        if (!this.f17833a.isEmpty()) {
            sb2.append(str);
            sb2.append("\tShapes:\n");
            for (Object obj : this.f17833a) {
                sb2.append(str);
                sb2.append("\t\t");
                sb2.append(obj);
                sb2.append("\n");
            }
        }
        return sb2.toString();
    }
}
