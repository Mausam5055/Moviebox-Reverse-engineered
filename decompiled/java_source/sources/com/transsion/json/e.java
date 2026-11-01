package com.transsion.json;

import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class e implements Iterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Iterator[] f46053a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f46054b = 0;

    public e(Set... setArr) {
        this.f46053a = new Iterator[setArr.length];
        for (int i11 = 0; i11 < setArr.length; i11++) {
            this.f46053a[i11] = setArr[i11].iterator();
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.f46053a[this.f46054b].hasNext()) {
            return true;
        }
        int i11 = this.f46054b + 1;
        this.f46054b = i11;
        Iterator[] itArr = this.f46053a;
        return i11 < itArr.length && itArr[i11].hasNext();
    }

    @Override // java.util.Iterator
    public Object next() {
        return this.f46053a[this.f46054b].next();
    }

    @Override // java.util.Iterator
    public void remove() {
        this.f46053a[this.f46054b].remove();
    }
}
