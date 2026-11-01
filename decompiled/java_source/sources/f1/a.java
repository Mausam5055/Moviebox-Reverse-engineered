package f1;

import android.view.View;
import android.view.ViewParent;
import androidx.core.viewtree.R$id;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {
    public static final void a(View view, ViewParent viewParent) {
        Intrinsics.h(view, "<this>");
        view.setTag(R$id.view_tree_disjoint_parent, viewParent);
    }
}
