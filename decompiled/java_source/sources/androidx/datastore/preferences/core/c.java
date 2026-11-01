package androidx.datastore.preferences.core;

import java.util.Map;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f8656a;

        public a(String name) {
            Intrinsics.h(name, "name");
            this.f8656a = name;
        }

        public final String a() {
            return this.f8656a;
        }

        public boolean equals(Object obj) {
            if (obj instanceof a) {
                return Intrinsics.c(this.f8656a, ((a) obj).f8656a);
            }
            return false;
        }

        public int hashCode() {
            return this.f8656a.hashCode();
        }

        public String toString() {
            return this.f8656a;
        }
    }

    public static final class b {
    }

    public abstract Map a();

    public abstract Object b(a aVar);

    public final MutablePreferences c() {
        return new MutablePreferences(MapsKt.w(a()), false);
    }

    public final c d() {
        return new MutablePreferences(MapsKt.w(a()), true);
    }
}
