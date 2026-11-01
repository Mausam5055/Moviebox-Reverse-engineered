package androidx.compose.ui.text;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class f {

    public static final class a extends f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f6098a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final a0 f6099b;

        public a(String str, a0 a0Var, g gVar) {
            super(null);
            this.f6098a = str;
            this.f6099b = a0Var;
        }

        @Override // androidx.compose.ui.text.f
        public g a() {
            return null;
        }

        public a0 b() {
            return this.f6099b;
        }

        public final String c() {
            return this.f6098a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (!Intrinsics.c(this.f6098a, aVar.f6098a) || !Intrinsics.c(b(), aVar.b())) {
                return false;
            }
            a();
            aVar.a();
            return Intrinsics.c(null, null);
        }

        public int hashCode() {
            int iHashCode = this.f6098a.hashCode() * 31;
            a0 a0VarB = b();
            int iHashCode2 = (iHashCode + (a0VarB != null ? a0VarB.hashCode() : 0)) * 31;
            a();
            return iHashCode2;
        }

        public String toString() {
            return "LinkAnnotation.Clickable(tag=" + this.f6098a + ')';
        }
    }

    public static final class b extends f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f6100a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final a0 f6101b;

        public b(String str, a0 a0Var, g gVar) {
            super(null);
            this.f6100a = str;
            this.f6101b = a0Var;
        }

        public /* synthetic */ b(String str, a0 a0Var, g gVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i11 & 2) != 0 ? null : a0Var, (i11 & 4) != 0 ? null : gVar);
        }

        @Override // androidx.compose.ui.text.f
        public g a() {
            return null;
        }

        public a0 b() {
            return this.f6101b;
        }

        public final String c() {
            return this.f6100a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (!Intrinsics.c(this.f6100a, bVar.f6100a) || !Intrinsics.c(b(), bVar.b())) {
                return false;
            }
            a();
            bVar.a();
            return Intrinsics.c(null, null);
        }

        public int hashCode() {
            int iHashCode = this.f6100a.hashCode() * 31;
            a0 a0VarB = b();
            int iHashCode2 = (iHashCode + (a0VarB != null ? a0VarB.hashCode() : 0)) * 31;
            a();
            return iHashCode2;
        }

        public String toString() {
            return "LinkAnnotation.Url(url=" + this.f6100a + ')';
        }
    }

    private f() {
    }

    public /* synthetic */ f(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract g a();
}
