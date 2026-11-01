package androidx.compose.foundation.layout;

import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f2861a = new b(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final m f2862b = a.f2865e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final m f2863c = e.f2868e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final m f2864d = c.f2866e;

    private static final class a extends m {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final a f2865e = new a();

        private a() {
            super(null);
        }

        @Override // androidx.compose.foundation.layout.m
        public int a(int i11, LayoutDirection layoutDirection, androidx.compose.ui.layout.g0 g0Var, int i12) {
            return i11 / 2;
        }
    }

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final m a(androidx.compose.ui.b.InterfaceC0044b interfaceC0044b) {
            return new d(interfaceC0044b);
        }
    }

    private static final class c extends m {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final c f2866e = new c();

        private c() {
            super(null);
        }

        @Override // androidx.compose.foundation.layout.m
        public int a(int i11, LayoutDirection layoutDirection, androidx.compose.ui.layout.g0 g0Var, int i12) {
            if (layoutDirection == LayoutDirection.Ltr) {
                return i11;
            }
            return 0;
        }
    }

    private static final class d extends m {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final androidx.compose.ui.b.InterfaceC0044b f2867e;

        public d(androidx.compose.ui.b.InterfaceC0044b interfaceC0044b) {
            super(null);
            this.f2867e = interfaceC0044b;
        }

        @Override // androidx.compose.foundation.layout.m
        public int a(int i11, LayoutDirection layoutDirection, androidx.compose.ui.layout.g0 g0Var, int i12) {
            return this.f2867e.a(0, i11, layoutDirection);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof d) && Intrinsics.c(this.f2867e, ((d) obj).f2867e);
        }

        public int hashCode() {
            return this.f2867e.hashCode();
        }

        public String toString() {
            return "HorizontalCrossAxisAlignment(horizontal=" + this.f2867e + ')';
        }
    }

    private static final class e extends m {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final e f2868e = new e();

        private e() {
            super(null);
        }

        @Override // androidx.compose.foundation.layout.m
        public int a(int i11, LayoutDirection layoutDirection, androidx.compose.ui.layout.g0 g0Var, int i12) {
            if (layoutDirection == LayoutDirection.Ltr) {
                return 0;
            }
            return i11;
        }
    }

    private m() {
    }

    public /* synthetic */ m(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract int a(int i11, LayoutDirection layoutDirection, androidx.compose.ui.layout.g0 g0Var, int i12);

    public Integer b(androidx.compose.ui.layout.g0 g0Var) {
        return null;
    }

    public boolean c() {
        return false;
    }
}
