package ct;

import android.view.View;
import com.blankj.utilcode.util.d;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public abstract class b {
    public static final void a(View view) {
        Intrinsics.h(view, "<this>");
        view.setPadding(view.getPaddingStart(), view.getPaddingTop() + d.c(), view.getPaddingEnd(), view.getPaddingBottom());
    }

    public static final void b(View view) {
        Intrinsics.h(view, "<this>");
        view.setVisibility(8);
    }

    public static final void c(View view) {
        Intrinsics.h(view, "<this>");
        view.setVisibility(4);
    }

    public static final void d(View view) {
        Intrinsics.h(view, "<this>");
        view.setVisibility(0);
    }
}
