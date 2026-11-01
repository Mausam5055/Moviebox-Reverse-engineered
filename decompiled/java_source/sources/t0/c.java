package t0;

import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class c extends ConstraintWidget {
    public ArrayList V0 = new ArrayList();

    public void a(ConstraintWidget constraintWidget) {
        this.V0.add(constraintWidget);
        if (constraintWidget.M() != null) {
            ((c) constraintWidget.M()).x1(constraintWidget);
        }
        constraintWidget.g1(this);
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void v0() {
        this.V0.clear();
        super.v0();
    }

    public ArrayList v1() {
        return this.V0;
    }

    public void w1() {
        ArrayList arrayList = this.V0;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            ConstraintWidget constraintWidget = (ConstraintWidget) this.V0.get(i11);
            if (constraintWidget instanceof c) {
                ((c) constraintWidget).w1();
            }
        }
    }

    public void x1(ConstraintWidget constraintWidget) {
        this.V0.remove(constraintWidget);
        constraintWidget.v0();
    }

    public void y1() {
        this.V0.clear();
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void z0(androidx.constraintlayout.core.c cVar) {
        super.z0(cVar);
        int size = this.V0.size();
        for (int i11 = 0; i11 < size; i11++) {
            ((ConstraintWidget) this.V0.get(i11)).z0(cVar);
        }
    }
}
