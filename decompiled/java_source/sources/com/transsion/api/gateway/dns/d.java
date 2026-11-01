package com.transsion.api.gateway.dns;

import java.math.BigInteger;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f42521a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f42522b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f42523c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f42524d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f42525e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f42526f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public BigInteger f42527g;

    public d(d dVar) {
        this.f42523c = 0;
        this.f42524d = 0;
        this.f42525e = false;
        char[] cArr = new char[16];
        Arrays.fill(cArr, 'f');
        this.f42526f = new String(cArr);
        this.f42527g = new BigInteger(this.f42526f, 16);
        this.f42522b = dVar.f42522b;
        this.f42521a = dVar.f42521a;
        this.f42523c = dVar.f42523c;
        this.f42524d = dVar.f42524d;
        this.f42525e = dVar.f42525e;
        this.f42527g = dVar.f42527g;
        this.f42526f = dVar.f42526f;
    }

    public d(String str, int i11) {
        this.f42523c = 0;
        this.f42524d = 0;
        this.f42525e = false;
        char[] cArr = new char[16];
        Arrays.fill(cArr, 'f');
        this.f42526f = new String(cArr);
        this.f42527g = new BigInteger(this.f42526f, 16);
        this.f42522b = str;
        this.f42521a = i11;
    }
}
