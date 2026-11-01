package androidx.compose.foundation.lazy;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes.dex */
public final class i implements androidx.compose.foundation.lazy.layout.j.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function1 f2951a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function1 f2952b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Function4 f2953c;

    public i(Function1 function1, Function1 function2, Function4 function4) {
        this.f2951a = function1;
        this.f2952b = function2;
        this.f2953c = function4;
    }

    public final Function4 a() {
        return this.f2953c;
    }

    @Override // androidx.compose.foundation.lazy.layout.j.a
    public Function1 getKey() {
        return this.f2951a;
    }

    @Override // androidx.compose.foundation.lazy.layout.j.a
    public Function1 getType() {
        return this.f2952b;
    }
}
