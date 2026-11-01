package androidx.media3.exoplayer.video.spherical;

import android.opengl.GLES20;
import android.util.Log;
import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.o;
import java.nio.Buffer;
import java.nio.FloatBuffer;

/* JADX INFO: loaded from: classes2.dex */
final class e {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final float[] f13265j = {1.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final float[] f13266k = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 0.5f, 1.0f};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final float[] f13267l = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final float[] f13268m = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final float[] f13269n = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.5f, 1.0f, 1.0f};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f13270a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f13271b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f13272c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private o f13273d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f13274e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f13275f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f13276g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f13277h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f13278i;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f13279a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final FloatBuffer f13280b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final FloatBuffer f13281c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f13282d;

        public a(c.b bVar) {
            this.f13279a = bVar.a();
            this.f13280b = GlUtil.e(bVar.f13263c);
            this.f13281c = GlUtil.e(bVar.f13264d);
            int i11 = bVar.f13262b;
            if (i11 == 1) {
                this.f13282d = 5;
            } else if (i11 != 2) {
                this.f13282d = 4;
            } else {
                this.f13282d = 6;
            }
        }
    }

    e() {
    }

    public static boolean c(c cVar) {
        c.a aVar = cVar.f13256a;
        c.a aVar2 = cVar.f13257b;
        return aVar.b() == 1 && aVar.a(0).f13261a == 0 && aVar2.b() == 1 && aVar2.a(0).f13261a == 0;
    }

    public void a(int i11, float[] fArr, boolean z10) {
        float[] fArr2;
        a aVar = z10 ? this.f13272c : this.f13271b;
        if (aVar == null) {
            return;
        }
        int i12 = this.f13270a;
        if (i12 == 1) {
            fArr2 = z10 ? f13267l : f13266k;
        } else if (i12 == 2) {
            fArr2 = z10 ? f13269n : f13268m;
        } else {
            fArr2 = f13265j;
        }
        GLES20.glUniformMatrix3fv(this.f13275f, 1, false, fArr2, 0);
        GLES20.glUniformMatrix4fv(this.f13274e, 1, false, fArr, 0);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, i11);
        GLES20.glUniform1i(this.f13278i, 0);
        try {
            GlUtil.b();
        } catch (GlUtil.GlException e11) {
            Log.e("ProjectionRenderer", "Failed to bind uniforms", e11);
        }
        GLES20.glVertexAttribPointer(this.f13276g, 3, 5126, false, 12, (Buffer) aVar.f13280b);
        try {
            GlUtil.b();
        } catch (GlUtil.GlException e12) {
            Log.e("ProjectionRenderer", "Failed to load position data", e12);
        }
        GLES20.glVertexAttribPointer(this.f13277h, 2, 5126, false, 8, (Buffer) aVar.f13281c);
        try {
            GlUtil.b();
        } catch (GlUtil.GlException e13) {
            Log.e("ProjectionRenderer", "Failed to load texture data", e13);
        }
        GLES20.glDrawArrays(aVar.f13282d, 0, aVar.f13279a);
        try {
            GlUtil.b();
        } catch (GlUtil.GlException e14) {
            Log.e("ProjectionRenderer", "Failed to render", e14);
        }
    }

    public void b() {
        try {
            o oVar = new o("uniform mat4 uMvpMatrix;\nuniform mat3 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexCoords;\nvarying vec2 vTexCoords;\n// Standard transformation.\nvoid main() {\n  gl_Position = uMvpMatrix * aPosition;\n  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;\n}\n", "// This is required since the texture data is GL_TEXTURE_EXTERNAL_OES.\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n// Standard texture rendering shader.\nuniform samplerExternalOES uTexture;\nvarying vec2 vTexCoords;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTexCoords);\n}\n");
            this.f13273d = oVar;
            this.f13274e = oVar.j("uMvpMatrix");
            this.f13275f = this.f13273d.j("uTexMatrix");
            this.f13276g = this.f13273d.e("aPosition");
            this.f13277h = this.f13273d.e("aTexCoords");
            this.f13278i = this.f13273d.j("uTexture");
        } catch (GlUtil.GlException e11) {
            Log.e("ProjectionRenderer", "Failed to initialize the program", e11);
        }
    }

    public void d(c cVar) {
        if (c(cVar)) {
            this.f13270a = cVar.f13258c;
            a aVar = new a(cVar.f13256a.a(0));
            this.f13271b = aVar;
            if (!cVar.f13259d) {
                aVar = new a(cVar.f13257b.a(0));
            }
            this.f13272c = aVar;
        }
    }
}
