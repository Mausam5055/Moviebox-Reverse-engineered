package androidx.compose.material;

import android.content.Context;
import android.content.res.Resources;
import androidx.compose.ui.R$string;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class m {
    public static final String a(int i11, androidx.compose.runtime.i iVar, int i12) {
        String string;
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(-726638443, i12, -1, "androidx.compose.material.getString (Strings.android.kt:24)");
        }
        iVar.l(AndroidCompositionLocals_androidKt.f());
        Resources resources = ((Context) iVar.l(AndroidCompositionLocals_androidKt.g())).getResources();
        l.a aVar = l.f3420a;
        if (l.i(i11, aVar.e())) {
            string = resources.getString(R$string.navigation_menu);
        } else if (l.i(i11, aVar.a())) {
            string = resources.getString(R$string.close_drawer);
        } else if (l.i(i11, aVar.b())) {
            string = resources.getString(R$string.close_sheet);
        } else if (l.i(i11, aVar.c())) {
            string = resources.getString(R$string.default_error_message);
        } else if (l.i(i11, aVar.d())) {
            string = resources.getString(R$string.dropdown_menu);
        } else if (l.i(i11, aVar.g())) {
            string = resources.getString(R$string.range_start);
        } else {
            string = l.i(i11, aVar.f()) ? resources.getString(R$string.range_end) : "";
        }
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return string;
    }
}
