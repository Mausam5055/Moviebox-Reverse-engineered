package androidx.compose.ui.text;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class h0 extends f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f6179a;

    public h0(String str) {
        super(null);
        this.f6179a = str;
    }

    public final String a() {
        return this.f6179a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof h0) && Intrinsics.c(this.f6179a, ((h0) obj).f6179a);
    }

    public int hashCode() {
        return this.f6179a.hashCode();
    }

    public String toString() {
        return "VerbatimTtsAnnotation(verbatim=" + this.f6179a + ')';
    }
}
