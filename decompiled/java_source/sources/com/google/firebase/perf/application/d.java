package com.google.firebase.perf.application;

import android.app.Activity;
import android.os.Build;
import android.util.SparseIntArray;
import androidx.core.app.g;
import androidx.fragment.app.Fragment;
import com.google.firebase.perf.util.e;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class d {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final sc.a f32220e = sc.a.e();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Activity f32221a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f32222b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f32223c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f32224d;

    public d(Activity activity) {
        this(activity, new g(), new HashMap());
    }

    d(Activity activity, g gVar, Map map) {
        this.f32224d = false;
        this.f32221a = activity;
        this.f32222b = gVar;
        this.f32223c = map;
    }

    static boolean a() {
        return true;
    }

    private e b() {
        if (!this.f32224d) {
            f32220e.a("No recording has been started.");
            return e.a();
        }
        SparseIntArray[] sparseIntArrayArrB = this.f32222b.b();
        if (sparseIntArrayArrB == null) {
            f32220e.a("FrameMetricsAggregator.mMetrics is uninitialized.");
            return e.a();
        }
        if (sparseIntArrayArrB[0] != null) {
            return e.e(com.google.firebase.perf.metrics.g.a(sparseIntArrayArrB));
        }
        f32220e.a("FrameMetricsAggregator.mMetrics[TOTAL_INDEX] is uninitialized.");
        return e.a();
    }

    public void c() {
        if (this.f32224d) {
            f32220e.b("FrameMetricsAggregator is already recording %s", this.f32221a.getClass().getSimpleName());
        } else {
            this.f32222b.a(this.f32221a);
            this.f32224d = true;
        }
    }

    public void d(Fragment fragment) {
        if (!this.f32224d) {
            f32220e.a("Cannot start sub-recording because FrameMetricsAggregator is not recording");
            return;
        }
        if (this.f32223c.containsKey(fragment)) {
            f32220e.b("Cannot start sub-recording because one is already ongoing with the key %s", fragment.getClass().getSimpleName());
            return;
        }
        e eVarB = b();
        if (eVarB.d()) {
            this.f32223c.put(fragment, (com.google.firebase.perf.metrics.g.a) eVarB.c());
        } else {
            f32220e.b("startFragment(%s): snapshot() failed", fragment.getClass().getSimpleName());
        }
    }

    public e e() {
        if (!this.f32224d) {
            f32220e.a("Cannot stop because no recording was started");
            return e.a();
        }
        if (!this.f32223c.isEmpty()) {
            f32220e.a("Sub-recordings are still ongoing! Sub-recordings should be stopped first before stopping Activity screen trace.");
            this.f32223c.clear();
        }
        e eVarB = b();
        try {
            this.f32222b.c(this.f32221a);
        } catch (IllegalArgumentException | NullPointerException e11) {
            if ((e11 instanceof NullPointerException) && Build.VERSION.SDK_INT > 28) {
                throw e11;
            }
            f32220e.k("View not hardware accelerated. Unable to collect FrameMetrics. %s", e11.toString());
            eVarB = e.a();
        }
        this.f32222b.d();
        this.f32224d = false;
        return eVarB;
    }

    public e f(Fragment fragment) {
        if (!this.f32224d) {
            f32220e.a("Cannot stop sub-recording because FrameMetricsAggregator is not recording");
            return e.a();
        }
        if (!this.f32223c.containsKey(fragment)) {
            f32220e.b("Sub-recording associated with key %s was not started or does not exist", fragment.getClass().getSimpleName());
            return e.a();
        }
        com.google.firebase.perf.metrics.g.a aVar = (com.google.firebase.perf.metrics.g.a) this.f32223c.remove(fragment);
        e eVarB = b();
        if (eVarB.d()) {
            return e.e(((com.google.firebase.perf.metrics.g.a) eVarB.c()).a(aVar));
        }
        f32220e.b("stopFragment(%s): snapshot() failed", fragment.getClass().getSimpleName());
        return e.a();
    }
}
