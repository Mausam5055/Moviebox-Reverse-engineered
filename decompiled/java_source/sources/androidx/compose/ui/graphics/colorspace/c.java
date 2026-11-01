package androidx.compose.ui.graphics.colorspace;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f4349d = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4350a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f4351b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f4352c;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private c(String str, long j11, int i11) {
        this.f4350a = str;
        this.f4351b = j11;
        this.f4352c = i11;
        if (str.length() == 0) {
            throw new IllegalArgumentException("The name of a color space cannot be null and must contain at least 1 character");
        }
        if (i11 < -1 || i11 > 63) {
            throw new IllegalArgumentException("The id must be between -1 and 63");
        }
    }

    public /* synthetic */ c(String str, long j11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, j11, i11);
    }

    public final int a() {
        return b.f(this.f4351b);
    }

    public final int b() {
        return this.f4352c;
    }

    public abstract float c(int i11);

    public abstract float d(int i11);

    public final long e() {
        return this.f4351b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f4352c == cVar.f4352c && Intrinsics.c(this.f4350a, cVar.f4350a)) {
            return b.e(this.f4351b, cVar.f4351b);
        }
        return false;
    }

    public final String f() {
        return this.f4350a;
    }

    public boolean g() {
        return false;
    }

    public abstract long h(float f11, float f12, float f13);

    public int hashCode() {
        return (((this.f4350a.hashCode() * 31) + b.g(this.f4351b)) * 31) + this.f4352c;
    }

    public abstract float i(float f11, float f12, float f13);

    public abstract long j(float f11, float f12, float f13, float f14, c cVar);

    public String toString() {
        return this.f4350a + " (id=" + this.f4352c + ", model=" + ((Object) b.h(this.f4351b)) + ')';
    }
}
