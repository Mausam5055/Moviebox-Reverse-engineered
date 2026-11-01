package androidx.appcompat.view;

import android.view.View;
import android.view.animation.Interpolator;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListener;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Interpolator f1317c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ViewPropertyAnimatorListener f1318d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f1319e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f1316b = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ViewPropertyAnimatorListenerAdapter f1320f = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ArrayList f1315a = new ArrayList();

    class a extends ViewPropertyAnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f1321a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f1322b = 0;

        a() {
        }

        void a() {
            this.f1322b = 0;
            this.f1321a = false;
            h.this.b();
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            int i11 = this.f1322b + 1;
            this.f1322b = i11;
            if (i11 == h.this.f1315a.size()) {
                ViewPropertyAnimatorListener viewPropertyAnimatorListener = h.this.f1318d;
                if (viewPropertyAnimatorListener != null) {
                    viewPropertyAnimatorListener.onAnimationEnd(null);
                }
                a();
            }
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public void onAnimationStart(View view) {
            if (this.f1321a) {
                return;
            }
            this.f1321a = true;
            ViewPropertyAnimatorListener viewPropertyAnimatorListener = h.this.f1318d;
            if (viewPropertyAnimatorListener != null) {
                viewPropertyAnimatorListener.onAnimationStart(null);
            }
        }
    }

    public void a() {
        if (this.f1319e) {
            Iterator it = this.f1315a.iterator();
            while (it.hasNext()) {
                ((ViewPropertyAnimatorCompat) it.next()).cancel();
            }
            this.f1319e = false;
        }
    }

    void b() {
        this.f1319e = false;
    }

    public h c(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat) {
        if (!this.f1319e) {
            this.f1315a.add(viewPropertyAnimatorCompat);
        }
        return this;
    }

    public h d(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2) {
        this.f1315a.add(viewPropertyAnimatorCompat);
        viewPropertyAnimatorCompat2.setStartDelay(viewPropertyAnimatorCompat.getDuration());
        this.f1315a.add(viewPropertyAnimatorCompat2);
        return this;
    }

    public h e(long j11) {
        if (!this.f1319e) {
            this.f1316b = j11;
        }
        return this;
    }

    public h f(Interpolator interpolator) {
        if (!this.f1319e) {
            this.f1317c = interpolator;
        }
        return this;
    }

    public h g(ViewPropertyAnimatorListener viewPropertyAnimatorListener) {
        if (!this.f1319e) {
            this.f1318d = viewPropertyAnimatorListener;
        }
        return this;
    }

    public void h() {
        if (this.f1319e) {
            return;
        }
        for (ViewPropertyAnimatorCompat viewPropertyAnimatorCompat : this.f1315a) {
            long j11 = this.f1316b;
            if (j11 >= 0) {
                viewPropertyAnimatorCompat.setDuration(j11);
            }
            Interpolator interpolator = this.f1317c;
            if (interpolator != null) {
                viewPropertyAnimatorCompat.setInterpolator(interpolator);
            }
            if (this.f1318d != null) {
                viewPropertyAnimatorCompat.setListener(this.f1320f);
            }
            viewPropertyAnimatorCompat.start();
        }
        this.f1319e = true;
    }
}
