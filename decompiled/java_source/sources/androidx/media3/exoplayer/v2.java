package androidx.media3.exoplayer;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class v2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f13050a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f13051b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f13052c;

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f13053a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f13054b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f13055c;

        public b() {
            this.f13053a = C.TIME_UNSET;
            this.f13054b = -3.4028235E38f;
            this.f13055c = C.TIME_UNSET;
        }

        private b(v2 v2Var) {
            this.f13053a = v2Var.f13050a;
            this.f13054b = v2Var.f13051b;
            this.f13055c = v2Var.f13052c;
        }

        public v2 d() {
            return new v2(this);
        }

        public b e(long j11) {
            androidx.media3.common.util.a.a(j11 >= 0 || j11 == C.TIME_UNSET);
            this.f13055c = j11;
            return this;
        }

        public b f(long j11) {
            this.f13053a = j11;
            return this;
        }

        public b g(float f11) {
            androidx.media3.common.util.a.a(f11 > 0.0f || f11 == -3.4028235E38f);
            this.f13054b = f11;
            return this;
        }
    }

    private v2(b bVar) {
        this.f13050a = bVar.f13053a;
        this.f13051b = bVar.f13054b;
        this.f13052c = bVar.f13055c;
    }

    public b a() {
        return new b();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v2)) {
            return false;
        }
        v2 v2Var = (v2) obj;
        return this.f13050a == v2Var.f13050a && this.f13051b == v2Var.f13051b && this.f13052c == v2Var.f13052c;
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.f13050a), Float.valueOf(this.f13051b), Long.valueOf(this.f13052c));
    }
}
