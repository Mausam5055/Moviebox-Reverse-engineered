package androidx.constraintlayout.core.widgets.analyzer;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class k {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f6967h;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    WidgetRun f6970c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    WidgetRun f6971d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f6973f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f6974g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f6968a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f6969b = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ArrayList f6972e = new ArrayList();

    public k(WidgetRun widgetRun, int i11) {
        this.f6970c = null;
        this.f6971d = null;
        int i12 = f6967h;
        this.f6973f = i12;
        f6967h = i12 + 1;
        this.f6970c = widgetRun;
        this.f6971d = widgetRun;
        this.f6974g = i11;
    }

    private long c(DependencyNode dependencyNode, long j11) {
        WidgetRun widgetRun = dependencyNode.f6914d;
        if (widgetRun instanceof i) {
            return j11;
        }
        int size = dependencyNode.f6921k.size();
        long jMin = j11;
        for (int i11 = 0; i11 < size; i11++) {
            u0.a aVar = (u0.a) dependencyNode.f6921k.get(i11);
            if (aVar instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) aVar;
                if (dependencyNode2.f6914d != widgetRun) {
                    jMin = Math.min(jMin, c(dependencyNode2, ((long) dependencyNode2.f6916f) + j11));
                }
            }
        }
        if (dependencyNode != widgetRun.f6931i) {
            return jMin;
        }
        long j12 = j11 - widgetRun.j();
        return Math.min(Math.min(jMin, c(widgetRun.f6930h, j12)), j12 - ((long) widgetRun.f6930h.f6916f));
    }

    private long d(DependencyNode dependencyNode, long j11) {
        WidgetRun widgetRun = dependencyNode.f6914d;
        if (widgetRun instanceof i) {
            return j11;
        }
        int size = dependencyNode.f6921k.size();
        long jMax = j11;
        for (int i11 = 0; i11 < size; i11++) {
            u0.a aVar = (u0.a) dependencyNode.f6921k.get(i11);
            if (aVar instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) aVar;
                if (dependencyNode2.f6914d != widgetRun) {
                    jMax = Math.max(jMax, d(dependencyNode2, ((long) dependencyNode2.f6916f) + j11));
                }
            }
        }
        if (dependencyNode != widgetRun.f6930h) {
            return jMax;
        }
        long j12 = j11 + widgetRun.j();
        return Math.max(Math.max(jMax, d(widgetRun.f6931i, j12)), j12 - ((long) widgetRun.f6931i.f6916f));
    }

    public void a(WidgetRun widgetRun) {
        this.f6972e.add(widgetRun);
        this.f6971d = widgetRun;
    }

    public long b(androidx.constraintlayout.core.widgets.d dVar, int i11) {
        long j11;
        int i12;
        WidgetRun widgetRun = this.f6970c;
        if (widgetRun instanceof c) {
            if (((c) widgetRun).f6928f != i11) {
                return 0L;
            }
        } else if (i11 == 0) {
            if (!(widgetRun instanceof j)) {
                return 0L;
            }
        } else if (!(widgetRun instanceof l)) {
            return 0L;
        }
        DependencyNode dependencyNode = (i11 == 0 ? dVar.f6864e : dVar.f6866f).f6930h;
        DependencyNode dependencyNode2 = (i11 == 0 ? dVar.f6864e : dVar.f6866f).f6931i;
        boolean zContains = widgetRun.f6930h.f6922l.contains(dependencyNode);
        boolean zContains2 = this.f6970c.f6931i.f6922l.contains(dependencyNode2);
        long j12 = this.f6970c.j();
        if (zContains && zContains2) {
            long jD = d(this.f6970c.f6930h, 0L);
            long jC = c(this.f6970c.f6931i, 0L);
            long j13 = jD - j12;
            WidgetRun widgetRun2 = this.f6970c;
            int i13 = widgetRun2.f6931i.f6916f;
            if (j13 >= (-i13)) {
                j13 += (long) i13;
            }
            int i14 = widgetRun2.f6930h.f6916f;
            long j14 = ((-jC) - j12) - ((long) i14);
            if (j14 >= i14) {
                j14 -= (long) i14;
            }
            float fS = widgetRun2.f6924b.s(i11);
            float f11 = fS > 0.0f ? (long) ((j14 / fS) + (j13 / (1.0f - fS))) : 0L;
            long j15 = ((long) ((f11 * fS) + 0.5f)) + j12 + ((long) ((f11 * (1.0f - fS)) + 0.5f));
            WidgetRun widgetRun3 = this.f6970c;
            j11 = ((long) widgetRun3.f6930h.f6916f) + j15;
            i12 = widgetRun3.f6931i.f6916f;
        } else {
            if (zContains) {
                DependencyNode dependencyNode3 = this.f6970c.f6930h;
                return Math.max(d(dependencyNode3, dependencyNode3.f6916f), ((long) this.f6970c.f6930h.f6916f) + j12);
            }
            if (zContains2) {
                DependencyNode dependencyNode4 = this.f6970c.f6931i;
                return Math.max(-c(dependencyNode4, dependencyNode4.f6916f), ((long) (-this.f6970c.f6931i.f6916f)) + j12);
            }
            WidgetRun widgetRun4 = this.f6970c;
            j11 = ((long) widgetRun4.f6930h.f6916f) + widgetRun4.j();
            i12 = this.f6970c.f6931i.f6916f;
        }
        return j11 - ((long) i12);
    }
}
