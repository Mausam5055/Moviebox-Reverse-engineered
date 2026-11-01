package androidx.compose.ui.platform;

import android.graphics.Rect;
import android.graphics.Region;
import android.view.View;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.semantics.SemanticsConfigurationKt;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public abstract class e2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final y.i f5779a = new y.i(0.0f, 0.0f, 10.0f, 10.0f);

    public static final b2 a(List list, int i11) {
        int size = list.size();
        for (int i12 = 0; i12 < size; i12++) {
            if (((b2) list.get(i12)).d() == i11) {
                return (b2) list.get(i12);
            }
        }
        return null;
    }

    public static final androidx.collection.o b(androidx.compose.ui.semantics.m mVar) {
        SemanticsNode semanticsNodeA = mVar.a();
        androidx.collection.e0 e0VarB = androidx.collection.p.b();
        if (semanticsNodeA.q().n() && semanticsNodeA.q().D0()) {
            y.i iVarI = semanticsNodeA.i();
            c(new Region(Math.round(iVarI.f()), Math.round(iVarI.i()), Math.round(iVarI.g()), Math.round(iVarI.c())), semanticsNodeA, e0VarB, semanticsNodeA, new Region());
        }
        return e0VarB;
    }

    private static final void c(Region region, SemanticsNode semanticsNode, androidx.collection.e0 e0Var, SemanticsNode semanticsNode2, Region region2) {
        androidx.compose.ui.layout.n nVarP;
        boolean z10 = (semanticsNode2.q().n() && semanticsNode2.q().D0()) ? false : true;
        if (!region.isEmpty() || semanticsNode2.o() == semanticsNode.o()) {
            if (!z10 || semanticsNode2.x()) {
                y.i iVarV = semanticsNode2.v();
                int iRound = Math.round(iVarV.f());
                int iRound2 = Math.round(iVarV.i());
                int iRound3 = Math.round(iVarV.g());
                int iRound4 = Math.round(iVarV.c());
                region2.set(iRound, iRound2, iRound3, iRound4);
                int iO = semanticsNode2.o() == semanticsNode.o() ? -1 : semanticsNode2.o();
                if (!region2.op(region, Region.Op.INTERSECT)) {
                    if (semanticsNode2.x()) {
                        SemanticsNode semanticsNodeR = semanticsNode2.r();
                        y.i iVarI = (semanticsNodeR == null || (nVarP = semanticsNodeR.p()) == null || !nVarP.n()) ? f5779a : semanticsNodeR.i();
                        e0Var.t(iO, new d2(semanticsNode2, new Rect(Math.round(iVarI.f()), Math.round(iVarI.i()), Math.round(iVarI.g()), Math.round(iVarI.c()))));
                        return;
                    } else {
                        if (iO == -1) {
                            e0Var.t(iO, new d2(semanticsNode2, region2.getBounds()));
                            return;
                        }
                        return;
                    }
                }
                e0Var.t(iO, new d2(semanticsNode2, region2.getBounds()));
                List listT = semanticsNode2.t();
                for (int size = listT.size() - 1; -1 < size; size--) {
                    c(region, semanticsNode, e0Var, (SemanticsNode) listT.get(size), region2);
                }
                if (f(semanticsNode2)) {
                    region.op(iRound, iRound2, iRound3, iRound4, Region.Op.DIFFERENCE);
                }
            }
        }
    }

    public static final Float d(androidx.compose.ui.semantics.i iVar) {
        Function1 function1;
        ArrayList arrayList = new ArrayList();
        androidx.compose.ui.semantics.a aVar = (androidx.compose.ui.semantics.a) SemanticsConfigurationKt.a(iVar, androidx.compose.ui.semantics.h.f5976a.h());
        if (aVar == null || (function1 = (Function1) aVar.a()) == null || !((Boolean) function1.invoke(arrayList)).booleanValue()) {
            return null;
        }
        return (Float) arrayList.get(0);
    }

    public static final androidx.compose.ui.text.z e(androidx.compose.ui.semantics.i iVar) {
        Function1 function1;
        ArrayList arrayList = new ArrayList();
        androidx.compose.ui.semantics.a aVar = (androidx.compose.ui.semantics.a) SemanticsConfigurationKt.a(iVar, androidx.compose.ui.semantics.h.f5976a.i());
        if (aVar == null || (function1 = (Function1) aVar.a()) == null || !((Boolean) function1.invoke(arrayList)).booleanValue()) {
            return null;
        }
        return (androidx.compose.ui.text.z) arrayList.get(0);
    }

    public static final boolean f(SemanticsNode semanticsNode) {
        return semanticsNode.w().o() || semanticsNode.w().f();
    }

    public static final View g(AndroidViewsHandler androidViewsHandler, int i11) {
        Object next;
        Iterator<T> it = androidViewsHandler.getLayoutNodeToHolder().entrySet().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((LayoutNode) ((Map.Entry) next).getKey()).j0() != i11);
        Map.Entry entry = (Map.Entry) next;
        if (entry != null) {
            return (AndroidViewHolder) entry.getValue();
        }
        return null;
    }

    public static final String h(int i11) {
        androidx.compose.ui.semantics.f.a aVar = androidx.compose.ui.semantics.f.f5964b;
        if (androidx.compose.ui.semantics.f.k(i11, aVar.a())) {
            return "android.widget.Button";
        }
        if (androidx.compose.ui.semantics.f.k(i11, aVar.b())) {
            return "android.widget.CheckBox";
        }
        if (androidx.compose.ui.semantics.f.k(i11, aVar.e())) {
            return "android.widget.RadioButton";
        }
        if (androidx.compose.ui.semantics.f.k(i11, aVar.d())) {
            return "android.widget.ImageView";
        }
        if (androidx.compose.ui.semantics.f.k(i11, aVar.c())) {
            return "android.widget.Spinner";
        }
        return null;
    }
}
