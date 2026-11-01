package androidx.media3.exoplayer.video;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.media3.common.util.GlUtil;
import androidx.media3.decoder.VideoDecoderOutputBuffer;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.concurrent.atomic.AtomicReference;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: loaded from: classes2.dex */
public final class VideoDecoderGLSurfaceView extends GLSurfaceView implements s {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f13056b = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f13057a;

    private static final class a implements GLSurfaceView.Renderer {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static final float[] f13058k = {1.164f, 1.164f, 1.164f, 0.0f, -0.392f, 2.017f, 1.596f, -0.813f, 0.0f};

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private static final float[] f13059l = {1.164f, 1.164f, 1.164f, 0.0f, -0.213f, 2.112f, 1.793f, -0.533f, 0.0f};

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private static final float[] f13060m = {1.168f, 1.168f, 1.168f, 0.0f, -0.188f, 2.148f, 1.683f, -0.652f, 0.0f};

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private static final String[] f13061n = {"y_tex", "u_tex", "v_tex"};

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private static final FloatBuffer f13062o = GlUtil.e(new float[]{-1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f, -1.0f});

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final GLSurfaceView f13063a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int[] f13064b = new int[3];

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int[] f13065c = new int[3];

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int[] f13066d = new int[3];

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int[] f13067e = new int[3];

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final AtomicReference f13068f = new AtomicReference();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final FloatBuffer[] f13069g = new FloatBuffer[3];

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private androidx.media3.common.util.o f13070h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f13071i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private VideoDecoderOutputBuffer f13072j;

        public a(GLSurfaceView gLSurfaceView) {
            this.f13063a = gLSurfaceView;
            for (int i11 = 0; i11 < 3; i11++) {
                int[] iArr = this.f13066d;
                this.f13067e[i11] = -1;
                iArr[i11] = -1;
            }
        }

        private void b() {
            try {
                GLES20.glGenTextures(3, this.f13064b, 0);
                for (int i11 = 0; i11 < 3; i11++) {
                    GLES20.glUniform1i(this.f13070h.j(f13061n[i11]), i11);
                    GLES20.glActiveTexture(33984 + i11);
                    GlUtil.a(3553, this.f13064b[i11], 9729);
                }
                GlUtil.b();
            } catch (GlUtil.GlException e11) {
                Log.e("VideoDecoderGLSV", "Failed to set up the textures", e11);
            }
        }

        public void a(VideoDecoderOutputBuffer videoDecoderOutputBuffer) {
            VideoDecoderOutputBuffer videoDecoderOutputBuffer2 = (VideoDecoderOutputBuffer) this.f13068f.getAndSet(videoDecoderOutputBuffer);
            if (videoDecoderOutputBuffer2 != null) {
                videoDecoderOutputBuffer2.release();
            }
            this.f13063a.requestRender();
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onDrawFrame(GL10 gl10) {
            VideoDecoderOutputBuffer videoDecoderOutputBuffer = (VideoDecoderOutputBuffer) this.f13068f.getAndSet(null);
            if (videoDecoderOutputBuffer == null && this.f13072j == null) {
                return;
            }
            if (videoDecoderOutputBuffer != null) {
                VideoDecoderOutputBuffer videoDecoderOutputBuffer2 = this.f13072j;
                if (videoDecoderOutputBuffer2 != null) {
                    videoDecoderOutputBuffer2.release();
                }
                this.f13072j = videoDecoderOutputBuffer;
            }
            VideoDecoderOutputBuffer videoDecoderOutputBuffer3 = (VideoDecoderOutputBuffer) androidx.media3.common.util.a.e(this.f13072j);
            float[] fArr = f13059l;
            int i11 = videoDecoderOutputBuffer3.colorspace;
            if (i11 == 1) {
                fArr = f13058k;
            } else if (i11 == 3) {
                fArr = f13060m;
            }
            GLES20.glUniformMatrix3fv(this.f13071i, 1, false, fArr, 0);
            int[] iArr = (int[]) androidx.media3.common.util.a.e(videoDecoderOutputBuffer3.yuvStrides);
            ByteBuffer[] byteBufferArr = (ByteBuffer[]) androidx.media3.common.util.a.e(videoDecoderOutputBuffer3.yuvPlanes);
            for (int i12 = 0; i12 < 3; i12++) {
                int i13 = videoDecoderOutputBuffer3.height;
                if (i12 != 0) {
                    i13 = (i13 + 1) / 2;
                }
                int i14 = i13;
                GLES20.glActiveTexture(33984 + i12);
                GLES20.glBindTexture(3553, this.f13064b[i12]);
                GLES20.glPixelStorei(3317, 1);
                GLES20.glTexImage2D(3553, 0, 6409, iArr[i12], i14, 0, 6409, 5121, byteBufferArr[i12]);
            }
            int i15 = videoDecoderOutputBuffer3.width;
            int i16 = (i15 + 1) / 2;
            int[] iArr2 = {i15, i16, i16};
            for (int i17 = 0; i17 < 3; i17++) {
                if (this.f13066d[i17] != iArr2[i17] || this.f13067e[i17] != iArr[i17]) {
                    androidx.media3.common.util.a.g(iArr[i17] != 0);
                    float f11 = iArr2[i17] / iArr[i17];
                    this.f13069g[i17] = GlUtil.e(new float[]{0.0f, 0.0f, 0.0f, 1.0f, f11, 0.0f, f11, 1.0f});
                    GLES20.glVertexAttribPointer(this.f13065c[i17], 2, 5126, false, 0, (Buffer) this.f13069g[i17]);
                    this.f13066d[i17] = iArr2[i17];
                    this.f13067e[i17] = iArr[i17];
                }
            }
            GLES20.glClear(16384);
            GLES20.glDrawArrays(5, 0, 4);
            try {
                GlUtil.b();
            } catch (GlUtil.GlException e11) {
                Log.e("VideoDecoderGLSV", "Failed to draw a frame", e11);
            }
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceChanged(GL10 gl10, int i11, int i12) {
            GLES20.glViewport(0, 0, i11, i12);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            try {
                androidx.media3.common.util.o oVar = new androidx.media3.common.util.o("varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n", "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n");
                this.f13070h = oVar;
                GLES20.glVertexAttribPointer(oVar.e("in_pos"), 2, 5126, false, 0, (Buffer) f13062o);
                this.f13065c[0] = this.f13070h.e("in_tc_y");
                this.f13065c[1] = this.f13070h.e("in_tc_u");
                this.f13065c[2] = this.f13070h.e("in_tc_v");
                this.f13071i = this.f13070h.j("mColorConversion");
                GlUtil.b();
                b();
                GlUtil.b();
            } catch (GlUtil.GlException e11) {
                Log.e("VideoDecoderGLSV", "Failed to set up the textures and program", e11);
            }
        }
    }

    public VideoDecoderGLSurfaceView(Context context) {
        this(context, null);
    }

    public VideoDecoderGLSurfaceView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        a aVar = new a(this);
        this.f13057a = aVar;
        setPreserveEGLContextOnPause(true);
        setEGLContextClientVersion(2);
        setRenderer(aVar);
        setRenderMode(0);
    }

    @Deprecated
    public s getVideoDecoderOutputBufferRenderer() {
        return this;
    }

    @Override // androidx.media3.exoplayer.video.s
    public void setOutputBuffer(VideoDecoderOutputBuffer videoDecoderOutputBuffer) {
        this.f13057a.a(videoDecoderOutputBuffer);
    }
}
