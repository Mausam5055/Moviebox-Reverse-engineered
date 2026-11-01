package androidx.compose.ui.text.input;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f6281a;

    /* JADX WARN: Multi-variable type inference failed */
    public x() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public x(String str) {
        this.f6281a = str;
    }

    public /* synthetic */ x(String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str);
    }

    public final String a() {
        return this.f6281a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof x) && Intrinsics.c(this.f6281a, ((x) obj).f6281a);
    }

    public int hashCode() {
        String str = this.f6281a;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "PlatformImeOptions(privateImeOptions=" + this.f6281a + ')';
    }
}
