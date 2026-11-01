package x;

import android.view.View;
import android.view.autofill.AutofillManager$AutofillCallback;

/* JADX INFO: loaded from: classes2.dex */
public final class v extends AutofillManager$AutofillCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final v f77997a = new v();

    private v() {
    }

    public final void a(d dVar) {
        dVar.a().registerCallback(s.a(this));
    }

    public final void b(d dVar) {
        dVar.a().unregisterCallback(s.a(this));
    }

    public void onAutofillEvent(View view, int i11, int i12) {
        super.onAutofillEvent(view, i11, i12);
    }
}
