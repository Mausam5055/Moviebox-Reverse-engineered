package androidx.room;

import android.content.Context;
import android.content.Intent;
import java.io.File;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f14570a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f14571b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a4.e.c f14572c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RoomDatabase.d f14573d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f14574e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f14575f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final RoomDatabase.JournalMode f14576g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Executor f14577h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Executor f14578i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Intent f14579j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f14580k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f14581l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Set f14582m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final String f14583n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final File f14584o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final Callable f14585p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final RoomDatabase.e f14586q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final List f14587r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final List f14588s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final boolean f14589t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final z3.c f14590u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final CoroutineContext f14591v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final boolean f14592w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f14593x;

    public c(Context context, String str, a4.e.c cVar, RoomDatabase.d migrationContainer, List list, boolean z10, RoomDatabase.JournalMode journalMode, Executor queryExecutor, Executor transactionExecutor, Intent intent, boolean z11, boolean z12, Set set, String str2, File file, Callable callable, RoomDatabase.e eVar, List typeConverters, List autoMigrationSpecs, boolean z13, z3.c cVar2, CoroutineContext coroutineContext) {
        Intrinsics.h(context, "context");
        Intrinsics.h(migrationContainer, "migrationContainer");
        Intrinsics.h(journalMode, "journalMode");
        Intrinsics.h(queryExecutor, "queryExecutor");
        Intrinsics.h(transactionExecutor, "transactionExecutor");
        Intrinsics.h(typeConverters, "typeConverters");
        Intrinsics.h(autoMigrationSpecs, "autoMigrationSpecs");
        this.f14570a = context;
        this.f14571b = str;
        this.f14572c = cVar;
        this.f14573d = migrationContainer;
        this.f14574e = list;
        this.f14575f = z10;
        this.f14576g = journalMode;
        this.f14577h = queryExecutor;
        this.f14578i = transactionExecutor;
        this.f14579j = intent;
        this.f14580k = z11;
        this.f14581l = z12;
        this.f14582m = set;
        this.f14583n = str2;
        this.f14584o = file;
        this.f14585p = callable;
        this.f14586q = eVar;
        this.f14587r = typeConverters;
        this.f14588s = autoMigrationSpecs;
        this.f14589t = z13;
        this.f14590u = cVar2;
        this.f14591v = coroutineContext;
        this.f14592w = intent != null;
        this.f14593x = true;
    }

    public static /* synthetic */ c b(c cVar, Context context, String str, a4.e.c cVar2, RoomDatabase.d dVar, List list, boolean z10, RoomDatabase.JournalMode journalMode, Executor executor, Executor executor2, Intent intent, boolean z11, boolean z12, Set set, String str2, File file, Callable callable, RoomDatabase.e eVar, List list2, List list3, boolean z13, z3.c cVar3, CoroutineContext coroutineContext, int i11, Object obj) {
        if (obj == null) {
            return cVar.a((i11 & 1) != 0 ? cVar.f14570a : context, (i11 & 2) != 0 ? cVar.f14571b : str, (i11 & 4) != 0 ? cVar.f14572c : cVar2, (i11 & 8) != 0 ? cVar.f14573d : dVar, (i11 & 16) != 0 ? cVar.f14574e : list, (i11 & 32) != 0 ? cVar.f14575f : z10, (i11 & 64) != 0 ? cVar.f14576g : journalMode, (i11 & 128) != 0 ? cVar.f14577h : executor, (i11 & 256) != 0 ? cVar.f14578i : executor2, (i11 & 512) != 0 ? cVar.f14579j : intent, (i11 & 1024) != 0 ? cVar.f14580k : z11, (i11 & 2048) != 0 ? cVar.f14581l : z12, (i11 & 4096) != 0 ? cVar.f14582m : set, (i11 & 8192) != 0 ? cVar.f14583n : str2, (i11 & 16384) != 0 ? cVar.f14584o : file, (i11 & 32768) != 0 ? cVar.f14585p : callable, (i11 & 65536) != 0 ? cVar.f14586q : eVar, (i11 & 131072) != 0 ? cVar.f14587r : list2, (i11 & 262144) != 0 ? cVar.f14588s : list3, (i11 & 524288) != 0 ? cVar.f14589t : z13, (i11 & 1048576) != 0 ? cVar.f14590u : cVar3, (i11 & 2097152) != 0 ? cVar.f14591v : coroutineContext);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: copy");
    }

    public final c a(Context context, String str, a4.e.c cVar, RoomDatabase.d migrationContainer, List list, boolean z10, RoomDatabase.JournalMode journalMode, Executor queryExecutor, Executor transactionExecutor, Intent intent, boolean z11, boolean z12, Set set, String str2, File file, Callable callable, RoomDatabase.e eVar, List typeConverters, List autoMigrationSpecs, boolean z13, z3.c cVar2, CoroutineContext coroutineContext) {
        Intrinsics.h(context, "context");
        Intrinsics.h(migrationContainer, "migrationContainer");
        Intrinsics.h(journalMode, "journalMode");
        Intrinsics.h(queryExecutor, "queryExecutor");
        Intrinsics.h(transactionExecutor, "transactionExecutor");
        Intrinsics.h(typeConverters, "typeConverters");
        Intrinsics.h(autoMigrationSpecs, "autoMigrationSpecs");
        return new c(context, str, cVar, migrationContainer, list, z10, journalMode, queryExecutor, transactionExecutor, intent, z11, z12, set, str2, file, callable, eVar, typeConverters, autoMigrationSpecs, z13, cVar2, coroutineContext);
    }

    public final Set c() {
        return this.f14582m;
    }

    public final boolean d() {
        return this.f14593x;
    }

    public boolean e(int i11, int i12) {
        return androidx.room.util.g.d(this, i11, i12);
    }

    public final void f(boolean z10) {
        this.f14593x = z10;
    }
}
