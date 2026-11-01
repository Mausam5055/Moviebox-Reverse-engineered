package com.mbridge.msdk.tracker.network.toolbox;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected static final Comparator<byte[]> f38650e = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<byte[]> f38651a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<byte[]> f38652b = new ArrayList(64);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f38653c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f38654d;

    class a implements Comparator<byte[]> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(byte[] bArr, byte[] bArr2) {
            return bArr.length - bArr2.length;
        }
    }

    public c(int i11) {
        this.f38654d = i11;
    }

    private synchronized void a() {
        while (this.f38653c > this.f38654d) {
            byte[] bArrRemove = this.f38651a.remove(0);
            this.f38652b.remove(bArrRemove);
            this.f38653c -= bArrRemove.length;
        }
    }

    public synchronized void a(byte[] bArr) {
        if (bArr != null) {
            if (bArr.length <= this.f38654d) {
                this.f38651a.add(bArr);
                int iBinarySearch = Collections.binarySearch(this.f38652b, bArr, f38650e);
                if (iBinarySearch < 0) {
                    iBinarySearch = (-iBinarySearch) - 1;
                }
                this.f38652b.add(iBinarySearch, bArr);
                this.f38653c += bArr.length;
                a();
            }
        }
    }

    public synchronized byte[] a(int i11) {
        for (int i12 = 0; i12 < this.f38652b.size(); i12++) {
            byte[] bArr = this.f38652b.get(i12);
            if (bArr.length >= i11) {
                this.f38653c -= bArr.length;
                this.f38652b.remove(i12);
                this.f38651a.remove(bArr);
                return bArr;
            }
        }
        return new byte[i11];
    }
}
