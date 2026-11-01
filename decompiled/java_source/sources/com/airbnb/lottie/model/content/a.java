package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.h;
import java.util.List;
import m4.i;
import q4.b;
import q4.d;
import q4.f;
import r4.c;

/* JADX INFO: loaded from: classes2.dex */
public class a implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f17820a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final GradientType f17821b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final q4.c f17822c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d f17823d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final f f17824e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final f f17825f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b f17826g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ShapeStroke.LineCapType f17827h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final ShapeStroke.LineJoinType f17828i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final float f17829j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final List f17830k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final b f17831l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final boolean f17832m;

    public a(String str, GradientType gradientType, q4.c cVar, d dVar, f fVar, f fVar2, b bVar, ShapeStroke.LineCapType lineCapType, ShapeStroke.LineJoinType lineJoinType, float f11, List list, b bVar2, boolean z10) {
        this.f17820a = str;
        this.f17821b = gradientType;
        this.f17822c = cVar;
        this.f17823d = dVar;
        this.f17824e = fVar;
        this.f17825f = fVar2;
        this.f17826g = bVar;
        this.f17827h = lineCapType;
        this.f17828i = lineJoinType;
        this.f17829j = f11;
        this.f17830k = list;
        this.f17831l = bVar2;
        this.f17832m = z10;
    }

    @Override // r4.c
    public m4.c a(LottieDrawable lottieDrawable, h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return new i(lottieDrawable, aVar, this);
    }

    public ShapeStroke.LineCapType b() {
        return this.f17827h;
    }

    public b c() {
        return this.f17831l;
    }

    public f d() {
        return this.f17825f;
    }

    public q4.c e() {
        return this.f17822c;
    }

    public GradientType f() {
        return this.f17821b;
    }

    public ShapeStroke.LineJoinType g() {
        return this.f17828i;
    }

    public List h() {
        return this.f17830k;
    }

    public float i() {
        return this.f17829j;
    }

    public String j() {
        return this.f17820a;
    }

    public d k() {
        return this.f17823d;
    }

    public f l() {
        return this.f17824e;
    }

    public b m() {
        return this.f17826g;
    }

    public boolean n() {
        return this.f17832m;
    }
}
