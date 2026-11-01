package androidx.core.provider;

import android.graphics.Typeface;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
class CallbackWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k.c f8179a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f8180b;

    CallbackWrapper(k.c cVar, Executor executor) {
        this.f8179a = cVar;
        this.f8180b = executor;
    }

    private void a(final int i11) {
        final k.c cVar = this.f8179a;
        this.f8180b.execute(new Runnable() { // from class: androidx.core.provider.CallbackWrapper.2
            @Override // java.lang.Runnable
            public void run() {
                cVar.a(i11);
            }
        });
    }

    private void c(final Typeface typeface) {
        final k.c cVar = this.f8179a;
        this.f8180b.execute(new Runnable() { // from class: androidx.core.provider.CallbackWrapper.1
            @Override // java.lang.Runnable
            public void run() {
                cVar.b(typeface);
            }
        });
    }

    void b(i.e eVar) {
        if (eVar.a()) {
            c(eVar.f8211a);
        } else {
            a(eVar.f8212b);
        }
    }
}
