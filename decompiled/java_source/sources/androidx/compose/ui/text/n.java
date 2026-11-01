package androidx.compose.ui.text;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final o f6297a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f6298b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f6299c;

    public n(o oVar, int i11, int i12) {
        this.f6297a = oVar;
        this.f6298b = i11;
        this.f6299c = i12;
    }

    public final int a() {
        return this.f6299c;
    }

    public final o b() {
        return this.f6297a;
    }

    public final int c() {
        return this.f6298b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return Intrinsics.c(this.f6297a, nVar.f6297a) && this.f6298b == nVar.f6298b && this.f6299c == nVar.f6299c;
    }

    public int hashCode() {
        return (((this.f6297a.hashCode() * 31) + this.f6298b) * 31) + this.f6299c;
    }

    public String toString() {
        return "ParagraphIntrinsicInfo(intrinsics=" + this.f6297a + ", startIndex=" + this.f6298b + ", endIndex=" + this.f6299c + ')';
    }
}
