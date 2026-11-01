package s6;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {
    public static final View a(ViewGroup viewGroup, int i11) {
        Intrinsics.h(viewGroup, "<this>");
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(i11, viewGroup, false);
        Intrinsics.g(viewInflate, "from(this.context).infla…layoutResId, this, false)");
        return viewInflate;
    }
}
