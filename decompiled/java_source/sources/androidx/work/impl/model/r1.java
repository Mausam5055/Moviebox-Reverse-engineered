package androidx.work.impl.model;

import androidx.p009lifecycle.LiveData;
import androidx.room.RoomDatabase;
import androidx.room.coroutines.FlowUtil;
import androidx.work.BackoffPolicy;
import androidx.work.NetworkType;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class r1 implements k0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final c f15842d = new c(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f15843a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.room.g f15844b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final androidx.room.e f15845c;

    public static final class a extends androidx.room.g {
        a() {
        }

        @Override // androidx.room.g
        protected String b() {
            return "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`next_schedule_time_override`,`next_schedule_time_override_generation`,`stop_reason`,`trace_tag`,`backoff_on_system_interruptions`,`required_network_type`,`required_network_request`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.g
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void a(z3.e statement, j0 entity) {
            Intrinsics.h(statement, "statement");
            Intrinsics.h(entity, "entity");
            statement.j(1, entity.f15764a);
            statement.c(2, a2.k(entity.f15765b));
            statement.j(3, entity.f15766c);
            statement.j(4, entity.f15767d);
            androidx.work.f.b bVar = androidx.work.f.f15483b;
            statement.e(5, bVar.e(entity.f15768e));
            statement.e(6, bVar.e(entity.f15769f));
            statement.c(7, entity.f15770g);
            statement.c(8, entity.f15771h);
            statement.c(9, entity.f15772i);
            statement.c(10, entity.f15774k);
            statement.c(11, a2.a(entity.f15775l));
            statement.c(12, entity.f15776m);
            statement.c(13, entity.f15777n);
            statement.c(14, entity.f15778o);
            statement.c(15, entity.f15779p);
            statement.c(16, entity.f15780q ? 1L : 0L);
            statement.c(17, a2.i(entity.f15781r));
            statement.c(18, entity.j());
            statement.c(19, entity.g());
            statement.c(20, entity.h());
            statement.c(21, entity.i());
            statement.c(22, entity.k());
            String strL = entity.l();
            if (strL == null) {
                statement.g(23);
            } else {
                statement.j(23, strL);
            }
            Boolean boolF = entity.f();
            Integer numValueOf = boolF != null ? Integer.valueOf(boolF.booleanValue() ? 1 : 0) : null;
            if (numValueOf == null) {
                statement.g(24);
            } else {
                statement.c(24, numValueOf.intValue());
            }
            androidx.work.d dVar = entity.f15773j;
            statement.c(25, a2.h(dVar.f()));
            statement.e(26, a2.c(dVar.e()));
            statement.c(27, dVar.i() ? 1L : 0L);
            statement.c(28, dVar.j() ? 1L : 0L);
            statement.c(29, dVar.h() ? 1L : 0L);
            statement.c(30, dVar.k() ? 1L : 0L);
            statement.c(31, dVar.b());
            statement.c(32, dVar.a());
            statement.e(33, a2.j(dVar.c()));
        }
    }

    public static final class b extends androidx.room.e {
        b() {
        }

        @Override // androidx.room.e
        protected String b() {
            return "UPDATE OR ABORT `WorkSpec` SET `id` = ?,`state` = ?,`worker_class_name` = ?,`input_merger_class_name` = ?,`input` = ?,`output` = ?,`initial_delay` = ?,`interval_duration` = ?,`flex_duration` = ?,`run_attempt_count` = ?,`backoff_policy` = ?,`backoff_delay_duration` = ?,`last_enqueue_time` = ?,`minimum_retention_duration` = ?,`schedule_requested_at` = ?,`run_in_foreground` = ?,`out_of_quota_policy` = ?,`period_count` = ?,`generation` = ?,`next_schedule_time_override` = ?,`next_schedule_time_override_generation` = ?,`stop_reason` = ?,`trace_tag` = ?,`backoff_on_system_interruptions` = ?,`required_network_type` = ?,`required_network_request` = ?,`requires_charging` = ?,`requires_device_idle` = ?,`requires_battery_not_low` = ?,`requires_storage_not_low` = ?,`trigger_content_update_delay` = ?,`trigger_max_content_delay` = ?,`content_uri_triggers` = ? WHERE `id` = ?";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.room.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public void a(z3.e statement, j0 entity) {
            Intrinsics.h(statement, "statement");
            Intrinsics.h(entity, "entity");
            statement.j(1, entity.f15764a);
            statement.c(2, a2.k(entity.f15765b));
            statement.j(3, entity.f15766c);
            statement.j(4, entity.f15767d);
            androidx.work.f.b bVar = androidx.work.f.f15483b;
            statement.e(5, bVar.e(entity.f15768e));
            statement.e(6, bVar.e(entity.f15769f));
            statement.c(7, entity.f15770g);
            statement.c(8, entity.f15771h);
            statement.c(9, entity.f15772i);
            statement.c(10, entity.f15774k);
            statement.c(11, a2.a(entity.f15775l));
            statement.c(12, entity.f15776m);
            statement.c(13, entity.f15777n);
            statement.c(14, entity.f15778o);
            statement.c(15, entity.f15779p);
            statement.c(16, entity.f15780q ? 1L : 0L);
            statement.c(17, a2.i(entity.f15781r));
            statement.c(18, entity.j());
            statement.c(19, entity.g());
            statement.c(20, entity.h());
            statement.c(21, entity.i());
            statement.c(22, entity.k());
            String strL = entity.l();
            if (strL == null) {
                statement.g(23);
            } else {
                statement.j(23, strL);
            }
            Boolean boolF = entity.f();
            Integer numValueOf = boolF != null ? Integer.valueOf(boolF.booleanValue() ? 1 : 0) : null;
            if (numValueOf == null) {
                statement.g(24);
            } else {
                statement.c(24, numValueOf.intValue());
            }
            androidx.work.d dVar = entity.f15773j;
            statement.c(25, a2.h(dVar.f()));
            statement.e(26, a2.c(dVar.e()));
            statement.c(27, dVar.i() ? 1L : 0L);
            statement.c(28, dVar.j() ? 1L : 0L);
            statement.c(29, dVar.h() ? 1L : 0L);
            statement.c(30, dVar.k() ? 1L : 0L);
            statement.c(31, dVar.b());
            statement.c(32, dVar.a());
            statement.e(33, a2.j(dVar.c()));
            statement.j(34, entity.f15764a);
        }
    }

    public static final class c {
        private c() {
        }

        public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final List a() {
            return CollectionsKt.l();
        }
    }

    public r1(RoomDatabase __db) {
        Intrinsics.h(__db, "__db");
        this.f15843a = __db;
        this.f15844b = new a();
        this.f15845c = new b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int A0(String str, String str2, z3.b _connection) {
        Intrinsics.h(_connection, "_connection");
        z3.e eVarD0 = _connection.D0(str);
        try {
            eVarD0.j(1, str2);
            eVarD0.A0();
            return androidx.room.util.j.b(_connection);
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit B0(r1 r1Var, j0 j0Var, z3.b _connection) throws Exception {
        Intrinsics.h(_connection, "_connection");
        r1Var.f15844b.d(_connection, j0Var);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int C0(String str, long j11, String str2, z3.b _connection) {
        Intrinsics.h(_connection, "_connection");
        z3.e eVarD0 = _connection.D0(str);
        try {
            eVarD0.c(1, j11);
            eVarD0.j(2, str2);
            eVarD0.A0();
            return androidx.room.util.j.b(_connection);
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int D0(String str, z3.b _connection) {
        Intrinsics.h(_connection, "_connection");
        z3.e eVarD0 = _connection.D0(str);
        try {
            eVarD0.A0();
            return androidx.room.util.j.b(_connection);
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit E0(String str, String str2, int i11, z3.b _connection) {
        Intrinsics.h(_connection, "_connection");
        z3.e eVarD0 = _connection.D0(str);
        try {
            eVarD0.j(1, str2);
            eVarD0.c(2, i11);
            eVarD0.A0();
            return Unit.f67061a;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int F0(String str, String str2, z3.b _connection) {
        Intrinsics.h(_connection, "_connection");
        z3.e eVarD0 = _connection.D0(str);
        try {
            eVarD0.j(1, str2);
            eVarD0.A0();
            return androidx.room.util.j.b(_connection);
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int G0(String str, String str2, z3.b _connection) {
        Intrinsics.h(_connection, "_connection");
        z3.e eVarD0 = _connection.D0(str);
        try {
            eVarD0.j(1, str2);
            eVarD0.A0();
            return androidx.room.util.j.b(_connection);
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit H0(String str, long j11, String str2, z3.b _connection) {
        Intrinsics.h(_connection, "_connection");
        z3.e eVarD0 = _connection.D0(str);
        try {
            eVarD0.c(1, j11);
            eVarD0.j(2, str2);
            eVarD0.A0();
            return Unit.f67061a;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit I0(String str, androidx.work.f fVar, String str2, z3.b _connection) {
        Intrinsics.h(_connection, "_connection");
        z3.e eVarD0 = _connection.D0(str);
        try {
            eVarD0.e(1, androidx.work.f.f15483b.e(fVar));
            eVarD0.j(2, str2);
            eVarD0.A0();
            return Unit.f67061a;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int J0(String str, WorkInfo.State state, String str2, z3.b _connection) {
        Intrinsics.h(_connection, "_connection");
        z3.e eVarD0 = _connection.D0(str);
        try {
            eVarD0.c(1, a2.k(state));
            eVarD0.j(2, str2);
            eVarD0.A0();
            return androidx.room.util.j.b(_connection);
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit K0(String str, int i11, String str2, z3.b _connection) {
        Intrinsics.h(_connection, "_connection");
        z3.e eVarD0 = _connection.D0(str);
        try {
            eVarD0.c(1, i11);
            eVarD0.j(2, str2);
            eVarD0.A0();
            return Unit.f67061a;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit L0(r1 r1Var, j0 j0Var, z3.b _connection) throws Exception {
        Intrinsics.h(_connection, "_connection");
        r1Var.f15845c.c(_connection, j0Var);
        return Unit.f67061a;
    }

    private final void g0(final z3.b bVar, androidx.collection.a aVar) {
        Set<Object> setKeySet = aVar.keySet();
        if (setKeySet.isEmpty()) {
            return;
        }
        if (aVar.size() > 999) {
            androidx.room.util.h.a(aVar, true, new Function1() { // from class: androidx.work.impl.model.e1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return r1.h0(this.f15738a, bVar, (androidx.collection.a) obj);
                }
            });
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN (");
        androidx.room.util.n.a(sb2, setKeySet.size());
        sb2.append(")");
        String string = sb2.toString();
        Intrinsics.g(string, "toString(...)");
        z3.e eVarD0 = bVar.D0(string);
        Iterator<Object> it = setKeySet.iterator();
        int i11 = 1;
        while (it.hasNext()) {
            eVarD0.j(i11, (String) it.next());
            i11++;
        }
        try {
            int iC = androidx.room.util.k.c(eVarD0, "work_spec_id");
            if (iC == -1) {
                eVarD0.close();
                return;
            }
            while (eVarD0.A0()) {
                List list = (List) aVar.get(eVarD0.n0(iC));
                if (list != null) {
                    list.add(androidx.work.f.f15483b.a(eVarD0.getBlob(0)));
                }
            }
            eVarD0.close();
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit h0(r1 r1Var, z3.b bVar, androidx.collection.a _tmpMap) {
        Intrinsics.h(_tmpMap, "_tmpMap");
        r1Var.g0(bVar, _tmpMap);
        return Unit.f67061a;
    }

    private final void i0(final z3.b bVar, androidx.collection.a aVar) {
        Set<Object> setKeySet = aVar.keySet();
        if (setKeySet.isEmpty()) {
            return;
        }
        if (aVar.size() > 999) {
            androidx.room.util.h.a(aVar, true, new Function1() { // from class: androidx.work.impl.model.f1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return r1.j0(this.f15743a, bVar, (androidx.collection.a) obj);
                }
            });
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN (");
        androidx.room.util.n.a(sb2, setKeySet.size());
        sb2.append(")");
        String string = sb2.toString();
        Intrinsics.g(string, "toString(...)");
        z3.e eVarD0 = bVar.D0(string);
        Iterator<Object> it = setKeySet.iterator();
        int i11 = 1;
        while (it.hasNext()) {
            eVarD0.j(i11, (String) it.next());
            i11++;
        }
        try {
            int iC = androidx.room.util.k.c(eVarD0, "work_spec_id");
            if (iC == -1) {
                eVarD0.close();
                return;
            }
            while (eVarD0.A0()) {
                List list = (List) aVar.get(eVarD0.n0(iC));
                if (list != null) {
                    list.add(eVarD0.n0(0));
                }
            }
            eVarD0.close();
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j0(r1 r1Var, z3.b bVar, androidx.collection.a _tmpMap) {
        Intrinsics.h(_tmpMap, "_tmpMap");
        r1Var.i0(bVar, _tmpMap);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int k0(String str, z3.b _connection) {
        Intrinsics.h(_connection, "_connection");
        z3.e eVarD0 = _connection.D0(str);
        try {
            return eVarD0.A0() ? (int) eVarD0.getLong(0) : 0;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l0(String str, String str2, z3.b _connection) {
        Intrinsics.h(_connection, "_connection");
        z3.e eVarD0 = _connection.D0(str);
        try {
            eVarD0.j(1, str2);
            eVarD0.A0();
            return Unit.f67061a;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List m0(String str, int i11, z3.b _connection) {
        Boolean boolValueOf;
        Intrinsics.h(_connection, "_connection");
        z3.e eVarD0 = _connection.D0(str);
        try {
            eVarD0.c(1, i11);
            int iD = androidx.room.util.k.d(eVarD0, "id");
            int iD2 = androidx.room.util.k.d(eVarD0, "state");
            int iD3 = androidx.room.util.k.d(eVarD0, "worker_class_name");
            int iD4 = androidx.room.util.k.d(eVarD0, "input_merger_class_name");
            int iD5 = androidx.room.util.k.d(eVarD0, "input");
            int iD6 = androidx.room.util.k.d(eVarD0, "output");
            int iD7 = androidx.room.util.k.d(eVarD0, "initial_delay");
            int iD8 = androidx.room.util.k.d(eVarD0, "interval_duration");
            int iD9 = androidx.room.util.k.d(eVarD0, "flex_duration");
            int iD10 = androidx.room.util.k.d(eVarD0, "run_attempt_count");
            int iD11 = androidx.room.util.k.d(eVarD0, "backoff_policy");
            int iD12 = androidx.room.util.k.d(eVarD0, "backoff_delay_duration");
            int iD13 = androidx.room.util.k.d(eVarD0, "last_enqueue_time");
            int iD14 = androidx.room.util.k.d(eVarD0, "minimum_retention_duration");
            int iD15 = androidx.room.util.k.d(eVarD0, "schedule_requested_at");
            int iD16 = androidx.room.util.k.d(eVarD0, "run_in_foreground");
            int iD17 = androidx.room.util.k.d(eVarD0, "out_of_quota_policy");
            int iD18 = androidx.room.util.k.d(eVarD0, "period_count");
            int iD19 = androidx.room.util.k.d(eVarD0, "generation");
            int iD20 = androidx.room.util.k.d(eVarD0, "next_schedule_time_override");
            int iD21 = androidx.room.util.k.d(eVarD0, "next_schedule_time_override_generation");
            int iD22 = androidx.room.util.k.d(eVarD0, "stop_reason");
            int iD23 = androidx.room.util.k.d(eVarD0, "trace_tag");
            int iD24 = androidx.room.util.k.d(eVarD0, "backoff_on_system_interruptions");
            int iD25 = androidx.room.util.k.d(eVarD0, "required_network_type");
            int iD26 = androidx.room.util.k.d(eVarD0, "required_network_request");
            int iD27 = androidx.room.util.k.d(eVarD0, "requires_charging");
            int iD28 = androidx.room.util.k.d(eVarD0, "requires_device_idle");
            int iD29 = androidx.room.util.k.d(eVarD0, "requires_battery_not_low");
            int iD30 = androidx.room.util.k.d(eVarD0, "requires_storage_not_low");
            int iD31 = androidx.room.util.k.d(eVarD0, "trigger_content_update_delay");
            int iD32 = androidx.room.util.k.d(eVarD0, "trigger_max_content_delay");
            int iD33 = androidx.room.util.k.d(eVarD0, "content_uri_triggers");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.n0(iD);
                int i12 = iD13;
                int i13 = iD14;
                WorkInfo.State stateG = a2.g((int) eVarD0.getLong(iD2));
                String strN1 = eVarD0.n0(iD3);
                String strN2 = eVarD0.n0(iD4);
                byte[] blob = eVarD0.getBlob(iD5);
                androidx.work.f.b bVar = androidx.work.f.f15483b;
                androidx.work.f fVarA = bVar.a(blob);
                androidx.work.f fVarA2 = bVar.a(eVarD0.getBlob(iD6));
                long j11 = eVarD0.getLong(iD7);
                long j12 = eVarD0.getLong(iD8);
                long j13 = eVarD0.getLong(iD9);
                int i14 = (int) eVarD0.getLong(iD10);
                int i15 = iD;
                int i16 = iD2;
                BackoffPolicy backoffPolicyD = a2.d((int) eVarD0.getLong(iD11));
                long j14 = eVarD0.getLong(iD12);
                long j15 = eVarD0.getLong(i12);
                long j16 = eVarD0.getLong(i13);
                int i17 = iD15;
                long j17 = eVarD0.getLong(i17);
                iD15 = i17;
                int i18 = iD16;
                int i19 = iD3;
                boolean z10 = ((int) eVarD0.getLong(i18)) != 0;
                int i20 = iD4;
                OutOfQuotaPolicy outOfQuotaPolicyF = a2.f((int) eVarD0.getLong(iD17));
                int i21 = iD18;
                int i22 = iD17;
                int i23 = (int) eVarD0.getLong(i21);
                int i24 = iD19;
                int i25 = (int) eVarD0.getLong(i24);
                int i26 = iD20;
                long j18 = eVarD0.getLong(i26);
                int i27 = iD21;
                int i28 = iD5;
                int i29 = (int) eVarD0.getLong(i27);
                int i30 = iD7;
                int i31 = iD22;
                int i32 = iD6;
                int i33 = (int) eVarD0.getLong(i31);
                int i34 = iD23;
                String strN3 = eVarD0.isNull(i34) ? null : eVarD0.n0(i34);
                Integer numValueOf = eVarD0.isNull(iD24) ? null : Integer.valueOf((int) eVarD0.getLong(iD24));
                if (numValueOf != null) {
                    boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                } else {
                    boolValueOf = null;
                }
                int i35 = iD9;
                NetworkType networkTypeE = a2.e((int) eVarD0.getLong(iD25));
                int i36 = iD26;
                androidx.work.impl.utils.v vVarL = a2.l(eVarD0.getBlob(i36));
                int i37 = iD25;
                int i38 = iD27;
                int i39 = iD10;
                int i40 = iD28;
                int i41 = iD29;
                int i42 = iD32;
                int i43 = iD24;
                int i44 = iD33;
                iD33 = i44;
                arrayList.add(new j0(strN0, stateG, strN1, strN2, fVarA, fVarA2, j11, j12, j13, new androidx.work.d(vVarL, networkTypeE, ((int) eVarD0.getLong(i38)) != 0, ((int) eVarD0.getLong(iD28)) != 0, ((int) eVarD0.getLong(iD29)) != 0, ((int) eVarD0.getLong(iD30)) != 0, eVarD0.getLong(iD31), eVarD0.getLong(i42), a2.b(eVarD0.getBlob(i44))), i14, backoffPolicyD, j14, j15, j16, j17, z10, outOfQuotaPolicyF, i23, i25, j18, i29, i33, strN3, boolValueOf));
                iD3 = i19;
                iD32 = i42;
                iD = i15;
                iD4 = i20;
                iD17 = i22;
                iD18 = i21;
                iD19 = i24;
                iD6 = i32;
                iD8 = iD8;
                iD24 = i43;
                iD13 = i12;
                iD14 = i13;
                iD2 = i16;
                iD16 = i18;
                iD20 = i26;
                iD22 = i31;
                iD31 = iD31;
                iD5 = i28;
                iD21 = i27;
                iD7 = i30;
                iD23 = i34;
                iD30 = iD30;
                iD9 = i35;
                iD25 = i37;
                iD26 = i36;
                iD27 = i38;
                iD28 = i40;
                iD10 = i39;
                iD29 = i41;
            }
            return arrayList;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List n0(String str, int i11, z3.b _connection) {
        Boolean boolValueOf;
        Intrinsics.h(_connection, "_connection");
        z3.e eVarD0 = _connection.D0(str);
        try {
            eVarD0.c(1, i11);
            int iD = androidx.room.util.k.d(eVarD0, "id");
            int iD2 = androidx.room.util.k.d(eVarD0, "state");
            int iD3 = androidx.room.util.k.d(eVarD0, "worker_class_name");
            int iD4 = androidx.room.util.k.d(eVarD0, "input_merger_class_name");
            int iD5 = androidx.room.util.k.d(eVarD0, "input");
            int iD6 = androidx.room.util.k.d(eVarD0, "output");
            int iD7 = androidx.room.util.k.d(eVarD0, "initial_delay");
            int iD8 = androidx.room.util.k.d(eVarD0, "interval_duration");
            int iD9 = androidx.room.util.k.d(eVarD0, "flex_duration");
            int iD10 = androidx.room.util.k.d(eVarD0, "run_attempt_count");
            int iD11 = androidx.room.util.k.d(eVarD0, "backoff_policy");
            int iD12 = androidx.room.util.k.d(eVarD0, "backoff_delay_duration");
            int iD13 = androidx.room.util.k.d(eVarD0, "last_enqueue_time");
            int iD14 = androidx.room.util.k.d(eVarD0, "minimum_retention_duration");
            int iD15 = androidx.room.util.k.d(eVarD0, "schedule_requested_at");
            int iD16 = androidx.room.util.k.d(eVarD0, "run_in_foreground");
            int iD17 = androidx.room.util.k.d(eVarD0, "out_of_quota_policy");
            int iD18 = androidx.room.util.k.d(eVarD0, "period_count");
            int iD19 = androidx.room.util.k.d(eVarD0, "generation");
            int iD20 = androidx.room.util.k.d(eVarD0, "next_schedule_time_override");
            int iD21 = androidx.room.util.k.d(eVarD0, "next_schedule_time_override_generation");
            int iD22 = androidx.room.util.k.d(eVarD0, "stop_reason");
            int iD23 = androidx.room.util.k.d(eVarD0, "trace_tag");
            int iD24 = androidx.room.util.k.d(eVarD0, "backoff_on_system_interruptions");
            int iD25 = androidx.room.util.k.d(eVarD0, "required_network_type");
            int iD26 = androidx.room.util.k.d(eVarD0, "required_network_request");
            int iD27 = androidx.room.util.k.d(eVarD0, "requires_charging");
            int iD28 = androidx.room.util.k.d(eVarD0, "requires_device_idle");
            int iD29 = androidx.room.util.k.d(eVarD0, "requires_battery_not_low");
            int iD30 = androidx.room.util.k.d(eVarD0, "requires_storage_not_low");
            int iD31 = androidx.room.util.k.d(eVarD0, "trigger_content_update_delay");
            int iD32 = androidx.room.util.k.d(eVarD0, "trigger_max_content_delay");
            int iD33 = androidx.room.util.k.d(eVarD0, "content_uri_triggers");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.n0(iD);
                int i12 = iD13;
                int i13 = iD14;
                WorkInfo.State stateG = a2.g((int) eVarD0.getLong(iD2));
                String strN1 = eVarD0.n0(iD3);
                String strN2 = eVarD0.n0(iD4);
                byte[] blob = eVarD0.getBlob(iD5);
                androidx.work.f.b bVar = androidx.work.f.f15483b;
                androidx.work.f fVarA = bVar.a(blob);
                androidx.work.f fVarA2 = bVar.a(eVarD0.getBlob(iD6));
                long j11 = eVarD0.getLong(iD7);
                long j12 = eVarD0.getLong(iD8);
                long j13 = eVarD0.getLong(iD9);
                int i14 = (int) eVarD0.getLong(iD10);
                int i15 = iD;
                int i16 = iD2;
                BackoffPolicy backoffPolicyD = a2.d((int) eVarD0.getLong(iD11));
                long j14 = eVarD0.getLong(iD12);
                long j15 = eVarD0.getLong(i12);
                long j16 = eVarD0.getLong(i13);
                int i17 = iD15;
                long j17 = eVarD0.getLong(i17);
                iD15 = i17;
                int i18 = iD16;
                int i19 = iD3;
                boolean z10 = ((int) eVarD0.getLong(i18)) != 0;
                int i20 = iD4;
                OutOfQuotaPolicy outOfQuotaPolicyF = a2.f((int) eVarD0.getLong(iD17));
                int i21 = iD18;
                int i22 = iD17;
                int i23 = (int) eVarD0.getLong(i21);
                int i24 = iD19;
                int i25 = (int) eVarD0.getLong(i24);
                int i26 = iD20;
                long j18 = eVarD0.getLong(i26);
                int i27 = iD21;
                int i28 = iD5;
                int i29 = (int) eVarD0.getLong(i27);
                int i30 = iD7;
                int i31 = iD22;
                int i32 = iD6;
                int i33 = (int) eVarD0.getLong(i31);
                int i34 = iD23;
                String strN3 = eVarD0.isNull(i34) ? null : eVarD0.n0(i34);
                Integer numValueOf = eVarD0.isNull(iD24) ? null : Integer.valueOf((int) eVarD0.getLong(iD24));
                if (numValueOf != null) {
                    boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                } else {
                    boolValueOf = null;
                }
                int i35 = iD9;
                NetworkType networkTypeE = a2.e((int) eVarD0.getLong(iD25));
                int i36 = iD26;
                androidx.work.impl.utils.v vVarL = a2.l(eVarD0.getBlob(i36));
                int i37 = iD25;
                int i38 = iD27;
                int i39 = iD10;
                int i40 = iD28;
                int i41 = iD29;
                int i42 = iD32;
                int i43 = iD24;
                int i44 = iD33;
                iD33 = i44;
                arrayList.add(new j0(strN0, stateG, strN1, strN2, fVarA, fVarA2, j11, j12, j13, new androidx.work.d(vVarL, networkTypeE, ((int) eVarD0.getLong(i38)) != 0, ((int) eVarD0.getLong(iD28)) != 0, ((int) eVarD0.getLong(iD29)) != 0, ((int) eVarD0.getLong(iD30)) != 0, eVarD0.getLong(iD31), eVarD0.getLong(i42), a2.b(eVarD0.getBlob(i44))), i14, backoffPolicyD, j14, j15, j16, j17, z10, outOfQuotaPolicyF, i23, i25, j18, i29, i33, strN3, boolValueOf));
                iD3 = i19;
                iD32 = i42;
                iD = i15;
                iD4 = i20;
                iD17 = i22;
                iD18 = i21;
                iD19 = i24;
                iD6 = i32;
                iD8 = iD8;
                iD24 = i43;
                iD13 = i12;
                iD14 = i13;
                iD2 = i16;
                iD16 = i18;
                iD20 = i26;
                iD22 = i31;
                iD31 = iD31;
                iD5 = i28;
                iD21 = i27;
                iD7 = i30;
                iD23 = i34;
                iD30 = iD30;
                iD9 = i35;
                iD25 = i37;
                iD26 = i36;
                iD27 = i38;
                iD28 = i40;
                iD10 = i39;
                iD29 = i41;
            }
            return arrayList;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List o0(String str, z3.b _connection) {
        Boolean boolValueOf;
        Intrinsics.h(_connection, "_connection");
        z3.e eVarD0 = _connection.D0(str);
        try {
            int iD = androidx.room.util.k.d(eVarD0, "id");
            int iD2 = androidx.room.util.k.d(eVarD0, "state");
            int iD3 = androidx.room.util.k.d(eVarD0, "worker_class_name");
            int iD4 = androidx.room.util.k.d(eVarD0, "input_merger_class_name");
            int iD5 = androidx.room.util.k.d(eVarD0, "input");
            int iD6 = androidx.room.util.k.d(eVarD0, "output");
            int iD7 = androidx.room.util.k.d(eVarD0, "initial_delay");
            int iD8 = androidx.room.util.k.d(eVarD0, "interval_duration");
            int iD9 = androidx.room.util.k.d(eVarD0, "flex_duration");
            int iD10 = androidx.room.util.k.d(eVarD0, "run_attempt_count");
            int iD11 = androidx.room.util.k.d(eVarD0, "backoff_policy");
            int iD12 = androidx.room.util.k.d(eVarD0, "backoff_delay_duration");
            int iD13 = androidx.room.util.k.d(eVarD0, "last_enqueue_time");
            int iD14 = androidx.room.util.k.d(eVarD0, "minimum_retention_duration");
            int iD15 = androidx.room.util.k.d(eVarD0, "schedule_requested_at");
            int iD16 = androidx.room.util.k.d(eVarD0, "run_in_foreground");
            int iD17 = androidx.room.util.k.d(eVarD0, "out_of_quota_policy");
            int iD18 = androidx.room.util.k.d(eVarD0, "period_count");
            int iD19 = androidx.room.util.k.d(eVarD0, "generation");
            int iD20 = androidx.room.util.k.d(eVarD0, "next_schedule_time_override");
            int iD21 = androidx.room.util.k.d(eVarD0, "next_schedule_time_override_generation");
            int iD22 = androidx.room.util.k.d(eVarD0, "stop_reason");
            int iD23 = androidx.room.util.k.d(eVarD0, "trace_tag");
            int iD24 = androidx.room.util.k.d(eVarD0, "backoff_on_system_interruptions");
            int iD25 = androidx.room.util.k.d(eVarD0, "required_network_type");
            int iD26 = androidx.room.util.k.d(eVarD0, "required_network_request");
            int iD27 = androidx.room.util.k.d(eVarD0, "requires_charging");
            int iD28 = androidx.room.util.k.d(eVarD0, "requires_device_idle");
            int iD29 = androidx.room.util.k.d(eVarD0, "requires_battery_not_low");
            int iD30 = androidx.room.util.k.d(eVarD0, "requires_storage_not_low");
            int iD31 = androidx.room.util.k.d(eVarD0, "trigger_content_update_delay");
            int iD32 = androidx.room.util.k.d(eVarD0, "trigger_max_content_delay");
            int iD33 = androidx.room.util.k.d(eVarD0, "content_uri_triggers");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.n0(iD);
                int i11 = iD14;
                ArrayList arrayList2 = arrayList;
                WorkInfo.State stateG = a2.g((int) eVarD0.getLong(iD2));
                String strN1 = eVarD0.n0(iD3);
                String strN2 = eVarD0.n0(iD4);
                byte[] blob = eVarD0.getBlob(iD5);
                androidx.work.f.b bVar = androidx.work.f.f15483b;
                androidx.work.f fVarA = bVar.a(blob);
                androidx.work.f fVarA2 = bVar.a(eVarD0.getBlob(iD6));
                long j11 = eVarD0.getLong(iD7);
                long j12 = eVarD0.getLong(iD8);
                long j13 = eVarD0.getLong(iD9);
                int i12 = (int) eVarD0.getLong(iD10);
                int i13 = iD2;
                int i14 = iD3;
                BackoffPolicy backoffPolicyD = a2.d((int) eVarD0.getLong(iD11));
                long j14 = eVarD0.getLong(iD12);
                long j15 = eVarD0.getLong(iD13);
                long j16 = eVarD0.getLong(i11);
                int i15 = iD15;
                long j17 = eVarD0.getLong(i15);
                int i16 = iD;
                int i17 = iD16;
                boolean z10 = ((int) eVarD0.getLong(i17)) != 0;
                int i18 = iD4;
                OutOfQuotaPolicy outOfQuotaPolicyF = a2.f((int) eVarD0.getLong(iD17));
                int i19 = iD18;
                int i20 = iD5;
                int i21 = (int) eVarD0.getLong(i19);
                int i22 = iD19;
                int i23 = iD17;
                int i24 = (int) eVarD0.getLong(i22);
                int i25 = iD20;
                long j18 = eVarD0.getLong(i25);
                int i26 = iD21;
                int i27 = iD6;
                int i28 = (int) eVarD0.getLong(i26);
                int i29 = iD8;
                int i30 = iD22;
                int i31 = iD7;
                int i32 = (int) eVarD0.getLong(i30);
                int i33 = iD23;
                String strN3 = eVarD0.isNull(i33) ? null : eVarD0.n0(i33);
                Integer numValueOf = eVarD0.isNull(iD24) ? null : Integer.valueOf((int) eVarD0.getLong(iD24));
                if (numValueOf != null) {
                    boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                } else {
                    boolValueOf = null;
                }
                int i34 = iD10;
                NetworkType networkTypeE = a2.e((int) eVarD0.getLong(iD25));
                int i35 = iD26;
                androidx.work.impl.utils.v vVarL = a2.l(eVarD0.getBlob(i35));
                int i36 = iD25;
                int i37 = iD27;
                int i38 = iD11;
                int i39 = iD28;
                int i40 = iD29;
                int i41 = iD32;
                int i42 = iD24;
                int i43 = iD33;
                iD33 = i43;
                arrayList2.add(new j0(strN0, stateG, strN1, strN2, fVarA, fVarA2, j11, j12, j13, new androidx.work.d(vVarL, networkTypeE, ((int) eVarD0.getLong(i37)) != 0, ((int) eVarD0.getLong(iD28)) != 0, ((int) eVarD0.getLong(iD29)) != 0, ((int) eVarD0.getLong(iD30)) != 0, eVarD0.getLong(iD31), eVarD0.getLong(i41), a2.b(eVarD0.getBlob(i43))), i12, backoffPolicyD, j14, j15, j16, j17, z10, outOfQuotaPolicyF, i21, i24, j18, i28, i32, strN3, boolValueOf));
                iD = i16;
                iD15 = i15;
                iD32 = i41;
                iD4 = i18;
                iD5 = i20;
                iD17 = i23;
                iD16 = i17;
                iD7 = i31;
                iD9 = iD9;
                iD24 = i42;
                iD14 = i11;
                iD18 = i19;
                iD19 = i22;
                iD20 = i25;
                iD22 = i30;
                iD31 = iD31;
                iD6 = i27;
                iD21 = i26;
                iD3 = i14;
                iD8 = i29;
                iD23 = i33;
                arrayList = arrayList2;
                iD2 = i13;
                iD30 = iD30;
                iD10 = i34;
                iD25 = i36;
                iD26 = i35;
                iD27 = i37;
                iD28 = i39;
                iD11 = i38;
                iD29 = i40;
            }
            return arrayList;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List p0(String str, String str2, z3.b _connection) {
        Intrinsics.h(_connection, "_connection");
        z3.e eVarD0 = _connection.D0(str);
        try {
            eVarD0.j(1, str2);
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                arrayList.add(androidx.work.f.f15483b.a(eVarD0.getBlob(0)));
            }
            eVarD0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List q0(String str, long j11, z3.b _connection) {
        Boolean boolValueOf;
        Intrinsics.h(_connection, "_connection");
        z3.e eVarD0 = _connection.D0(str);
        try {
            eVarD0.c(1, j11);
            int iD = androidx.room.util.k.d(eVarD0, "id");
            int iD2 = androidx.room.util.k.d(eVarD0, "state");
            int iD3 = androidx.room.util.k.d(eVarD0, "worker_class_name");
            int iD4 = androidx.room.util.k.d(eVarD0, "input_merger_class_name");
            int iD5 = androidx.room.util.k.d(eVarD0, "input");
            int iD6 = androidx.room.util.k.d(eVarD0, "output");
            int iD7 = androidx.room.util.k.d(eVarD0, "initial_delay");
            int iD8 = androidx.room.util.k.d(eVarD0, "interval_duration");
            int iD9 = androidx.room.util.k.d(eVarD0, "flex_duration");
            int iD10 = androidx.room.util.k.d(eVarD0, "run_attempt_count");
            int iD11 = androidx.room.util.k.d(eVarD0, "backoff_policy");
            int iD12 = androidx.room.util.k.d(eVarD0, "backoff_delay_duration");
            int iD13 = androidx.room.util.k.d(eVarD0, "last_enqueue_time");
            int iD14 = androidx.room.util.k.d(eVarD0, "minimum_retention_duration");
            int iD15 = androidx.room.util.k.d(eVarD0, "schedule_requested_at");
            int iD16 = androidx.room.util.k.d(eVarD0, "run_in_foreground");
            int iD17 = androidx.room.util.k.d(eVarD0, "out_of_quota_policy");
            int iD18 = androidx.room.util.k.d(eVarD0, "period_count");
            int iD19 = androidx.room.util.k.d(eVarD0, "generation");
            int iD20 = androidx.room.util.k.d(eVarD0, "next_schedule_time_override");
            int iD21 = androidx.room.util.k.d(eVarD0, "next_schedule_time_override_generation");
            int iD22 = androidx.room.util.k.d(eVarD0, "stop_reason");
            int iD23 = androidx.room.util.k.d(eVarD0, "trace_tag");
            int iD24 = androidx.room.util.k.d(eVarD0, "backoff_on_system_interruptions");
            int iD25 = androidx.room.util.k.d(eVarD0, "required_network_type");
            int iD26 = androidx.room.util.k.d(eVarD0, "required_network_request");
            int iD27 = androidx.room.util.k.d(eVarD0, "requires_charging");
            int iD28 = androidx.room.util.k.d(eVarD0, "requires_device_idle");
            int iD29 = androidx.room.util.k.d(eVarD0, "requires_battery_not_low");
            int iD30 = androidx.room.util.k.d(eVarD0, "requires_storage_not_low");
            int iD31 = androidx.room.util.k.d(eVarD0, "trigger_content_update_delay");
            int iD32 = androidx.room.util.k.d(eVarD0, "trigger_max_content_delay");
            int iD33 = androidx.room.util.k.d(eVarD0, "content_uri_triggers");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.n0(iD);
                int i11 = iD13;
                int i12 = iD14;
                WorkInfo.State stateG = a2.g((int) eVarD0.getLong(iD2));
                String strN1 = eVarD0.n0(iD3);
                String strN2 = eVarD0.n0(iD4);
                byte[] blob = eVarD0.getBlob(iD5);
                androidx.work.f.b bVar = androidx.work.f.f15483b;
                androidx.work.f fVarA = bVar.a(blob);
                androidx.work.f fVarA2 = bVar.a(eVarD0.getBlob(iD6));
                long j12 = eVarD0.getLong(iD7);
                long j13 = eVarD0.getLong(iD8);
                long j14 = eVarD0.getLong(iD9);
                int i13 = (int) eVarD0.getLong(iD10);
                int i14 = iD;
                int i15 = iD2;
                BackoffPolicy backoffPolicyD = a2.d((int) eVarD0.getLong(iD11));
                long j15 = eVarD0.getLong(iD12);
                long j16 = eVarD0.getLong(i11);
                long j17 = eVarD0.getLong(i12);
                int i16 = iD15;
                long j18 = eVarD0.getLong(i16);
                iD15 = i16;
                int i17 = iD16;
                int i18 = iD3;
                boolean z10 = ((int) eVarD0.getLong(i17)) != 0;
                OutOfQuotaPolicy outOfQuotaPolicyF = a2.f((int) eVarD0.getLong(iD17));
                int i19 = iD18;
                int i20 = iD17;
                int i21 = (int) eVarD0.getLong(i19);
                int i22 = iD19;
                int i23 = (int) eVarD0.getLong(i22);
                int i24 = iD20;
                long j19 = eVarD0.getLong(i24);
                int i25 = iD21;
                int i26 = iD5;
                int i27 = (int) eVarD0.getLong(i25);
                int i28 = iD7;
                int i29 = iD22;
                int i30 = iD6;
                int i31 = (int) eVarD0.getLong(i29);
                int i32 = iD23;
                String strN3 = eVarD0.isNull(i32) ? null : eVarD0.n0(i32);
                Integer numValueOf = eVarD0.isNull(iD24) ? null : Integer.valueOf((int) eVarD0.getLong(iD24));
                if (numValueOf != null) {
                    boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                } else {
                    boolValueOf = null;
                }
                int i33 = iD9;
                NetworkType networkTypeE = a2.e((int) eVarD0.getLong(iD25));
                int i34 = iD26;
                androidx.work.impl.utils.v vVarL = a2.l(eVarD0.getBlob(i34));
                int i35 = iD25;
                int i36 = iD27;
                int i37 = iD10;
                int i38 = iD28;
                int i39 = iD29;
                int i40 = iD32;
                int i41 = iD24;
                int i42 = iD33;
                iD33 = i42;
                arrayList.add(new j0(strN0, stateG, strN1, strN2, fVarA, fVarA2, j12, j13, j14, new androidx.work.d(vVarL, networkTypeE, ((int) eVarD0.getLong(i36)) != 0, ((int) eVarD0.getLong(iD28)) != 0, ((int) eVarD0.getLong(iD29)) != 0, ((int) eVarD0.getLong(iD30)) != 0, eVarD0.getLong(iD31), eVarD0.getLong(i40), a2.b(eVarD0.getBlob(i42))), i13, backoffPolicyD, j15, j16, j17, j18, z10, outOfQuotaPolicyF, i21, i23, j19, i27, i31, strN3, boolValueOf));
                iD3 = i18;
                iD4 = iD4;
                iD32 = i40;
                iD = i14;
                iD17 = i20;
                iD18 = i19;
                iD19 = i22;
                iD6 = i30;
                iD8 = iD8;
                iD24 = i41;
                iD13 = i11;
                iD14 = i12;
                iD2 = i15;
                iD16 = i17;
                iD20 = i24;
                iD22 = i29;
                iD31 = iD31;
                iD5 = i26;
                iD21 = i25;
                iD7 = i28;
                iD23 = i32;
                iD30 = iD30;
                iD9 = i33;
                iD25 = i35;
                iD26 = i34;
                iD27 = i36;
                iD28 = i38;
                iD10 = i37;
                iD29 = i39;
            }
            return arrayList;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List r0(String str, z3.b _connection) {
        Boolean boolValueOf;
        Intrinsics.h(_connection, "_connection");
        z3.e eVarD0 = _connection.D0(str);
        try {
            int iD = androidx.room.util.k.d(eVarD0, "id");
            int iD2 = androidx.room.util.k.d(eVarD0, "state");
            int iD3 = androidx.room.util.k.d(eVarD0, "worker_class_name");
            int iD4 = androidx.room.util.k.d(eVarD0, "input_merger_class_name");
            int iD5 = androidx.room.util.k.d(eVarD0, "input");
            int iD6 = androidx.room.util.k.d(eVarD0, "output");
            int iD7 = androidx.room.util.k.d(eVarD0, "initial_delay");
            int iD8 = androidx.room.util.k.d(eVarD0, "interval_duration");
            int iD9 = androidx.room.util.k.d(eVarD0, "flex_duration");
            int iD10 = androidx.room.util.k.d(eVarD0, "run_attempt_count");
            int iD11 = androidx.room.util.k.d(eVarD0, "backoff_policy");
            int iD12 = androidx.room.util.k.d(eVarD0, "backoff_delay_duration");
            int iD13 = androidx.room.util.k.d(eVarD0, "last_enqueue_time");
            int iD14 = androidx.room.util.k.d(eVarD0, "minimum_retention_duration");
            int iD15 = androidx.room.util.k.d(eVarD0, "schedule_requested_at");
            int iD16 = androidx.room.util.k.d(eVarD0, "run_in_foreground");
            int iD17 = androidx.room.util.k.d(eVarD0, "out_of_quota_policy");
            int iD18 = androidx.room.util.k.d(eVarD0, "period_count");
            int iD19 = androidx.room.util.k.d(eVarD0, "generation");
            int iD20 = androidx.room.util.k.d(eVarD0, "next_schedule_time_override");
            int iD21 = androidx.room.util.k.d(eVarD0, "next_schedule_time_override_generation");
            int iD22 = androidx.room.util.k.d(eVarD0, "stop_reason");
            int iD23 = androidx.room.util.k.d(eVarD0, "trace_tag");
            int iD24 = androidx.room.util.k.d(eVarD0, "backoff_on_system_interruptions");
            int iD25 = androidx.room.util.k.d(eVarD0, "required_network_type");
            int iD26 = androidx.room.util.k.d(eVarD0, "required_network_request");
            int iD27 = androidx.room.util.k.d(eVarD0, "requires_charging");
            int iD28 = androidx.room.util.k.d(eVarD0, "requires_device_idle");
            int iD29 = androidx.room.util.k.d(eVarD0, "requires_battery_not_low");
            int iD30 = androidx.room.util.k.d(eVarD0, "requires_storage_not_low");
            int iD31 = androidx.room.util.k.d(eVarD0, "trigger_content_update_delay");
            int iD32 = androidx.room.util.k.d(eVarD0, "trigger_max_content_delay");
            int iD33 = androidx.room.util.k.d(eVarD0, "content_uri_triggers");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.n0(iD);
                int i11 = iD14;
                ArrayList arrayList2 = arrayList;
                WorkInfo.State stateG = a2.g((int) eVarD0.getLong(iD2));
                String strN1 = eVarD0.n0(iD3);
                String strN2 = eVarD0.n0(iD4);
                byte[] blob = eVarD0.getBlob(iD5);
                androidx.work.f.b bVar = androidx.work.f.f15483b;
                androidx.work.f fVarA = bVar.a(blob);
                androidx.work.f fVarA2 = bVar.a(eVarD0.getBlob(iD6));
                long j11 = eVarD0.getLong(iD7);
                long j12 = eVarD0.getLong(iD8);
                long j13 = eVarD0.getLong(iD9);
                int i12 = (int) eVarD0.getLong(iD10);
                int i13 = iD2;
                int i14 = iD3;
                BackoffPolicy backoffPolicyD = a2.d((int) eVarD0.getLong(iD11));
                long j14 = eVarD0.getLong(iD12);
                long j15 = eVarD0.getLong(iD13);
                long j16 = eVarD0.getLong(i11);
                int i15 = iD15;
                long j17 = eVarD0.getLong(i15);
                int i16 = iD;
                int i17 = iD16;
                boolean z10 = ((int) eVarD0.getLong(i17)) != 0;
                int i18 = iD4;
                OutOfQuotaPolicy outOfQuotaPolicyF = a2.f((int) eVarD0.getLong(iD17));
                int i19 = iD18;
                int i20 = iD5;
                int i21 = (int) eVarD0.getLong(i19);
                int i22 = iD19;
                int i23 = iD17;
                int i24 = (int) eVarD0.getLong(i22);
                int i25 = iD20;
                long j18 = eVarD0.getLong(i25);
                int i26 = iD21;
                int i27 = iD6;
                int i28 = (int) eVarD0.getLong(i26);
                int i29 = iD8;
                int i30 = iD22;
                int i31 = iD7;
                int i32 = (int) eVarD0.getLong(i30);
                int i33 = iD23;
                String strN3 = eVarD0.isNull(i33) ? null : eVarD0.n0(i33);
                Integer numValueOf = eVarD0.isNull(iD24) ? null : Integer.valueOf((int) eVarD0.getLong(iD24));
                if (numValueOf != null) {
                    boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                } else {
                    boolValueOf = null;
                }
                int i34 = iD10;
                NetworkType networkTypeE = a2.e((int) eVarD0.getLong(iD25));
                int i35 = iD26;
                androidx.work.impl.utils.v vVarL = a2.l(eVarD0.getBlob(i35));
                int i36 = iD25;
                int i37 = iD27;
                int i38 = iD11;
                int i39 = iD28;
                int i40 = iD29;
                int i41 = iD32;
                int i42 = iD24;
                int i43 = iD33;
                iD33 = i43;
                arrayList2.add(new j0(strN0, stateG, strN1, strN2, fVarA, fVarA2, j11, j12, j13, new androidx.work.d(vVarL, networkTypeE, ((int) eVarD0.getLong(i37)) != 0, ((int) eVarD0.getLong(iD28)) != 0, ((int) eVarD0.getLong(iD29)) != 0, ((int) eVarD0.getLong(iD30)) != 0, eVarD0.getLong(iD31), eVarD0.getLong(i41), a2.b(eVarD0.getBlob(i43))), i12, backoffPolicyD, j14, j15, j16, j17, z10, outOfQuotaPolicyF, i21, i24, j18, i28, i32, strN3, boolValueOf));
                iD = i16;
                iD15 = i15;
                iD32 = i41;
                iD4 = i18;
                iD5 = i20;
                iD17 = i23;
                iD16 = i17;
                iD7 = i31;
                iD9 = iD9;
                iD24 = i42;
                iD14 = i11;
                iD18 = i19;
                iD19 = i22;
                iD20 = i25;
                iD22 = i30;
                iD31 = iD31;
                iD6 = i27;
                iD21 = i26;
                iD3 = i14;
                iD8 = i29;
                iD23 = i33;
                arrayList = arrayList2;
                iD2 = i13;
                iD30 = iD30;
                iD10 = i34;
                iD25 = i36;
                iD26 = i35;
                iD27 = i37;
                iD28 = i39;
                iD11 = i38;
                iD29 = i40;
            }
            return arrayList;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List s0(String str, z3.b _connection) {
        Boolean boolValueOf;
        Intrinsics.h(_connection, "_connection");
        z3.e eVarD0 = _connection.D0(str);
        try {
            int iD = androidx.room.util.k.d(eVarD0, "id");
            int iD2 = androidx.room.util.k.d(eVarD0, "state");
            int iD3 = androidx.room.util.k.d(eVarD0, "worker_class_name");
            int iD4 = androidx.room.util.k.d(eVarD0, "input_merger_class_name");
            int iD5 = androidx.room.util.k.d(eVarD0, "input");
            int iD6 = androidx.room.util.k.d(eVarD0, "output");
            int iD7 = androidx.room.util.k.d(eVarD0, "initial_delay");
            int iD8 = androidx.room.util.k.d(eVarD0, "interval_duration");
            int iD9 = androidx.room.util.k.d(eVarD0, "flex_duration");
            int iD10 = androidx.room.util.k.d(eVarD0, "run_attempt_count");
            int iD11 = androidx.room.util.k.d(eVarD0, "backoff_policy");
            int iD12 = androidx.room.util.k.d(eVarD0, "backoff_delay_duration");
            int iD13 = androidx.room.util.k.d(eVarD0, "last_enqueue_time");
            int iD14 = androidx.room.util.k.d(eVarD0, "minimum_retention_duration");
            int iD15 = androidx.room.util.k.d(eVarD0, "schedule_requested_at");
            int iD16 = androidx.room.util.k.d(eVarD0, "run_in_foreground");
            int iD17 = androidx.room.util.k.d(eVarD0, "out_of_quota_policy");
            int iD18 = androidx.room.util.k.d(eVarD0, "period_count");
            int iD19 = androidx.room.util.k.d(eVarD0, "generation");
            int iD20 = androidx.room.util.k.d(eVarD0, "next_schedule_time_override");
            int iD21 = androidx.room.util.k.d(eVarD0, "next_schedule_time_override_generation");
            int iD22 = androidx.room.util.k.d(eVarD0, "stop_reason");
            int iD23 = androidx.room.util.k.d(eVarD0, "trace_tag");
            int iD24 = androidx.room.util.k.d(eVarD0, "backoff_on_system_interruptions");
            int iD25 = androidx.room.util.k.d(eVarD0, "required_network_type");
            int iD26 = androidx.room.util.k.d(eVarD0, "required_network_request");
            int iD27 = androidx.room.util.k.d(eVarD0, "requires_charging");
            int iD28 = androidx.room.util.k.d(eVarD0, "requires_device_idle");
            int iD29 = androidx.room.util.k.d(eVarD0, "requires_battery_not_low");
            int iD30 = androidx.room.util.k.d(eVarD0, "requires_storage_not_low");
            int iD31 = androidx.room.util.k.d(eVarD0, "trigger_content_update_delay");
            int iD32 = androidx.room.util.k.d(eVarD0, "trigger_max_content_delay");
            int iD33 = androidx.room.util.k.d(eVarD0, "content_uri_triggers");
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN0 = eVarD0.n0(iD);
                int i11 = iD14;
                ArrayList arrayList2 = arrayList;
                WorkInfo.State stateG = a2.g((int) eVarD0.getLong(iD2));
                String strN1 = eVarD0.n0(iD3);
                String strN2 = eVarD0.n0(iD4);
                byte[] blob = eVarD0.getBlob(iD5);
                androidx.work.f.b bVar = androidx.work.f.f15483b;
                androidx.work.f fVarA = bVar.a(blob);
                androidx.work.f fVarA2 = bVar.a(eVarD0.getBlob(iD6));
                long j11 = eVarD0.getLong(iD7);
                long j12 = eVarD0.getLong(iD8);
                long j13 = eVarD0.getLong(iD9);
                int i12 = (int) eVarD0.getLong(iD10);
                int i13 = iD2;
                int i14 = iD3;
                BackoffPolicy backoffPolicyD = a2.d((int) eVarD0.getLong(iD11));
                long j14 = eVarD0.getLong(iD12);
                long j15 = eVarD0.getLong(iD13);
                long j16 = eVarD0.getLong(i11);
                int i15 = iD15;
                long j17 = eVarD0.getLong(i15);
                int i16 = iD;
                int i17 = iD16;
                boolean z10 = ((int) eVarD0.getLong(i17)) != 0;
                int i18 = iD4;
                OutOfQuotaPolicy outOfQuotaPolicyF = a2.f((int) eVarD0.getLong(iD17));
                int i19 = iD18;
                int i20 = iD5;
                int i21 = (int) eVarD0.getLong(i19);
                int i22 = iD19;
                int i23 = iD17;
                int i24 = (int) eVarD0.getLong(i22);
                int i25 = iD20;
                long j18 = eVarD0.getLong(i25);
                int i26 = iD21;
                int i27 = iD6;
                int i28 = (int) eVarD0.getLong(i26);
                int i29 = iD8;
                int i30 = iD22;
                int i31 = iD7;
                int i32 = (int) eVarD0.getLong(i30);
                int i33 = iD23;
                String strN3 = eVarD0.isNull(i33) ? null : eVarD0.n0(i33);
                Integer numValueOf = eVarD0.isNull(iD24) ? null : Integer.valueOf((int) eVarD0.getLong(iD24));
                if (numValueOf != null) {
                    boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                } else {
                    boolValueOf = null;
                }
                int i34 = iD10;
                NetworkType networkTypeE = a2.e((int) eVarD0.getLong(iD25));
                int i35 = iD26;
                androidx.work.impl.utils.v vVarL = a2.l(eVarD0.getBlob(i35));
                int i36 = iD25;
                int i37 = iD27;
                int i38 = iD11;
                int i39 = iD28;
                int i40 = iD29;
                int i41 = iD32;
                int i42 = iD24;
                int i43 = iD33;
                iD33 = i43;
                arrayList2.add(new j0(strN0, stateG, strN1, strN2, fVarA, fVarA2, j11, j12, j13, new androidx.work.d(vVarL, networkTypeE, ((int) eVarD0.getLong(i37)) != 0, ((int) eVarD0.getLong(iD28)) != 0, ((int) eVarD0.getLong(iD29)) != 0, ((int) eVarD0.getLong(iD30)) != 0, eVarD0.getLong(iD31), eVarD0.getLong(i41), a2.b(eVarD0.getBlob(i43))), i12, backoffPolicyD, j14, j15, j16, j17, z10, outOfQuotaPolicyF, i21, i24, j18, i28, i32, strN3, boolValueOf));
                iD = i16;
                iD15 = i15;
                iD32 = i41;
                iD4 = i18;
                iD5 = i20;
                iD17 = i23;
                iD16 = i17;
                iD7 = i31;
                iD9 = iD9;
                iD24 = i42;
                iD14 = i11;
                iD18 = i19;
                iD19 = i22;
                iD20 = i25;
                iD22 = i30;
                iD31 = iD31;
                iD6 = i27;
                iD21 = i26;
                iD3 = i14;
                iD8 = i29;
                iD23 = i33;
                arrayList = arrayList2;
                iD2 = i13;
                iD30 = iD30;
                iD10 = i34;
                iD25 = i36;
                iD26 = i35;
                iD27 = i37;
                iD28 = i39;
                iD11 = i38;
                iD29 = i40;
            }
            return arrayList;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WorkInfo.State t0(String str, String str2, z3.b _connection) {
        Intrinsics.h(_connection, "_connection");
        z3.e eVarD0 = _connection.D0(str);
        try {
            eVarD0.j(1, str2);
            WorkInfo.State stateG = null;
            if (eVarD0.A0()) {
                Integer numValueOf = eVarD0.isNull(0) ? null : Integer.valueOf((int) eVarD0.getLong(0));
                if (numValueOf != null) {
                    stateG = a2.g(numValueOf.intValue());
                }
            }
            return stateG;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List u0(String str, String str2, z3.b _connection) {
        Intrinsics.h(_connection, "_connection");
        z3.e eVarD0 = _connection.D0(str);
        try {
            eVarD0.j(1, str2);
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                arrayList.add(eVarD0.n0(0));
            }
            eVarD0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j0 v0(String str, String str2, z3.b _connection) {
        Intrinsics.h(_connection, "_connection");
        z3.e eVarD0 = _connection.D0(str);
        try {
            eVarD0.j(1, str2);
            int iD = androidx.room.util.k.d(eVarD0, "id");
            int iD2 = androidx.room.util.k.d(eVarD0, "state");
            int iD3 = androidx.room.util.k.d(eVarD0, "worker_class_name");
            int iD4 = androidx.room.util.k.d(eVarD0, "input_merger_class_name");
            int iD5 = androidx.room.util.k.d(eVarD0, "input");
            int iD6 = androidx.room.util.k.d(eVarD0, "output");
            int iD7 = androidx.room.util.k.d(eVarD0, "initial_delay");
            int iD8 = androidx.room.util.k.d(eVarD0, "interval_duration");
            int iD9 = androidx.room.util.k.d(eVarD0, "flex_duration");
            int iD10 = androidx.room.util.k.d(eVarD0, "run_attempt_count");
            int iD11 = androidx.room.util.k.d(eVarD0, "backoff_policy");
            int iD12 = androidx.room.util.k.d(eVarD0, "backoff_delay_duration");
            int iD13 = androidx.room.util.k.d(eVarD0, "last_enqueue_time");
            int iD14 = androidx.room.util.k.d(eVarD0, "minimum_retention_duration");
            int iD15 = androidx.room.util.k.d(eVarD0, "schedule_requested_at");
            int iD16 = androidx.room.util.k.d(eVarD0, "run_in_foreground");
            int iD17 = androidx.room.util.k.d(eVarD0, "out_of_quota_policy");
            int iD18 = androidx.room.util.k.d(eVarD0, "period_count");
            int iD19 = androidx.room.util.k.d(eVarD0, "generation");
            int iD20 = androidx.room.util.k.d(eVarD0, "next_schedule_time_override");
            int iD21 = androidx.room.util.k.d(eVarD0, "next_schedule_time_override_generation");
            int iD22 = androidx.room.util.k.d(eVarD0, "stop_reason");
            int iD23 = androidx.room.util.k.d(eVarD0, "trace_tag");
            int iD24 = androidx.room.util.k.d(eVarD0, "backoff_on_system_interruptions");
            int iD25 = androidx.room.util.k.d(eVarD0, "required_network_type");
            int iD26 = androidx.room.util.k.d(eVarD0, "required_network_request");
            int iD27 = androidx.room.util.k.d(eVarD0, "requires_charging");
            int iD28 = androidx.room.util.k.d(eVarD0, "requires_device_idle");
            int iD29 = androidx.room.util.k.d(eVarD0, "requires_battery_not_low");
            int iD30 = androidx.room.util.k.d(eVarD0, "requires_storage_not_low");
            int iD31 = androidx.room.util.k.d(eVarD0, "trigger_content_update_delay");
            int iD32 = androidx.room.util.k.d(eVarD0, "trigger_max_content_delay");
            int iD33 = androidx.room.util.k.d(eVarD0, "content_uri_triggers");
            j0 j0Var = null;
            Boolean boolValueOf = null;
            if (eVarD0.A0()) {
                String strN0 = eVarD0.n0(iD);
                WorkInfo.State stateG = a2.g((int) eVarD0.getLong(iD2));
                String strN1 = eVarD0.n0(iD3);
                String strN2 = eVarD0.n0(iD4);
                byte[] blob = eVarD0.getBlob(iD5);
                androidx.work.f.b bVar = androidx.work.f.f15483b;
                androidx.work.f fVarA = bVar.a(blob);
                androidx.work.f fVarA2 = bVar.a(eVarD0.getBlob(iD6));
                long j11 = eVarD0.getLong(iD7);
                long j12 = eVarD0.getLong(iD8);
                long j13 = eVarD0.getLong(iD9);
                int i11 = (int) eVarD0.getLong(iD10);
                BackoffPolicy backoffPolicyD = a2.d((int) eVarD0.getLong(iD11));
                long j14 = eVarD0.getLong(iD12);
                long j15 = eVarD0.getLong(iD13);
                long j16 = eVarD0.getLong(iD14);
                long j17 = eVarD0.getLong(iD15);
                boolean z10 = ((int) eVarD0.getLong(iD16)) != 0;
                OutOfQuotaPolicy outOfQuotaPolicyF = a2.f((int) eVarD0.getLong(iD17));
                int i12 = (int) eVarD0.getLong(iD18);
                int i13 = (int) eVarD0.getLong(iD19);
                long j18 = eVarD0.getLong(iD20);
                int i14 = (int) eVarD0.getLong(iD21);
                int i15 = (int) eVarD0.getLong(iD22);
                String strN3 = eVarD0.isNull(iD23) ? null : eVarD0.n0(iD23);
                Integer numValueOf = eVarD0.isNull(r23) ? null : Integer.valueOf((int) eVarD0.getLong(iD24));
                if (numValueOf != null) {
                    boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                }
                j0Var = new j0(strN0, stateG, strN1, strN2, fVarA, fVarA2, j11, j12, j13, new androidx.work.d(a2.l(eVarD0.getBlob(iD26)), a2.e((int) eVarD0.getLong(iD25)), ((int) eVarD0.getLong(iD27)) != 0, ((int) eVarD0.getLong(iD28)) != 0, ((int) eVarD0.getLong(iD29)) != 0, ((int) eVarD0.getLong(iD30)) != 0, eVarD0.getLong(iD31), eVarD0.getLong(iD32), a2.b(eVarD0.getBlob(iD33))), i11, backoffPolicyD, j14, j15, j16, j17, z10, outOfQuotaPolicyF, i12, i13, j18, i14, i15, strN3, boolValueOf);
            }
            return j0Var;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List w0(String str, String str2, z3.b _connection) {
        Intrinsics.h(_connection, "_connection");
        z3.e eVarD0 = _connection.D0(str);
        try {
            eVarD0.j(1, str2);
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                arrayList.add(new j0.b(eVarD0.n0(0), a2.g((int) eVarD0.getLong(1))));
            }
            eVarD0.close();
            return arrayList;
        } catch (Throwable th2) {
            eVarD0.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List x0(String str, List list, r1 r1Var, z3.b _connection) {
        int i11;
        Intrinsics.h(_connection, "_connection");
        z3.e eVarD0 = _connection.D0(str);
        try {
            Iterator it = list.iterator();
            int i12 = 1;
            int i13 = 1;
            while (it.hasNext()) {
                eVarD0.j(i13, (String) it.next());
                i13++;
            }
            androidx.collection.a aVar = new androidx.collection.a();
            androidx.collection.a aVar2 = new androidx.collection.a();
            while (true) {
                i11 = 0;
                if (!eVarD0.A0()) {
                    break;
                }
                String strN0 = eVarD0.n0(0);
                if (!aVar.containsKey(strN0)) {
                    aVar.put(strN0, new ArrayList());
                }
                String strN1 = eVarD0.n0(0);
                if (!aVar2.containsKey(strN1)) {
                    aVar2.put(strN1, new ArrayList());
                }
            }
            eVarD0.reset();
            r1Var.i0(_connection, aVar);
            r1Var.g0(_connection, aVar2);
            ArrayList arrayList = new ArrayList();
            while (eVarD0.A0()) {
                String strN2 = eVarD0.n0(i11);
                WorkInfo.State stateG = a2.g((int) eVarD0.getLong(i12));
                androidx.work.f fVarA = androidx.work.f.f15483b.a(eVarD0.getBlob(2));
                int i14 = (int) eVarD0.getLong(3);
                int i15 = (int) eVarD0.getLong(4);
                long j11 = eVarD0.getLong(14);
                long j12 = eVarD0.getLong(15);
                long j13 = eVarD0.getLong(16);
                androidx.collection.a aVar3 = aVar2;
                BackoffPolicy backoffPolicyD = a2.d((int) eVarD0.getLong(17));
                long j14 = eVarD0.getLong(18);
                long j15 = eVarD0.getLong(19);
                int i16 = (int) eVarD0.getLong(20);
                long j16 = eVarD0.getLong(21);
                int i17 = (int) eVarD0.getLong(22);
                androidx.work.d dVar = new androidx.work.d(a2.l(eVarD0.getBlob(6)), a2.e((int) eVarD0.getLong(5)), ((int) eVarD0.getLong(7)) != 0, ((int) eVarD0.getLong(8)) != 0, ((int) eVarD0.getLong(9)) != 0, ((int) eVarD0.getLong(10)) != 0, eVarD0.getLong(11), eVarD0.getLong(12), a2.b(eVarD0.getBlob(13)));
                Object objI = MapsKt.i(aVar, eVarD0.n0(0));
                Intrinsics.g(objI, "getValue(...)");
                List list2 = (List) objI;
                Object objI2 = MapsKt.i(aVar3, eVarD0.n0(0));
                Intrinsics.g(objI2, "getValue(...)");
                arrayList.add(new j0.c(strN2, stateG, fVarA, j11, j12, j13, dVar, i14, backoffPolicyD, j14, j15, i16, i15, j16, i17, list2, (List) objI2));
                aVar2 = aVar3;
                i12 = 1;
                i11 = 0;
            }
            return arrayList;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean y0(String str, z3.b _connection) {
        Intrinsics.h(_connection, "_connection");
        z3.e eVarD0 = _connection.D0(str);
        try {
            boolean z10 = false;
            if (eVarD0.A0() && ((int) eVarD0.getLong(0)) != 0) {
                z10 = true;
            }
            return z10;
        } finally {
            eVarD0.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit z0(String str, String str2, z3.b _connection) {
        Intrinsics.h(_connection, "_connection");
        z3.e eVarD0 = _connection.D0(str);
        try {
            eVarD0.j(1, str2);
            eVarD0.A0();
            return Unit.f67061a;
        } finally {
            eVarD0.close();
        }
    }

    @Override // androidx.work.impl.model.k0
    public int A() {
        final String str = "Select COUNT(*) FROM workspec WHERE LENGTH(content_uri_triggers)<>0 AND state NOT IN (2, 3, 5)";
        return ((Number) androidx.room.util.b.d(this.f15843a, true, false, new Function1() { // from class: androidx.work.impl.model.l1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(r1.k0(str, (z3.b) obj));
            }
        })).intValue();
    }

    @Override // androidx.work.impl.model.k0
    public void B(final String id2, final int i11) {
        Intrinsics.h(id2, "id");
        final String str = "UPDATE workspec SET next_schedule_time_override=9223372036854775807 WHERE (id=? AND next_schedule_time_override_generation=?)";
        androidx.room.util.b.d(this.f15843a, false, true, new Function1() { // from class: androidx.work.impl.model.z0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return r1.E0(str, id2, i11, (z3.b) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.k0
    public void a(final String id2, final int i11) {
        Intrinsics.h(id2, "id");
        final String str = "UPDATE workspec SET stop_reason=? WHERE id=?";
        androidx.room.util.b.d(this.f15843a, false, true, new Function1() { // from class: androidx.work.impl.model.k1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return r1.K0(str, i11, id2, (z3.b) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.k0
    public void b(final String id2) {
        Intrinsics.h(id2, "id");
        final String str = "DELETE FROM workspec WHERE id=?";
        androidx.room.util.b.d(this.f15843a, false, true, new Function1() { // from class: androidx.work.impl.model.m1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return r1.l0(str, id2, (z3.b) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.k0
    public void c(final j0 workSpec) {
        Intrinsics.h(workSpec, "workSpec");
        androidx.room.util.b.d(this.f15843a, false, true, new Function1() { // from class: androidx.work.impl.model.g1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return r1.L0(this.f15750a, workSpec, (z3.b) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.k0
    public void d(final String id2) {
        Intrinsics.h(id2, "id");
        final String str = "UPDATE workspec SET period_count=period_count+1 WHERE id=?";
        androidx.room.util.b.d(this.f15843a, false, true, new Function1() { // from class: androidx.work.impl.model.b1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return r1.z0(str, id2, (z3.b) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.k0
    public List e(final long j11) {
        final String str = "SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC";
        return (List) androidx.room.util.b.d(this.f15843a, true, false, new Function1() { // from class: androidx.work.impl.model.h1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return r1.q0(str, j11, (z3.b) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.k0
    public void f(final j0 workSpec) {
        Intrinsics.h(workSpec, "workSpec");
        androidx.room.util.b.d(this.f15843a, false, true, new Function1() { // from class: androidx.work.impl.model.y0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return r1.B0(this.f15880a, workSpec, (z3.b) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.k0
    public List g() {
        final String str = "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1";
        return (List) androidx.room.util.b.d(this.f15843a, true, false, new Function1() { // from class: androidx.work.impl.model.o0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return r1.s0(str, (z3.b) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.k0
    public List h(final String name) {
        Intrinsics.h(name, "name");
        final String str = "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)";
        return (List) androidx.room.util.b.d(this.f15843a, true, false, new Function1() { // from class: androidx.work.impl.model.u0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return r1.u0(str, name, (z3.b) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.k0
    public WorkInfo.State i(final String id2) {
        Intrinsics.h(id2, "id");
        final String str = "SELECT state FROM workspec WHERE id=?";
        return (WorkInfo.State) androidx.room.util.b.d(this.f15843a, true, false, new Function1() { // from class: androidx.work.impl.model.t0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return r1.t0(str, id2, (z3.b) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.k0
    public j0 j(final String id2) {
        Intrinsics.h(id2, "id");
        final String str = "SELECT * FROM workspec WHERE id=?";
        return (j0) androidx.room.util.b.d(this.f15843a, true, false, new Function1() { // from class: androidx.work.impl.model.n0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return r1.v0(str, id2, (z3.b) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.k0
    public int k(final String id2) {
        Intrinsics.h(id2, "id");
        final String str = "UPDATE workspec SET stop_reason = CASE WHEN state=1 THEN 1 ELSE -256 END, state=5 WHERE id=?";
        return ((Number) androidx.room.util.b.d(this.f15843a, false, true, new Function1() { // from class: androidx.work.impl.model.v0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(r1.G0(str, id2, (z3.b) obj));
            }
        })).intValue();
    }

    @Override // androidx.work.impl.model.k0
    public List l(final String id2) {
        Intrinsics.h(id2, "id");
        final String str = "SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)";
        return (List) androidx.room.util.b.d(this.f15843a, true, false, new Function1() { // from class: androidx.work.impl.model.d1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return r1.p0(str, id2, (z3.b) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.k0
    public List m(final int i11) {
        final String str = "SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?";
        return (List) androidx.room.util.b.d(this.f15843a, true, false, new Function1() { // from class: androidx.work.impl.model.o1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return r1.m0(str, i11, (z3.b) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.k0
    public int n() {
        final String str = "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)";
        return ((Number) androidx.room.util.b.d(this.f15843a, false, true, new Function1() { // from class: androidx.work.impl.model.p1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(r1.D0(str, (z3.b) obj));
            }
        })).intValue();
    }

    @Override // androidx.work.impl.model.k0
    public int o(final String id2, final long j11) {
        Intrinsics.h(id2, "id");
        final String str = "UPDATE workspec SET schedule_requested_at=? WHERE id=?";
        return ((Number) androidx.room.util.b.d(this.f15843a, false, true, new Function1() { // from class: androidx.work.impl.model.q0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(r1.C0(str, j11, id2, (z3.b) obj));
            }
        })).intValue();
    }

    @Override // androidx.work.impl.model.k0
    public List p(final String name) {
        Intrinsics.h(name, "name");
        final String str = "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)";
        return (List) androidx.room.util.b.d(this.f15843a, true, false, new Function1() { // from class: androidx.work.impl.model.q1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return r1.w0(str, name, (z3.b) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.k0
    public kotlinx.coroutines.flow.b q() {
        final String str = "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1";
        return FlowUtil.a(this.f15843a, false, new String[]{"workspec"}, new Function1() { // from class: androidx.work.impl.model.n1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(r1.y0(str, (z3.b) obj));
            }
        });
    }

    @Override // androidx.work.impl.model.k0
    public List r(final int i11) {
        final String str = "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND LENGTH(content_uri_triggers)=0 AND state NOT IN (2, 3, 5))";
        return (List) androidx.room.util.b.d(this.f15843a, true, false, new Function1() { // from class: androidx.work.impl.model.p0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return r1.n0(str, i11, (z3.b) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.k0
    public int s(final WorkInfo.State state, final String id2) {
        Intrinsics.h(state, "state");
        Intrinsics.h(id2, "id");
        final String str = "UPDATE workspec SET state=? WHERE id=?";
        return ((Number) androidx.room.util.b.d(this.f15843a, false, true, new Function1() { // from class: androidx.work.impl.model.s0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(r1.J0(str, state, id2, (z3.b) obj));
            }
        })).intValue();
    }

    @Override // androidx.work.impl.model.k0
    public void t(final String id2, final androidx.work.f output) {
        Intrinsics.h(id2, "id");
        Intrinsics.h(output, "output");
        final String str = "UPDATE workspec SET output=? WHERE id=?";
        androidx.room.util.b.d(this.f15843a, false, true, new Function1() { // from class: androidx.work.impl.model.w0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return r1.I0(str, output, id2, (z3.b) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.k0
    public void u(final String id2, final long j11) {
        Intrinsics.h(id2, "id");
        final String str = "UPDATE workspec SET last_enqueue_time=? WHERE id=?";
        androidx.room.util.b.d(this.f15843a, false, true, new Function1() { // from class: androidx.work.impl.model.x0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return r1.H0(str, j11, id2, (z3.b) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.k0
    public List v() {
        final String str = "SELECT * FROM workspec WHERE state=1";
        return (List) androidx.room.util.b.d(this.f15843a, true, false, new Function1() { // from class: androidx.work.impl.model.r0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return r1.r0(str, (z3.b) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.k0
    public List w() {
        final String str = "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 AND LENGTH(content_uri_triggers)<>0 ORDER BY last_enqueue_time";
        return (List) androidx.room.util.b.d(this.f15843a, true, false, new Function1() { // from class: androidx.work.impl.model.j1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return r1.o0(str, (z3.b) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.k0
    public int x(final String id2) {
        Intrinsics.h(id2, "id");
        final String str = "UPDATE workspec SET run_attempt_count=0 WHERE id=?";
        return ((Number) androidx.room.util.b.d(this.f15843a, false, true, new Function1() { // from class: androidx.work.impl.model.a1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(r1.F0(str, id2, (z3.b) obj));
            }
        })).intValue();
    }

    @Override // androidx.work.impl.model.k0
    public LiveData y(final List ids) {
        Intrinsics.h(ids, "ids");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("SELECT id, state, output, run_attempt_count, generation, required_network_type, required_network_request, requires_charging, requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (");
        androidx.room.util.n.a(sb2, ids.size());
        sb2.append(")");
        final String string = sb2.toString();
        Intrinsics.g(string, "toString(...)");
        return this.f15843a.y().m(new String[]{"WorkTag", "WorkProgress", "workspec"}, true, new Function1() { // from class: androidx.work.impl.model.c1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return r1.x0(string, ids, this, (z3.b) obj);
            }
        });
    }

    @Override // androidx.work.impl.model.k0
    public int z(final String id2) {
        Intrinsics.h(id2, "id");
        final String str = "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?";
        return ((Number) androidx.room.util.b.d(this.f15843a, false, true, new Function1() { // from class: androidx.work.impl.model.i1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(r1.A0(str, id2, (z3.b) obj));
            }
        })).intValue();
    }
}
