package androidx.work.impl;

import androidx.core.app.NotificationCompat;
import androidx.room.InvalidationTracker;
import androidx.work.impl.model.v1;
import androidx.work.impl.model.z1;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\b\u0010\tJ)\u0010\r\u001a\u001c\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b\u0012\u000e\u0012\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u000b0\f0\nH\u0014¢\u0006\u0004\b\r\u0010\u000eJ\u001d\u0010\u0011\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00100\u000b0\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J1\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\f2\u001a\u0010\u0013\u001a\u0016\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00100\u000b\u0012\u0004\u0012\u00020\u00100\nH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010!\u001a\u00020 H\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b'\u0010(J\u000f\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b*\u0010+R\u001a\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00170,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010-R\u001a\u00100\u001a\b\u0012\u0004\u0012\u00020\u001a0,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u0010-R\u001a\u00102\u001a\b\u0012\u0004\u0012\u00020\u001d0,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u0010-R\u001a\u00104\u001a\b\u0012\u0004\u0012\u00020 0,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u0010-R\u001a\u00106\u001a\b\u0012\u0004\u0012\u00020#0,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u0010-R\u001a\u00108\u001a\b\u0012\u0004\u0012\u00020&0,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u0010-R\u001a\u0010:\u001a\b\u0012\u0004\u0012\u00020)0,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b9\u0010-R\u001a\u0010=\u001a\b\u0012\u0004\u0012\u00020;0,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010-¨\u0006>"}, d2 = {"Landroidx/work/impl/WorkDatabase_Impl;", "Landroidx/work/impl/WorkDatabase;", "<init>", "()V", "Landroidx/room/d0;", "E0", "()Landroidx/room/d0;", "Landroidx/room/InvalidationTracker;", CampaignEx.JSON_KEY_AD_Q, "()Landroidx/room/InvalidationTracker;", "", "Lkotlin/reflect/KClass;", "", "D", "()Ljava/util/Map;", "", "Ly3/b;", "B", "()Ljava/util/Set;", "autoMigrationSpecs", "Ly3/c;", "n", "(Ljava/util/Map;)Ljava/util/List;", "Landroidx/work/impl/model/k0;", "l0", "()Landroidx/work/impl/model/k0;", "Landroidx/work/impl/model/b;", "g0", "()Landroidx/work/impl/model/b;", "Landroidx/work/impl/model/v1;", "m0", "()Landroidx/work/impl/model/v1;", "Landroidx/work/impl/model/q;", "i0", "()Landroidx/work/impl/model/q;", "Landroidx/work/impl/model/z;", "j0", "()Landroidx/work/impl/model/z;", "Landroidx/work/impl/model/e0;", "k0", "()Landroidx/work/impl/model/e0;", "Landroidx/work/impl/model/i;", "h0", "()Landroidx/work/impl/model/i;", "Lkotlin/Lazy;", "Lkotlin/Lazy;", "_workSpecDao", CampaignEx.JSON_KEY_AD_R, "_dependencyDao", "s", "_workTagDao", "t", "_systemIdInfoDao", TmcStartParams.KEY_URL_SHORT, "_workNameDao", "v", "_workProgressDao", "w", "_preferenceDao", "Landroidx/work/impl/model/m;", "x", "_rawWorkInfoDao", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class WorkDatabase_Impl extends WorkDatabase {

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private final Lazy _workSpecDao = LazyKt.b(new Function0() { // from class: androidx.work.impl.s0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return WorkDatabase_Impl.B0(this.f15925a);
        }
    });

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private final Lazy _dependencyDao = LazyKt.b(new Function0() { // from class: androidx.work.impl.t0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return WorkDatabase_Impl.v0(this.f15927a);
        }
    });

    /* JADX INFO: renamed from: s, reason: collision with root package name and from kotlin metadata */
    private final Lazy _workTagDao = LazyKt.b(new Function0() { // from class: androidx.work.impl.u0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return WorkDatabase_Impl.C0(this.f15928a);
        }
    });

    /* JADX INFO: renamed from: t, reason: collision with root package name and from kotlin metadata */
    private final Lazy _systemIdInfoDao = LazyKt.b(new Function0() { // from class: androidx.work.impl.v0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return WorkDatabase_Impl.y0(this.f16006a);
        }
    });

    /* JADX INFO: renamed from: u, reason: collision with root package name and from kotlin metadata */
    private final Lazy _workNameDao = LazyKt.b(new Function0() { // from class: androidx.work.impl.w0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return WorkDatabase_Impl.z0(this.f16011a);
        }
    });

    /* JADX INFO: renamed from: v, reason: collision with root package name and from kotlin metadata */
    private final Lazy _workProgressDao = LazyKt.b(new Function0() { // from class: androidx.work.impl.x0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return WorkDatabase_Impl.A0(this.f16018a);
        }
    });

    /* JADX INFO: renamed from: w, reason: collision with root package name and from kotlin metadata */
    private final Lazy _preferenceDao = LazyKt.b(new Function0() { // from class: androidx.work.impl.y0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return WorkDatabase_Impl.w0(this.f16020a);
        }
    });

    /* JADX INFO: renamed from: x, reason: collision with root package name and from kotlin metadata */
    private final Lazy _rawWorkInfoDao = LazyKt.b(new Function0() { // from class: androidx.work.impl.z0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return WorkDatabase_Impl.x0(this.f16021a);
        }
    });

    /* JADX INFO: loaded from: classes2.dex */
    public static final class a extends androidx.room.d0 {
        a() {
            super(24, "08b926448d86528e697981ddd30459f7", "149fd8ad55885d3fe3549a37a0163243");
        }

        @Override // androidx.room.d0
        public void a(z3.b connection) throws Exception {
            Intrinsics.h(connection, "connection");
            z3.a.a(connection, "CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            z3.a.a(connection, "CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)");
            z3.a.a(connection, "CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)");
            z3.a.a(connection, "CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT NOT NULL, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `last_enqueue_time` INTEGER NOT NULL DEFAULT -1, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `period_count` INTEGER NOT NULL DEFAULT 0, `generation` INTEGER NOT NULL DEFAULT 0, `next_schedule_time_override` INTEGER NOT NULL DEFAULT 9223372036854775807, `next_schedule_time_override_generation` INTEGER NOT NULL DEFAULT 0, `stop_reason` INTEGER NOT NULL DEFAULT -256, `trace_tag` TEXT, `backoff_on_system_interruptions` INTEGER, `required_network_type` INTEGER NOT NULL, `required_network_request` BLOB NOT NULL DEFAULT x'', `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB NOT NULL, PRIMARY KEY(`id`))");
            z3.a.a(connection, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)");
            z3.a.a(connection, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_last_enqueue_time` ON `WorkSpec` (`last_enqueue_time`)");
            z3.a.a(connection, "CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            z3.a.a(connection, "CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)");
            z3.a.a(connection, "CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `generation` INTEGER NOT NULL DEFAULT 0, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`, `generation`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            z3.a.a(connection, "CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            z3.a.a(connection, "CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)");
            z3.a.a(connection, "CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )");
            z3.a.a(connection, "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))");
            z3.a.a(connection, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            z3.a.a(connection, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '08b926448d86528e697981ddd30459f7')");
        }

        @Override // androidx.room.d0
        public void b(z3.b connection) throws Exception {
            Intrinsics.h(connection, "connection");
            z3.a.a(connection, "DROP TABLE IF EXISTS `Dependency`");
            z3.a.a(connection, "DROP TABLE IF EXISTS `WorkSpec`");
            z3.a.a(connection, "DROP TABLE IF EXISTS `WorkTag`");
            z3.a.a(connection, "DROP TABLE IF EXISTS `SystemIdInfo`");
            z3.a.a(connection, "DROP TABLE IF EXISTS `WorkName`");
            z3.a.a(connection, "DROP TABLE IF EXISTS `WorkProgress`");
            z3.a.a(connection, "DROP TABLE IF EXISTS `Preference`");
        }

        @Override // androidx.room.d0
        public void f(z3.b connection) {
            Intrinsics.h(connection, "connection");
        }

        @Override // androidx.room.d0
        public void g(z3.b connection) throws Exception {
            Intrinsics.h(connection, "connection");
            z3.a.a(connection, "PRAGMA foreign_keys = ON");
            WorkDatabase_Impl.this.Q(connection);
        }

        @Override // androidx.room.d0
        public void h(z3.b connection) {
            Intrinsics.h(connection, "connection");
        }

        @Override // androidx.room.d0
        public void i(z3.b connection) {
            Intrinsics.h(connection, "connection");
            androidx.room.util.b.b(connection);
        }

        @Override // androidx.room.d0
        public androidx.room.d0.a j(z3.b connection) {
            Intrinsics.h(connection, "connection");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("work_spec_id", new androidx.room.util.o.a("work_spec_id", "TEXT", true, 1, null, 1));
            linkedHashMap.put("prerequisite_id", new androidx.room.util.o.a("prerequisite_id", "TEXT", true, 2, null, 1));
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            linkedHashSet.add(new androidx.room.util.o.c("WorkSpec", "CASCADE", "CASCADE", CollectionsKt.e("work_spec_id"), CollectionsKt.e("id")));
            linkedHashSet.add(new androidx.room.util.o.c("WorkSpec", "CASCADE", "CASCADE", CollectionsKt.e("prerequisite_id"), CollectionsKt.e("id")));
            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
            linkedHashSet2.add(new androidx.room.util.o.d("index_Dependency_work_spec_id", false, CollectionsKt.e("work_spec_id"), CollectionsKt.e("ASC")));
            linkedHashSet2.add(new androidx.room.util.o.d("index_Dependency_prerequisite_id", false, CollectionsKt.e("prerequisite_id"), CollectionsKt.e("ASC")));
            androidx.room.util.o oVar = new androidx.room.util.o("Dependency", linkedHashMap, linkedHashSet, linkedHashSet2);
            androidx.room.util.o.b bVar = androidx.room.util.o.f14796e;
            androidx.room.util.o oVarB = bVar.b(connection, "Dependency");
            if (!oVar.equals(oVarB)) {
                return new androidx.room.d0.a(false, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n" + oVar + "\n Found:\n" + oVarB);
            }
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            linkedHashMap2.put("id", new androidx.room.util.o.a("id", "TEXT", true, 1, null, 1));
            linkedHashMap2.put("state", new androidx.room.util.o.a("state", "INTEGER", true, 0, null, 1));
            linkedHashMap2.put("worker_class_name", new androidx.room.util.o.a("worker_class_name", "TEXT", true, 0, null, 1));
            linkedHashMap2.put("input_merger_class_name", new androidx.room.util.o.a("input_merger_class_name", "TEXT", true, 0, null, 1));
            linkedHashMap2.put("input", new androidx.room.util.o.a("input", "BLOB", true, 0, null, 1));
            linkedHashMap2.put("output", new androidx.room.util.o.a("output", "BLOB", true, 0, null, 1));
            linkedHashMap2.put("initial_delay", new androidx.room.util.o.a("initial_delay", "INTEGER", true, 0, null, 1));
            linkedHashMap2.put("interval_duration", new androidx.room.util.o.a("interval_duration", "INTEGER", true, 0, null, 1));
            linkedHashMap2.put("flex_duration", new androidx.room.util.o.a("flex_duration", "INTEGER", true, 0, null, 1));
            linkedHashMap2.put("run_attempt_count", new androidx.room.util.o.a("run_attempt_count", "INTEGER", true, 0, null, 1));
            linkedHashMap2.put("backoff_policy", new androidx.room.util.o.a("backoff_policy", "INTEGER", true, 0, null, 1));
            linkedHashMap2.put("backoff_delay_duration", new androidx.room.util.o.a("backoff_delay_duration", "INTEGER", true, 0, null, 1));
            linkedHashMap2.put("last_enqueue_time", new androidx.room.util.o.a("last_enqueue_time", "INTEGER", true, 0, TmcConstants.COLD_OPEN_TYPE, 1));
            linkedHashMap2.put("minimum_retention_duration", new androidx.room.util.o.a("minimum_retention_duration", "INTEGER", true, 0, null, 1));
            linkedHashMap2.put("schedule_requested_at", new androidx.room.util.o.a("schedule_requested_at", "INTEGER", true, 0, null, 1));
            linkedHashMap2.put("run_in_foreground", new androidx.room.util.o.a("run_in_foreground", "INTEGER", true, 0, null, 1));
            linkedHashMap2.put("out_of_quota_policy", new androidx.room.util.o.a("out_of_quota_policy", "INTEGER", true, 0, null, 1));
            linkedHashMap2.put("period_count", new androidx.room.util.o.a("period_count", "INTEGER", true, 0, "0", 1));
            linkedHashMap2.put("generation", new androidx.room.util.o.a("generation", "INTEGER", true, 0, "0", 1));
            linkedHashMap2.put("next_schedule_time_override", new androidx.room.util.o.a("next_schedule_time_override", "INTEGER", true, 0, "9223372036854775807", 1));
            linkedHashMap2.put("next_schedule_time_override_generation", new androidx.room.util.o.a("next_schedule_time_override_generation", "INTEGER", true, 0, "0", 1));
            linkedHashMap2.put("stop_reason", new androidx.room.util.o.a("stop_reason", "INTEGER", true, 0, "-256", 1));
            linkedHashMap2.put("trace_tag", new androidx.room.util.o.a("trace_tag", "TEXT", false, 0, null, 1));
            linkedHashMap2.put("backoff_on_system_interruptions", new androidx.room.util.o.a("backoff_on_system_interruptions", "INTEGER", false, 0, null, 1));
            linkedHashMap2.put("required_network_type", new androidx.room.util.o.a("required_network_type", "INTEGER", true, 0, null, 1));
            linkedHashMap2.put("required_network_request", new androidx.room.util.o.a("required_network_request", "BLOB", true, 0, "x''", 1));
            linkedHashMap2.put("requires_charging", new androidx.room.util.o.a("requires_charging", "INTEGER", true, 0, null, 1));
            linkedHashMap2.put("requires_device_idle", new androidx.room.util.o.a("requires_device_idle", "INTEGER", true, 0, null, 1));
            linkedHashMap2.put("requires_battery_not_low", new androidx.room.util.o.a("requires_battery_not_low", "INTEGER", true, 0, null, 1));
            linkedHashMap2.put("requires_storage_not_low", new androidx.room.util.o.a("requires_storage_not_low", "INTEGER", true, 0, null, 1));
            linkedHashMap2.put("trigger_content_update_delay", new androidx.room.util.o.a("trigger_content_update_delay", "INTEGER", true, 0, null, 1));
            linkedHashMap2.put("trigger_max_content_delay", new androidx.room.util.o.a("trigger_max_content_delay", "INTEGER", true, 0, null, 1));
            linkedHashMap2.put("content_uri_triggers", new androidx.room.util.o.a("content_uri_triggers", "BLOB", true, 0, null, 1));
            LinkedHashSet linkedHashSet3 = new LinkedHashSet();
            LinkedHashSet linkedHashSet4 = new LinkedHashSet();
            linkedHashSet4.add(new androidx.room.util.o.d("index_WorkSpec_schedule_requested_at", false, CollectionsKt.e("schedule_requested_at"), CollectionsKt.e("ASC")));
            linkedHashSet4.add(new androidx.room.util.o.d("index_WorkSpec_last_enqueue_time", false, CollectionsKt.e("last_enqueue_time"), CollectionsKt.e("ASC")));
            androidx.room.util.o oVar2 = new androidx.room.util.o("WorkSpec", linkedHashMap2, linkedHashSet3, linkedHashSet4);
            androidx.room.util.o oVarB2 = bVar.b(connection, "WorkSpec");
            if (!oVar2.equals(oVarB2)) {
                return new androidx.room.d0.a(false, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n" + oVar2 + "\n Found:\n" + oVarB2);
            }
            LinkedHashMap linkedHashMap3 = new LinkedHashMap();
            linkedHashMap3.put("tag", new androidx.room.util.o.a("tag", "TEXT", true, 1, null, 1));
            linkedHashMap3.put("work_spec_id", new androidx.room.util.o.a("work_spec_id", "TEXT", true, 2, null, 1));
            LinkedHashSet linkedHashSet5 = new LinkedHashSet();
            linkedHashSet5.add(new androidx.room.util.o.c("WorkSpec", "CASCADE", "CASCADE", CollectionsKt.e("work_spec_id"), CollectionsKt.e("id")));
            LinkedHashSet linkedHashSet6 = new LinkedHashSet();
            linkedHashSet6.add(new androidx.room.util.o.d("index_WorkTag_work_spec_id", false, CollectionsKt.e("work_spec_id"), CollectionsKt.e("ASC")));
            androidx.room.util.o oVar3 = new androidx.room.util.o("WorkTag", linkedHashMap3, linkedHashSet5, linkedHashSet6);
            androidx.room.util.o oVarB3 = bVar.b(connection, "WorkTag");
            if (!oVar3.equals(oVarB3)) {
                return new androidx.room.d0.a(false, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n" + oVar3 + "\n Found:\n" + oVarB3);
            }
            LinkedHashMap linkedHashMap4 = new LinkedHashMap();
            linkedHashMap4.put("work_spec_id", new androidx.room.util.o.a("work_spec_id", "TEXT", true, 1, null, 1));
            linkedHashMap4.put("generation", new androidx.room.util.o.a("generation", "INTEGER", true, 2, "0", 1));
            linkedHashMap4.put("system_id", new androidx.room.util.o.a("system_id", "INTEGER", true, 0, null, 1));
            LinkedHashSet linkedHashSet7 = new LinkedHashSet();
            linkedHashSet7.add(new androidx.room.util.o.c("WorkSpec", "CASCADE", "CASCADE", CollectionsKt.e("work_spec_id"), CollectionsKt.e("id")));
            androidx.room.util.o oVar4 = new androidx.room.util.o("SystemIdInfo", linkedHashMap4, linkedHashSet7, new LinkedHashSet());
            androidx.room.util.o oVarB4 = bVar.b(connection, "SystemIdInfo");
            if (!oVar4.equals(oVarB4)) {
                return new androidx.room.d0.a(false, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n" + oVar4 + "\n Found:\n" + oVarB4);
            }
            LinkedHashMap linkedHashMap5 = new LinkedHashMap();
            linkedHashMap5.put("name", new androidx.room.util.o.a("name", "TEXT", true, 1, null, 1));
            linkedHashMap5.put("work_spec_id", new androidx.room.util.o.a("work_spec_id", "TEXT", true, 2, null, 1));
            LinkedHashSet linkedHashSet8 = new LinkedHashSet();
            linkedHashSet8.add(new androidx.room.util.o.c("WorkSpec", "CASCADE", "CASCADE", CollectionsKt.e("work_spec_id"), CollectionsKt.e("id")));
            LinkedHashSet linkedHashSet9 = new LinkedHashSet();
            linkedHashSet9.add(new androidx.room.util.o.d("index_WorkName_work_spec_id", false, CollectionsKt.e("work_spec_id"), CollectionsKt.e("ASC")));
            androidx.room.util.o oVar5 = new androidx.room.util.o("WorkName", linkedHashMap5, linkedHashSet8, linkedHashSet9);
            androidx.room.util.o oVarB5 = bVar.b(connection, "WorkName");
            if (!oVar5.equals(oVarB5)) {
                return new androidx.room.d0.a(false, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n" + oVar5 + "\n Found:\n" + oVarB5);
            }
            LinkedHashMap linkedHashMap6 = new LinkedHashMap();
            linkedHashMap6.put("work_spec_id", new androidx.room.util.o.a("work_spec_id", "TEXT", true, 1, null, 1));
            linkedHashMap6.put(NotificationCompat.CATEGORY_PROGRESS, new androidx.room.util.o.a(NotificationCompat.CATEGORY_PROGRESS, "BLOB", true, 0, null, 1));
            LinkedHashSet linkedHashSet10 = new LinkedHashSet();
            linkedHashSet10.add(new androidx.room.util.o.c("WorkSpec", "CASCADE", "CASCADE", CollectionsKt.e("work_spec_id"), CollectionsKt.e("id")));
            androidx.room.util.o oVar6 = new androidx.room.util.o("WorkProgress", linkedHashMap6, linkedHashSet10, new LinkedHashSet());
            androidx.room.util.o oVarB6 = bVar.b(connection, "WorkProgress");
            if (!oVar6.equals(oVarB6)) {
                return new androidx.room.d0.a(false, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n" + oVar6 + "\n Found:\n" + oVarB6);
            }
            LinkedHashMap linkedHashMap7 = new LinkedHashMap();
            linkedHashMap7.put("key", new androidx.room.util.o.a("key", "TEXT", true, 1, null, 1));
            linkedHashMap7.put("long_value", new androidx.room.util.o.a("long_value", "INTEGER", false, 0, null, 1));
            androidx.room.util.o oVar7 = new androidx.room.util.o("Preference", linkedHashMap7, new LinkedHashSet(), new LinkedHashSet());
            androidx.room.util.o oVarB7 = bVar.b(connection, "Preference");
            if (oVar7.equals(oVarB7)) {
                return new androidx.room.d0.a(true, null);
            }
            return new androidx.room.d0.a(false, "Preference(androidx.work.impl.model.Preference).\n Expected:\n" + oVar7 + "\n Found:\n" + oVarB7);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.work.impl.model.h0 A0(WorkDatabase_Impl workDatabase_Impl) {
        return new androidx.work.impl.model.h0(workDatabase_Impl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.work.impl.model.r1 B0(WorkDatabase_Impl workDatabase_Impl) {
        return new androidx.work.impl.model.r1(workDatabase_Impl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final z1 C0(WorkDatabase_Impl workDatabase_Impl) {
        return new z1(workDatabase_Impl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.work.impl.model.g v0(WorkDatabase_Impl workDatabase_Impl) {
        return new androidx.work.impl.model.g(workDatabase_Impl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.work.impl.model.l w0(WorkDatabase_Impl workDatabase_Impl) {
        return new androidx.work.impl.model.l(workDatabase_Impl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.work.impl.model.n x0(WorkDatabase_Impl workDatabase_Impl) {
        return new androidx.work.impl.model.n(workDatabase_Impl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.work.impl.model.v y0(WorkDatabase_Impl workDatabase_Impl) {
        return new androidx.work.impl.model.v(workDatabase_Impl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.work.impl.model.c0 z0(WorkDatabase_Impl workDatabase_Impl) {
        return new androidx.work.impl.model.c0(workDatabase_Impl);
    }

    @Override // androidx.room.RoomDatabase
    public Set B() {
        return new LinkedHashSet();
    }

    @Override // androidx.room.RoomDatabase
    protected Map D() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(Reflection.b(androidx.work.impl.model.k0.class), androidx.work.impl.model.r1.f15842d.a());
        linkedHashMap.put(Reflection.b(androidx.work.impl.model.b.class), androidx.work.impl.model.g.f15745c.a());
        linkedHashMap.put(Reflection.b(v1.class), z1.f15887c.a());
        linkedHashMap.put(Reflection.b(androidx.work.impl.model.q.class), androidx.work.impl.model.v.f15861c.a());
        linkedHashMap.put(Reflection.b(androidx.work.impl.model.z.class), androidx.work.impl.model.c0.f15726c.a());
        linkedHashMap.put(Reflection.b(androidx.work.impl.model.e0.class), androidx.work.impl.model.h0.f15754c.a());
        linkedHashMap.put(Reflection.b(androidx.work.impl.model.i.class), androidx.work.impl.model.l.f15814c.a());
        linkedHashMap.put(Reflection.b(androidx.work.impl.model.m.class), androidx.work.impl.model.n.f15820b.a());
        return linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.room.RoomDatabase
    /* JADX INFO: renamed from: E0, reason: merged with bridge method [inline-methods] */
    public androidx.room.d0 r() {
        return new a();
    }

    @Override // androidx.work.impl.WorkDatabase
    public androidx.work.impl.model.b g0() {
        return (androidx.work.impl.model.b) this._dependencyDao.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public androidx.work.impl.model.i h0() {
        return (androidx.work.impl.model.i) this._preferenceDao.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public androidx.work.impl.model.q i0() {
        return (androidx.work.impl.model.q) this._systemIdInfoDao.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public androidx.work.impl.model.z j0() {
        return (androidx.work.impl.model.z) this._workNameDao.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public androidx.work.impl.model.e0 k0() {
        return (androidx.work.impl.model.e0) this._workProgressDao.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public androidx.work.impl.model.k0 l0() {
        return (androidx.work.impl.model.k0) this._workSpecDao.getValue();
    }

    @Override // androidx.work.impl.WorkDatabase
    public v1 m0() {
        return (v1) this._workTagDao.getValue();
    }

    @Override // androidx.room.RoomDatabase
    public List n(Map autoMigrationSpecs) {
        Intrinsics.h(autoMigrationSpecs, "autoMigrationSpecs");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new j0());
        arrayList.add(new k0());
        arrayList.add(new l0());
        arrayList.add(new m0());
        arrayList.add(new n0());
        arrayList.add(new o0());
        arrayList.add(new p0());
        arrayList.add(new q0());
        arrayList.add(new r0());
        return arrayList;
    }

    @Override // androidx.room.RoomDatabase
    protected InvalidationTracker q() {
        return new InvalidationTracker(this, new LinkedHashMap(), new LinkedHashMap(), "Dependency", "WorkSpec", "WorkTag", "SystemIdInfo", "WorkName", "WorkProgress", "Preference");
    }
}
