package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.h;
import m4.n;
import q4.b;
import q4.o;
import r4.c;

/* JADX INFO: loaded from: classes2.dex */
public class PolystarShape implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f17791a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Type f17792b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f17793c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final o f17794d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final b f17795e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final b f17796f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b f17797g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final b f17798h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final b f17799i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final boolean f17800j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final boolean f17801k;

    public enum Type {
        STAR(1),
        POLYGON(2);

        private final int value;

        Type(int i11) {
            this.value = i11;
        }

        public static Type forValue(int i11) {
            for (Type type : values()) {
                if (type.value == i11) {
                    return type;
                }
            }
            return null;
        }
    }

    public PolystarShape(String str, Type type, b bVar, o oVar, b bVar2, b bVar3, b bVar4, b bVar5, b bVar6, boolean z10, boolean z11) {
        this.f17791a = str;
        this.f17792b = type;
        this.f17793c = bVar;
        this.f17794d = oVar;
        this.f17795e = bVar2;
        this.f17796f = bVar3;
        this.f17797g = bVar4;
        this.f17798h = bVar5;
        this.f17799i = bVar6;
        this.f17800j = z10;
        this.f17801k = z11;
    }

    @Override // r4.c
    public m4.c a(LottieDrawable lottieDrawable, h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return new n(lottieDrawable, aVar, this);
    }

    public b b() {
        return this.f17796f;
    }

    public b c() {
        return this.f17798h;
    }

    public String d() {
        return this.f17791a;
    }

    public b e() {
        return this.f17797g;
    }

    public b f() {
        return this.f17799i;
    }

    public b g() {
        return this.f17793c;
    }

    public o h() {
        return this.f17794d;
    }

    public b i() {
        return this.f17795e;
    }

    public Type j() {
        return this.f17792b;
    }

    public boolean k() {
        return this.f17800j;
    }

    public boolean l() {
        return this.f17801k;
    }
}
