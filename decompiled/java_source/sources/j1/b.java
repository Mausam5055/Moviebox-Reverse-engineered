package j1;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.c;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function1 f65704a;

    public b(Function1 produceNewData) {
        Intrinsics.h(produceNewData, "produceNewData");
        this.f65704a = produceNewData;
    }

    @Override // androidx.datastore.core.c
    public Object a(CorruptionException corruptionException, Continuation continuation) {
        return this.f65704a.invoke(corruptionException);
    }
}
