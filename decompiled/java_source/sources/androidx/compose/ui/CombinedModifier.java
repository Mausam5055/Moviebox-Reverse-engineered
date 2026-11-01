package androidx.compose.ui;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class CombinedModifier implements f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f f4083b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final f f4084c;

    public CombinedModifier(f fVar, f fVar2) {
        this.f4083b = fVar;
        this.f4084c = fVar2;
    }

    public final f a() {
        return this.f4084c;
    }

    @Override // androidx.compose.ui.f
    public Object b(Object obj, Function2 function2) {
        return this.f4084c.b(this.f4083b.b(obj, function2), function2);
    }

    @Override // androidx.compose.ui.f
    public boolean c(Function1 function1) {
        return this.f4083b.c(function1) && this.f4084c.c(function1);
    }

    @Override // androidx.compose.ui.f
    public /* synthetic */ f e(f fVar) {
        return e.a(this, fVar);
    }

    public boolean equals(Object obj) {
        if (obj instanceof CombinedModifier) {
            CombinedModifier combinedModifier = (CombinedModifier) obj;
            if (Intrinsics.c(this.f4083b, combinedModifier.f4083b) && Intrinsics.c(this.f4084c, combinedModifier.f4084c)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.f4083b.hashCode() + (this.f4084c.hashCode() * 31);
    }

    public final f i() {
        return this.f4083b;
    }

    public String toString() {
        return '[' + ((String) b("", new Function2<String, f.b, String>() { // from class: androidx.compose.ui.CombinedModifier.toString.1
            @Override // kotlin.jvm.functions.Function2
            public final String invoke(String str, f.b bVar) {
                if (str.length() == 0) {
                    return bVar.toString();
                }
                return str + ", " + bVar;
            }
        })) + ']';
    }
}
