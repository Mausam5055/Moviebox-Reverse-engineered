package androidx.constraintlayout.core.widgets.analyzer;

/* JADX INFO: loaded from: classes.dex */
class e extends DependencyNode {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f6961m;

    public e(WidgetRun widgetRun) {
        super(widgetRun);
        if (widgetRun instanceof j) {
            this.f6915e = DependencyNode.Type.HORIZONTAL_DIMENSION;
        } else {
            this.f6915e = DependencyNode.Type.VERTICAL_DIMENSION;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.DependencyNode
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
}
