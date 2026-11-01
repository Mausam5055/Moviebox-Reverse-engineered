package com.google.android.exoplayer2;

import android.os.Bundle;

/* JADX INFO: loaded from: classes3.dex */
public final class r1 extends v2 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final k.a f25619d = new k.a() { // from class: com.google.android.exoplayer2.q1
        @Override // com.google.android.exoplayer2.k.a
        public final k a(Bundle bundle) {
            return r1.e(bundle);
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f25620b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f25621c;

    public r1() {
        this.f25620b = false;
        this.f25621c = false;
    }

    public r1(boolean z10) {
        this.f25620b = true;
        this.f25621c = z10;
    }

    private static String c(int i11) {
        return Integer.toString(i11, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static r1 e(Bundle bundle) {
        com.google.android.exoplayer2.util.a.a(bundle.getInt(c(0), -1) == 0);
        return bundle.getBoolean(c(1), false) ? new r1(bundle.getBoolean(c(2), false)) : new r1();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof r1)) {
            return false;
        }
        r1 r1Var = (r1) obj;
        return this.f25621c == r1Var.f25621c && this.f25620b == r1Var.f25620b;
    }

    public int hashCode() {
        return com.google.common.base.j.b(Boolean.valueOf(this.f25620b), Boolean.valueOf(this.f25621c));
    }

    @Override // com.google.android.exoplayer2.k
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(c(0), 0);
        bundle.putBoolean(c(1), this.f25620b);
        bundle.putBoolean(c(2), this.f25621c);
        return bundle;
    }
}
