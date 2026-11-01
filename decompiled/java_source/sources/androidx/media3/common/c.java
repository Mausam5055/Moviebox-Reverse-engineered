package androidx.media3.common;

import android.media.AudioAttributes;
import androidx.media3.common.util.a1;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final c f9907g = new e().a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f9908h = a1.C0(0);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f9909i = a1.C0(1);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f9910j = a1.C0(2);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f9911k = a1.C0(3);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String f9912l = a1.C0(4);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f9913a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f9914b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f9915c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f9916d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f9917e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private d f9918f;

    private static final class b {
        public static void a(AudioAttributes.Builder builder, int i11) {
            builder.setAllowedCapturePolicy(i11);
        }
    }

    /* JADX INFO: renamed from: androidx.media3.common.c$c, reason: collision with other inner class name */
    private static final class C0088c {
        public static void a(AudioAttributes.Builder builder, int i11) {
            builder.setSpatializationBehavior(i11);
        }
    }

    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AudioAttributes f9919a;

        private d(c cVar) {
            AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(cVar.f9913a).setFlags(cVar.f9914b).setUsage(cVar.f9915c);
            int i11 = a1.f10350a;
            if (i11 >= 29) {
                b.a(usage, cVar.f9916d);
            }
            if (i11 >= 32) {
                C0088c.a(usage, cVar.f9917e);
            }
            this.f9919a = usage.build();
        }
    }

    public static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f9920a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f9921b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f9922c = 1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f9923d = 1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f9924e = 0;

        public c a() {
            return new c(this.f9920a, this.f9921b, this.f9922c, this.f9923d, this.f9924e);
        }
    }

    private c(int i11, int i12, int i13, int i14, int i15) {
        this.f9913a = i11;
        this.f9914b = i12;
        this.f9915c = i13;
        this.f9916d = i14;
        this.f9917e = i15;
    }

    public d a() {
        if (this.f9918f == null) {
            this.f9918f = new d();
        }
        return this.f9918f;
    }

    public int b() {
        if ((this.f9914b & 1) == 1) {
            return 1;
        }
        switch (this.f9915c) {
            case 2:
                return 0;
            case 3:
                return 8;
            case 4:
                return 4;
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
                return 5;
            case 6:
                return 2;
            case 11:
                return 10;
            case 12:
            default:
                return 3;
            case 13:
                return 1;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f9913a == cVar.f9913a && this.f9914b == cVar.f9914b && this.f9915c == cVar.f9915c && this.f9916d == cVar.f9916d && this.f9917e == cVar.f9917e;
    }

    public int hashCode() {
        return ((((((((527 + this.f9913a) * 31) + this.f9914b) * 31) + this.f9915c) * 31) + this.f9916d) * 31) + this.f9917e;
    }
}
