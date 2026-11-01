package wa;

import android.os.Build;
import android.view.View;
import android.window.BackEvent;
import android.window.OnBackAnimationCallback;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.annotation.NonNull;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f77613a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final wa.b f77614b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final View f77615c;

    private static class b implements d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private OnBackInvokedCallback f77616a;

        private b() {
        }

        @Override // wa.c.d
        public void a(@NonNull View view) {
            OnBackInvokedDispatcher onBackInvokedDispatcherFindOnBackInvokedDispatcher = view.findOnBackInvokedDispatcher();
            if (onBackInvokedDispatcherFindOnBackInvokedDispatcher == null) {
                return;
            }
            onBackInvokedDispatcherFindOnBackInvokedDispatcher.unregisterOnBackInvokedCallback(this.f77616a);
            this.f77616a = null;
        }

        @Override // wa.c.d
        public void b(@NonNull wa.b bVar, @NonNull View view, boolean z10) {
            OnBackInvokedDispatcher onBackInvokedDispatcherFindOnBackInvokedDispatcher;
            if (this.f77616a == null && (onBackInvokedDispatcherFindOnBackInvokedDispatcher = view.findOnBackInvokedDispatcher()) != null) {
                OnBackInvokedCallback onBackInvokedCallbackC = c(bVar);
                this.f77616a = onBackInvokedCallbackC;
                onBackInvokedDispatcherFindOnBackInvokedDispatcher.registerOnBackInvokedCallback(z10 ? 1000000 : 0, onBackInvokedCallbackC);
            }
        }

        OnBackInvokedCallback c(final wa.b bVar) {
            Objects.requireNonNull(bVar);
            return new OnBackInvokedCallback() { // from class: wa.e
                public final void onBackInvoked() {
                    bVar.handleBackInvoked();
                }
            };
        }

        boolean d() {
            return this.f77616a != null;
        }
    }

    /* JADX INFO: renamed from: wa.c$c, reason: collision with other inner class name */
    private static class C0956c extends b {

        /* JADX INFO: renamed from: wa.c$c$a */
        class a implements OnBackAnimationCallback {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ wa.b f77617a;

            a(wa.b bVar) {
                this.f77617a = bVar;
            }

            public void onBackCancelled() {
                if (C0956c.this.d()) {
                    this.f77617a.cancelBackProgress();
                }
            }

            public void onBackInvoked() {
                this.f77617a.handleBackInvoked();
            }

            public void onBackProgressed(BackEvent backEvent) {
                if (C0956c.this.d()) {
                    this.f77617a.updateBackProgress(new androidx.activity.b(backEvent));
                }
            }

            public void onBackStarted(BackEvent backEvent) {
                if (C0956c.this.d()) {
                    this.f77617a.startBackProgress(new androidx.activity.b(backEvent));
                }
            }
        }

        private C0956c() {
            super();
        }

        @Override // wa.c.b
        OnBackInvokedCallback c(wa.b bVar) {
            return new a(bVar);
        }
    }

    private interface d {
        void a(View view);

        void b(wa.b bVar, View view, boolean z10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(View view) {
        this((wa.b) view, view);
    }

    public c(wa.b bVar, View view) {
        this.f77613a = a();
        this.f77614b = bVar;
        this.f77615c = view;
    }

    private static d a() {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 34) {
            return new C0956c();
        }
        if (i11 >= 33) {
            return new b();
        }
        return null;
    }

    private void d(boolean z10) {
        d dVar = this.f77613a;
        if (dVar != null) {
            dVar.b(this.f77614b, this.f77615c, z10);
        }
    }

    public boolean b() {
        return this.f77613a != null;
    }

    public void c() {
        d(false);
    }

    public void e() {
        d(true);
    }

    public void f() {
        d dVar = this.f77613a;
        if (dVar != null) {
            dVar.a(this.f77615c);
        }
    }
}
