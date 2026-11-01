package androidx.activity;

import android.view.View;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class z {
    public static final void a(View view, x onBackPressedDispatcherOwner) {
        Intrinsics.h(view, "<this>");
        Intrinsics.h(onBackPressedDispatcherOwner, "onBackPressedDispatcherOwner");
        view.setTag(R$id.view_tree_on_back_pressed_dispatcher_owner, onBackPressedDispatcherOwner);
    }
}
