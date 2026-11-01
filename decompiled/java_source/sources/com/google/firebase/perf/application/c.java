package com.google.firebase.perf.application;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.google.firebase.perf.metrics.Trace;
import com.google.firebase.perf.metrics.g;
import com.google.firebase.perf.util.e;
import com.google.firebase.perf.util.h;
import java.util.WeakHashMap;
import vc.k;

/* JADX INFO: loaded from: classes4.dex */
public class c extends FragmentManager.k {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final sc.a f32214f = sc.a.e();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WeakHashMap f32215a = new WeakHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.firebase.perf.util.a f32216b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final k f32217c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f32218d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final d f32219e;

    public c(com.google.firebase.perf.util.a aVar, k kVar, a aVar2, d dVar) {
        this.f32216b = aVar;
        this.f32217c = kVar;
        this.f32218d = aVar2;
        this.f32219e = dVar;
    }

    public String a(Fragment fragment) {
        return "_st_" + fragment.getClass().getSimpleName();
    }

    @Override // androidx.fragment.app.FragmentManager.k
    public void onFragmentPaused(FragmentManager fragmentManager, Fragment fragment) {
        super.onFragmentPaused(fragmentManager, fragment);
        sc.a aVar = f32214f;
        aVar.b("FragmentMonitor %s.onFragmentPaused ", fragment.getClass().getSimpleName());
        if (!this.f32215a.containsKey(fragment)) {
            aVar.k("FragmentMonitor: missed a fragment trace from %s", fragment.getClass().getSimpleName());
            return;
        }
        Trace trace = (Trace) this.f32215a.get(fragment);
        this.f32215a.remove(fragment);
        e eVarF = this.f32219e.f(fragment);
        if (!eVarF.d()) {
            aVar.k("onFragmentPaused: recorder failed to trace %s", fragment.getClass().getSimpleName());
        } else {
            h.a(trace, (g.a) eVarF.c());
            trace.stop();
        }
    }

    @Override // androidx.fragment.app.FragmentManager.k
    public void onFragmentResumed(FragmentManager fragmentManager, Fragment fragment) {
        super.onFragmentResumed(fragmentManager, fragment);
        f32214f.b("FragmentMonitor %s.onFragmentResumed", fragment.getClass().getSimpleName());
        Trace trace = new Trace(a(fragment), this.f32217c, this.f32216b, this.f32218d);
        trace.start();
        trace.putAttribute("Parent_fragment", fragment.getParentFragment() == null ? "No parent" : fragment.getParentFragment().getClass().getSimpleName());
        if (fragment.getActivity() != null) {
            trace.putAttribute("Hosting_activity", fragment.getActivity().getClass().getSimpleName());
        }
        this.f32215a.put(fragment, trace);
        this.f32219e.d(fragment);
    }
}
