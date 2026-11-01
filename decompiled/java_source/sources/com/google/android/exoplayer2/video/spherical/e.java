package com.google.android.exoplayer2.video.spherical;

import android.opengl.GLES20;
import com.google.android.exoplayer2.util.GlUtil;
import com.google.android.exoplayer2.util.n;
import java.nio.Buffer;
import java.nio.FloatBuffer;

/* JADX INFO: loaded from: classes3.dex */
final class e {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final float[] f27959j = {1.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final float[] f27960k = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 0.5f, 1.0f};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final float[] f27961l = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final float[] f27962m = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final float[] f27963n = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.5f, 1.0f, 1.0f};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f27964a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f27965b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f27966c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private n f27967d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f27968e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f27969f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f27970g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f27971h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f27972i;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f27973a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final FloatBuffer f27974b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final FloatBuffer f27975c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f27976d;

        public a(c.b bVar) {
            this.f27973a = bVar.a();
            this.f27974b = GlUtil.e(bVar.f27957c);
            this.f27975c = GlUtil.e(bVar.f27958d);
            int i11 = bVar.f27956b;
            if (i11 == 1) {
                this.f27976d = 5;
            } else if (i11 != 2) {
                this.f27976d = 4;
            } else {
                this.f27976d = 6;
            }
        }
    }

    e() {
    }

    public static boolean c(c cVar) {
        c.a aVar = cVar.f27950a;
        c.a aVar2 = cVar.f27951b;
        return aVar.b() == 1 && aVar.a(0).f27955a == 0 && aVar2.b() == 1 && aVar2.a(0).f27955a == 0;
    }

    public void a(int i11, float[] fArr, boolean z10) {
        float[] fArr2;
        a aVar = z10 ? this.f27966c : this.f27965b;
        if (aVar == null) {
            return;
        }
        int i12 = this.f27964a;
        if (i12 == 1) {
            fArr2 = z10 ? f27961l : f27960k;
        } else if (i12 == 2) {
            fArr2 = z10 ? f27963n : f27962m;
        } else {
            fArr2 = f27959j;
        }
        GLES20.glUniformMatrix3fv(this.f27969f, 1, false, fArr2, 0);
        GLES20.glUniformMatrix4fv(this.f27968e, 1, false, fArr, 0);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, i11);
        GLES20.glUniform1i(this.f27972i, 0);
        GlUtil.c();
        GLES20.glVertexAttribPointer(this.f27970g, 3, 5126, false, 12, (Buffer) aVar.f27974b);
        GlUtil.c();
        GLES20.glVertexAttribPointer(this.f27971h, 2, 5126, false, 8, (Buffer) aVar.f27975c);
        GlUtil.c();
        GLES20.glDrawArrays(aVar.f27976d, 0, aVar.f27973a);
        GlUtil.c();
    }

    public void b() {
        n nVar = new n("uniform mat4 uMvpMatrix;\nuniform mat3 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexCoords;\nvarying vec2 vTexCoords;\n// Standard transformation.\nvoid main() {\n  gl_Position = uMvpMatrix * aPosition;\n  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;\n}\n", "// This is required since the texture data is GL_TEXTURE_EXTERNAL_OES.\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n// Standard texture rendering shader.\nuniform samplerExternalOES uTexture;\nvarying vec2 vTexCoords;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTexCoords);\n}\n");
        this.f27967d = nVar;
        this.f27968e = nVar.j("uMvpMatrix");
        this.f27969f = this.f27967d.j("uTexMatrix");
        this.f27970g = this.f27967d.e("aPosition");
        this.f27971h = this.f27967d.e("aTexCoords");
        this.f27972i = this.f27967d.j("uTexture");
    }

    public void d(c cVar) {
        if (c(cVar)) {
            this.f27964a = cVar.f27952c;
            a aVar = new a(cVar.f27950a.a(0));
            this.f27965b = aVar;
            if (!cVar.f27953d) {
                aVar = new a(cVar.f27951b.a(0));
            }
            this.f27966c = aVar;
        }
    }
}
