package androidx.p009lifecycle;

import android.view.View;
import androidx.p009lifecycle.viewmodel.R$id;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class ViewTreeViewModelStoreOwner {
    public static final y0 a(View view) {
        Intrinsics.h(view, "<this>");
        return (y0) SequencesKt.t(SequencesKt.z(SequencesKt.h(view, new Function1<View, View>() { // from class: androidx.lifecycle.ViewTreeViewModelStoreOwner$findViewTreeViewModelStoreOwner$1
            @Override // kotlin.jvm.functions.Function1
            public final View invoke(View view2) {
                Intrinsics.h(view2, "view");
                Object parent = view2.getParent();
                if (parent instanceof View) {
                    return (View) parent;
                }
                return null;
            }
        }), new Function1<View, y0>() { // from class: androidx.lifecycle.ViewTreeViewModelStoreOwner$findViewTreeViewModelStoreOwner$2
            @Override // kotlin.jvm.functions.Function1
            public final y0 invoke(View view2) {
                Intrinsics.h(view2, "view");
                Object tag = view2.getTag(R$id.view_tree_view_model_store_owner);
                if (tag instanceof y0) {
                    return (y0) tag;
                }
                return null;
            }
        }));
    }

    public static final void b(View view, y0 y0Var) {
        Intrinsics.h(view, "<this>");
        view.setTag(R$id.view_tree_view_model_store_owner, y0Var);
    }
}
