package androidx.work.impl.constraints;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {

    public static final class a extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f15592a = new a();

        private a() {
            super(null);
        }
    }

    /* JADX INFO: renamed from: androidx.work.impl.constraints.b$b, reason: collision with other inner class name */
    public static final class C0134b extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f15593a;

        public C0134b(int i11) {
            super(null);
            this.f15593a = i11;
        }

        public final int a() {
            return this.f15593a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof C0134b) && this.f15593a == ((C0134b) obj).f15593a;
        }

        public int hashCode() {
            return this.f15593a;
        }

        public String toString() {
            return "ConstraintsNotMet(reason=" + this.f15593a + ')';
        }
    }

    private b() {
    }

    public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
