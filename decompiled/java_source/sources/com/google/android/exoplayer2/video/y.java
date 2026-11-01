package com.google.android.exoplayer2.video;

import android.os.Bundle;
import com.vungle.ads.internal.protos.Sdk$SDKError;

/* JADX INFO: loaded from: classes3.dex */
public final class y implements com.google.android.exoplayer2.k {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final y f28007e = new y(0, 0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final com.google.android.exoplayer2.k.a f28008f = new com.google.android.exoplayer2.k.a() { // from class: com.google.android.exoplayer2.video.x
        @Override // com.google.android.exoplayer2.k.a
        public final com.google.android.exoplayer2.k a(Bundle bundle) {
            return y.c(bundle);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f28009a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f28010b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f28011c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f28012d;

    public y(int i11, int i12) {
        this(i11, i12, 0, 1.0f);
    }

    public y(int i11, int i12, int i13, float f11) {
        this.f28009a = i11;
        this.f28010b = i12;
        this.f28011c = i13;
        this.f28012d = f11;
    }

    private static String b(int i11) {
        return Integer.toString(i11, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ y c(Bundle bundle) {
        return new y(bundle.getInt(b(0), 0), bundle.getInt(b(1), 0), bundle.getInt(b(2), 0), bundle.getFloat(b(3), 1.0f));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        return this.f28009a == yVar.f28009a && this.f28010b == yVar.f28010b && this.f28011c == yVar.f28011c && this.f28012d == yVar.f28012d;
    }

    public int hashCode() {
        return ((((((Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE + this.f28009a) * 31) + this.f28010b) * 31) + this.f28011c) * 31) + Float.floatToRawIntBits(this.f28012d);
    }

    @Override // com.google.android.exoplayer2.k
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(b(0), this.f28009a);
        bundle.putInt(b(1), this.f28010b);
        bundle.putInt(b(2), this.f28011c);
        bundle.putFloat(b(3), this.f28012d);
        return bundle;
    }
}
