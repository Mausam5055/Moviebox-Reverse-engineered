package androidx.compose.ui.text;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f6178a;

    public g0(String str) {
        this.f6178a = str;
    }

    public final String a() {
        return this.f6178a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof g0) && Intrinsics.c(this.f6178a, ((g0) obj).f6178a);
    }

    public int hashCode() {
        return this.f6178a.hashCode();
    }

    public String toString() {
        return "UrlAnnotation(url=" + this.f6178a + ')';
    }
}
