package com.google.android.exoplayer2;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
final class t2 extends a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f26721f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f26722g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int[] f26723h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int[] f26724i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final k3[] f26725j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Object[] f26726k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final HashMap f26727l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t2(Collection collection, t9.t tVar) {
        super(false, tVar);
        int iT = 0;
        int size = collection.size();
        this.f26723h = new int[size];
        this.f26724i = new int[size];
        this.f26725j = new k3[size];
        this.f26726k = new Object[size];
        this.f26727l = new HashMap();
        Iterator it = collection.iterator();
        int iM = 0;
        int i11 = 0;
        while (it.hasNext()) {
            f2 f2Var = (f2) it.next();
            this.f26725j[i11] = f2Var.b();
            this.f26724i[i11] = iT;
            this.f26723h[i11] = iM;
            iT += this.f26725j[i11].t();
            iM += this.f26725j[i11].m();
            this.f26726k[i11] = f2Var.a();
            this.f26727l.put(this.f26726k[i11], Integer.valueOf(i11));
            i11++;
        }
        this.f26721f = iT;
        this.f26722g = iM;
    }

    @Override // com.google.android.exoplayer2.a
    protected int A(int i11) {
        return com.google.android.exoplayer2.util.p0.h(this.f26724i, i11 + 1, false, false);
    }

    @Override // com.google.android.exoplayer2.a
    protected Object D(int i11) {
        return this.f26726k[i11];
    }

    @Override // com.google.android.exoplayer2.a
    protected int F(int i11) {
        return this.f26723h[i11];
    }

    @Override // com.google.android.exoplayer2.a
    protected int G(int i11) {
        return this.f26724i[i11];
    }

    @Override // com.google.android.exoplayer2.a
    protected k3 J(int i11) {
        return this.f26725j[i11];
    }

    List K() {
        return Arrays.asList(this.f26725j);
    }

    @Override // com.google.android.exoplayer2.k3
    public int m() {
        return this.f26722g;
    }

    @Override // com.google.android.exoplayer2.k3
    public int t() {
        return this.f26721f;
    }

    @Override // com.google.android.exoplayer2.a
    protected int y(Object obj) {
        Integer num = (Integer) this.f26727l.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // com.google.android.exoplayer2.a
    protected int z(int i11) {
        return com.google.android.exoplayer2.util.p0.h(this.f26723h, i11 + 1, false, false);
    }
}
