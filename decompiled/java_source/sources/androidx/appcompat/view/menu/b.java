package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class b implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Context f1408a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected Context f1409b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected f f1410c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected LayoutInflater f1411d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected LayoutInflater f1412e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private l.a f1413f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f1414g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f1415h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected m f1416i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f1417j;

    public b(Context context, int i11, int i12) {
        this.f1408a = context;
        this.f1411d = LayoutInflater.from(context);
        this.f1414g = i11;
        this.f1415h = i12;
    }

    protected void a(View view, int i11) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        ((ViewGroup) this.f1416i).addView(view, i11);
    }

    @Override // androidx.appcompat.view.menu.l
    public void b(f fVar, boolean z10) {
        l.a aVar = this.f1413f;
        if (aVar != null) {
            aVar.b(fVar, z10);
        }
    }

    @Override // androidx.appcompat.view.menu.l
    public boolean c(f fVar, h hVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.l
    public void d(l.a aVar) {
        this.f1413f = aVar;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // androidx.appcompat.view.menu.l
    public boolean f(q qVar) {
        l.a aVar = this.f1413f;
        f fVar = qVar;
        if (aVar == null) {
            return false;
        }
        if (qVar == null) {
            fVar = this.f1410c;
        }
        return aVar.c(fVar);
    }

    @Override // androidx.appcompat.view.menu.l
    public int getId() {
        return this.f1417j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.appcompat.view.menu.l
    public void h(boolean z10) {
        ViewGroup viewGroup = (ViewGroup) this.f1416i;
        if (viewGroup == null) {
            return;
        }
        f fVar = this.f1410c;
        int i11 = 0;
        if (fVar != null) {
            fVar.t();
            ArrayList arrayListG = this.f1410c.G();
            int size = arrayListG.size();
            int i12 = 0;
            for (int i13 = 0; i13 < size; i13++) {
                h hVar = (h) arrayListG.get(i13);
                if (s(i12, hVar)) {
                    View childAt = viewGroup.getChildAt(i12);
                    h itemData = childAt instanceof m.a ? ((m.a) childAt).getItemData() : null;
                    View viewP = p(hVar, childAt, viewGroup);
                    if (hVar != itemData) {
                        viewP.setPressed(false);
                        viewP.jumpDrawablesToCurrentState();
                    }
                    if (viewP != childAt) {
                        a(viewP, i12);
                    }
                    i12++;
                }
            }
            i11 = i12;
        }
        while (i11 < viewGroup.getChildCount()) {
            if (!n(viewGroup, i11)) {
                i11++;
            }
        }
    }

    @Override // androidx.appcompat.view.menu.l
    public boolean j(f fVar, h hVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.l
    public void k(Context context, f fVar) {
        this.f1409b = context;
        this.f1412e = LayoutInflater.from(context);
        this.f1410c = fVar;
    }

    public abstract void l(h hVar, m.a aVar);

    public m.a m(ViewGroup viewGroup) {
        return (m.a) this.f1411d.inflate(this.f1415h, viewGroup, false);
    }

    protected boolean n(ViewGroup viewGroup, int i11) {
        viewGroup.removeViewAt(i11);
        return true;
    }

    public l.a o() {
        return this.f1413f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View p(h hVar, View view, ViewGroup viewGroup) {
        m.a aVarM = view instanceof m.a ? (m.a) view : m(viewGroup);
        l(hVar, aVarM);
        return (View) aVarM;
    }

    public m q(ViewGroup viewGroup) {
        if (this.f1416i == null) {
            m mVar = (m) this.f1411d.inflate(this.f1414g, viewGroup, false);
            this.f1416i = mVar;
            mVar.initialize(this.f1410c);
            h(true);
        }
        return this.f1416i;
    }

    public void r(int i11) {
        this.f1417j = i11;
    }

    public abstract boolean s(int i11, h hVar);
}
