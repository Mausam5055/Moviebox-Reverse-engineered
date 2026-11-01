package com.google.android.exoplayer2.video;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.GlUtil;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.util.concurrent.atomic.AtomicReference;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: loaded from: classes3.dex */
public final class VideoDecoderGLSurfaceView extends GLSurfaceView implements h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f27803b = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f27804a;

    private static final class a implements GLSurfaceView.Renderer {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static final float[] f27805j = {1.164f, 1.164f, 1.164f, 0.0f, -0.392f, 2.017f, 1.596f, -0.813f, 0.0f};

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static final float[] f27806k = {1.164f, 1.164f, 1.164f, 0.0f, -0.213f, 2.112f, 1.793f, -0.533f, 0.0f};

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private static final float[] f27807l = {1.168f, 1.168f, 1.168f, 0.0f, -0.188f, 2.148f, 1.683f, -0.652f, 0.0f};

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private static final String[] f27808m = {"y_tex", "u_tex", "v_tex"};

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private static final FloatBuffer f27809n = GlUtil.e(new float[]{-1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f, -1.0f});

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final GLSurfaceView f27810a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int[] f27811b = new int[3];

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int[] f27812c = new int[3];

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int[] f27813d = new int[3];

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int[] f27814e = new int[3];

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final AtomicReference f27815f = new AtomicReference();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final FloatBuffer[] f27816g = new FloatBuffer[3];

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private com.google.android.exoplayer2.util.n f27817h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f27818i;

        public a(GLSurfaceView gLSurfaceView) {
            this.f27810a = gLSurfaceView;
            for (int i11 = 0; i11 < 3; i11++) {
                int[] iArr = this.f27813d;
                this.f27814e[i11] = -1;
                iArr[i11] = -1;
            }
        }

        private void b() {
            GLES20.glGenTextures(3, this.f27811b, 0);
            for (int i11 = 0; i11 < 3; i11++) {
                GLES20.glUniform1i(this.f27817h.j(f27808m[i11]), i11);
                GLES20.glActiveTexture(33984 + i11);
                GlUtil.a(3553, this.f27811b[i11]);
            }
            GlUtil.c();
        }

        public void a(com.google.android.exoplayer2.decoder.h hVar) {
            android.support.v4.media.session.c.a(this.f27815f.getAndSet(hVar));
            this.f27810a.requestRender();
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onDrawFrame(GL10 gl10) {
            android.support.v4.media.session.c.a(this.f27815f.getAndSet(null));
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceChanged(GL10 gl10, int i11, int i12) {
            GLES20.glViewport(0, 0, i11, i12);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            com.google.android.exoplayer2.util.n nVar = new com.google.android.exoplayer2.util.n("varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n", "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n");
            this.f27817h = nVar;
            GLES20.glVertexAttribPointer(nVar.e("in_pos"), 2, 5126, false, 0, (Buffer) f27809n);
            this.f27812c[0] = this.f27817h.e("in_tc_y");
            this.f27812c[1] = this.f27817h.e("in_tc_u");
            this.f27812c[2] = this.f27817h.e("in_tc_v");
            this.f27818i = this.f27817h.j("mColorConversion");
            GlUtil.c();
            b();
            GlUtil.c();
        }
    }

    public VideoDecoderGLSurfaceView(Context context) {
        this(context, null);
    }

    public VideoDecoderGLSurfaceView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        a aVar = new a(this);
        this.f27804a = aVar;
        setPreserveEGLContextOnPause(true);
        setEGLContextClientVersion(2);
        setRenderer(aVar);
        setRenderMode(0);
    }

    @Deprecated
    public h getVideoDecoderOutputBufferRenderer() {
        return this;
    }

    public void setOutputBuffer(com.google.android.exoplayer2.decoder.h hVar) {
        this.f27804a.a(hVar);
    }
}
