package androidx.compose.ui.platform.accessibility;

import android.support.v4.media.session.c;
import androidx.compose.ui.semantics.SemanticsConfigurationKt;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.b;
import androidx.compose.ui.semantics.i;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import y.g;
import y.h;

/* JADX INFO: loaded from: classes.dex */
public abstract class CollectionInfo_androidKt {
    private static final boolean a(List list) {
        List listL;
        long jV;
        if (list.size() < 2) {
            return true;
        }
        if (list.size() == 0 || list.size() == 1) {
            listL = CollectionsKt.l();
        } else {
            listL = new ArrayList();
            Object obj = list.get(0);
            int iN = CollectionsKt.n(list);
            int i11 = 0;
            while (i11 < iN) {
                i11++;
                Object obj2 = list.get(i11);
                SemanticsNode semanticsNode = (SemanticsNode) obj2;
                SemanticsNode semanticsNode2 = (SemanticsNode) obj;
                listL.add(g.d(h.a(Math.abs(g.m(semanticsNode2.i().d()) - g.m(semanticsNode.i().d())), Math.abs(g.n(semanticsNode2.i().d()) - g.n(semanticsNode.i().d())))));
                obj = obj2;
            }
        }
        if (listL.size() == 1) {
            jV = ((g) CollectionsKt.i0(listL)).v();
        } else {
            if (listL.isEmpty()) {
                throw new UnsupportedOperationException("Empty collection can't be reduced.");
            }
            Object objI0 = CollectionsKt.i0(listL);
            int iN2 = CollectionsKt.n(listL);
            if (1 <= iN2) {
                int i12 = 1;
                while (true) {
                    objI0 = g.d(g.r(((g) objI0).v(), ((g) listL.get(i12)).v()));
                    if (i12 == iN2) {
                        break;
                    }
                    i12++;
                }
            }
            jV = ((g) objI0).v();
        }
        return g.n(jV) < g.m(jV);
    }

    public static final boolean b(SemanticsNode semanticsNode) {
        i iVarN = semanticsNode.n();
        SemanticsProperties semanticsProperties = SemanticsProperties.f5919a;
        return (SemanticsConfigurationKt.a(iVarN, semanticsProperties.a()) == null && SemanticsConfigurationKt.a(semanticsNode.n(), semanticsProperties.y()) == null) ? false : true;
    }

    private static final boolean c(b bVar) {
        return bVar.b() < 0 || bVar.a() < 0;
    }

    public static final void d(SemanticsNode semanticsNode, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        i iVarN = semanticsNode.n();
        SemanticsProperties semanticsProperties = SemanticsProperties.f5919a;
        b bVar = (b) SemanticsConfigurationKt.a(iVarN, semanticsProperties.a());
        if (bVar != null) {
            accessibilityNodeInfoCompat.setCollectionInfo(f(bVar));
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (SemanticsConfigurationKt.a(semanticsNode.n(), semanticsProperties.y()) != null) {
            List listT = semanticsNode.t();
            int size = listT.size();
            for (int i11 = 0; i11 < size; i11++) {
                SemanticsNode semanticsNode2 = (SemanticsNode) listT.get(i11);
                if (semanticsNode2.n().e(SemanticsProperties.f5919a.z())) {
                    arrayList.add(semanticsNode2);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        boolean zA = a(arrayList);
        accessibilityNodeInfoCompat.setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(zA ? 1 : arrayList.size(), zA ? arrayList.size() : 1, false, 0));
    }

    public static final void e(SemanticsNode semanticsNode, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        i iVarN = semanticsNode.n();
        SemanticsProperties semanticsProperties = SemanticsProperties.f5919a;
        c.a(SemanticsConfigurationKt.a(iVarN, semanticsProperties.b()));
        SemanticsNode semanticsNodeR = semanticsNode.r();
        if (semanticsNodeR == null || SemanticsConfigurationKt.a(semanticsNodeR.n(), semanticsProperties.y()) == null) {
            return;
        }
        b bVar = (b) SemanticsConfigurationKt.a(semanticsNodeR.n(), semanticsProperties.a());
        if ((bVar == null || !c(bVar)) && semanticsNode.n().e(semanticsProperties.z())) {
            ArrayList arrayList = new ArrayList();
            List listT = semanticsNodeR.t();
            int size = listT.size();
            int i11 = 0;
            for (int i12 = 0; i12 < size; i12++) {
                SemanticsNode semanticsNode2 = (SemanticsNode) listT.get(i12);
                if (semanticsNode2.n().e(SemanticsProperties.f5919a.z())) {
                    arrayList.add(semanticsNode2);
                    if (semanticsNode2.q().i0() < semanticsNode.q().i0()) {
                        i11++;
                    }
                }
            }
            if (arrayList.isEmpty()) {
                return;
            }
            boolean zA = a(arrayList);
            AccessibilityNodeInfoCompat.CollectionItemInfoCompat collectionItemInfoCompatObtain = AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(zA ? 0 : i11, 1, zA ? i11 : 0, 1, false, ((Boolean) semanticsNode.n().l(SemanticsProperties.f5919a.z(), new Function0<Boolean>() { // from class: androidx.compose.ui.platform.accessibility.CollectionInfo_androidKt$setCollectionItemInfo$itemInfo$1
                @Override // kotlin.jvm.functions.Function0
                public final Boolean invoke() {
                    return Boolean.FALSE;
                }
            })).booleanValue());
            if (collectionItemInfoCompatObtain != null) {
                accessibilityNodeInfoCompat.setCollectionItemInfo(collectionItemInfoCompatObtain);
            }
        }
    }

    private static final AccessibilityNodeInfoCompat.CollectionInfoCompat f(b bVar) {
        return AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(bVar.b(), bVar.a(), false, 0);
    }
}
