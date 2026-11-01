package com.google.android.exoplayer2;

import android.os.Bundle;

/* JADX INFO: loaded from: classes3.dex */
public final class r implements k {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final r f25613d = new r(0, 0, 0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final k.a f25614e = new k.a() { // from class: com.google.android.exoplayer2.q
        @Override // com.google.android.exoplayer2.k.a
        public final k a(Bundle bundle) {
            return r.c(bundle);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f25615a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f25616b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f25617c;

    public r(int i11, int i12, int i13) {
        this.f25615a = i11;
        this.f25616b = i12;
        this.f25617c = i13;
    }

    private static String b(int i11) {
        return Integer.toString(i11, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ r c(Bundle bundle) {
        return new r(bundle.getInt(b(0), 0), bundle.getInt(b(1), 0), bundle.getInt(b(2), 0));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return this.f25615a == rVar.f25615a && this.f25616b == rVar.f25616b && this.f25617c == rVar.f25617c;
    }

    public int hashCode() {
        return ((((527 + this.f25615a) * 31) + this.f25616b) * 31) + this.f25617c;
    }

    @Override // com.google.android.exoplayer2.k
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(b(0), this.f25615a);
        bundle.putInt(b(1), this.f25616b);
        bundle.putInt(b(2), this.f25617c);
        return bundle;
    }
}
