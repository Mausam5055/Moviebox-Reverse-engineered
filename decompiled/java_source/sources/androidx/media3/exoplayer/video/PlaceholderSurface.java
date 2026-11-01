package androidx.media3.exoplayer.video;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.media3.common.util.EGLSurfaceTexture;
import androidx.media3.common.util.GlUtil;

/* JADX INFO: loaded from: classes2.dex */
public final class PlaceholderSurface extends Surface {
    private static final String TAG = "PlaceholderSurface";
    private static int secureMode;
    private static boolean secureModeInitialized;
    public final boolean secure;
    private final PlaceholderSurfaceThread thread;
    private boolean threadReleased;

    private static class PlaceholderSurfaceThread extends HandlerThread implements Handler.Callback {
        private static final int MSG_INIT = 1;
        private static final int MSG_RELEASE = 2;
        private EGLSurfaceTexture eglSurfaceTexture;
        private Handler handler;

        @Nullable
        private Error initError;

        @Nullable
        private RuntimeException initException;

        @Nullable
        private PlaceholderSurface surface;

        public PlaceholderSurfaceThread() {
            super("ExoPlayer:PlaceholderSurface");
        }

        private void initInternal(int i11) throws GlUtil.GlException {
            androidx.media3.common.util.a.e(this.eglSurfaceTexture);
            this.eglSurfaceTexture.init(i11);
            this.surface = new PlaceholderSurface(this, this.eglSurfaceTexture.getSurfaceTexture(), i11 != 0);
        }

        private void releaseInternal() {
            androidx.media3.common.util.a.e(this.eglSurfaceTexture);
            this.eglSurfaceTexture.release();
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i11 = message.what;
            try {
                if (i11 != 1) {
                    if (i11 != 2) {
                        return true;
                    }
                    try {
                        releaseInternal();
                    } catch (Throwable th2) {
                        try {
                            androidx.media3.common.util.u.d(PlaceholderSurface.TAG, "Failed to release placeholder surface", th2);
                        } finally {
                            quit();
                        }
                    }
                    return true;
                }
                try {
                    initInternal(message.arg1);
                    synchronized (this) {
                        notify();
                    }
                } catch (GlUtil.GlException e11) {
                    androidx.media3.common.util.u.d(PlaceholderSurface.TAG, "Failed to initialize placeholder surface", e11);
                    this.initException = new IllegalStateException(e11);
                    synchronized (this) {
                        notify();
                    }
                } catch (Error e12) {
                    androidx.media3.common.util.u.d(PlaceholderSurface.TAG, "Failed to initialize placeholder surface", e12);
                    this.initError = e12;
                    synchronized (this) {
                        notify();
                    }
                } catch (RuntimeException e13) {
                    androidx.media3.common.util.u.d(PlaceholderSurface.TAG, "Failed to initialize placeholder surface", e13);
                    this.initException = e13;
                    synchronized (this) {
                        notify();
                    }
                }
                return true;
            } catch (Throwable th3) {
                synchronized (this) {
                    notify();
                    throw th3;
                }
            }
        }

        public PlaceholderSurface init(int i11) {
            boolean z10;
            start();
            this.handler = new Handler(getLooper(), this);
            this.eglSurfaceTexture = new EGLSurfaceTexture(this.handler);
            synchronized (this) {
                z10 = false;
                this.handler.obtainMessage(1, i11, 0).sendToTarget();
                while (this.surface == null && this.initException == null && this.initError == null) {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                        z10 = true;
                    }
                }
            }
            if (z10) {
                Thread.currentThread().interrupt();
            }
            RuntimeException runtimeException = this.initException;
            if (runtimeException != null) {
                throw runtimeException;
            }
            Error error = this.initError;
            if (error == null) {
                return (PlaceholderSurface) androidx.media3.common.util.a.e(this.surface);
            }
            throw error;
        }

        public void release() {
            androidx.media3.common.util.a.e(this.handler);
            this.handler.sendEmptyMessage(2);
        }
    }

    private PlaceholderSurface(PlaceholderSurfaceThread placeholderSurfaceThread, SurfaceTexture surfaceTexture, boolean z10) {
        super(surfaceTexture);
        this.thread = placeholderSurfaceThread;
        this.secure = z10;
    }

    private static int getSecureMode(Context context) {
        if (GlUtil.i(context)) {
            return GlUtil.j() ? 1 : 2;
        }
        return 0;
    }

    public static synchronized boolean isSecureSupported(Context context) {
        try {
            if (!secureModeInitialized) {
                secureMode = getSecureMode(context);
                secureModeInitialized = true;
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return secureMode != 0;
    }

    public static PlaceholderSurface newInstance(Context context, boolean z10) {
        androidx.media3.common.util.a.g(!z10 || isSecureSupported(context));
        return new PlaceholderSurfaceThread().init(z10 ? secureMode : 0);
    }

    @Deprecated
    public static PlaceholderSurface newInstanceV17(Context context, boolean z10) {
        return newInstance(context, z10);
    }

    @Override // android.view.Surface
    public void release() {
        super.release();
        synchronized (this.thread) {
            try {
                if (!this.threadReleased) {
                    this.thread.release();
                    this.threadReleased = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
