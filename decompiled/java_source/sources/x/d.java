package x;

import android.view.View;
import android.view.autofill.AutofillManager;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f77992a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final w f77993b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AutofillManager f77994c;

    public d(View view, w wVar) {
        this.f77992a = view;
        this.f77993b = wVar;
        AutofillManager autofillManagerA = b.a(view.getContext().getSystemService(a.a()));
        if (autofillManagerA == null) {
            throw new IllegalStateException("Autofill service could not be located.");
        }
        this.f77994c = autofillManagerA;
        view.setImportantForAutofill(1);
    }

    public final AutofillManager a() {
        return this.f77994c;
    }

    public final w b() {
        return this.f77993b;
    }

    public final View c() {
        return this.f77992a;
    }
}
