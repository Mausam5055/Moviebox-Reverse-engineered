package androidx.browser.trusted;

import android.os.IBinder;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d.a f2206a;

    private c(d.a aVar) {
        this.f2206a = aVar;
    }

    static c a(IBinder iBinder) {
        d.a aVarY0 = iBinder == null ? null : d.a.AbstractBinderC0725a.Y0(iBinder);
        if (aVarY0 == null) {
            return null;
        }
        return new c(aVarY0);
    }
}
