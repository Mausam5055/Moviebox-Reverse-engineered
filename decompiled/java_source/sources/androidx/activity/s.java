package androidx.activity;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f933a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function0 f934b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f935c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f936d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f937e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f938f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List f939g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Runnable f940h;

    public s(Executor executor, Function0 reportFullyDrawn) {
        Intrinsics.h(executor, "executor");
        Intrinsics.h(reportFullyDrawn, "reportFullyDrawn");
        this.f933a = executor;
        this.f934b = reportFullyDrawn;
        this.f935c = new Object();
        this.f939g = new ArrayList();
        this.f940h = new Runnable() { // from class: androidx.activity.r
            @Override // java.lang.Runnable
            public final void run() {
                s.d(this.f894a);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(s sVar) {
        synchronized (sVar.f935c) {
            try {
                sVar.f937e = false;
                if (sVar.f936d == 0 && !sVar.f938f) {
                    sVar.f934b.invoke();
                    sVar.b();
                }
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void b() {
        synchronized (this.f935c) {
            try {
                this.f938f = true;
                Iterator it = this.f939g.iterator();
                while (it.hasNext()) {
                    ((Function0) it.next()).invoke();
                }
                this.f939g.clear();
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean c() {
        boolean z10;
        synchronized (this.f935c) {
            z10 = this.f938f;
        }
        return z10;
    }
}
