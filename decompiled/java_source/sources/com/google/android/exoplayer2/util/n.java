package com.google.android.exoplayer2.util;

import android.opengl.GLES20;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f27610a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a[] f27611b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b[] f27612c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f27613d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map f27614e;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f27615a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f27616b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f27617c;

        private a(String str, int i11, int i12) {
            this.f27615a = str;
            this.f27616b = i11;
            this.f27617c = i12;
        }

        public static a a(int i11, int i12) {
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(i11, 35722, iArr, 0);
            int i13 = iArr[0];
            byte[] bArr = new byte[i13];
            GLES20.glGetActiveAttrib(i11, i12, i13, new int[1], 0, new int[1], 0, new int[1], 0, bArr, 0);
            String str = new String(bArr, 0, n.h(bArr));
            return new a(str, i12, n.f(i11, str));
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f27618a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f27619b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f27620c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final float[] f27621d = new float[16];

        private b(String str, int i11, int i12) {
            this.f27618a = str;
            this.f27619b = i11;
            this.f27620c = i12;
        }

        public static b a(int i11, int i12) {
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(i11, 35719, iArr, 0);
            int[] iArr2 = new int[1];
            int i13 = iArr[0];
            byte[] bArr = new byte[i13];
            GLES20.glGetActiveUniform(i11, i12, i13, new int[1], 0, new int[1], 0, iArr2, 0, bArr, 0);
            String str = new String(bArr, 0, n.h(bArr));
            return new b(str, n.i(i11, str), iArr2[0]);
        }
    }

    public n(String str, String str2) {
        int iGlCreateProgram = GLES20.glCreateProgram();
        this.f27610a = iGlCreateProgram;
        GlUtil.c();
        d(iGlCreateProgram, 35633, str);
        d(iGlCreateProgram, 35632, str2);
        GLES20.glLinkProgram(iGlCreateProgram);
        int[] iArr = {0};
        GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr, 0);
        if (iArr[0] != 1) {
            GlUtil.j("Unable to link shader program: \n" + GLES20.glGetProgramInfoLog(iGlCreateProgram));
        }
        GLES20.glUseProgram(iGlCreateProgram);
        this.f27613d = new HashMap();
        int[] iArr2 = new int[1];
        GLES20.glGetProgramiv(iGlCreateProgram, 35721, iArr2, 0);
        this.f27611b = new a[iArr2[0]];
        for (int i11 = 0; i11 < iArr2[0]; i11++) {
            a aVarA = a.a(this.f27610a, i11);
            this.f27611b[i11] = aVarA;
            this.f27613d.put(aVarA.f27615a, aVarA);
        }
        this.f27614e = new HashMap();
        int[] iArr3 = new int[1];
        GLES20.glGetProgramiv(this.f27610a, 35718, iArr3, 0);
        this.f27612c = new b[iArr3[0]];
        for (int i12 = 0; i12 < iArr3[0]; i12++) {
            b bVarA = b.a(this.f27610a, i12);
            this.f27612c[i12] = bVarA;
            this.f27614e.put(bVarA.f27618a, bVarA);
        }
        GlUtil.c();
    }

    private static void d(int i11, int i12, String str) {
        int iGlCreateShader = GLES20.glCreateShader(i12);
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        int[] iArr = {0};
        GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
        if (iArr[0] != 1) {
            GlUtil.j(GLES20.glGetShaderInfoLog(iGlCreateShader) + ", source: " + str);
        }
        GLES20.glAttachShader(i11, iGlCreateShader);
        GLES20.glDeleteShader(iGlCreateShader);
        GlUtil.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int f(int i11, String str) {
        return GLES20.glGetAttribLocation(i11, str);
    }

    private int g(String str) {
        return f(this.f27610a, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int h(byte[] bArr) {
        for (int i11 = 0; i11 < bArr.length; i11++) {
            if (bArr[i11] == 0) {
                return i11;
            }
        }
        return bArr.length;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int i(int i11, String str) {
        return GLES20.glGetUniformLocation(i11, str);
    }

    public int e(String str) {
        int iG = g(str);
        GLES20.glEnableVertexAttribArray(iG);
        GlUtil.c();
        return iG;
    }

    public int j(String str) {
        return i(this.f27610a, str);
    }
}
