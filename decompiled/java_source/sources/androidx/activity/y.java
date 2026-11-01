package androidx.activity;

import android.view.View;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class y {
    public static final void a(View view, t fullyDrawnReporterOwner) {
        Intrinsics.h(view, "<this>");
        Intrinsics.h(fullyDrawnReporterOwner, "fullyDrawnReporterOwner");
        view.setTag(R$id.report_drawn, fullyDrawnReporterOwner);
    }
}
