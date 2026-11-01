package z2;

import com.google.android.exoplayer2.metadata.id3.MlltFrame;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class l extends i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f79197b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f79198c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f79199d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int[] f79200e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f79201f;

    public l(int i11, int i12, int i13, int[] iArr, int[] iArr2) {
        super(MlltFrame.ID);
        this.f79197b = i11;
        this.f79198c = i12;
        this.f79199d = i13;
        this.f79200e = iArr;
        this.f79201f = iArr2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || l.class != obj.getClass()) {
            return false;
        }
        l lVar = (l) obj;
        return this.f79197b == lVar.f79197b && this.f79198c == lVar.f79198c && this.f79199d == lVar.f79199d && Arrays.equals(this.f79200e, lVar.f79200e) && Arrays.equals(this.f79201f, lVar.f79201f);
    }

    public int hashCode() {
        return ((((((((527 + this.f79197b) * 31) + this.f79198c) * 31) + this.f79199d) * 31) + Arrays.hashCode(this.f79200e)) * 31) + Arrays.hashCode(this.f79201f);
    }
}
