package androidx.work.impl;

import android.text.TextUtils;
import androidx.work.ExistingWorkPolicy;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes2.dex */
public class e0 extends androidx.work.h0 {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f15638j = androidx.work.t.i("WorkContinuationImpl");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f1 f15639a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f15640b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ExistingWorkPolicy f15641c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List f15642d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List f15643e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List f15644f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List f15645g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f15646h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private androidx.work.w f15647i;

    public e0(f1 f1Var, String str, ExistingWorkPolicy existingWorkPolicy, List list) {
        this(f1Var, str, existingWorkPolicy, list, null);
    }

    public e0(f1 f1Var, String str, ExistingWorkPolicy existingWorkPolicy, List list, List list2) {
        this.f15639a = f1Var;
        this.f15640b = str;
        this.f15641c = existingWorkPolicy;
        this.f15642d = list;
        this.f15645g = list2;
        this.f15643e = new ArrayList(list.size());
        this.f15644f = new ArrayList();
        if (list2 != null) {
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                this.f15644f.addAll(((e0) it.next()).f15644f);
            }
        }
        for (int i11 = 0; i11 < list.size(); i11++) {
            if (existingWorkPolicy == ExistingWorkPolicy.REPLACE && ((androidx.work.i0) list.get(i11)).d().h() != Long.MAX_VALUE) {
                throw new IllegalArgumentException("Next Schedule Time Override must be used with ExistingPeriodicWorkPolicyUPDATE (preferably) or KEEP");
            }
            String strB = ((androidx.work.i0) list.get(i11)).b();
            this.f15643e.add(strB);
            this.f15644f.add(strB);
        }
    }

    public e0(f1 f1Var, List list) {
        this(f1Var, null, ExistingWorkPolicy.KEEP, list, null);
    }

    private static boolean j(e0 e0Var, Set set) {
        set.addAll(e0Var.d());
        Set setN = n(e0Var);
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (setN.contains((String) it.next())) {
                return true;
            }
        }
        List listF = e0Var.f();
        if (listF != null && !listF.isEmpty()) {
            Iterator it2 = listF.iterator();
            while (it2.hasNext()) {
                if (j((e0) it2.next(), set)) {
                    return true;
                }
            }
        }
        set.removeAll(e0Var.d());
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit l() {
        androidx.work.impl.utils.f.b(this);
        return Unit.f67061a;
    }

    public static Set n(e0 e0Var) {
        HashSet hashSet = new HashSet();
        List listF = e0Var.f();
        if (listF != null && !listF.isEmpty()) {
            Iterator it = listF.iterator();
            while (it.hasNext()) {
                hashSet.addAll(((e0) it.next()).d());
            }
        }
        return hashSet;
    }

    @Override // androidx.work.h0
    public androidx.work.w a() {
        if (this.f15646h) {
            androidx.work.t.e().k(f15638j, "Already enqueued work ids (" + TextUtils.join(", ", this.f15643e) + ")");
        } else {
            this.f15647i = androidx.work.a0.c(this.f15639a.m().n(), "EnqueueRunnable_" + c().name(), this.f15639a.u().c(), new Function0() { // from class: androidx.work.impl.d0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return this.f15634a.l();
                }
            });
        }
        return this.f15647i;
    }

    public ExistingWorkPolicy c() {
        return this.f15641c;
    }

    public List d() {
        return this.f15643e;
    }

    public String e() {
        return this.f15640b;
    }

    public List f() {
        return this.f15645g;
    }

    public List g() {
        return this.f15642d;
    }

    public f1 h() {
        return this.f15639a;
    }

    public boolean i() {
        return j(this, new HashSet());
    }

    public boolean k() {
        return this.f15646h;
    }

    public void m() {
        this.f15646h = true;
    }
}
