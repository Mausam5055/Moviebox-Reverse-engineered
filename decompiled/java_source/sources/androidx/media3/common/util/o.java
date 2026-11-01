package androidx.media3.common.util;

import android.opengl.GLES20;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f10419a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a[] f10420b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b[] f10421c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f10422d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map f10423e;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f10424a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f10425b;

        private a(String str, int i11) {
            this.f10424a = str;
            this.f10425b = i11;
        }

        public static a a(int i11, int i12) {
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(i11, 35722, iArr, 0);
            int i13 = iArr[0];
            byte[] bArr = new byte[i13];
            GLES20.glGetActiveAttrib(i11, i12, i13, new int[1], 0, new int[1], 0, new int[1], 0, bArr, 0);
            String str = new String(bArr, 0, o.h(bArr));
            return new a(str, o.f(i11, str));
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f10426a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f10427b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f10428c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final float[] f10429d = new float[16];

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int[] f10430e = new int[4];

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f10431f = 9729;

        private b(String str, int i11, int i12) {
            this.f10426a = str;
            this.f10427b = i11;
            this.f10428c = i12;
        }

        public static b a(int i11, int i12) {
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(i11, 35719, iArr, 0);
            int[] iArr2 = new int[1];
            int i13 = iArr[0];
            byte[] bArr = new byte[i13];
            GLES20.glGetActiveUniform(i11, i12, i13, new int[1], 0, new int[1], 0, iArr2, 0, bArr, 0);
            String str = new String(bArr, 0, o.h(bArr));
            return new b(str, o.i(i11, str), iArr2[0]);
        }
    }

    public o(String str, String str2) throws GlUtil.GlException {
        int iGlCreateProgram = GLES20.glCreateProgram();
        this.f10419a = iGlCreateProgram;
        GlUtil.b();
        d(iGlCreateProgram, 35633, str);
        d(iGlCreateProgram, 35632, str2);
        GLES20.glLinkProgram(iGlCreateProgram);
        int[] iArr = {0};
        GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr, 0);
        GlUtil.c(iArr[0] == 1, "Unable to link shader program: \n" + GLES20.glGetProgramInfoLog(iGlCreateProgram));
        GLES20.glUseProgram(iGlCreateProgram);
        this.f10422d = new HashMap();
        int[] iArr2 = new int[1];
        GLES20.glGetProgramiv(iGlCreateProgram, 35721, iArr2, 0);
        this.f10420b = new a[iArr2[0]];
        for (int i11 = 0; i11 < iArr2[0]; i11++) {
            a aVarA = a.a(this.f10419a, i11);
            this.f10420b[i11] = aVarA;
            this.f10422d.put(aVarA.f10424a, aVarA);
        }
        this.f10423e = new HashMap();
        int[] iArr3 = new int[1];
        GLES20.glGetProgramiv(this.f10419a, 35718, iArr3, 0);
        this.f10421c = new b[iArr3[0]];
        for (int i12 = 0; i12 < iArr3[0]; i12++) {
            b bVarA = b.a(this.f10419a, i12);
            this.f10421c[i12] = bVarA;
            this.f10423e.put(bVarA.f10426a, bVarA);
        }
        GlUtil.b();
    }

    private static void d(int i11, int i12, String str) throws GlUtil.GlException {
        int iGlCreateShader = GLES20.glCreateShader(i12);
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        int[] iArr = {0};
        GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
        GlUtil.c(iArr[0] == 1, GLES20.glGetShaderInfoLog(iGlCreateShader) + ", source: \n" + str);
        GLES20.glAttachShader(i11, iGlCreateShader);
        GLES20.glDeleteShader(iGlCreateShader);
        GlUtil.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int f(int i11, String str) {
        return GLES20.glGetAttribLocation(i11, str);
    }

    private int g(String str) {
        return f(this.f10419a, str);
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

    public int e(String str) throws GlUtil.GlException {
        int iG = g(str);
        GLES20.glEnableVertexAttribArray(iG);
        GlUtil.b();
        return iG;
    }

    public int j(String str) {
        return i(this.f10419a, str);
    }
}
