package androidx.compose.ui.semantics;

import kotlin.Function;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5952a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Function f5953b;

    public a(String str, Function function) {
        this.f5952a = str;
        this.f5953b = function;
    }

    public final Function a() {
        return this.f5953b;
    }

    public final String b() {
        return this.f5952a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.c(this.f5952a, aVar.f5952a) && Intrinsics.c(this.f5953b, aVar.f5953b);
    }

    public int hashCode() {
        String str = this.f5952a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        Function function = this.f5953b;
        return iHashCode + (function != null ? function.hashCode() : 0);
    }

    public String toString() {
        return "AccessibilityAction(label=" + this.f5952a + ", action=" + this.f5953b + ')';
    }
}
