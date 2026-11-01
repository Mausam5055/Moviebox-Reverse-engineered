package androidx.datastore.preferences.protobuf;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
class x extends InputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Iterator f8921a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ByteBuffer f8922b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f8923c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f8924d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f8925e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f8926f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private byte[] f8927g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f8928h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f8929i;

    x(Iterable iterable) {
        this.f8921a = iterable.iterator();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            this.f8923c++;
        }
        this.f8924d = -1;
        if (d()) {
            return;
        }
        this.f8922b = w.f8919e;
        this.f8924d = 0;
        this.f8925e = 0;
        this.f8929i = 0L;
    }

    private boolean d() {
        this.f8924d++;
        if (!this.f8921a.hasNext()) {
            return false;
        }
        ByteBuffer byteBuffer = (ByteBuffer) this.f8921a.next();
        this.f8922b = byteBuffer;
        this.f8925e = byteBuffer.position();
        if (this.f8922b.hasArray()) {
            this.f8926f = true;
            this.f8927g = this.f8922b.array();
            this.f8928h = this.f8922b.arrayOffset();
        } else {
            this.f8926f = false;
            this.f8929i = k1.k(this.f8922b);
            this.f8927g = null;
        }
        return true;
    }

    private void h(int i11) {
        int i12 = this.f8925e + i11;
        this.f8925e = i12;
        if (i12 == this.f8922b.limit()) {
            d();
        }
    }

    @Override // java.io.InputStream
    public int read() {
        if (this.f8924d == this.f8923c) {
            return -1;
        }
        if (this.f8926f) {
            int i11 = this.f8927g[this.f8925e + this.f8928h] & 255;
            h(1);
            return i11;
        }
        int iW = k1.w(((long) this.f8925e) + this.f8929i) & 255;
        h(1);
        return iW;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i11, int i12) {
        if (this.f8924d == this.f8923c) {
            return -1;
        }
        int iLimit = this.f8922b.limit();
        int i13 = this.f8925e;
        int i14 = iLimit - i13;
        if (i12 > i14) {
            i12 = i14;
        }
        if (this.f8926f) {
            System.arraycopy(this.f8927g, i13 + this.f8928h, bArr, i11, i12);
            h(i12);
        } else {
            int iPosition = this.f8922b.position();
            y.c(this.f8922b, this.f8925e);
            this.f8922b.get(bArr, i11, i12);
            y.c(this.f8922b, iPosition);
            h(i12);
        }
        return i12;
    }
}
