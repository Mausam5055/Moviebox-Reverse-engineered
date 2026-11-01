package my;

import androidx.collection.s;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f70046a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f70047b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f70048c;

    public g(String videoId, String collectionId, long j11) {
        Intrinsics.h(videoId, "videoId");
        Intrinsics.h(collectionId, "collectionId");
        this.f70046a = videoId;
        this.f70047b = collectionId;
        this.f70048c = j11;
    }

    public final String a() {
        return this.f70047b;
    }

    public final long b() {
        return this.f70048c;
    }

    public final String c() {
        return this.f70046a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return Intrinsics.c(this.f70046a, gVar.f70046a) && Intrinsics.c(this.f70047b, gVar.f70047b) && this.f70048c == gVar.f70048c;
    }

    public int hashCode() {
        return (((this.f70046a.hashCode() * 31) + this.f70047b.hashCode()) * 31) + s.a(this.f70048c);
    }

    public String toString() {
        return "UGCPlayRecordEvent(videoId=" + this.f70046a + ", collectionId=" + this.f70047b + ", progress=" + this.f70048c + ")";
    }
}
