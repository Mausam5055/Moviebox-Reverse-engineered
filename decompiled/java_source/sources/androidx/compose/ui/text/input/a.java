package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class a implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AnnotatedString f6219a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f6220b;

    public a(AnnotatedString annotatedString, int i11) {
        this.f6219a = annotatedString;
        this.f6220b = i11;
    }

    public a(String str, int i11) {
        this(new AnnotatedString(str, null, null, 6, null), i11);
    }

    public final String a() {
        return this.f6219a.i();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.c(a(), aVar.a()) && this.f6220b == aVar.f6220b;
    }

    public int hashCode() {
        return (a().hashCode() * 31) + this.f6220b;
    }

    public String toString() {
        return "CommitTextCommand(text='" + a() + "', newCursorPosition=" + this.f6220b + ')';
    }
}
