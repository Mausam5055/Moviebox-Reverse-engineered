package androidx.navigation.fragment;

import androidx.fragment.app.Fragment;
import androidx.navigation.NavController;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d {
    public static final NavController a(Fragment fragment) {
        Intrinsics.h(fragment, "<this>");
        return NavHostFragment.INSTANCE.c(fragment);
    }
}
