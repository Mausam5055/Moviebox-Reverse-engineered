package com.aliyun.player.videoview.displayView;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Looper;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.aliyun.player.IPlayer;
import com.aliyun.player.videoview.AliDisplayView;
import com.cicada.player.utils.Logger;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public abstract class IDisplayView {
    private static final String TAG = "AliDisplayView_" + IDisplayView.class.getSimpleName();
    private final ViewGroup mParent;
    protected OnDisplayViewStatusListener mOnViewStatusListener = null;
    private int mVideoWidth = 0;
    private int mVideoHeight = 0;
    private int mVideoRotate = 0;
    private IPlayer.ScaleMode mScaleMode = IPlayer.ScaleMode.SCALE_ASPECT_FIT;
    private IPlayer.MirrorMode mMirrorMode = IPlayer.MirrorMode.MIRROR_MODE_NONE;
    private IPlayer.RotateMode mRotateMode = IPlayer.RotateMode.ROTATE_0;
    private boolean mDirectRender = false;
    private View mChildView = null;

    public interface OnDisplayViewStatusListener {
        void onSurfaceCreated(Surface surface);

        void onSurfaceDestroy();

        void onSurfaceSizeChanged();

        void onViewCreated(AliDisplayView.DisplayViewType displayViewType);
    }

    IDisplayView(ViewGroup viewGroup) {
        this.mParent = viewGroup;
        Logger.v(TAG, this + " new IDisplayView()");
    }

    private void runOnUiThread(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
        } else {
            this.mParent.post(runnable);
        }
    }

    private void saveToSdcard(Bitmap bitmap) {
        File file = new File("/sdcard/" + UUID.randomUUID().toString() + ".png");
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            Logger.e(TAG, file.getAbsolutePath());
        } catch (FileNotFoundException e11) {
            e11.printStackTrace();
        } catch (IOException e12) {
            e12.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMirrorModeInner(IPlayer.MirrorMode mirrorMode) {
        if (mirrorMode != null) {
            this.mMirrorMode = mirrorMode;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRotateModeInner(IPlayer.RotateMode rotateMode) {
        if (rotateMode != null) {
            this.mRotateMode = rotateMode;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setScaleModeInner(IPlayer.ScaleMode scaleMode) {
        if (scaleMode != null) {
            this.mScaleMode = scaleMode;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:31:0x007c A[PHI: r0 r6
  0x007c: PHI (r0v8 int) = (r0v5 int), (r0v11 int) binds: [B:36:0x009a, B:30:0x007a] A[DONT_GENERATE, DONT_INLINE]
  0x007c: PHI (r6v2 int) = (r6v0 int), (r6v3 int) binds: [B:36:0x009a, B:30:0x007a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:34:0x008a A[PHI: r0 r6
  0x008a: PHI (r0v6 int) = (r0v5 int), (r0v11 int) binds: [B:39:0x00a1, B:33:0x0088] A[DONT_GENERATE, DONT_INLINE]
  0x008a: PHI (r6v1 int) = (r6v0 int), (r6v3 int) binds: [B:39:0x00a1, B:33:0x0088] A[DONT_GENERATE, DONT_INLINE]] */
    public void updateViewParams() {
        int i11;
        int i12;
        String str = TAG;
        Logger.v(str, "updateViewParams  ");
        if (!this.mDirectRender) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            if (this.mChildView.getParent() == this.mParent) {
                this.mChildView.setLayoutParams(layoutParams);
                return;
            }
            return;
        }
        if (this.mVideoHeight == 0 || this.mVideoWidth == 0) {
            Logger.w(str, "updateViewParams ，unknow videoheight and width ");
            return;
        }
        int measuredWidth = this.mParent.getMeasuredWidth();
        int measuredHeight = this.mParent.getMeasuredHeight();
        if (measuredWidth == 0 || measuredHeight == 0) {
            Logger.w(str, "updateViewParams ，unknow parent height and width ");
            return;
        }
        if (rotateRenderView(this.mRotateMode)) {
            int value = (int) (this.mVideoRotate + this.mRotateMode.getValue());
            if (value == 90 || value == 270) {
                measuredWidth = this.mParent.getMeasuredHeight();
                measuredHeight = this.mParent.getMeasuredWidth();
            }
        }
        IPlayer.ScaleMode scaleMode = this.mScaleMode;
        if (scaleMode != IPlayer.ScaleMode.SCALE_TO_FILL) {
            if (scaleMode == IPlayer.ScaleMode.SCALE_ASPECT_FILL) {
                i11 = this.mVideoWidth;
                int i13 = i11 * measuredHeight;
                i12 = this.mVideoHeight;
                if (i13 > measuredWidth * i12) {
                    measuredWidth = (int) (((measuredHeight * 1.0f) * i11) / i12);
                } else if (i11 * measuredHeight < measuredWidth * i12) {
                    measuredHeight = (int) (((measuredWidth * 1.0f) * i12) / i11);
                }
            } else {
                i11 = this.mVideoWidth;
                int i14 = i11 * measuredHeight;
                i12 = this.mVideoHeight;
                if (i14 < measuredWidth * i12) {
                    measuredWidth = (int) (((measuredHeight * 1.0f) * i11) / i12);
                } else if (i11 * measuredHeight > measuredWidth * i12) {
                    measuredHeight = (int) (((measuredWidth * 1.0f) * i12) / i11);
                }
            }
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams2.width = measuredWidth;
        layoutParams2.height = measuredHeight;
        layoutParams2.gravity = 17;
        if (this.mChildView.getParent() == this.mParent) {
            this.mChildView.setLayoutParams(layoutParams2);
        }
    }

    public void attachView() {
        Logger.v(TAG, " attachView");
        runOnUiThread(new Runnable() { // from class: com.aliyun.player.videoview.displayView.IDisplayView.7
            @Override // java.lang.Runnable
            public void run() {
                IDisplayView.this.mParent.addView(IDisplayView.this.mChildView, 0);
                IDisplayView iDisplayView = IDisplayView.this;
                iDisplayView.setMirrorModeInner(iDisplayView.mMirrorMode);
                IDisplayView iDisplayView2 = IDisplayView.this;
                iDisplayView2.setScaleModeInner(iDisplayView2.mScaleMode);
                IDisplayView iDisplayView3 = IDisplayView.this;
                iDisplayView3.setRotateModeInner(iDisplayView3.mRotateMode);
                IDisplayView.this.updateViewParams();
            }
        });
    }

    public void detachView() {
        Logger.v(TAG, " detachView");
        runOnUiThread(new Runnable() { // from class: com.aliyun.player.videoview.displayView.IDisplayView.6
            @Override // java.lang.Runnable
            public void run() {
                if (IDisplayView.this.mChildView.getParent() == IDisplayView.this.mParent) {
                    IDisplayView.this.mParent.removeView(IDisplayView.this.mChildView);
                }
            }
        });
    }

    protected abstract View getRenderView(Context context);

    public void initView() {
        this.mChildView = getRenderView(this.mParent.getContext());
    }

    protected abstract boolean mirrorRenderView(IPlayer.MirrorMode mirrorMode);

    public void parentSizeChanged() {
        Logger.v(TAG, "parentSizeChanged  ");
        runOnUiThread(new Runnable() { // from class: com.aliyun.player.videoview.displayView.IDisplayView.1
            @Override // java.lang.Runnable
            public void run() {
                IDisplayView.this.updateViewParams();
            }
        });
    }

    protected abstract boolean rotateRenderView(IPlayer.RotateMode rotateMode);

    public void setMirrorMode(final IPlayer.MirrorMode mirrorMode) {
        Logger.v(TAG, "setMirrorMode  " + mirrorMode);
        setMirrorModeInner(mirrorMode);
        this.mChildView.post(new Runnable() { // from class: com.aliyun.player.videoview.displayView.IDisplayView.5
            @Override // java.lang.Runnable
            public void run() {
                IDisplayView.this.mirrorRenderView(mirrorMode);
            }
        });
    }

    public void setOnViewStatusListener(OnDisplayViewStatusListener onDisplayViewStatusListener) {
        Logger.v(TAG, this + " setOnViewStatusListener " + onDisplayViewStatusListener);
        this.mOnViewStatusListener = onDisplayViewStatusListener;
    }

    public void setRenderFlag(boolean z10) {
        Logger.v(TAG, "setRenderFlag  " + z10);
        this.mDirectRender = z10;
        runOnUiThread(new Runnable() { // from class: com.aliyun.player.videoview.displayView.IDisplayView.2
            @Override // java.lang.Runnable
            public void run() {
                IDisplayView.this.updateViewParams();
            }
        });
    }

    public void setRotateMode(IPlayer.RotateMode rotateMode) {
        Logger.v(TAG, "setRotateMode  " + rotateMode);
        setRotateModeInner(rotateMode);
        updateViewParams();
    }

    public void setScaleMode(IPlayer.ScaleMode scaleMode) {
        Logger.v(TAG, "setScaleMode  " + scaleMode);
        setScaleModeInner(scaleMode);
        runOnUiThread(new Runnable() { // from class: com.aliyun.player.videoview.displayView.IDisplayView.4
            @Override // java.lang.Runnable
            public void run() {
                IDisplayView.this.updateViewParams();
            }
        });
    }

    public abstract void setSurfaceReuse(boolean z10);

    public void setVideoSize(int i11, int i12, int i13) {
        Logger.v(TAG, "setVideoSize  " + i11 + " ， " + i12 + " ， " + i13);
        this.mVideoWidth = i11;
        this.mVideoHeight = i12;
        this.mVideoRotate = i13;
        runOnUiThread(new Runnable() { // from class: com.aliyun.player.videoview.displayView.IDisplayView.3
            @Override // java.lang.Runnable
            public void run() {
                IDisplayView.this.updateViewParams();
            }
        });
    }

    protected abstract Bitmap snapRenderView();

    public Bitmap snapShot() {
        return snapRenderView();
    }
}
