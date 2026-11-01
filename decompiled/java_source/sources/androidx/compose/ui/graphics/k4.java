package androidx.compose.ui.graphics;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class k4 {

    public static final class a extends k4 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Path f4464a;

        public a(Path path) {
            super(null);
            this.f4464a = path;
        }

        @Override // androidx.compose.ui.graphics.k4
        public y.i a() {
            return this.f4464a.getBounds();
        }

        public final Path b() {
            return this.f4464a;
        }
    }

    public static final class b extends k4 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final y.i f4465a;

        public b(y.i iVar) {
            super(null);
            this.f4465a = iVar;
        }

        @Override // androidx.compose.ui.graphics.k4
        public y.i a() {
            return this.f4465a;
        }

        public final y.i b() {
            return this.f4465a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof b) && Intrinsics.c(this.f4465a, ((b) obj).f4465a);
        }

        public int hashCode() {
            return this.f4465a.hashCode();
        }
    }

    public static final class c extends k4 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final y.k f4466a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Path f4467b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public c(y.k kVar) {
            super(0 == true ? 1 : 0);
            Path path = null;
            this.f4466a = kVar;
            if (!y.l.e(kVar)) {
                Path pathA = x0.a();
                o4.b(pathA, kVar, null, 2, null);
                path = pathA;
            }
            this.f4467b = path;
        }

        @Override // androidx.compose.ui.graphics.k4
        public y.i a() {
            return y.l.d(this.f4466a);
        }

        public final y.k b() {
            return this.f4466a;
        }

        public final Path c() {
            return this.f4467b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof c) && Intrinsics.c(this.f4466a, ((c) obj).f4466a);
        }

        public int hashCode() {
            return this.f4466a.hashCode();
        }
    }

    private k4() {
    }

    public /* synthetic */ k4(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract y.i a();
}
