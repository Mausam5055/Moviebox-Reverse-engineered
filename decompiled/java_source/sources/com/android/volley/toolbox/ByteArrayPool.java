package com.android.volley.toolbox;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ByteArrayPool {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected static final Comparator f19269e = new Comparator<byte[]>() { // from class: com.android.volley.toolbox.ByteArrayPool.1
        @Override // java.util.Comparator
        public int compare(byte[] bArr, byte[] bArr2) {
            return bArr.length - bArr2.length;
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f19270a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f19271b = new ArrayList(64);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f19272c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f19273d;

    public ByteArrayPool(int i11) {
        this.f19273d = i11;
    }

    private synchronized void c() {
        while (this.f19272c > this.f19273d) {
            byte[] bArr = (byte[]) this.f19270a.remove(0);
            this.f19271b.remove(bArr);
            this.f19272c -= bArr.length;
        }
    }

    public synchronized byte[] a(int i11) {
        for (int i12 = 0; i12 < this.f19271b.size(); i12++) {
            byte[] bArr = (byte[]) this.f19271b.get(i12);
            if (bArr.length >= i11) {
                this.f19272c -= bArr.length;
                this.f19271b.remove(i12);
                this.f19270a.remove(bArr);
                return bArr;
            }
        }
        return new byte[i11];
    }

    public synchronized void b(byte[] bArr) {
        if (bArr != null) {
            if (bArr.length <= this.f19273d) {
                this.f19270a.add(bArr);
                int iBinarySearch = Collections.binarySearch(this.f19271b, bArr, f19269e);
                if (iBinarySearch < 0) {
                    iBinarySearch = (-iBinarySearch) - 1;
                }
                this.f19271b.add(iBinarySearch, bArr);
                this.f19272c += bArr.length;
                c();
            }
        }
    }
}
