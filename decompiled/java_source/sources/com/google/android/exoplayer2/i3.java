package com.google.android.exoplayer2;

import android.os.Bundle;

/* JADX INFO: loaded from: classes3.dex */
public final class i3 extends v2 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final k.a f25139d = new k.a() { // from class: com.google.android.exoplayer2.h3
        @Override // com.google.android.exoplayer2.k.a
        public final k a(Bundle bundle) {
            return i3.e(bundle);
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f25140b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f25141c;

    public i3() {
        this.f25140b = false;
        this.f25141c = false;
    }

    public i3(boolean z10) {
        this.f25140b = true;
        this.f25141c = z10;
    }

    private static String c(int i11) {
        return Integer.toString(i11, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static i3 e(Bundle bundle) {
        com.google.android.exoplayer2.util.a.a(bundle.getInt(c(0), -1) == 3);
        return bundle.getBoolean(c(1), false) ? new i3(bundle.getBoolean(c(2), false)) : new i3();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof i3)) {
            return false;
        }
        i3 i3Var = (i3) obj;
        return this.f25141c == i3Var.f25141c && this.f25140b == i3Var.f25140b;
    }

    public int hashCode() {
        return com.google.common.base.j.b(Boolean.valueOf(this.f25140b), Boolean.valueOf(this.f25141c));
    }

    @Override // com.google.android.exoplayer2.k
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(c(0), 3);
        bundle.putBoolean(c(1), this.f25140b);
        bundle.putBoolean(c(2), this.f25141c);
        return bundle;
    }
}
