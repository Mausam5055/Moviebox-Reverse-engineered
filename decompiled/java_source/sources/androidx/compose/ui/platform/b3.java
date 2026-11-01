package androidx.compose.ui.platform;

import android.view.View;
import android.view.ViewGroup;
import androidx.compose.ui.R$id;
import androidx.compose.ui.node.LayoutNode;
import java.util.Collections;
import java.util.WeakHashMap;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class b3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ViewGroup.LayoutParams f5744a = new ViewGroup.LayoutParams(-2, -2);

    public static final androidx.compose.runtime.d2 a(LayoutNode layoutNode, androidx.compose.runtime.m mVar) {
        return androidx.compose.runtime.p.b(new androidx.compose.ui.node.o1(layoutNode), mVar);
    }

    private static final androidx.compose.runtime.l b(AndroidComposeView androidComposeView, androidx.compose.runtime.m mVar, Function2 function2) {
        if (InspectableValueKt.b() && androidComposeView.getTag(R$id.inspection_slot_table_set) == null) {
            androidComposeView.setTag(R$id.inspection_slot_table_set, Collections.newSetFromMap(new WeakHashMap()));
        }
        androidx.compose.runtime.l lVarA = androidx.compose.runtime.p.a(new androidx.compose.ui.node.o1(androidComposeView.getRoot()), mVar);
        Object tag = androidComposeView.getView().getTag(R$id.wrapped_composition_tag);
        WrappedComposition wrappedComposition = tag instanceof WrappedComposition ? (WrappedComposition) tag : null;
        if (wrappedComposition == null) {
            wrappedComposition = new WrappedComposition(androidComposeView, lVarA);
            androidComposeView.getView().setTag(R$id.wrapped_composition_tag, wrappedComposition);
        }
        wrappedComposition.d(function2);
        if (!Intrinsics.c(androidComposeView.getCoroutineContext(), mVar.h())) {
            androidComposeView.setCoroutineContext(mVar.h());
        }
        return wrappedComposition;
    }

    public static final androidx.compose.runtime.l c(AbstractComposeView abstractComposeView, androidx.compose.runtime.m mVar, Function2 function2) {
        GlobalSnapshotManager.f5639a.b();
        AndroidComposeView androidComposeView = null;
        if (abstractComposeView.getChildCount() > 0) {
            View childAt = abstractComposeView.getChildAt(0);
            if (childAt instanceof AndroidComposeView) {
                androidComposeView = (AndroidComposeView) childAt;
            }
        } else {
            abstractComposeView.removeAllViews();
        }
        if (androidComposeView == null) {
            androidComposeView = new AndroidComposeView(abstractComposeView.getContext(), mVar.h());
            abstractComposeView.addView(androidComposeView.getView(), f5744a);
        }
        return b(androidComposeView, mVar, function2);
    }
}
