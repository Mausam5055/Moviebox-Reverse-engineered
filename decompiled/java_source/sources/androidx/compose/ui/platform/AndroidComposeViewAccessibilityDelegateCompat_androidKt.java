package androidx.compose.ui.platform;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.semantics.SemanticsConfigurationKt;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class AndroidComposeViewAccessibilityDelegateCompat_androidKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean h(androidx.compose.ui.semantics.a aVar, Object obj) {
        if (aVar == obj) {
            return true;
        }
        if (!(obj instanceof androidx.compose.ui.semantics.a)) {
            return false;
        }
        androidx.compose.ui.semantics.a aVar2 = (androidx.compose.ui.semantics.a) obj;
        if (!Intrinsics.c(aVar.b(), aVar2.b())) {
            return false;
        }
        if (aVar.a() != null || aVar2.a() == null) {
            return aVar.a() == null || aVar2.a() != null;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean i(SemanticsNode semanticsNode) {
        return !semanticsNode.n().e(SemanticsProperties.f5919a.f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean j(SemanticsNode semanticsNode) {
        androidx.compose.ui.semantics.i iVarW = semanticsNode.w();
        SemanticsProperties semanticsProperties = SemanticsProperties.f5919a;
        if (iVarW.e(semanticsProperties.g()) && !Intrinsics.c(SemanticsConfigurationKt.a(semanticsNode.w(), semanticsProperties.i()), Boolean.TRUE)) {
            return true;
        }
        LayoutNode layoutNodeK = k(semanticsNode.q(), new Function1<LayoutNode, Boolean>() { // from class: androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat_androidKt$excludeLineAndPageGranularities$ancestor$1
            /* JADX WARN: Code duplicated, block: B:9:0x001a  */
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(LayoutNode layoutNode) {
                boolean z10;
                androidx.compose.ui.semantics.i iVarF = layoutNode.F();
                if (iVarF != null) {
                    z10 = iVarF.o() && iVarF.e(SemanticsProperties.f5919a.g());
                }
                return Boolean.valueOf(z10);
            }
        });
        if (layoutNodeK != null) {
            androidx.compose.ui.semantics.i iVarF = layoutNodeK.F();
            if (!(iVarF != null ? Intrinsics.c(SemanticsConfigurationKt.a(iVarF, semanticsProperties.i()), Boolean.TRUE) : false)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LayoutNode k(LayoutNode layoutNode, Function1 function1) {
        for (LayoutNode layoutNodeH0 = layoutNode.h0(); layoutNodeH0 != null; layoutNodeH0 = layoutNodeH0.h0()) {
            if (((Boolean) function1.invoke(layoutNodeH0)).booleanValue()) {
                return layoutNodeH0;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean l(SemanticsNode semanticsNode) {
        return semanticsNode.p().getLayoutDirection() == LayoutDirection.Rtl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean m(SemanticsNode semanticsNode) {
        return (semanticsNode.z() || semanticsNode.w().e(SemanticsProperties.f5919a.n())) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean n(SemanticsNode semanticsNode, androidx.compose.ui.semantics.i iVar) {
        Iterator it = iVar.iterator();
        while (it.hasNext()) {
            if (!semanticsNode.n().e((SemanticsPropertyKey) ((Map.Entry) it.next()).getKey())) {
                return true;
            }
        }
        return false;
    }
}
