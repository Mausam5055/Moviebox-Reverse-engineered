package androidx.media;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class AudioAttributesImplBase implements AudioAttributesImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f9706a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f9707b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9708c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f9709d = -1;

    public int a() {
        return this.f9707b;
    }

    public int b() {
        int i11 = this.f9708c;
        int iC = c();
        if (iC == 6) {
            i11 |= 4;
        } else if (iC == 7) {
            i11 |= 1;
        }
        return i11 & 273;
    }

    public int c() {
        int i11 = this.f9709d;
        return i11 != -1 ? i11 : AudioAttributesCompat.a(false, this.f9708c, this.f9706a);
    }

    public int d() {
        return this.f9706a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesImplBase)) {
            return false;
        }
        AudioAttributesImplBase audioAttributesImplBase = (AudioAttributesImplBase) obj;
        return this.f9707b == audioAttributesImplBase.a() && this.f9708c == audioAttributesImplBase.b() && this.f9706a == audioAttributesImplBase.d() && this.f9709d == audioAttributesImplBase.f9709d;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f9707b), Integer.valueOf(this.f9708c), Integer.valueOf(this.f9706a), Integer.valueOf(this.f9709d)});
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("AudioAttributesCompat:");
        if (this.f9709d != -1) {
            sb2.append(" stream=");
            sb2.append(this.f9709d);
            sb2.append(" derived");
        }
        sb2.append(" usage=");
        sb2.append(AudioAttributesCompat.b(this.f9706a));
        sb2.append(" content=");
        sb2.append(this.f9707b);
        sb2.append(" flags=0x");
        sb2.append(Integer.toHexString(this.f9708c).toUpperCase());
        return sb2.toString();
    }
}
