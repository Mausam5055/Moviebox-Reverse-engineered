package com.google.android.exoplayer2.audio;

import android.media.AudioAttributes;
import android.os.Bundle;
import com.google.android.exoplayer2.util.p0;

/* JADX INFO: loaded from: classes3.dex */
public final class e implements com.google.android.exoplayer2.k {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final e f24634g = new C0365e().a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final com.google.android.exoplayer2.k.a f24635h = new com.google.android.exoplayer2.k.a() { // from class: com.google.android.exoplayer2.audio.d
        @Override // com.google.android.exoplayer2.k.a
        public final com.google.android.exoplayer2.k a(Bundle bundle) {
            return e.d(bundle);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f24636a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f24637b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f24638c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f24639d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f24640e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private d f24641f;

    private static final class b {
        public static void a(AudioAttributes.Builder builder, int i11) {
            builder.setAllowedCapturePolicy(i11);
        }
    }

    private static final class c {
        public static void a(AudioAttributes.Builder builder, int i11) {
            builder.setSpatializationBehavior(i11);
        }
    }

    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AudioAttributes f24642a;

        private d(e eVar) {
            AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(eVar.f24636a).setFlags(eVar.f24637b).setUsage(eVar.f24638c);
            int i11 = p0.f27626a;
            if (i11 >= 29) {
                b.a(usage, eVar.f24639d);
            }
            if (i11 >= 32) {
                c.a(usage, eVar.f24640e);
            }
            this.f24642a = usage.build();
        }
    }

    /* JADX INFO: renamed from: com.google.android.exoplayer2.audio.e$e, reason: collision with other inner class name */
    public static final class C0365e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f24643a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f24644b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f24645c = 1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f24646d = 1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f24647e = 0;

        public e a() {
            return new e(this.f24643a, this.f24644b, this.f24645c, this.f24646d, this.f24647e);
        }

        public C0365e b(int i11) {
            this.f24646d = i11;
            return this;
        }

        public C0365e c(int i11) {
            this.f24643a = i11;
            return this;
        }

        public C0365e d(int i11) {
            this.f24644b = i11;
            return this;
        }

        public C0365e e(int i11) {
            this.f24647e = i11;
            return this;
        }

        public C0365e f(int i11) {
            this.f24645c = i11;
            return this;
        }
    }

    private e(int i11, int i12, int i13, int i14, int i15) {
        this.f24636a = i11;
        this.f24637b = i12;
        this.f24638c = i13;
        this.f24639d = i14;
        this.f24640e = i15;
    }

    private static String c(int i11) {
        return Integer.toString(i11, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ e d(Bundle bundle) {
        C0365e c0365e = new C0365e();
        if (bundle.containsKey(c(0))) {
            c0365e.c(bundle.getInt(c(0)));
        }
        if (bundle.containsKey(c(1))) {
            c0365e.d(bundle.getInt(c(1)));
        }
        if (bundle.containsKey(c(2))) {
            c0365e.f(bundle.getInt(c(2)));
        }
        if (bundle.containsKey(c(3))) {
            c0365e.b(bundle.getInt(c(3)));
        }
        if (bundle.containsKey(c(4))) {
            c0365e.e(bundle.getInt(c(4)));
        }
        return c0365e.a();
    }

    public d b() {
        if (this.f24641f == null) {
            this.f24641f = new d();
        }
        return this.f24641f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        return this.f24636a == eVar.f24636a && this.f24637b == eVar.f24637b && this.f24638c == eVar.f24638c && this.f24639d == eVar.f24639d && this.f24640e == eVar.f24640e;
    }

    public int hashCode() {
        return ((((((((527 + this.f24636a) * 31) + this.f24637b) * 31) + this.f24638c) * 31) + this.f24639d) * 31) + this.f24640e;
    }

    @Override // com.google.android.exoplayer2.k
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(c(0), this.f24636a);
        bundle.putInt(c(1), this.f24637b);
        bundle.putInt(c(2), this.f24638c);
        bundle.putInt(c(3), this.f24639d);
        bundle.putInt(c(4), this.f24640e);
        return bundle;
    }
}
