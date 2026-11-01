package com.google.zxing.oned.rss.expanded.decoders;

/* JADX INFO: loaded from: classes4.dex */
final class CurrentParsingState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f32924a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private State f32925b = State.NUMERIC;

    private enum State {
        NUMERIC,
        ALPHA,
        ISO_IEC_646
    }

    CurrentParsingState() {
    }

    int a() {
        return this.f32924a;
    }

    void b(int i11) {
        this.f32924a += i11;
    }

    boolean c() {
        return this.f32925b == State.ALPHA;
    }

    boolean d() {
        return this.f32925b == State.ISO_IEC_646;
    }

    void e() {
        this.f32925b = State.ALPHA;
    }

    void f() {
        this.f32925b = State.ISO_IEC_646;
    }

    void g() {
        this.f32925b = State.NUMERIC;
    }

    void h(int i11) {
        this.f32924a = i11;
    }
}
