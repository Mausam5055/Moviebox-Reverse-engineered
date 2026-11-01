package androidx.media3.common;

import androidx.media3.common.util.a1;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class m {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final m f10098e = new b(0).e();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f10099f = a1.C0(0);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f10100g = a1.C0(1);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f10101h = a1.C0(2);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f10102i = a1.C0(3);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f10103a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f10104b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f10105c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f10106d;

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f10107a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f10108b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f10109c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f10110d;

        public b(int i11) {
            this.f10107a = i11;
        }

        public m e() {
            androidx.media3.common.util.a.a(this.f10108b <= this.f10109c);
            return new m(this);
        }

        public b f(int i11) {
            this.f10109c = i11;
            return this;
        }

        public b g(int i11) {
            this.f10108b = i11;
            return this;
        }
    }

    private m(b bVar) {
        this.f10103a = bVar.f10107a;
        this.f10104b = bVar.f10108b;
        this.f10105c = bVar.f10109c;
        this.f10106d = bVar.f10110d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return this.f10103a == mVar.f10103a && this.f10104b == mVar.f10104b && this.f10105c == mVar.f10105c && Objects.equals(this.f10106d, mVar.f10106d);
    }

    public int hashCode() {
        int i11 = (((((527 + this.f10103a) * 31) + this.f10104b) * 31) + this.f10105c) * 31;
        String str = this.f10106d;
        return i11 + (str == null ? 0 : str.hashCode());
    }
}
