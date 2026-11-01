package androidx.datastore.preferences.protobuf;

import java.util.Collections;
import java.util.Map;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes.dex */
public class o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile o f8874b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final o f8875c = new o(true);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map f8876a = Collections.emptyMap();

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f8877a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f8878b;

        a(Object obj, int i11) {
            this.f8877a = obj;
            this.f8878b = i11;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f8877a == aVar.f8877a && this.f8878b == aVar.f8878b;
        }

        public int hashCode() {
            return (System.identityHashCode(this.f8877a) * Settings.DEFAULT_INITIAL_WINDOW_SIZE) + this.f8878b;
        }
    }

    o(boolean z10) {
    }

    public static o b() {
        if (x0.f8931d) {
            return f8875c;
        }
        o oVarA = f8874b;
        if (oVarA == null) {
            synchronized (o.class) {
                try {
                    oVarA = f8874b;
                    if (oVarA == null) {
                        oVarA = n.a();
                        f8874b = oVarA;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return oVarA;
    }

    public GeneratedMessageLite.d a(n0 n0Var, int i11) {
        android.support.v4.media.session.c.a(this.f8876a.get(new a(n0Var, i11)));
        return null;
    }
}
