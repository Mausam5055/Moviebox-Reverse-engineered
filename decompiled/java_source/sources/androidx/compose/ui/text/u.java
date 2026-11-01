package androidx.compose.ui.text;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class u {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f6446c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final u f6447d = new u();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f6448a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f6449b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public u() {
        this(e.f6092b.b(), false, null);
    }

    private u(int i11, boolean z10) {
        this.f6448a = z10;
        this.f6449b = i11;
    }

    public /* synthetic */ u(int i11, boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i11, z10);
    }

    public u(boolean z10) {
        this.f6448a = z10;
        this.f6449b = e.f6092b.b();
    }

    public final int a() {
        return this.f6449b;
    }

    public final boolean b() {
        return this.f6448a;
    }

    public final u c(u uVar) {
        return uVar == null ? this : uVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        return this.f6448a == uVar.f6448a && e.g(this.f6449b, uVar.f6449b);
    }

    public int hashCode() {
        return (androidx.compose.foundation.e.a(this.f6448a) * 31) + e.h(this.f6449b);
    }

    public String toString() {
        return "PlatformParagraphStyle(includeFontPadding=" + this.f6448a + ", emojiSupportMatch=" + ((Object) e.i(this.f6449b)) + ')';
    }
}
