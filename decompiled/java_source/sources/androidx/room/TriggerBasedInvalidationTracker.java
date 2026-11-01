package androidx.room;

import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
public final class TriggerBasedInvalidationTracker {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final a f14540l = new a(null);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final String[] f14541m = {"INSERT", "UPDATE", "DELETE"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f14542a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map f14543b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f14544c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f14545d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Function1 f14546e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Map f14547f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String[] f14548g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ObservedTableStates f14549h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final ObservedTableVersions f14550i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final AtomicBoolean f14551j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Function0 f14552k;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String b(String str, String str2) {
            return "room_table_modification_trigger_" + str + '_' + str2;
        }
    }

    public TriggerBasedInvalidationTracker(RoomDatabase database, Map shadowTablesMap, Map viewTables, String[] tableNames, boolean z10, Function1 onInvalidatedTablesIds) {
        String lowerCase;
        Intrinsics.h(database, "database");
        Intrinsics.h(shadowTablesMap, "shadowTablesMap");
        Intrinsics.h(viewTables, "viewTables");
        Intrinsics.h(tableNames, "tableNames");
        Intrinsics.h(onInvalidatedTablesIds, "onInvalidatedTablesIds");
        this.f14542a = database;
        this.f14543b = shadowTablesMap;
        this.f14544c = viewTables;
        this.f14545d = z10;
        this.f14546e = onInvalidatedTablesIds;
        this.f14551j = new AtomicBoolean(false);
        this.f14552k = new Function0() { // from class: androidx.room.r0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(TriggerBasedInvalidationTracker.o());
            }
        };
        this.f14547f = new LinkedHashMap();
        int length = tableNames.length;
        String[] strArr = new String[length];
        for (int i11 = 0; i11 < length; i11++) {
            String str = tableNames[i11];
            Locale locale = Locale.ROOT;
            String lowerCase2 = str.toLowerCase(locale);
            Intrinsics.g(lowerCase2, "toLowerCase(...)");
            this.f14547f.put(lowerCase2, Integer.valueOf(i11));
            String str2 = (String) this.f14543b.get(tableNames[i11]);
            if (str2 != null) {
                lowerCase = str2.toLowerCase(locale);
                Intrinsics.g(lowerCase, "toLowerCase(...)");
            } else {
                lowerCase = null;
            }
            if (lowerCase != null) {
                lowerCase2 = lowerCase;
            }
            strArr[i11] = lowerCase2;
        }
        this.f14548g = strArr;
        for (Map.Entry entry : this.f14543b.entrySet()) {
            String str3 = (String) entry.getValue();
            Locale locale2 = Locale.ROOT;
            String lowerCase3 = str3.toLowerCase(locale2);
            Intrinsics.g(lowerCase3, "toLowerCase(...)");
            if (this.f14547f.containsKey(lowerCase3)) {
                String lowerCase4 = ((String) entry.getKey()).toLowerCase(locale2);
                Intrinsics.g(lowerCase4, "toLowerCase(...)");
                Map map = this.f14547f;
                map.put(lowerCase4, MapsKt.i(map, lowerCase3));
            }
        }
        this.f14549h = new ObservedTableStates(this.f14548g.length);
        this.f14550i = new ObservedTableVersions(this.f14548g.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object j(p pVar, Continuation continuation) throws Throwable {
        TriggerBasedInvalidationTracker$checkInvalidatedTables$1 triggerBasedInvalidationTracker$checkInvalidatedTables$1;
        Set set;
        if (continuation instanceof TriggerBasedInvalidationTracker$checkInvalidatedTables$1) {
            triggerBasedInvalidationTracker$checkInvalidatedTables$1 = (TriggerBasedInvalidationTracker$checkInvalidatedTables$1) continuation;
            int i11 = triggerBasedInvalidationTracker$checkInvalidatedTables$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                triggerBasedInvalidationTracker$checkInvalidatedTables$1.label = i11 - Integer.MIN_VALUE;
            } else {
                triggerBasedInvalidationTracker$checkInvalidatedTables$1 = new TriggerBasedInvalidationTracker$checkInvalidatedTables$1(this, continuation);
            }
        } else {
            triggerBasedInvalidationTracker$checkInvalidatedTables$1 = new TriggerBasedInvalidationTracker$checkInvalidatedTables$1(this, continuation);
        }
        Object objD = triggerBasedInvalidationTracker$checkInvalidatedTables$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = triggerBasedInvalidationTracker$checkInvalidatedTables$1.label;
        if (i12 != 0) {
            if (i12 == 1) {
                pVar = (p) triggerBasedInvalidationTracker$checkInvalidatedTables$1.L$0;
                ResultKt.b(objD);
            } else {
                if (i12 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                set = (Set) triggerBasedInvalidationTracker$checkInvalidatedTables$1.L$0;
                ResultKt.b(objD);
            }
            return set;
        }
        ResultKt.b(objD);
        Function1 function1 = new Function1() { // from class: androidx.room.q0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return TriggerBasedInvalidationTracker.k((z3.e) obj);
            }
        };
        triggerBasedInvalidationTracker$checkInvalidatedTables$1.L$0 = pVar;
        triggerBasedInvalidationTracker$checkInvalidatedTables$1.label = 1;
        objD = pVar.d("SELECT * FROM room_table_modification_log WHERE invalidated = 1", function1, triggerBasedInvalidationTracker$checkInvalidatedTables$1);
        if (objD == objF) {
            return objF;
        }
        Set set2 = (Set) objD;
        if (set2.isEmpty()) {
            return set2;
        }
        triggerBasedInvalidationTracker$checkInvalidatedTables$1.L$0 = set2;
        triggerBasedInvalidationTracker$checkInvalidatedTables$1.label = 2;
        if (p0.b(pVar, "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1", triggerBasedInvalidationTracker$checkInvalidatedTables$1) == objF) {
            return objF;
        }
        set = set2;
        return set;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set k(z3.e statement) {
        Intrinsics.h(statement, "statement");
        Set setB = SetsKt.b();
        while (statement.A0()) {
            setB.add(Integer.valueOf((int) statement.getLong(0)));
        }
        return SetsKt.a(setB);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object n(Continuation continuation) throws Throwable {
        TriggerBasedInvalidationTracker$notifyInvalidation$1 triggerBasedInvalidationTracker$notifyInvalidation$1;
        x3.a aVar;
        Throwable th2;
        TriggerBasedInvalidationTracker triggerBasedInvalidationTracker;
        if (continuation instanceof TriggerBasedInvalidationTracker$notifyInvalidation$1) {
            triggerBasedInvalidationTracker$notifyInvalidation$1 = (TriggerBasedInvalidationTracker$notifyInvalidation$1) continuation;
            int i11 = triggerBasedInvalidationTracker$notifyInvalidation$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                triggerBasedInvalidationTracker$notifyInvalidation$1.label = i11 - Integer.MIN_VALUE;
            } else {
                triggerBasedInvalidationTracker$notifyInvalidation$1 = new TriggerBasedInvalidationTracker$notifyInvalidation$1(this, continuation);
            }
        } else {
            triggerBasedInvalidationTracker$notifyInvalidation$1 = new TriggerBasedInvalidationTracker$notifyInvalidation$1(this, continuation);
        }
        Object obj = triggerBasedInvalidationTracker$notifyInvalidation$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = triggerBasedInvalidationTracker$notifyInvalidation$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            x3.a aVarW = this.f14542a.w();
            if (!aVarW.a()) {
                return SetsKt.f();
            }
            try {
                if (!this.f14551j.compareAndSet(true, false)) {
                    Set setF = SetsKt.f();
                    aVarW.c();
                    return setF;
                }
                if (!((Boolean) this.f14552k.invoke()).booleanValue()) {
                    Set setF2 = SetsKt.f();
                    aVarW.c();
                    return setF2;
                }
                RoomDatabase roomDatabase = this.f14542a;
                TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1 triggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1 = new TriggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1(this, null);
                triggerBasedInvalidationTracker$notifyInvalidation$1.L$0 = this;
                triggerBasedInvalidationTracker$notifyInvalidation$1.L$1 = aVarW;
                triggerBasedInvalidationTracker$notifyInvalidation$1.label = 1;
                Object objF0 = roomDatabase.f0(false, triggerBasedInvalidationTracker$notifyInvalidation$2$invalidatedTableIds$1, triggerBasedInvalidationTracker$notifyInvalidation$1);
                if (objF0 == objF) {
                    return objF;
                }
                aVar = aVarW;
                obj = objF0;
                triggerBasedInvalidationTracker = this;
            } catch (Throwable th3) {
                aVar = aVarW;
                th2 = th3;
                aVar.c();
                throw th2;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            aVar = (x3.a) triggerBasedInvalidationTracker$notifyInvalidation$1.L$1;
            triggerBasedInvalidationTracker = (TriggerBasedInvalidationTracker) triggerBasedInvalidationTracker$notifyInvalidation$1.L$0;
            try {
                ResultKt.b(obj);
            } catch (Throwable th4) {
                th2 = th4;
                aVar.c();
                throw th2;
            }
        }
        Set set = (Set) obj;
        if (!set.isEmpty()) {
            triggerBasedInvalidationTracker.f14550i.b(set);
            triggerBasedInvalidationTracker.f14546e.invoke(set);
        }
        aVar.c();
        return set;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean o() {
        return true;
    }

    private final String[] t(String[] strArr) {
        Set setB = SetsKt.b();
        for (String str : strArr) {
            Map map = this.f14544c;
            String lowerCase = str.toLowerCase(Locale.ROOT);
            Intrinsics.g(lowerCase, "toLowerCase(...)");
            Set set = (Set) map.get(lowerCase);
            if (set != null) {
                setB.addAll(set);
            } else {
                setB.add(str);
            }
        }
        return (String[]) SetsKt.a(setB).toArray(new String[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:22:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:24:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:25:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:28:0x00fd A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:29:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00fe -> B:30:0x00ff). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object v(androidx.room.p r18, int r19, kotlin.coroutines.Continuation r20) {
        /*
            Method dump skipped, instruction units count: 261
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker.v(androidx.room.p, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:16:0x0054  */
    /* JADX WARN: Code duplicated, block: B:18:0x0084 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:19:0x0085  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0085 -> B:20:0x0087). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object w(androidx.room.p r10, int r11, kotlin.coroutines.Continuation r12) {
        /*
            r9 = this;
            boolean r0 = r12 instanceof androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1
            if (r0 == 0) goto L13
            r0 = r12
            androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1 r0 = (androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1 r0 = new androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1
            r0.<init>(r9, r12)
        L18:
            java.lang.Object r12 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L42
            if (r2 != r3) goto L3a
            int r10 = r0.I$1
            int r11 = r0.I$0
            java.lang.Object r2 = r0.L$2
            java.lang.String[] r2 = (java.lang.String[]) r2
            java.lang.Object r4 = r0.L$1
            java.lang.String r4 = (java.lang.String) r4
            java.lang.Object r5 = r0.L$0
            androidx.room.p r5 = (androidx.room.p) r5
            kotlin.ResultKt.b(r12)
            r12 = r4
            goto L87
        L3a:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L42:
            kotlin.ResultKt.b(r12)
            java.lang.String[] r12 = r9.f14548g
            r11 = r12[r11]
            java.lang.String[] r12 = androidx.room.TriggerBasedInvalidationTracker.f14541m
            int r2 = r12.length
            r4 = 0
            r8 = r11
            r11 = r10
            r10 = r2
            r2 = r12
            r12 = r8
        L52:
            if (r4 >= r10) goto L8b
            r5 = r2[r4]
            androidx.room.TriggerBasedInvalidationTracker$a r6 = androidx.room.TriggerBasedInvalidationTracker.f14540l
            java.lang.String r5 = androidx.room.TriggerBasedInvalidationTracker.a.a(r6, r12, r5)
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "DROP TRIGGER IF EXISTS `"
            r6.append(r7)
            r6.append(r5)
            r5 = 96
            r6.append(r5)
            java.lang.String r5 = r6.toString()
            r0.L$0 = r11
            r0.L$1 = r12
            r0.L$2 = r2
            r0.I$0 = r4
            r0.I$1 = r10
            r0.label = r3
            java.lang.Object r5 = androidx.room.p0.b(r11, r5, r0)
            if (r5 != r1) goto L85
            return r1
        L85:
            r5 = r11
            r11 = r4
        L87:
            int r4 = r11 + 1
            r11 = r5
            goto L52
        L8b:
            kotlin.Unit r10 = kotlin.Unit.f67061a
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.TriggerBasedInvalidationTracker.w(androidx.room.p, int, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final void l(z3.b connection) throws Exception {
        Intrinsics.h(connection, "connection");
        z3.e eVarD0 = connection.D0("PRAGMA query_only");
        try {
            eVarD0.A0();
            boolean z10 = eVarD0.getBoolean(0);
            AutoCloseableKt.a(eVarD0, null);
            if (z10) {
                return;
            }
            z3.a.a(connection, "PRAGMA temp_store = MEMORY");
            z3.a.a(connection, "PRAGMA recursive_triggers = 1");
            z3.a.a(connection, "DROP TABLE IF EXISTS room_table_modification_log");
            if (this.f14545d) {
                z3.a.a(connection, "CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
            } else {
                z3.a.a(connection, StringsKt.Q("CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)", "TEMP", "", false, 4, null));
            }
            this.f14549h.a();
        } catch (Throwable th2) {
            try {
                throw th2;
            } catch (Throwable th3) {
                AutoCloseableKt.a(eVarD0, th2);
                throw th3;
            }
        }
    }

    public final kotlinx.coroutines.flow.b m(String[] resolvedTableNames, int[] tableIds, boolean z10) {
        Intrinsics.h(resolvedTableNames, "resolvedTableNames");
        Intrinsics.h(tableIds, "tableIds");
        return kotlinx.coroutines.flow.d.s(new TriggerBasedInvalidationTracker$createFlow$1(this, tableIds, z10, resolvedTableNames, null));
    }

    public final boolean p(int[] tableIds) {
        Intrinsics.h(tableIds, "tableIds");
        return this.f14549h.c(tableIds);
    }

    public final boolean q(int[] tableIds) {
        Intrinsics.h(tableIds, "tableIds");
        return this.f14549h.d(tableIds);
    }

    public final void r(Function0 onRefreshScheduled, Function0 onRefreshCompleted) {
        Intrinsics.h(onRefreshScheduled, "onRefreshScheduled");
        Intrinsics.h(onRefreshCompleted, "onRefreshCompleted");
        if (this.f14551j.compareAndSet(false, true)) {
            onRefreshScheduled.invoke();
            kotlinx.coroutines.k.d(this.f14542a.x(), new kotlinx.coroutines.m0("Room Invalidation Tracker Refresh"), null, new TriggerBasedInvalidationTracker$refreshInvalidationAsync$3(this, onRefreshCompleted, null), 2, null);
        }
    }

    public final void s() {
        this.f14549h.e();
    }

    public final void u(Function0 function0) {
        Intrinsics.h(function0, "<set-?>");
        this.f14552k = function0;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object x(Continuation continuation) throws Throwable {
        TriggerBasedInvalidationTracker$syncTriggers$1 triggerBasedInvalidationTracker$syncTriggers$1;
        x3.a aVar;
        Throwable th2;
        if (continuation instanceof TriggerBasedInvalidationTracker$syncTriggers$1) {
            triggerBasedInvalidationTracker$syncTriggers$1 = (TriggerBasedInvalidationTracker$syncTriggers$1) continuation;
            int i11 = triggerBasedInvalidationTracker$syncTriggers$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                triggerBasedInvalidationTracker$syncTriggers$1.label = i11 - Integer.MIN_VALUE;
            } else {
                triggerBasedInvalidationTracker$syncTriggers$1 = new TriggerBasedInvalidationTracker$syncTriggers$1(this, continuation);
            }
        } else {
            triggerBasedInvalidationTracker$syncTriggers$1 = new TriggerBasedInvalidationTracker$syncTriggers$1(this, continuation);
        }
        Object obj = triggerBasedInvalidationTracker$syncTriggers$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = triggerBasedInvalidationTracker$syncTriggers$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            x3.a aVarW = this.f14542a.w();
            if (aVarW.a()) {
                try {
                    RoomDatabase roomDatabase = this.f14542a;
                    TriggerBasedInvalidationTracker$syncTriggers$2$1 triggerBasedInvalidationTracker$syncTriggers$2$1 = new TriggerBasedInvalidationTracker$syncTriggers$2$1(this, null);
                    triggerBasedInvalidationTracker$syncTriggers$1.L$0 = aVarW;
                    triggerBasedInvalidationTracker$syncTriggers$1.label = 1;
                    if (roomDatabase.f0(false, triggerBasedInvalidationTracker$syncTriggers$2$1, triggerBasedInvalidationTracker$syncTriggers$1) == objF) {
                        return objF;
                    }
                    aVar = aVarW;
                    aVar.c();
                } catch (Throwable th3) {
                    aVar = aVarW;
                    th2 = th3;
                    aVar.c();
                    throw th2;
                }
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            aVar = (x3.a) triggerBasedInvalidationTracker$syncTriggers$1.L$0;
            try {
                ResultKt.b(obj);
                aVar.c();
            } catch (Throwable th4) {
                th2 = th4;
                aVar.c();
                throw th2;
            }
        }
        return Unit.f67061a;
    }

    public final Pair y(String[] names) {
        Intrinsics.h(names, "names");
        String[] strArrT = t(names);
        int length = strArrT.length;
        int[] iArr = new int[length];
        for (int i11 = 0; i11 < length; i11++) {
            String str = strArrT[i11];
            Map map = this.f14547f;
            String lowerCase = str.toLowerCase(Locale.ROOT);
            Intrinsics.g(lowerCase, "toLowerCase(...)");
            Integer num = (Integer) map.get(lowerCase);
            if (num == null) {
                throw new IllegalArgumentException("There is no table with name " + str);
            }
            iArr[i11] = num.intValue();
        }
        return TuplesKt.a(strArrT, iArr);
    }
}
