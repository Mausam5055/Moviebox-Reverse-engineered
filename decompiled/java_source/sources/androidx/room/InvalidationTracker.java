package androidx.room;

import android.content.Context;
import android.content.Intent;
import androidx.p009lifecycle.LiveData;
import androidx.room.coroutines.RunBlockingUninterruptible_androidKt;
import androidx.room.support.AutoCloser;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public class InvalidationTracker {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final a f14444o = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f14445a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f14446b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f14447c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String[] f14448d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final TriggerBasedInvalidationTracker f14449e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Map f14450f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ReentrantLock f14451g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private AutoCloser f14452h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Function0 f14453i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Function0 f14454j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final k f14455k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Intent f14456l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private MultiInstanceInvalidationClient f14457m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Object f14458n;

    /* JADX INFO: loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static abstract class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String[] f14459a;

        public b(String[] tables) {
            Intrinsics.h(tables, "tables");
            this.f14459a = tables;
        }

        public final String[] a() {
            return this.f14459a;
        }

        public boolean b() {
            return false;
        }

        public abstract void c(Set set);
    }

    public InvalidationTracker(RoomDatabase database, Map shadowTablesMap, Map viewTables, String... tableNames) {
        Intrinsics.h(database, "database");
        Intrinsics.h(shadowTablesMap, "shadowTablesMap");
        Intrinsics.h(viewTables, "viewTables");
        Intrinsics.h(tableNames, "tableNames");
        this.f14445a = database;
        this.f14446b = shadowTablesMap;
        this.f14447c = viewTables;
        this.f14448d = tableNames;
        TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = new TriggerBasedInvalidationTracker(database, shadowTablesMap, viewTables, tableNames, database.J(), new InvalidationTracker$implementation$1(this));
        this.f14449e = triggerBasedInvalidationTracker;
        this.f14450f = new LinkedHashMap();
        this.f14451g = new ReentrantLock();
        this.f14453i = new Function0() { // from class: androidx.room.l
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return InvalidationTracker.w(this.f14709a);
            }
        };
        this.f14454j = new Function0() { // from class: androidx.room.m
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return InvalidationTracker.v(this.f14712a);
            }
        };
        this.f14455k = new k(database);
        this.f14458n = new Object();
        triggerBasedInvalidationTracker.u(new Function0() { // from class: androidx.room.n
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(InvalidationTracker.d(this.f14717a));
            }
        });
    }

    private final boolean A(b bVar) {
        ReentrantLock reentrantLock = this.f14451g;
        reentrantLock.lock();
        try {
            o oVar = (o) this.f14450f.remove(bVar);
            reentrantLock.unlock();
            return oVar != null && this.f14449e.q(oVar.b());
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean d(InvalidationTracker invalidationTracker) {
        return !invalidationTracker.f14445a.K() || invalidationTracker.f14445a.T();
    }

    private final boolean i(b bVar) {
        Pair pairY = this.f14449e.y(bVar.a());
        String[] strArr = (String[]) pairY.component1();
        int[] iArr = (int[]) pairY.component2();
        o oVar = new o(bVar, iArr, strArr);
        ReentrantLock reentrantLock = this.f14451g;
        reentrantLock.lock();
        try {
            o oVar2 = this.f14450f.containsKey(bVar) ? (o) MapsKt.i(this.f14450f, bVar) : (o) this.f14450f.put(bVar, oVar);
            reentrantLock.unlock();
            return oVar2 == null && this.f14449e.p(iArr);
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    private final List n() {
        ReentrantLock reentrantLock = this.f14451g;
        reentrantLock.lock();
        try {
            return CollectionsKt.R0(this.f14450f.keySet());
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s(Set set) {
        ReentrantLock reentrantLock = this.f14451g;
        reentrantLock.lock();
        try {
            List listR0 = CollectionsKt.R0(this.f14450f.values());
            reentrantLock.unlock();
            Iterator it = listR0.iterator();
            while (it.hasNext()) {
                ((o) it.next()).c(set);
            }
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u() {
        synchronized (this.f14458n) {
            try {
                MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.f14457m;
                if (multiInstanceInvalidationClient != null) {
                    List listN = n();
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : listN) {
                        if (!((b) obj).b()) {
                            arrayList.add(obj);
                        }
                    }
                    if (arrayList.isEmpty()) {
                        multiInstanceInvalidationClient.l();
                    }
                }
                this.f14449e.s();
                Unit unit = Unit.f67061a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v(InvalidationTracker invalidationTracker) {
        AutoCloser autoCloser = invalidationTracker.f14452h;
        if (autoCloser != null) {
            autoCloser.g();
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit w(InvalidationTracker invalidationTracker) {
        AutoCloser autoCloser = invalidationTracker.f14452h;
        if (autoCloser != null) {
            autoCloser.j();
        }
        return Unit.f67061a;
    }

    public final void B(AutoCloser autoCloser) {
        Intrinsics.h(autoCloser, "autoCloser");
        this.f14452h = autoCloser;
        autoCloser.n(new InvalidationTracker$setAutoCloser$1(this));
    }

    public final void C() {
        MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.f14457m;
        if (multiInstanceInvalidationClient != null) {
            multiInstanceInvalidationClient.l();
        }
    }

    public final Object D(Continuation continuation) {
        Object objX;
        return ((!this.f14445a.K() || this.f14445a.T()) && (objX = this.f14449e.x(continuation)) == IntrinsicsKt.f()) ? objX : Unit.f67061a;
    }

    public final void E() {
        RunBlockingUninterruptible_androidKt.a(new InvalidationTracker$syncBlocking$1(this, null));
    }

    public void h(b observer) {
        Intrinsics.h(observer, "observer");
        if (i(observer)) {
            RunBlockingUninterruptible_androidKt.a(new InvalidationTracker$addObserver$1(this, null));
        }
    }

    public final void j(b observer) {
        Intrinsics.h(observer, "observer");
        if (!observer.b()) {
            throw new IllegalStateException("isRemote was false of observer argument");
        }
        i(observer);
    }

    public void k(b observer) {
        Intrinsics.h(observer, "observer");
        h(new s0(this, observer));
    }

    public final kotlinx.coroutines.flow.b l(String[] tables, boolean z10) {
        Intrinsics.h(tables, "tables");
        Pair pairY = this.f14449e.y(tables);
        String[] strArr = (String[]) pairY.component1();
        kotlinx.coroutines.flow.b bVarM = this.f14449e.m(strArr, (int[]) pairY.component2(), z10);
        MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.f14457m;
        kotlinx.coroutines.flow.b bVarH = multiInstanceInvalidationClient != null ? multiInstanceInvalidationClient.h(strArr) : null;
        return bVarH != null ? kotlinx.coroutines.flow.d.y(bVarM, bVarH) : bVarM;
    }

    public final LiveData m(String[] tableNames, boolean z10, Function1 computeFunction) {
        Intrinsics.h(tableNames, "tableNames");
        Intrinsics.h(computeFunction, "computeFunction");
        this.f14449e.y(tableNames);
        return this.f14455k.a(tableNames, z10, computeFunction);
    }

    public final RoomDatabase o() {
        return this.f14445a;
    }

    public final String[] p() {
        return this.f14448d;
    }

    public final void q(Context context, String name, Intent serviceIntent) {
        Intrinsics.h(context, "context");
        Intrinsics.h(name, "name");
        Intrinsics.h(serviceIntent, "serviceIntent");
        this.f14456l = serviceIntent;
        this.f14457m = new MultiInstanceInvalidationClient(context, name, this);
    }

    public final void r(z3.b connection) {
        Intrinsics.h(connection, "connection");
        this.f14449e.l(connection);
        synchronized (this.f14458n) {
            try {
                MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.f14457m;
                if (multiInstanceInvalidationClient != null) {
                    Intent intent = this.f14456l;
                    if (intent == null) {
                        throw new IllegalStateException("Required value was null.");
                    }
                    multiInstanceInvalidationClient.k(intent);
                    Unit unit = Unit.f67061a;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void t(Set tables) {
        Intrinsics.h(tables, "tables");
        ReentrantLock reentrantLock = this.f14451g;
        reentrantLock.lock();
        try {
            List<o> listR0 = CollectionsKt.R0(this.f14450f.values());
            reentrantLock.unlock();
            for (o oVar : listR0) {
                if (!oVar.a().b()) {
                    oVar.d(tables);
                }
            }
        } catch (Throwable th2) {
            reentrantLock.unlock();
            throw th2;
        }
    }

    public final void x() {
        this.f14449e.r(this.f14453i, this.f14454j);
    }

    public void y() {
        this.f14449e.r(this.f14453i, this.f14454j);
    }

    public void z(b observer) {
        Intrinsics.h(observer, "observer");
        if (A(observer)) {
            RunBlockingUninterruptible_androidKt.a(new InvalidationTracker$removeObserver$1(this, null));
        }
    }
}
