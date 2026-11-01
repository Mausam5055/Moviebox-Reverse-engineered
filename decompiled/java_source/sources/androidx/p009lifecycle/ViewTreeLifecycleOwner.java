package androidx.p009lifecycle;

import android.view.View;
import androidx.p009lifecycle.runtime.R$id;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class ViewTreeLifecycleOwner {
    public static final u a(View view) {
        Intrinsics.h(view, "<this>");
        return (u) SequencesKt.t(SequencesKt.z(SequencesKt.h(view, new Function1<View, View>() { // from class: androidx.lifecycle.ViewTreeLifecycleOwner$findViewTreeLifecycleOwner$1
            @Override // kotlin.jvm.functions.Function1
            public final View invoke(View currentView) {
                Intrinsics.h(currentView, "currentView");
                Object parent = currentView.getParent();
                if (parent instanceof View) {
                    return (View) parent;
                }
                return null;
            }
        }), new Function1<View, u>() { // from class: androidx.lifecycle.ViewTreeLifecycleOwner$findViewTreeLifecycleOwner$2
            @Override // kotlin.jvm.functions.Function1
            public final u invoke(android.view.View viewParent) {
                Intrinsics.h(viewParent, "viewParent");
                Object tag = viewParent.getTag(R$id.view_tree_lifecycle_owner);
                if (tag instanceof u) {
                    return (u) tag;
                }
                return null;
            }
        }));
    }

    public static final void b(View view, u uVar) {
        Intrinsics.h(view, "<this>");
        view.setTag(R$id.view_tree_lifecycle_owner, uVar);
    }
}
