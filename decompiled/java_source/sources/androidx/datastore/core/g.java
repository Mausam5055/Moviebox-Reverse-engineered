package androidx.datastore.core;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final g f8593a = new g();

    private g() {
    }

    public final f a(s storage, j1.b bVar, List migrations, n0 scope) {
        Intrinsics.h(storage, "storage");
        Intrinsics.h(migrations, "migrations");
        Intrinsics.h(scope, "scope");
        c aVar = bVar;
        if (bVar == null) {
            aVar = new j1.a();
        }
        return new DataStoreImpl(storage, CollectionsKt.e(DataMigrationInitializer.f8557a.b(migrations)), aVar, scope);
    }
}
