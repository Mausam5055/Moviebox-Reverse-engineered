package yc;

import com.google.firebase.remoteconfig.internal.ConfigFetchHandler;

/* JADX INFO: loaded from: classes5.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f78977a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f78978b;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f78979a = 60;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f78980b = ConfigFetchHandler.f32441j;

        public j c() {
            return new j(this);
        }

        public b d(long j11) {
            if (j11 < 0) {
                throw new IllegalArgumentException(String.format("Fetch connection timeout has to be a non-negative number. %d is an invalid argument", Long.valueOf(j11)));
            }
            this.f78979a = j11;
            return this;
        }

        public b e(long j11) {
            if (j11 >= 0) {
                this.f78980b = j11;
                return this;
            }
            throw new IllegalArgumentException("Minimum interval between fetches has to be a non-negative number. " + j11 + " is an invalid argument");
        }
    }

    private j(b bVar) {
        this.f78977a = bVar.f78979a;
        this.f78978b = bVar.f78980b;
    }

    public long a() {
        return this.f78977a;
    }

    public long b() {
        return this.f78978b;
    }
}
