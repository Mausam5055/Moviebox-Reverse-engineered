package kotlinx.serialization.json;

import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.json.internal.o0;

/* JADX INFO: loaded from: classes7.dex */
public final class o extends u {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f68353c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f68354d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(Object body, boolean z10) {
        super(null);
        Intrinsics.h(body, "body");
        this.f68353c = z10;
        this.f68354d = body.toString();
    }

    @Override // kotlinx.serialization.json.u
    public String a() {
        return this.f68354d;
    }

    public boolean c() {
        return this.f68353c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !Intrinsics.c(Reflection.b(o.class), Reflection.b(obj.getClass()))) {
            return false;
        }
        o oVar = (o) obj;
        return c() == oVar.c() && Intrinsics.c(a(), oVar.a());
    }

    public int hashCode() {
        return (androidx.compose.foundation.e.a(c()) * 31) + a().hashCode();
    }

    @Override // kotlinx.serialization.json.u
    public String toString() {
        if (!c()) {
            return a();
        }
        StringBuilder sb2 = new StringBuilder();
        o0.c(sb2, a());
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }
}
