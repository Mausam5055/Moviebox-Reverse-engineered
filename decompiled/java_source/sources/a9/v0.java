package a9;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
final class v0 extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f446c = "INSERT INTO global_log_event_state VALUES (" + System.currentTimeMillis() + ")";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static int f447d = 7;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final a f448e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final a f449f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final a f450g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final a f451h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final a f452i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final a f453j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final a f454k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final List f455l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f456a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f457b;

    public interface a {
        void a(SQLiteDatabase sQLiteDatabase);
    }

    static {
        a aVar = new a() { // from class: a9.o0
            @Override // a9.v0.a
            public final void a(SQLiteDatabase sQLiteDatabase) {
                v0.o(sQLiteDatabase);
            }
        };
        f448e = aVar;
        a aVar2 = new a() { // from class: a9.p0
            @Override // a9.v0.a
            public final void a(SQLiteDatabase sQLiteDatabase) {
                v0.p(sQLiteDatabase);
            }
        };
        f449f = aVar2;
        a aVar3 = new a() { // from class: a9.q0
            @Override // a9.v0.a
            public final void a(SQLiteDatabase sQLiteDatabase) {
                sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN payload_encoding TEXT");
            }
        };
        f450g = aVar3;
        a aVar4 = new a() { // from class: a9.r0
            @Override // a9.v0.a
            public final void a(SQLiteDatabase sQLiteDatabase) {
                v0.r(sQLiteDatabase);
            }
        };
        f451h = aVar4;
        a aVar5 = new a() { // from class: a9.s0
            @Override // a9.v0.a
            public final void a(SQLiteDatabase sQLiteDatabase) {
                v0.s(sQLiteDatabase);
            }
        };
        f452i = aVar5;
        a aVar6 = new a() { // from class: a9.t0
            @Override // a9.v0.a
            public final void a(SQLiteDatabase sQLiteDatabase) {
                sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN product_id INTEGER");
            }
        };
        f453j = aVar6;
        a aVar7 = new a() { // from class: a9.u0
            @Override // a9.v0.a
            public final void a(SQLiteDatabase sQLiteDatabase) {
                v0.u(sQLiteDatabase);
            }
        };
        f454k = aVar7;
        f455l = Arrays.asList(aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7);
    }

    v0(Context context, String str, int i11) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i11);
        this.f457b = false;
        this.f456a = i11;
    }

    private void n(SQLiteDatabase sQLiteDatabase) {
        if (this.f457b) {
            return;
        }
        onConfigure(sQLiteDatabase);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void o(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE events (_id INTEGER PRIMARY KEY, context_id INTEGER NOT NULL, transport_name TEXT NOT NULL, timestamp_ms INTEGER NOT NULL, uptime_ms INTEGER NOT NULL, payload BLOB NOT NULL, code INTEGER, num_attempts INTEGER NOT NULL,FOREIGN KEY (context_id) REFERENCES transport_contexts(_id) ON DELETE CASCADE)");
        sQLiteDatabase.execSQL("CREATE TABLE event_metadata (_id INTEGER PRIMARY KEY, event_id INTEGER NOT NULL, name TEXT NOT NULL, value TEXT NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE)");
        sQLiteDatabase.execSQL("CREATE TABLE transport_contexts (_id INTEGER PRIMARY KEY, backend_name TEXT NOT NULL, priority INTEGER NOT NULL, next_request_ms INTEGER NOT NULL)");
        sQLiteDatabase.execSQL("CREATE INDEX events_backend_id on events(context_id)");
        sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority on transport_contexts(backend_name, priority)");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void p(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE transport_contexts ADD COLUMN extras BLOB");
        sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority_extras on transport_contexts(backend_name, priority, extras)");
        sQLiteDatabase.execSQL("DROP INDEX contexts_backend_priority");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void r(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN inline BOOLEAN NOT NULL DEFAULT 1");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        sQLiteDatabase.execSQL("CREATE TABLE event_payloads (sequence_num INTEGER NOT NULL, event_id INTEGER NOT NULL, bytes BLOB NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE,PRIMARY KEY (sequence_num, event_id))");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void s(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS log_event_dropped");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS global_log_event_state");
        sQLiteDatabase.execSQL("CREATE TABLE log_event_dropped (log_source VARCHAR(45) NOT NULL,reason INTEGER NOT NULL,events_dropped_count BIGINT NOT NULL,PRIMARY KEY(log_source, reason))");
        sQLiteDatabase.execSQL("CREATE TABLE global_log_event_state (last_metrics_upload_ms BIGINT PRIMARY KEY)");
        sQLiteDatabase.execSQL(f446c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void u(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN pseudonymous_id TEXT");
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN experiment_ids_clear_blob BLOB");
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN experiment_ids_encrypted_blob BLOB");
    }

    private void v(SQLiteDatabase sQLiteDatabase, int i11) {
        n(sQLiteDatabase);
        w(sQLiteDatabase, 0, i11);
    }

    private void w(SQLiteDatabase sQLiteDatabase, int i11, int i12) {
        List list = f455l;
        if (i12 <= list.size()) {
            while (i11 < i12) {
                ((a) f455l.get(i11)).a(sQLiteDatabase);
                i11++;
            }
            return;
        }
        throw new IllegalArgumentException("Migration from " + i11 + " to " + i12 + " was requested, but cannot be performed. Only " + list.size() + " migrations are provided");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onConfigure(SQLiteDatabase sQLiteDatabase) {
        this.f457b = true;
        sQLiteDatabase.rawQuery("PRAGMA busy_timeout=0;", new String[0]).close();
        sQLiteDatabase.setForeignKeyConstraintsEnabled(true);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        v(sQLiteDatabase, this.f456a);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i11, int i12) {
        sQLiteDatabase.execSQL("DROP TABLE events");
        sQLiteDatabase.execSQL("DROP TABLE event_metadata");
        sQLiteDatabase.execSQL("DROP TABLE transport_contexts");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS event_payloads");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS log_event_dropped");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS global_log_event_state");
        v(sQLiteDatabase, i12);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        n(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i11, int i12) {
        n(sQLiteDatabase);
        w(sQLiteDatabase, i11, i12);
    }
}
