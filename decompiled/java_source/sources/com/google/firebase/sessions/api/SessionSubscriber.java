package com.google.firebase.sessions.api;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public interface SessionSubscriber {

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/google/firebase/sessions/api/SessionSubscriber$Name;", "", "(Ljava/lang/String;I)V", "CRASHLYTICS", "PERFORMANCE", "MATT_SAYS_HI", "com.google.firebase-firebase-sessions"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum Name {
        CRASHLYTICS,
        PERFORMANCE,
        MATT_SAYS_HI
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f32636a;

        public a(String sessionId) {
            Intrinsics.h(sessionId, "sessionId");
            this.f32636a = sessionId;
        }

        public final String a() {
            return this.f32636a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && Intrinsics.c(this.f32636a, ((a) obj).f32636a);
        }

        public int hashCode() {
            return this.f32636a.hashCode();
        }

        public String toString() {
            return "SessionDetails(sessionId=" + this.f32636a + ')';
        }
    }

    boolean a();

    Name b();

    void c(a aVar);
}
