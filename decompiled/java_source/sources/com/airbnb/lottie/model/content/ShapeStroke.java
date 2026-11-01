package com.airbnb.lottie.model.content;

import android.graphics.Paint;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.h;
import java.util.List;
import m4.t;
import q4.b;
import q4.d;
import r4.c;

/* JADX INFO: loaded from: classes.dex */
public class ShapeStroke implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f17802a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f17803b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f17804c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final q4.a f17805d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final d f17806e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final b f17807f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final LineCapType f17808g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final LineJoinType f17809h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final float f17810i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final boolean f17811j;

    public enum LineCapType {
        BUTT,
        ROUND,
        UNKNOWN;

        public Paint.Cap toPaintCap() {
            int i11 = a.f17812a[ordinal()];
            if (i11 != 1) {
                return i11 != 2 ? Paint.Cap.SQUARE : Paint.Cap.ROUND;
            }
            return Paint.Cap.BUTT;
        }
    }

    public enum LineJoinType {
        MITER,
        ROUND,
        BEVEL;

        public Paint.Join toPaintJoin() {
            int i11 = a.f17813b[ordinal()];
            if (i11 == 1) {
                return Paint.Join.BEVEL;
            }
            if (i11 == 2) {
                return Paint.Join.MITER;
            }
            if (i11 != 3) {
                return null;
            }
            return Paint.Join.ROUND;
        }
    }

    /* JADX INFO: loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f17812a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final /* synthetic */ int[] f17813b;

        static {
            int[] iArr = new int[LineJoinType.values().length];
            f17813b = iArr;
            try {
                iArr[LineJoinType.BEVEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f17813b[LineJoinType.MITER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f17813b[LineJoinType.ROUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[LineCapType.values().length];
            f17812a = iArr2;
            try {
                iArr2[LineCapType.BUTT.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f17812a[LineCapType.ROUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f17812a[LineCapType.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public ShapeStroke(String str, b bVar, List list, q4.a aVar, d dVar, b bVar2, LineCapType lineCapType, LineJoinType lineJoinType, float f11, boolean z10) {
        this.f17802a = str;
        this.f17803b = bVar;
        this.f17804c = list;
        this.f17805d = aVar;
        this.f17806e = dVar;
        this.f17807f = bVar2;
        this.f17808g = lineCapType;
        this.f17809h = lineJoinType;
        this.f17810i = f11;
        this.f17811j = z10;
    }

    @Override // r4.c
    public m4.c a(LottieDrawable lottieDrawable, h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return new t(lottieDrawable, aVar, this);
    }

    public LineCapType b() {
        return this.f17808g;
    }

    public q4.a c() {
        return this.f17805d;
    }

    public b d() {
        return this.f17803b;
    }

    public LineJoinType e() {
        return this.f17809h;
    }

    public List f() {
        return this.f17804c;
    }

    public float g() {
        return this.f17810i;
    }

    public String h() {
        return this.f17802a;
    }

    public d i() {
        return this.f17806e;
    }

    public b j() {
        return this.f17807f;
    }

    public boolean k() {
        return this.f17811j;
    }
}
