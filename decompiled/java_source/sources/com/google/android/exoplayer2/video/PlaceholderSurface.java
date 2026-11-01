package com.google.android.exoplayer2.video;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Surface;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.EGLSurfaceTexture;
import com.google.android.exoplayer2.util.GlUtil;

/* JADX INFO: loaded from: classes3.dex */
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

        private void initInternal(int i11) {
            com.google.android.exoplayer2.util.a.e(this.eglSurfaceTexture);
            this.eglSurfaceTexture.init(i11);
            this.surface = new PlaceholderSurface(this, this.eglSurfaceTexture.getSurfaceTexture(), i11 != 0);
        }

        private void releaseInternal() {
            com.google.android.exoplayer2.util.a.e(this.eglSurfaceTexture);
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
                            com.google.android.exoplayer2.util.s.d(PlaceholderSurface.TAG, "Failed to release placeholder surface", th2);
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
                } catch (Error e11) {
                    com.google.android.exoplayer2.util.s.d(PlaceholderSurface.TAG, "Failed to initialize placeholder surface", e11);
                    this.initError = e11;
                    synchronized (this) {
                        notify();
                    }
                } catch (RuntimeException e12) {
                    com.google.android.exoplayer2.util.s.d(PlaceholderSurface.TAG, "Failed to initialize placeholder surface", e12);
                    this.initException = e12;
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
                return (PlaceholderSurface) com.google.android.exoplayer2.util.a.e(this.surface);
            }
            throw error;
        }

        public void release() {
            com.google.android.exoplayer2.util.a.e(this.handler);
            this.handler.sendEmptyMessage(2);
        }
    }

    private PlaceholderSurface(PlaceholderSurfaceThread placeholderSurfaceThread, SurfaceTexture surfaceTexture, boolean z10) {
        super(surfaceTexture);
        this.thread = placeholderSurfaceThread;
        this.secure = z10;
    }

    private static int getSecureMode(Context context) {
        if (GlUtil.h(context)) {
            return GlUtil.i() ? 1 : 2;
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

    public static PlaceholderSurface newInstanceV17(Context context, boolean z10) {
        com.google.android.exoplayer2.util.a.g(!z10 || isSecureSupported(context));
        return new PlaceholderSurfaceThread().init(z10 ? secureMode : 0);
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
