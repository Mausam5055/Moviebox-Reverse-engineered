package y1;

import android.media.metrics.LogSessionId;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class f4 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final f4 f78646d = new f4("");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f78647a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f78648b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f78649c;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public LogSessionId f78650a = LogSessionId.LOG_SESSION_ID_NONE;

        public void a(LogSessionId logSessionId) {
            androidx.media3.common.util.a.g(this.f78650a.equals(LogSessionId.LOG_SESSION_ID_NONE));
            this.f78650a = logSessionId;
        }
    }

    public f4(String str) {
        this.f78647a = str;
        this.f78648b = androidx.media3.common.util.a1.f10350a >= 31 ? new a() : null;
        this.f78649c = new Object();
    }

    public synchronized LogSessionId a() {
        return ((a) androidx.media3.common.util.a.e(this.f78648b)).f78650a;
    }

    public synchronized void b(LogSessionId logSessionId) {
        ((a) androidx.media3.common.util.a.e(this.f78648b)).a(logSessionId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f4)) {
            return false;
        }
        f4 f4Var = (f4) obj;
        return Objects.equals(this.f78647a, f4Var.f78647a) && Objects.equals(this.f78648b, f4Var.f78648b) && Objects.equals(this.f78649c, f4Var.f78649c);
    }

    public int hashCode() {
        return Objects.hash(this.f78647a, this.f78648b, this.f78649c);
    }
}
