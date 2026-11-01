package com.aliyun.player.videoview.displayView;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import com.aliyun.player.IPlayer;
import com.cicada.player.utils.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class SurfaceDisplayView extends IDisplayView {
    private static final String TAG = "AliDisplayView_" + SurfaceDisplayView.class.getSimpleName();
    private SurfaceView surfaceView;

    public SurfaceDisplayView(ViewGroup viewGroup) {
        super(viewGroup);
        this.surfaceView = null;
    }

    @Override // com.aliyun.player.videoview.displayView.IDisplayView
    protected View getRenderView(Context context) {
        SurfaceView surfaceView = new SurfaceView(context);
        this.surfaceView = surfaceView;
        surfaceView.getHolder().addCallback(new SurfaceHolder.Callback2() { // from class: com.aliyun.player.videoview.displayView.SurfaceDisplayView.1
            @Override // android.view.SurfaceHolder.Callback
            public void surfaceChanged(SurfaceHolder surfaceHolder, int i11, int i12, int i13) {
                Logger.i(SurfaceDisplayView.TAG, "surfaceChanged ");
                IDisplayView.OnDisplayViewStatusListener onDisplayViewStatusListener = SurfaceDisplayView.this.mOnViewStatusListener;
                if (onDisplayViewStatusListener != null) {
                    onDisplayViewStatusListener.onSurfaceSizeChanged();
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceCreated(SurfaceHolder surfaceHolder) {
                Surface surface = surfaceHolder.getSurface();
                Logger.i(SurfaceDisplayView.TAG, "onSurfaceCreated  " + surface);
                IDisplayView.OnDisplayViewStatusListener onDisplayViewStatusListener = SurfaceDisplayView.this.mOnViewStatusListener;
                if (onDisplayViewStatusListener != null) {
                    onDisplayViewStatusListener.onSurfaceCreated(surface);
                }
            }

            @Override // android.view.SurfaceHolder.Callback
            public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
                Logger.i(SurfaceDisplayView.TAG, "surfaceDestroyed ");
                IDisplayView.OnDisplayViewStatusListener onDisplayViewStatusListener = SurfaceDisplayView.this.mOnViewStatusListener;
                if (onDisplayViewStatusListener != null) {
                    onDisplayViewStatusListener.onSurfaceDestroy();
                }
            }

            @Override // android.view.SurfaceHolder.Callback2
            public void surfaceRedrawNeeded(SurfaceHolder surfaceHolder) {
                Logger.i(SurfaceDisplayView.TAG, "surfaceRedrawNeeded ");
            }
        });
        return this.surfaceView;
    }

    @Override // com.aliyun.player.videoview.displayView.IDisplayView
    protected boolean mirrorRenderView(IPlayer.MirrorMode mirrorMode) {
        return false;
    }

    @Override // com.aliyun.player.videoview.displayView.IDisplayView
    protected boolean rotateRenderView(IPlayer.RotateMode rotateMode) {
        return false;
    }

    @Override // com.aliyun.player.videoview.displayView.IDisplayView
    public void setSurfaceReuse(boolean z10) {
    }

    @Override // com.aliyun.player.videoview.displayView.IDisplayView
    protected Bitmap snapRenderView() {
        return null;
    }
}
