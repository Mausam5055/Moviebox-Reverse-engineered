package androidx.constraintlayout.core.widgets.analyzer;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DependencyNode implements u0.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    WidgetRun f6914d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f6916f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f6917g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public u0.a f6911a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f6912b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f6913c = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Type f6915e = Type.UNKNOWN;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f6918h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    e f6919i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f6920j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    List f6921k = new ArrayList();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    List f6922l = new ArrayList();

    enum Type {
        UNKNOWN,
        HORIZONTAL_DIMENSION,
        VERTICAL_DIMENSION,
        LEFT,
        RIGHT,
        TOP,
        BOTTOM,
        BASELINE
    }

    public DependencyNode(WidgetRun widgetRun) {
        this.f6914d = widgetRun;
    }

    @Override // u0.a
    public void a(u0.a aVar) {
        Iterator it = this.f6922l.iterator();
        while (it.hasNext()) {
            if (!((DependencyNode) it.next()).f6920j) {
                return;
            }
        }
        this.f6913c = true;
        u0.a aVar2 = this.f6911a;
        if (aVar2 != null) {
            aVar2.a(this);
        }
        if (this.f6912b) {
            this.f6914d.a(this);
            return;
        }
        DependencyNode dependencyNode = null;
        int i11 = 0;
        for (DependencyNode dependencyNode2 : this.f6922l) {
            if (!(dependencyNode2 instanceof e)) {
                i11++;
                dependencyNode = dependencyNode2;
            }
        }
        if (dependencyNode != null && i11 == 1 && dependencyNode.f6920j) {
            e eVar = this.f6919i;
            if (eVar != null) {
                if (!eVar.f6920j) {
                    return;
                } else {
                    this.f6916f = this.f6918h * eVar.f6917g;
                }
            }
            d(dependencyNode.f6917g + this.f6916f);
        }
        u0.a aVar3 = this.f6911a;
        if (aVar3 != null) {
            aVar3.a(this);
        }
    }

    public void b(u0.a aVar) {
        this.f6921k.add(aVar);
        if (this.f6920j) {
            aVar.a(aVar);
        }
    }

    public void c() {
        this.f6922l.clear();
        this.f6921k.clear();
        this.f6920j = false;
        this.f6917g = 0;
        this.f6913c = false;
        this.f6912b = false;
    }

    public void d(int i11) {
        if (this.f6920j) {
            return;
        }
        this.f6920j = true;
        this.f6917g = i11;
        for (u0.a aVar : this.f6921k) {
            aVar.a(aVar);
        }
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f6914d.f6924b.v());
        sb2.append(":");
        sb2.append(this.f6915e);
        sb2.append("(");
        sb2.append(this.f6920j ? Integer.valueOf(this.f6917g) : "unresolved");
        sb2.append(") <t=");
        sb2.append(this.f6922l.size());
        sb2.append(":d=");
        sb2.append(this.f6921k.size());
        sb2.append(">");
        return sb2.toString();
    }
}
