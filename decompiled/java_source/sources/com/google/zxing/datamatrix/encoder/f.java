package com.google.zxing.datamatrix.encoder;

import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes4.dex */
final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f32892a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SymbolShapeHint f32893b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final StringBuilder f32894c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f32895d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f32896e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private nd.d f32897f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f32898g;

    f(String str) {
        byte[] bytes = str.getBytes(StandardCharsets.ISO_8859_1);
        StringBuilder sb2 = new StringBuilder(bytes.length);
        int length = bytes.length;
        for (int i11 = 0; i11 < length; i11++) {
            char c11 = (char) (bytes[i11] & 255);
            if (c11 == '?' && str.charAt(i11) != '?') {
                throw new IllegalArgumentException("Message contains characters outside ISO-8859-1 encoding.");
            }
            sb2.append(c11);
        }
        this.f32892a = sb2.toString();
        this.f32893b = SymbolShapeHint.FORCE_NONE;
        this.f32894c = new StringBuilder(str.length());
        this.f32896e = -1;
    }

    private int h() {
        return this.f32892a.length() - this.f32898g;
    }

    public int a() {
        return this.f32894c.length();
    }

    public StringBuilder b() {
        return this.f32894c;
    }

    public char c() {
        return this.f32892a.charAt(this.f32895d);
    }

    public String d() {
        return this.f32892a;
    }

    public int e() {
        return this.f32896e;
    }

    public int f() {
        return h() - this.f32895d;
    }

    public nd.d g() {
        return this.f32897f;
    }

    public boolean i() {
        return this.f32895d < h();
    }

    public void j() {
        this.f32896e = -1;
    }

    public void k() {
        this.f32897f = null;
    }

    public void l(com.google.zxing.c cVar, com.google.zxing.c cVar2) {
    }

    public void m(int i11) {
        this.f32898g = i11;
    }

    public void n(SymbolShapeHint symbolShapeHint) {
        this.f32893b = symbolShapeHint;
    }

    public void o(int i11) {
        this.f32896e = i11;
    }

    public void p() {
        q(a());
    }

    public void q(int i11) {
        nd.d dVar = this.f32897f;
        if (dVar == null || i11 > dVar.a()) {
            this.f32897f = nd.d.l(i11, this.f32893b, null, null, true);
        }
    }

    public void r(char c11) {
        this.f32894c.append(c11);
    }

    public void s(String str) {
        this.f32894c.append(str);
    }
}
