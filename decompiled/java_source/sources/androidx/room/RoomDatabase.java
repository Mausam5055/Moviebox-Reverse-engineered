package androidx.room;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.CancellationSignal;
import android.os.Looper;
import android.util.Log;
import androidx.room.support.AutoCloser;
import androidx.room.support.AutoClosingRoomOpenHelper;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.reflect.KClass;
import kotlinx.coroutines.l2;
import kotlinx.coroutines.m1;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes.dex */
public abstract class RoomDatabase {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final c f14489o = new c(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected volatile a4.d f14490a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private kotlinx.coroutines.n0 f14491b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private CoroutineContext f14492c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Executor f14493d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Executor f14494e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private s f14495f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private InvalidationTracker f14496g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f14498i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected List f14499j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private AutoCloser f14500k;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final x3.a f14497h = new x3.a(new RoomDatabase$closeBarrier$1(this));

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final ThreadLocal f14501l = new ThreadLocal();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Map f14502m = new LinkedHashMap();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f14503n = true;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tH\u0000¢\u0006\u0002\b\nj\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u000b"}, d2 = {"Landroidx/room/RoomDatabase$JournalMode;", "", "<init>", "(Ljava/lang/String;I)V", "AUTOMATIC", "TRUNCATE", "WRITE_AHEAD_LOGGING", "resolve", "context", "Landroid/content/Context;", "resolve$room_runtime_release", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum JournalMode {
        AUTOMATIC,
        TRUNCATE,
        WRITE_AHEAD_LOGGING;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

        public static EnumEntries<JournalMode> getEntries() {
            return $ENTRIES;
        }

        public final JournalMode resolve$room_runtime_release(Context context) {
            Intrinsics.h(context, "context");
            if (this != AUTOMATIC) {
                return this;
            }
            Object systemService = context.getSystemService("activity");
            ActivityManager activityManager = systemService instanceof ActivityManager ? (ActivityManager) systemService : null;
            return (activityManager == null || activityManager.isLowRamDevice()) ? TRUNCATE : WRITE_AHEAD_LOGGING;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static class a {
        private CoroutineContext A;
        private boolean B;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final KClass f14504a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Context f14505b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f14506c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Function0 f14507d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final List f14508e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private e f14509f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final List f14510g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private Executor f14511h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private Executor f14512i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private a4.e.c f14513j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private boolean f14514k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private JournalMode f14515l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private Intent f14516m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private long f14517n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private TimeUnit f14518o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final d f14519p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private Set f14520q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private final Set f14521r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private final List f14522s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private boolean f14523t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private boolean f14524u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private boolean f14525v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private String f14526w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private File f14527x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private Callable f14528y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private z3.c f14529z;

        public a(Context context, Class klass, String str) {
            Intrinsics.h(context, "context");
            Intrinsics.h(klass, "klass");
            this.f14508e = new ArrayList();
            this.f14510g = new ArrayList();
            this.f14515l = JournalMode.AUTOMATIC;
            this.f14517n = -1L;
            this.f14519p = new d();
            this.f14520q = new LinkedHashSet();
            this.f14521r = new LinkedHashSet();
            this.f14522s = new ArrayList();
            this.f14523t = true;
            this.B = true;
            this.f14504a = JvmClassMappingKt.c(klass);
            this.f14505b = context;
            this.f14506c = str;
            this.f14507d = null;
        }

        public a a(b callback) {
            Intrinsics.h(callback, "callback");
            this.f14508e.add(callback);
            return this;
        }

        public a b(y3.c... migrations) {
            Intrinsics.h(migrations, "migrations");
            for (y3.c cVar : migrations) {
                this.f14521r.add(Integer.valueOf(cVar.f78823a));
                this.f14521r.add(Integer.valueOf(cVar.f78824b));
            }
            this.f14519p.b((y3.c[]) Arrays.copyOf(migrations, migrations.length));
            return this;
        }

        public a c() {
            this.f14514k = true;
            return this;
        }

        public RoomDatabase d() {
            a4.e.c nVar;
            a4.e.c cVar;
            RoomDatabase roomDatabase;
            Executor executor = this.f14511h;
            if (executor == null && this.f14512i == null) {
                Executor executorG = j.c.g();
                this.f14512i = executorG;
                this.f14511h = executorG;
            } else if (executor != null && this.f14512i == null) {
                this.f14512i = executor;
            } else if (executor == null) {
                this.f14511h = this.f14512i;
            }
            z.b(this.f14521r, this.f14520q);
            z3.c cVar2 = this.f14529z;
            if (cVar2 == null && this.f14513j == null) {
                nVar = new b4.h();
            } else if (cVar2 == null) {
                nVar = this.f14513j;
            } else {
                if (this.f14513j != null) {
                    throw new IllegalArgumentException("A RoomDatabase cannot be configured with both a SQLiteDriver and a SupportOpenHelper.Factory.");
                }
                nVar = null;
            }
            boolean z10 = this.f14517n > 0;
            boolean z11 = (this.f14526w == null && this.f14527x == null && this.f14528y == null) ? false : true;
            if (nVar != null) {
                if (z10) {
                    if (this.f14506c == null) {
                        throw new IllegalArgumentException("Cannot create auto-closing database for an in-memory database.");
                    }
                    long j11 = this.f14517n;
                    TimeUnit timeUnit = this.f14518o;
                    if (timeUnit == null) {
                        throw new IllegalArgumentException("Required value was null.");
                    }
                    nVar = new androidx.room.support.l(nVar, new AutoCloser(j11, timeUnit, null, 4, null));
                }
                if (z11) {
                    if (this.f14506c == null) {
                        throw new IllegalArgumentException("Cannot create from asset or file for an in-memory database.");
                    }
                    String str = this.f14526w;
                    int i11 = str == null ? 0 : 1;
                    File file = this.f14527x;
                    int i12 = file == null ? 0 : 1;
                    Callable callable = this.f14528y;
                    if (i11 + i12 + (callable != null ? 1 : 0) != 1) {
                        throw new IllegalArgumentException("More than one of createFromAsset(), createFromInputStream(), and createFromFile() were called on this Builder, but the database can only be created using one of the three configurations.");
                    }
                    nVar = new androidx.room.support.n(str, file, callable, nVar);
                }
                cVar = nVar;
            } else {
                cVar = null;
            }
            if (cVar == null) {
                if (z10) {
                    throw new IllegalArgumentException("Auto Closing Database is not supported when an SQLiteDriver is configured.");
                }
                if (z11) {
                    throw new IllegalArgumentException("Pre-Package Database is not supported when an SQLiteDriver is configured.");
                }
            }
            Context context = this.f14505b;
            String str2 = this.f14506c;
            d dVar = this.f14519p;
            List list = this.f14508e;
            boolean z12 = this.f14514k;
            JournalMode journalModeResolve$room_runtime_release = this.f14515l.resolve$room_runtime_release(context);
            Executor executor2 = this.f14511h;
            if (executor2 == null) {
                throw new IllegalArgumentException("Required value was null.");
            }
            Executor executor3 = this.f14512i;
            if (executor3 == null) {
                throw new IllegalArgumentException("Required value was null.");
            }
            androidx.room.c cVar3 = new androidx.room.c(context, str2, cVar, dVar, list, z12, journalModeResolve$room_runtime_release, executor2, executor3, this.f14516m, this.f14523t, this.f14524u, this.f14520q, this.f14526w, this.f14527x, this.f14528y, this.f14509f, this.f14510g, this.f14522s, this.f14525v, this.f14529z, this.A);
            cVar3.f(this.B);
            Function0 function0 = this.f14507d;
            if (function0 == null || (roomDatabase = (RoomDatabase) function0.invoke()) == null) {
                roomDatabase = (RoomDatabase) androidx.room.util.f.b(JvmClassMappingKt.a(this.f14504a), null, 2, null);
            }
            roomDatabase.M(cVar3);
            return roomDatabase;
        }

        public a e() {
            this.f14523t = false;
            this.f14524u = true;
            return this;
        }

        public final a f(boolean z10) {
            this.f14523t = false;
            this.f14524u = true;
            this.f14525v = z10;
            return this;
        }

        public a g() {
            this.f14523t = true;
            this.f14524u = true;
            return this;
        }

        public a h(a4.e.c cVar) {
            this.f14513j = cVar;
            return this;
        }

        public a i(Executor executor) {
            Intrinsics.h(executor, "executor");
            if (this.A != null) {
                throw new IllegalArgumentException("This builder has already been configured with a CoroutineContext. A RoomDatabasecan only be configured with either an Executor or a CoroutineContext.");
            }
            this.f14511h = executor;
            return this;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static abstract class b {
        public void a(a4.d db2) {
            Intrinsics.h(db2, "db");
        }

        public void b(z3.b connection) {
            Intrinsics.h(connection, "connection");
            if (connection instanceof androidx.room.driver.a) {
                a(((androidx.room.driver.a) connection).d());
            }
        }

        public void c(a4.d db2) {
            Intrinsics.h(db2, "db");
        }

        public void d(z3.b connection) {
            Intrinsics.h(connection, "connection");
            if (connection instanceof androidx.room.driver.a) {
                c(((androidx.room.driver.a) connection).d());
            }
        }

        public void e(a4.d db2) {
            Intrinsics.h(db2, "db");
        }

        public void f(z3.b connection) {
            Intrinsics.h(connection, "connection");
            if (connection instanceof androidx.room.driver.a) {
                e(((androidx.room.driver.a) connection).d());
            }
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static final class c {
        private c() {
        }

        public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Map f14530a = new LinkedHashMap();

        public final void a(y3.c migration) {
            Intrinsics.h(migration, "migration");
            int i11 = migration.f78823a;
            int i12 = migration.f78824b;
            Map map = this.f14530a;
            Integer numValueOf = Integer.valueOf(i11);
            Object treeMap = map.get(numValueOf);
            if (treeMap == null) {
                treeMap = new TreeMap();
                map.put(numValueOf, treeMap);
            }
            TreeMap treeMap2 = (TreeMap) treeMap;
            if (treeMap2.containsKey(Integer.valueOf(i12))) {
                Log.w("ROOM", "Overriding migration " + treeMap2.get(Integer.valueOf(i12)) + " with " + migration);
            }
            treeMap2.put(Integer.valueOf(i12), migration);
        }

        public void b(y3.c... migrations) {
            Intrinsics.h(migrations, "migrations");
            for (y3.c cVar : migrations) {
                a(cVar);
            }
        }

        public final boolean c(int i11, int i12) {
            return androidx.room.util.g.a(this, i11, i12);
        }

        public List d(int i11, int i12) {
            return androidx.room.util.g.b(this, i11, i12);
        }

        public Map e() {
            return this.f14530a;
        }

        public final Pair f(int i11) {
            TreeMap treeMap = (TreeMap) this.f14530a.get(Integer.valueOf(i11));
            if (treeMap == null) {
                return null;
            }
            return TuplesKt.a(treeMap, treeMap.descendingKeySet());
        }

        public final Pair g(int i11) {
            TreeMap treeMap = (TreeMap) this.f14530a.get(Integer.valueOf(i11));
            if (treeMap == null) {
                return null;
            }
            return TuplesKt.a(treeMap, treeMap.keySet());
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static abstract class e {
        public void a(a4.d db2) {
            Intrinsics.h(db2, "db");
        }
    }

    private final void N() {
        i();
        a4.d writableDatabase = z().getWritableDatabase();
        if (!writableDatabase.s0()) {
            y().E();
        }
        if (writableDatabase.w0()) {
            writableDatabase.K();
        } else {
            writableDatabase.A();
        }
    }

    private final void O() {
        z().getWritableDatabase().L();
        if (L()) {
            return;
        }
        y().y();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U() {
        kotlinx.coroutines.n0 n0Var = this.f14491b;
        s sVar = null;
        if (n0Var == null) {
            Intrinsics.z("coroutineScope");
            n0Var = null;
        }
        kotlinx.coroutines.o0.d(n0Var, null, 1, null);
        y().C();
        s sVar2 = this.f14495f;
        if (sVar2 == null) {
            Intrinsics.z("connectionManager");
        } else {
            sVar = sVar2;
        }
        sVar.F();
    }

    public static /* synthetic */ Cursor X(RoomDatabase roomDatabase, a4.g gVar, CancellationSignal cancellationSignal, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: query");
        }
        if ((i11 & 2) != 0) {
            cancellationSignal = null;
        }
        return roomDatabase.W(gVar, cancellationSignal);
    }

    private final Object Z(final Function0 function0) {
        if (!K()) {
            return androidx.room.util.b.d(this, false, true, new Function1() { // from class: androidx.room.y
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return RoomDatabase.d0(function0, (z3.b) obj);
                }
            });
        }
        k();
        try {
            Object objInvoke = function0.invoke();
            e0();
            return objInvoke;
        } finally {
            t();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b0(Runnable runnable) {
        runnable.run();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object c0(Callable callable) {
        return callable.call();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object d0(Function0 function0, z3.b it) {
        Intrinsics.h(it, "it");
        return function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l(RoomDatabase roomDatabase, a4.d it) {
        Intrinsics.h(it, "it");
        roomDatabase.N();
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final a4.e o(RoomDatabase roomDatabase, androidx.room.c config) {
        Intrinsics.h(config, "config");
        return roomDatabase.s(config);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit u(RoomDatabase roomDatabase, a4.d it) {
        Intrinsics.h(it, "it");
        roomDatabase.O();
        return Unit.f67061a;
    }

    public final CoroutineContext A() {
        kotlinx.coroutines.n0 n0Var = this.f14491b;
        if (n0Var == null) {
            Intrinsics.z("coroutineScope");
            n0Var = null;
        }
        return n0Var.getCoroutineContext();
    }

    public Set B() {
        Set setC = C();
        ArrayList arrayList = new ArrayList(CollectionsKt.v(setC, 10));
        Iterator it = setC.iterator();
        while (it.hasNext()) {
            arrayList.add(JvmClassMappingKt.c((Class) it.next()));
        }
        return CollectionsKt.W0(arrayList);
    }

    public Set C() {
        return SetsKt.f();
    }

    protected Map D() {
        Set<Map.Entry> setEntrySet = F().entrySet();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.f(MapsKt.e(CollectionsKt.v(setEntrySet, 10)), 16));
        for (Map.Entry entry : setEntrySet) {
            Class cls = (Class) entry.getKey();
            List list = (List) entry.getValue();
            KClass kClassC = JvmClassMappingKt.c(cls);
            List list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.v(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                arrayList.add(JvmClassMappingKt.c((Class) it.next()));
            }
            Pair pairA = TuplesKt.a(kClassC, arrayList);
            linkedHashMap.put(pairA.getFirst(), pairA.getSecond());
        }
        return linkedHashMap;
    }

    public final Map E() {
        return D();
    }

    protected Map F() {
        return MapsKt.h();
    }

    public final ThreadLocal G() {
        return this.f14501l;
    }

    public final CoroutineContext H() {
        CoroutineContext coroutineContext = this.f14492c;
        if (coroutineContext != null) {
            return coroutineContext;
        }
        Intrinsics.z("transactionContext");
        return null;
    }

    public Executor I() {
        Executor executor = this.f14494e;
        if (executor != null) {
            return executor;
        }
        Intrinsics.z("internalTransactionExecutor");
        return null;
    }

    public final boolean J() {
        return this.f14503n;
    }

    public final boolean K() {
        s sVar = this.f14495f;
        if (sVar == null) {
            Intrinsics.z("connectionManager");
            sVar = null;
        }
        return sVar.G() != null;
    }

    public boolean L() {
        return T() && z().getWritableDatabase().s0();
    }

    public void M(androidx.room.c configuration) {
        CoroutineContext coroutineContext;
        Intrinsics.h(configuration, "configuration");
        this.f14503n = configuration.d();
        this.f14495f = p(configuration);
        this.f14496g = q();
        z.a(this, configuration);
        z.c(this, configuration);
        CoroutineContext coroutineContext2 = configuration.f14591v;
        kotlinx.coroutines.n0 n0Var = null;
        if (coroutineContext2 != null) {
            CoroutineContext.Element element = coroutineContext2.get(ContinuationInterceptor.INSTANCE);
            Intrinsics.f(element, "null cannot be cast to non-null type kotlinx.coroutines.CoroutineDispatcher");
            kotlinx.coroutines.i0 i0Var = (kotlinx.coroutines.i0) element;
            Executor executorA = m1.a(i0Var);
            this.f14493d = executorA;
            if (executorA == null) {
                Intrinsics.z("internalQueryExecutor");
                executorA = null;
            }
            this.f14494e = new m0(executorA);
            this.f14491b = kotlinx.coroutines.o0.a(configuration.f14591v.plus(l2.a((t1) configuration.f14591v.get(t1.f67996l1))));
            if (K()) {
                kotlinx.coroutines.n0 n0Var2 = this.f14491b;
                if (n0Var2 == null) {
                    Intrinsics.z("coroutineScope");
                    n0Var2 = null;
                }
                coroutineContext = n0Var2.getCoroutineContext().plus(i0Var.limitedParallelism(1));
            } else {
                kotlinx.coroutines.n0 n0Var3 = this.f14491b;
                if (n0Var3 == null) {
                    Intrinsics.z("coroutineScope");
                    n0Var3 = null;
                }
                coroutineContext = n0Var3.getCoroutineContext();
            }
            this.f14492c = coroutineContext;
        } else {
            this.f14493d = configuration.f14577h;
            this.f14494e = new m0(configuration.f14578i);
            Executor executor = this.f14493d;
            if (executor == null) {
                Intrinsics.z("internalQueryExecutor");
                executor = null;
            }
            kotlinx.coroutines.n0 n0VarA = kotlinx.coroutines.o0.a(m1.b(executor).plus(l2.b(null, 1, null)));
            this.f14491b = n0VarA;
            if (n0VarA == null) {
                Intrinsics.z("coroutineScope");
                n0VarA = null;
            }
            CoroutineContext coroutineContext3 = n0VarA.getCoroutineContext();
            Executor executor2 = this.f14494e;
            if (executor2 == null) {
                Intrinsics.z("internalTransactionExecutor");
                executor2 = null;
            }
            this.f14492c = coroutineContext3.plus(m1.b(executor2));
        }
        this.f14498i = configuration.f14575f;
        s sVar = this.f14495f;
        if (sVar == null) {
            Intrinsics.z("connectionManager");
            sVar = null;
        }
        a4.e eVarG = sVar.G();
        if (eVarG != null) {
            while (!(eVarG instanceof androidx.room.support.m)) {
                if (!(eVarG instanceof androidx.room.d)) {
                    eVarG = null;
                    break;
                }
                eVarG = ((androidx.room.d) eVarG).getDelegate();
            }
        } else {
            eVarG = null;
            break;
        }
        androidx.room.support.m mVar = (androidx.room.support.m) eVarG;
        if (mVar != null) {
            mVar.i(configuration);
        }
        s sVar2 = this.f14495f;
        if (sVar2 == null) {
            Intrinsics.z("connectionManager");
            sVar2 = null;
        }
        a4.e eVarG2 = sVar2.G();
        if (eVarG2 != null) {
            while (!(eVarG2 instanceof AutoClosingRoomOpenHelper)) {
                if (!(eVarG2 instanceof androidx.room.d)) {
                    eVarG2 = null;
                    break;
                }
                eVarG2 = ((androidx.room.d) eVarG2).getDelegate();
            }
        } else {
            eVarG2 = null;
            break;
        }
        AutoClosingRoomOpenHelper autoClosingRoomOpenHelper = (AutoClosingRoomOpenHelper) eVarG2;
        if (autoClosingRoomOpenHelper != null) {
            this.f14500k = autoClosingRoomOpenHelper.d();
            AutoCloser autoCloserD = autoClosingRoomOpenHelper.d();
            kotlinx.coroutines.n0 n0Var4 = this.f14491b;
            if (n0Var4 == null) {
                Intrinsics.z("coroutineScope");
            } else {
                n0Var = n0Var4;
            }
            autoCloserD.k(n0Var);
            y().B(autoClosingRoomOpenHelper.d());
        }
        if (configuration.f14579j != null) {
            if (configuration.f14571b == null) {
                throw new IllegalArgumentException("Required value was null.");
            }
            y().q(configuration.f14570a, configuration.f14571b, configuration.f14579j);
        }
    }

    protected void P(a4.d db2) {
        Intrinsics.h(db2, "db");
        Q(new androidx.room.driver.a(db2));
    }

    protected final void Q(z3.b connection) {
        Intrinsics.h(connection, "connection");
        y().r(connection);
    }

    public final boolean R() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    public boolean S() {
        AutoCloser autoCloser = this.f14500k;
        if (autoCloser != null) {
            return autoCloser.m();
        }
        s sVar = this.f14495f;
        if (sVar == null) {
            Intrinsics.z("connectionManager");
            sVar = null;
        }
        return sVar.J();
    }

    public final boolean T() {
        s sVar = this.f14495f;
        if (sVar == null) {
            Intrinsics.z("connectionManager");
            sVar = null;
        }
        return sVar.J();
    }

    public final Cursor V(a4.g query) {
        Intrinsics.h(query, "query");
        return X(this, query, null, 2, null);
    }

    public Cursor W(a4.g query, CancellationSignal cancellationSignal) {
        Intrinsics.h(query, "query");
        i();
        j();
        return cancellationSignal != null ? z().getWritableDatabase().e0(query, cancellationSignal) : z().getWritableDatabase().b0(query);
    }

    public Object Y(final Callable body) {
        Intrinsics.h(body, "body");
        return Z(new Function0() { // from class: androidx.room.w
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RoomDatabase.c0(body);
            }
        });
    }

    public void a0(final Runnable body) {
        Intrinsics.h(body, "body");
        Z(new Function0() { // from class: androidx.room.x
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RoomDatabase.b0(body);
            }
        });
    }

    public void e0() {
        z().getWritableDatabase().I();
    }

    public final Object f0(boolean z10, Function2 function2, Continuation continuation) {
        s sVar = this.f14495f;
        if (sVar == null) {
            Intrinsics.z("connectionManager");
            sVar = null;
        }
        return sVar.K(z10, function2, continuation);
    }

    public final void h(KClass kclass, Object converter) {
        Intrinsics.h(kclass, "kclass");
        Intrinsics.h(converter, "converter");
        this.f14502m.put(kclass, converter);
    }

    public void i() {
        if (!this.f14498i && R()) {
            throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    public void j() {
        if (K() && !L() && this.f14501l.get() != null) {
            throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
        }
    }

    public void k() {
        i();
        AutoCloser autoCloser = this.f14500k;
        if (autoCloser == null) {
            N();
        } else {
            autoCloser.h(new Function1() { // from class: androidx.room.v
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return RoomDatabase.l(this.f14819a, (a4.d) obj);
                }
            });
        }
    }

    public a4.h m(String sql) {
        Intrinsics.h(sql, "sql");
        i();
        j();
        return z().getWritableDatabase().W(sql);
    }

    public List n(Map autoMigrationSpecs) {
        Intrinsics.h(autoMigrationSpecs, "autoMigrationSpecs");
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.e(autoMigrationSpecs.size()));
        for (Map.Entry entry : autoMigrationSpecs.entrySet()) {
            linkedHashMap.put(JvmClassMappingKt.a((KClass) entry.getKey()), entry.getValue());
        }
        return v(linkedHashMap);
    }

    public final s p(androidx.room.c configuration) {
        d0 d0Var;
        Intrinsics.h(configuration, "configuration");
        try {
            e0 e0VarR = r();
            Intrinsics.f(e0VarR, "null cannot be cast to non-null type androidx.room.RoomOpenDelegate");
            d0Var = (d0) e0VarR;
        } catch (NotImplementedError unused) {
            d0Var = null;
        }
        return d0Var == null ? new s(configuration, new Function1() { // from class: androidx.room.u
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RoomDatabase.o(this.f14789a, (c) obj);
            }
        }) : new s(configuration, d0Var);
    }

    protected abstract InvalidationTracker q();

    protected e0 r() {
        throw new NotImplementedError(null, 1, null);
    }

    protected a4.e s(androidx.room.c config) {
        Intrinsics.h(config, "config");
        throw new NotImplementedError(null, 1, null);
    }

    public void t() {
        AutoCloser autoCloser = this.f14500k;
        if (autoCloser == null) {
            O();
        } else {
            autoCloser.h(new Function1() { // from class: androidx.room.t
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return RoomDatabase.u(this.f14788a, (a4.d) obj);
                }
            });
        }
    }

    public List v(Map autoMigrationSpecs) {
        Intrinsics.h(autoMigrationSpecs, "autoMigrationSpecs");
        return CollectionsKt.l();
    }

    public final x3.a w() {
        return this.f14497h;
    }

    public final kotlinx.coroutines.n0 x() {
        kotlinx.coroutines.n0 n0Var = this.f14491b;
        if (n0Var != null) {
            return n0Var;
        }
        Intrinsics.z("coroutineScope");
        return null;
    }

    public InvalidationTracker y() {
        InvalidationTracker invalidationTracker = this.f14496g;
        if (invalidationTracker != null) {
            return invalidationTracker;
        }
        Intrinsics.z("internalTracker");
        return null;
    }

    public a4.e z() {
        s sVar = this.f14495f;
        if (sVar == null) {
            Intrinsics.z("connectionManager");
            sVar = null;
        }
        a4.e eVarG = sVar.G();
        if (eVarG != null) {
            return eVarG;
        }
        throw new IllegalStateException("Cannot return a SupportSQLiteOpenHelper since no SupportSQLiteOpenHelper.Factory was configured with Room.");
    }
}
