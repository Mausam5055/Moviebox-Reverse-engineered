package n0;

import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f70059b = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Locale f70060a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final h a() {
            return k.a().d().e(0);
        }
    }

    public h(String str) {
        this(k.a().a(str));
    }

    public h(Locale locale) {
        this.f70060a = locale;
    }

    public final Locale a() {
        return this.f70060a;
    }

    public final String b() {
        return l.a(this.f70060a);
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof h)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        return Intrinsics.c(b(), ((h) obj).b());
    }

    public int hashCode() {
        return b().hashCode();
    }

    public String toString() {
        return b();
    }
}
