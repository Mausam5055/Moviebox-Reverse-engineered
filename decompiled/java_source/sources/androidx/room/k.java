package androidx.room;

import androidx.p009lifecycle.LiveData;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RoomDatabase f14704a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set f14705b;

    public k(RoomDatabase database) {
        Intrinsics.h(database, "database");
        this.f14704a = database;
        Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap());
        Intrinsics.g(setNewSetFromMap, "newSetFromMap(...)");
        this.f14705b = setNewSetFromMap;
    }

    public final LiveData a(String[] tableNames, boolean z10, Function1 lambdaFunction) {
        Intrinsics.h(tableNames, "tableNames");
        Intrinsics.h(lambdaFunction, "lambdaFunction");
        return new b0(this.f14704a, this, z10, tableNames, lambdaFunction);
    }

    public final void b(LiveData liveData) {
        Intrinsics.h(liveData, "liveData");
        this.f14705b.add(liveData);
    }

    public final void c(LiveData liveData) {
        Intrinsics.h(liveData, "liveData");
        this.f14705b.remove(liveData);
    }
}
