package v4;

import androidx.core.os.s;

/* JADX INFO: loaded from: classes2.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String[] f77028a = new String[5];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long[] f77029b = new long[5];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f77030c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f77031d = 0;

    public void a(String str) {
        int i11 = this.f77030c;
        if (i11 == 5) {
            this.f77031d++;
            return;
        }
        this.f77028a[i11] = str;
        this.f77029b[i11] = System.nanoTime();
        s.a(str);
        this.f77030c++;
    }

    public float b(String str) {
        int i11 = this.f77031d;
        if (i11 > 0) {
            this.f77031d = i11 - 1;
            return 0.0f;
        }
        int i12 = this.f77030c - 1;
        this.f77030c = i12;
        if (i12 == -1) {
            throw new IllegalStateException("Can't end trace section. There are none.");
        }
        if (str.equals(this.f77028a[i12])) {
            s.b();
            return (System.nanoTime() - this.f77029b[this.f77030c]) / 1000000.0f;
        }
        throw new IllegalStateException("Unbalanced trace call " + str + ". Expected " + this.f77028a[this.f77030c] + ".");
    }
}
