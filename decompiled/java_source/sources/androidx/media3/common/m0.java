package androidx.media3.common;

import androidx.media3.common.util.a1;
import com.vungle.ads.internal.protos.Sdk$SDKError;

/* JADX INFO: loaded from: classes2.dex */
public final class m0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final m0 f10111e = new m0(0, 0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f10112f = a1.C0(0);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f10113g = a1.C0(1);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f10114h = a1.C0(3);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f10115a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f10116b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f10117c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f10118d;

    public m0(int i11, int i12) {
        this(i11, i12, 1.0f);
    }

    public m0(int i11, int i12, float f11) {
        this.f10115a = i11;
        this.f10116b = i12;
        this.f10117c = 0;
        this.f10118d = f11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m0)) {
            return false;
        }
        m0 m0Var = (m0) obj;
        return this.f10115a == m0Var.f10115a && this.f10116b == m0Var.f10116b && this.f10118d == m0Var.f10118d;
    }

    public int hashCode() {
        return ((((Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE + this.f10115a) * 31) + this.f10116b) * 31) + Float.floatToRawIntBits(this.f10118d);
    }
}
