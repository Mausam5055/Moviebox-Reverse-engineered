package co;

import androidx.collection.s;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f17640a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Integer f17641b;

    public m(long j11, Integer num) {
        this.f17640a = j11;
        this.f17641b = num;
    }

    public final Integer a() {
        return this.f17641b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return this.f17640a == mVar.f17640a && Intrinsics.c(this.f17641b, mVar.f17641b);
    }

    public int hashCode() {
        int iA = s.a(this.f17640a) * 31;
        Integer num = this.f17641b;
        return iA + (num == null ? 0 : num.hashCode());
    }

    public String toString() {
        return "VideoConfig(cacheByte=" + this.f17640a + ", maxBufferMsConfig=" + this.f17641b + ")";
    }
}
