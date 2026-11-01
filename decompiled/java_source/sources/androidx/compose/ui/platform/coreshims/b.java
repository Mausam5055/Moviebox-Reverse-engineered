package androidx.compose.ui.platform.coreshims;

import android.view.autofill.AutofillId;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f5753a;

    private b(AutofillId autofillId) {
        this.f5753a = autofillId;
    }

    public static b b(AutofillId autofillId) {
        return new b(autofillId);
    }

    public AutofillId a() {
        return a.a(this.f5753a);
    }
}
