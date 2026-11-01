package qo;

import androidx.collection.s;
import androidx.compose.foundation.e;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a implements n6.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f73659a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f73660b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f73661c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f73662d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f73663e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f73664f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f73665g;

    public a(String str, int i11, int i12, boolean z10, long j11, String str2, int i13) {
        this.f73659a = str;
        this.f73660b = i11;
        this.f73661c = i12;
        this.f73662d = z10;
        this.f73663e = j11;
        this.f73664f = str2;
        this.f73665g = i13;
    }

    public final String a() {
        return this.f73659a;
    }

    public final int b() {
        return this.f73661c;
    }

    public final int c() {
        return this.f73665g;
    }

    public final String d() {
        return this.f73664f;
    }

    public final int e() {
        return this.f73660b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Intrinsics.c(this.f73659a, aVar.f73659a) && this.f73660b == aVar.f73660b && this.f73661c == aVar.f73661c && this.f73662d == aVar.f73662d && this.f73663e == aVar.f73663e && Intrinsics.c(this.f73664f, aVar.f73664f) && this.f73665g == aVar.f73665g;
    }

    public final boolean f() {
        return this.f73662d;
    }

    public final void g(boolean z10) {
        this.f73662d = z10;
    }

    @Override // n6.a
    public int getItemType() {
        return 2;
    }

    public int hashCode() {
        String str = this.f73659a;
        int iHashCode = (((((((((str == null ? 0 : str.hashCode()) * 31) + this.f73660b) * 31) + this.f73661c) * 31) + e.a(this.f73662d)) * 31) + s.a(this.f73663e)) * 31;
        String str2 = this.f73664f;
        return ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.f73665g;
    }

    public String toString() {
        return "CommentSubLoadMoreBean(commentId=" + this.f73659a + ", subCount=" + this.f73660b + ", currentCount=" + this.f73661c + ", isLoading=" + this.f73662d + ", createTime=" + this.f73663e + ", postId=" + this.f73664f + ", nextPage=" + this.f73665g + ")";
    }
}
