package androidx.sqlite.db.framework;

import a4.d;
import a4.e;
import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelper;
import b4.f;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class FrameworkSQLiteOpenHelper implements e {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f14883h = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f14884a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f14885b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e.a f14886c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f14887d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f14888e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f14889f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f14890g;

    /* JADX INFO: Access modifiers changed from: private */
    public static final class OpenHelper extends SQLiteOpenHelper {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f14891h = new a(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f14892a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final b f14893b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final e.a f14894c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f14895d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f14896e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final d4.a f14897f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f14898g;

        @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0007\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackException;", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", "callbackName", "Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;", "cause", "", "<init>", "(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;Ljava/lang/Throwable;)V", "getCallbackName", "()Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;", "getCause", "()Ljava/lang/Throwable;", "sqlite-framework_release"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        private static final class CallbackException extends RuntimeException {
            private final CallbackName callbackName;
            private final Throwable cause;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public CallbackException(CallbackName callbackName, Throwable cause) {
                super(cause);
                Intrinsics.h(callbackName, "callbackName");
                Intrinsics.h(cause, "cause");
                this.callbackName = callbackName;
                this.cause = cause;
            }

            public final CallbackName getCallbackName() {
                return this.callbackName;
            }

            @Override // java.lang.Throwable
            public Throwable getCause() {
                return this.cause;
            }
        }

        /* JADX INFO: loaded from: classes2.dex */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;", "", "<init>", "(Ljava/lang/String;I)V", "ON_CONFIGURE", "ON_CREATE", "ON_UPGRADE", "ON_DOWNGRADE", "ON_OPEN", "sqlite-framework_release"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
        public enum CallbackName {
            ON_CONFIGURE,
            ON_CREATE,
            ON_UPGRADE,
            ON_DOWNGRADE,
            ON_OPEN;

            private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

            public static EnumEntries<CallbackName> getEntries() {
                return $ENTRIES;
            }
        }

        /* JADX INFO: loaded from: classes2.dex */
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final f a(b refHolder, SQLiteDatabase sqLiteDatabase) {
                Intrinsics.h(refHolder, "refHolder");
                Intrinsics.h(sqLiteDatabase, "sqLiteDatabase");
                f fVarA = refHolder.a();
                if (fVarA != null && fVarA.s(sqLiteDatabase)) {
                    return fVarA;
                }
                f fVar = new f(sqLiteDatabase);
                refHolder.b(fVar);
                return fVar;
            }
        }

        /* JADX INFO: loaded from: classes2.dex */
        public /* synthetic */ class b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f14899a;

            static {
                int[] iArr = new int[CallbackName.values().length];
                try {
                    iArr[CallbackName.ON_CONFIGURE.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[CallbackName.ON_CREATE.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[CallbackName.ON_UPGRADE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[CallbackName.ON_DOWNGRADE.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[CallbackName.ON_OPEN.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                f14899a = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OpenHelper(Context context, String str, final b dbRef, final e.a callback, boolean z10) {
            super(context, str, null, callback.f154a, new DatabaseErrorHandler() { // from class: androidx.sqlite.db.framework.a
                @Override // android.database.DatabaseErrorHandler
                public final void onCorruption(SQLiteDatabase sQLiteDatabase) {
                    FrameworkSQLiteOpenHelper.OpenHelper.d(callback, dbRef, sQLiteDatabase);
                }
            });
            Intrinsics.h(context, "context");
            Intrinsics.h(dbRef, "dbRef");
            Intrinsics.h(callback, "callback");
            this.f14892a = context;
            this.f14893b = dbRef;
            this.f14894c = callback;
            this.f14895d = z10;
            if (str == null) {
                str = UUID.randomUUID().toString();
                Intrinsics.g(str, "toString(...)");
            }
            this.f14897f = new d4.a(str, context.getCacheDir(), false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void d(e.a aVar, b bVar, SQLiteDatabase sQLiteDatabase) {
            a aVar2 = f14891h;
            Intrinsics.e(sQLiteDatabase);
            aVar.c(aVar2.a(bVar, sQLiteDatabase));
        }

        private final SQLiteDatabase k(boolean z10) {
            if (z10) {
                SQLiteDatabase writableDatabase = super.getWritableDatabase();
                Intrinsics.e(writableDatabase);
                return writableDatabase;
            }
            SQLiteDatabase readableDatabase = super.getReadableDatabase();
            Intrinsics.e(readableDatabase);
            return readableDatabase;
        }

        private final SQLiteDatabase l(boolean z10) throws Throwable {
            File parentFile;
            String databaseName = getDatabaseName();
            boolean z11 = this.f14898g;
            if (databaseName != null && !z11 && (parentFile = this.f14892a.getDatabasePath(databaseName).getParentFile()) != null) {
                parentFile.mkdirs();
                if (!parentFile.isDirectory()) {
                    Log.w("SupportSQLite", "Invalid database parent file, not a directory: " + parentFile);
                }
            }
            try {
                return k(z10);
            } catch (Throwable unused) {
                try {
                    Thread.sleep(500L);
                } catch (InterruptedException unused2) {
                }
                try {
                    return k(z10);
                } catch (Throwable th2) {
                    th = th2;
                    if (th instanceof CallbackException) {
                        CallbackException callbackException = (CallbackException) th;
                        Throwable cause = callbackException.getCause();
                        int i11 = b.f14899a[callbackException.getCallbackName().ordinal()];
                        if (i11 == 1 || i11 == 2 || i11 == 3 || i11 == 4) {
                            throw cause;
                        }
                        if (i11 != 5) {
                            throw new NoWhenBranchMatchedException();
                        }
                        if (!(cause instanceof SQLiteException)) {
                            throw cause;
                        }
                        th = cause;
                    }
                    if (!(th instanceof SQLiteException) || databaseName == null || !this.f14895d) {
                        throw th;
                    }
                    this.f14892a.deleteDatabase(databaseName);
                    try {
                        return k(z10);
                    } catch (CallbackException e11) {
                        throw e11.getCause();
                    }
                }
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
        public void close() {
            try {
                d4.a.c(this.f14897f, false, 1, null);
                super.close();
                this.f14893b.b(null);
                this.f14898g = false;
            } finally {
                this.f14897f.d();
            }
        }

        public final d h(boolean z10) {
            try {
                this.f14897f.b((this.f14898g || getDatabaseName() == null) ? false : true);
                this.f14896e = false;
                SQLiteDatabase sQLiteDatabaseL = l(z10);
                if (!this.f14896e) {
                    return i(sQLiteDatabaseL);
                }
                close();
                return h(z10);
            } finally {
                this.f14897f.d();
            }
        }

        public final f i(SQLiteDatabase sqLiteDatabase) {
            Intrinsics.h(sqLiteDatabase, "sqLiteDatabase");
            return f14891h.a(this.f14893b, sqLiteDatabase);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onConfigure(SQLiteDatabase db2) {
            Intrinsics.h(db2, "db");
            if (!this.f14896e && this.f14894c.f154a != db2.getVersion()) {
                db2.setMaxSqlCacheSize(1);
            }
            try {
                this.f14894c.b(i(db2));
            } catch (Throwable th2) {
                throw new CallbackException(CallbackName.ON_CONFIGURE, th2);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sqLiteDatabase) {
            Intrinsics.h(sqLiteDatabase, "sqLiteDatabase");
            try {
                this.f14894c.d(i(sqLiteDatabase));
            } catch (Throwable th2) {
                throw new CallbackException(CallbackName.ON_CREATE, th2);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase db2, int i11, int i12) {
            Intrinsics.h(db2, "db");
            this.f14896e = true;
            try {
                this.f14894c.e(i(db2), i11, i12);
            } catch (Throwable th2) {
                throw new CallbackException(CallbackName.ON_DOWNGRADE, th2);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onOpen(SQLiteDatabase db2) {
            Intrinsics.h(db2, "db");
            if (!this.f14896e) {
                try {
                    this.f14894c.f(i(db2));
                } catch (Throwable th2) {
                    throw new CallbackException(CallbackName.ON_OPEN, th2);
                }
            }
            this.f14898g = true;
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sqLiteDatabase, int i11, int i12) {
            Intrinsics.h(sqLiteDatabase, "sqLiteDatabase");
            this.f14896e = true;
            try {
                this.f14894c.g(i(sqLiteDatabase), i11, i12);
            } catch (Throwable th2) {
                throw new CallbackException(CallbackName.ON_UPGRADE, th2);
            }
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes2.dex */
    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private f f14900a;

        public b(f fVar) {
            this.f14900a = fVar;
        }

        public final f a() {
            return this.f14900a;
        }

        public final void b(f fVar) {
            this.f14900a = fVar;
        }
    }

    public FrameworkSQLiteOpenHelper(Context context, String str, e.a callback, boolean z10, boolean z11) {
        Intrinsics.h(context, "context");
        Intrinsics.h(callback, "callback");
        this.f14884a = context;
        this.f14885b = str;
        this.f14886c = callback;
        this.f14887d = z10;
        this.f14888e = z11;
        this.f14889f = LazyKt.b(new Function0() { // from class: b4.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return FrameworkSQLiteOpenHelper.h(this.f16221a);
            }
        });
    }

    private final OpenHelper d() {
        return (OpenHelper) this.f14889f.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final OpenHelper h(FrameworkSQLiteOpenHelper frameworkSQLiteOpenHelper) {
        OpenHelper openHelper;
        if (frameworkSQLiteOpenHelper.f14885b == null || !frameworkSQLiteOpenHelper.f14887d) {
            openHelper = new OpenHelper(frameworkSQLiteOpenHelper.f14884a, frameworkSQLiteOpenHelper.f14885b, new b(null), frameworkSQLiteOpenHelper.f14886c, frameworkSQLiteOpenHelper.f14888e);
        } else {
            openHelper = new OpenHelper(frameworkSQLiteOpenHelper.f14884a, new File(a4.b.a(frameworkSQLiteOpenHelper.f14884a), frameworkSQLiteOpenHelper.f14885b).getAbsolutePath(), new b(null), frameworkSQLiteOpenHelper.f14886c, frameworkSQLiteOpenHelper.f14888e);
        }
        openHelper.setWriteAheadLoggingEnabled(frameworkSQLiteOpenHelper.f14890g);
        return openHelper;
    }

    @Override // a4.e, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f14889f.isInitialized()) {
            d().close();
        }
    }

    @Override // a4.e
    public String getDatabaseName() {
        return this.f14885b;
    }

    @Override // a4.e
    public d getReadableDatabase() {
        return d().h(false);
    }

    @Override // a4.e
    public d getWritableDatabase() {
        return d().h(true);
    }

    @Override // a4.e
    public void setWriteAheadLoggingEnabled(boolean z10) {
        if (this.f14889f.isInitialized()) {
            d().setWriteAheadLoggingEnabled(z10);
        }
        this.f14890g = z10;
    }
}
