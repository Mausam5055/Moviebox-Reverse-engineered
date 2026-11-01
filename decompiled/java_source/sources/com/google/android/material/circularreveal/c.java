package com.google.android.material.circularreveal;

import android.animation.TypeEvaluator;
import android.graphics.drawable.Drawable;
import android.util.Property;

/* JADX INFO: loaded from: classes4.dex */
public interface c extends com.google.android.material.circularreveal.b.a {

    public static class b implements TypeEvaluator {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final TypeEvaluator f28752b = new b();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final e f28753a = new e();

        @Override // android.animation.TypeEvaluator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public e evaluate(float f11, e eVar, e eVar2) {
            this.f28753a.b(va.a.d(eVar.f28756a, eVar2.f28756a, f11), va.a.d(eVar.f28757b, eVar2.f28757b, f11), va.a.d(eVar.f28758c, eVar2.f28758c, f11));
            return this.f28753a;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.circularreveal.c$c, reason: collision with other inner class name */
    public static class C0395c extends Property {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Property f28754a = new C0395c("circularReveal");

        private C0395c(String str) {
            super(e.class, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public e get(c cVar) {
            return cVar.getRevealInfo();
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(c cVar, e eVar) {
            cVar.setRevealInfo(eVar);
        }
    }

    public static class d extends Property {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Property f28755a = new d("circularRevealScrimColor");

        private d(String str) {
            super(Integer.class, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer get(c cVar) {
            return Integer.valueOf(cVar.getCircularRevealScrimColor());
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(c cVar, Integer num) {
            cVar.setCircularRevealScrimColor(num.intValue());
        }
    }

    public static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f28756a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f28757b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f28758c;

        private e() {
        }

        public e(float f11, float f12, float f13) {
            this.f28756a = f11;
            this.f28757b = f12;
            this.f28758c = f13;
        }

        public e(e eVar) {
            this(eVar.f28756a, eVar.f28757b, eVar.f28758c);
        }

        public boolean a() {
            return this.f28758c == Float.MAX_VALUE;
        }

        public void b(float f11, float f12, float f13) {
            this.f28756a = f11;
            this.f28757b = f12;
            this.f28758c = f13;
        }

        public void c(e eVar) {
            b(eVar.f28756a, eVar.f28757b, eVar.f28758c);
        }
    }

    void buildCircularRevealCache();

    void destroyCircularRevealCache();

    int getCircularRevealScrimColor();

    e getRevealInfo();

    void setCircularRevealOverlayDrawable(Drawable drawable);

    void setCircularRevealScrimColor(int i11);

    void setRevealInfo(e eVar);
}
