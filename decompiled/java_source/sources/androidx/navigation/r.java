package androidx.navigation;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.i1;
import kotlinx.coroutines.flow.j1;
import kotlinx.coroutines.flow.y0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ReentrantLock f13958a = new ReentrantLock(true);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final y0 f13959b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final y0 f13960c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f13961d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final i1 f13962e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final i1 f13963f;

    public r() {
        y0 y0VarA = j1.a(CollectionsKt.l());
        this.f13959b = y0VarA;
        y0 y0VarA2 = j1.a(SetsKt.f());
        this.f13960c = y0VarA2;
        this.f13962e = kotlinx.coroutines.flow.d.b(y0VarA);
        this.f13963f = kotlinx.coroutines.flow.d.b(y0VarA2);
    }

    public abstract NavBackStackEntry a(NavDestination navDestination, Bundle bundle);

    public final i1 b() {
        return this.f13962e;
    }

    public final i1 c() {
        return this.f13963f;
    }

    public final boolean d() {
        return this.f13961d;
    }

    public void e(NavBackStackEntry entry) {
        Intrinsics.h(entry, "entry");
        y0 y0Var = this.f13960c;
        y0Var.setValue(SetsKt.k((Set) y0Var.getValue(), entry));
    }

    public void f(NavBackStackEntry backStackEntry) {
        Intrinsics.h(backStackEntry, "backStackEntry");
        y0 y0Var = this.f13959b;
        y0Var.setValue(CollectionsKt.C0(CollectionsKt.z0((Iterable) y0Var.getValue(), CollectionsKt.u0((List) this.f13959b.getValue())), backStackEntry));
    }

    public void g(NavBackStackEntry popUpTo, boolean z10) {
        Intrinsics.h(popUpTo, "popUpTo");
        ReentrantLock reentrantLock = this.f13958a;
        reentrantLock.lock();
        try {
            y0 y0Var = this.f13959b;
            Iterable iterable = (Iterable) y0Var.getValue();
            ArrayList arrayList = new ArrayList();
            for (Object obj : iterable) {
                if (Intrinsics.c((NavBackStackEntry) obj, popUpTo)) {
                    break;
                } else {
                    arrayList.add(obj);
                }
            }
            y0Var.setValue(arrayList);
            Unit unit = Unit.f67061a;
        } finally {
            reentrantLock.unlock();
        }
    }

    public void h(NavBackStackEntry backStackEntry) {
        Intrinsics.h(backStackEntry, "backStackEntry");
        ReentrantLock reentrantLock = this.f13958a;
        reentrantLock.lock();
        try {
            y0 y0Var = this.f13959b;
            y0Var.setValue(CollectionsKt.C0((Collection) y0Var.getValue(), backStackEntry));
            Unit unit = Unit.f67061a;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void i(boolean z10) {
        this.f13961d = z10;
    }
}
