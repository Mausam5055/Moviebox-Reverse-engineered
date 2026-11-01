package com.aliyun.player.nativeclass;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.os.Looper;
import android.view.Surface;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import com.aliyun.player.IPlayer;
import com.aliyun.player.videoview.AliDisplayView;
import com.aliyun.player.videoview.displayView.IDisplayView;
import com.aliyun.player.videoview.displayView.SurfaceDisplayView;
import com.aliyun.player.videoview.displayView.TextureDisplayView;
import com.cicada.player.utils.Logger;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DisplayViewHelper {
    private static final String TAG = "AliDisplayView_" + DisplayViewHelper.class.getSimpleName();
    private AliDisplayView mAliView;
    private IDisplayView mDisPlayView = null;
    private View mClearScreenView = null;
    private int oldWith = -1;
    private int oldHeight = -1;
    private boolean surfaceValid = false;
    private List<IDisplayView> mOldDisplayViews = new ArrayList();
    private int mBackgroundColor = ViewCompat.MEASURED_STATE_MASK;
    private int mVideoWidth = 0;
    private int mVideoHeight = 0;
    private int mVideoRotate = 0;
    private IPlayer.ScaleMode mScaleMode = IPlayer.ScaleMode.SCALE_ASPECT_FIT;
    private IPlayer.MirrorMode mMirrorMode = IPlayer.MirrorMode.MIRROR_MODE_NONE;
    private IPlayer.RotateMode mRotateMode = IPlayer.RotateMode.ROTATE_0;
    private boolean mDirectRender = false;
    private IDisplayView.OnDisplayViewStatusListener mListener = null;
    private boolean mReuseSurface = true;

    public DisplayViewHelper(AliDisplayView aliDisplayView) {
        this.mAliView = aliDisplayView;
        init();
    }

    private void init() {
        this.mClearScreenView = new View(this.mAliView.getContext());
        this.mAliView.addView(this.mClearScreenView, new FrameLayout.LayoutParams(-1, -1));
        setBackgroundColor(Color.parseColor("#FF000000"));
        this.mAliView.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.aliyun.player.nativeclass.DisplayViewHelper.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                int measuredWidth = DisplayViewHelper.this.mAliView.getMeasuredWidth();
                int measuredHeight = DisplayViewHelper.this.mAliView.getMeasuredHeight();
                if (measuredWidth == DisplayViewHelper.this.oldWith && measuredHeight == DisplayViewHelper.this.oldHeight) {
                    return;
                }
                DisplayViewHelper.this.oldWith = measuredWidth;
                DisplayViewHelper.this.oldHeight = measuredHeight;
                if (DisplayViewHelper.this.mDisPlayView != null) {
                    DisplayViewHelper.this.mDisPlayView.parentSizeChanged();
                }
            }
        });
    }

    private void runOnUiThread(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
        } else {
            this.mClearScreenView.post(runnable);
        }
    }

    void clearScreen() {
        Logger.i(TAG, "clearScreen ");
        runOnUiThread(new Runnable() { // from class: com.aliyun.player.nativeclass.DisplayViewHelper.3
            @Override // java.lang.Runnable
            public void run() {
                DisplayViewHelper.this.mClearScreenView.setVisibility(0);
                for (IDisplayView iDisplayView : DisplayViewHelper.this.mOldDisplayViews) {
                    if (iDisplayView != null) {
                        iDisplayView.detachView();
                    }
                }
                DisplayViewHelper.this.mOldDisplayViews.clear();
                if (DisplayViewHelper.this.mDisPlayView != null) {
                    DisplayViewHelper.this.mDisPlayView.detachView();
                    DisplayViewHelper.this.mDisPlayView = null;
                }
            }
        });
    }

    synchronized void createDisplayView(AliDisplayView.DisplayViewType displayViewType, boolean z10) {
        try {
            AliDisplayView.DisplayViewType preferDisplayViewType = this.mAliView.getPreferDisplayViewType();
            if (displayViewType == null || displayViewType == AliDisplayView.DisplayViewType.Either) {
                displayViewType = preferDisplayViewType;
            }
            IDisplayView iDisplayView = this.mDisPlayView;
            if (displayViewType == AliDisplayView.DisplayViewType.TextureView) {
                TextureDisplayView textureDisplayView = new TextureDisplayView(this.mAliView);
                this.mDisPlayView = textureDisplayView;
                textureDisplayView.initView();
            } else {
                SurfaceDisplayView surfaceDisplayView = new SurfaceDisplayView(this.mAliView);
                this.mDisPlayView = surfaceDisplayView;
                surfaceDisplayView.initView();
            }
            IDisplayView.OnDisplayViewStatusListener onDisplayViewStatusListener = this.mListener;
            if (onDisplayViewStatusListener != null) {
                onDisplayViewStatusListener.onViewCreated(displayViewType);
            }
            final AliDisplayView.OnViewStatusListener onViewStatusListener = this.mAliView.getOnViewStatusListener();
            if (onViewStatusListener != null) {
                onViewStatusListener.onViewCreated(displayViewType);
            }
            IDisplayView iDisplayView2 = this.mDisPlayView;
            if (iDisplayView2 != null) {
                iDisplayView2.setOnViewStatusListener(new IDisplayView.OnDisplayViewStatusListener() { // from class: com.aliyun.player.nativeclass.DisplayViewHelper.2
                    @Override // com.aliyun.player.videoview.displayView.IDisplayView.OnDisplayViewStatusListener
                    public void onSurfaceCreated(Surface surface) {
                        DisplayViewHelper.this.surfaceValid = true;
                        if (DisplayViewHelper.this.mListener != null) {
                            DisplayViewHelper.this.mListener.onSurfaceCreated(surface);
                        }
                        AliDisplayView.OnViewStatusListener onViewStatusListener2 = onViewStatusListener;
                        if (onViewStatusListener2 != null) {
                            onViewStatusListener2.onSurfaceCreated();
                        }
                    }

                    @Override // com.aliyun.player.videoview.displayView.IDisplayView.OnDisplayViewStatusListener
                    public void onSurfaceDestroy() {
                        DisplayViewHelper.this.surfaceValid = false;
                        if (DisplayViewHelper.this.mListener != null) {
                            DisplayViewHelper.this.mListener.onSurfaceDestroy();
                        }
                        AliDisplayView.OnViewStatusListener onViewStatusListener2 = onViewStatusListener;
                        if (onViewStatusListener2 != null) {
                            onViewStatusListener2.onSurfaceDestroy();
                        }
                    }

                    @Override // com.aliyun.player.videoview.displayView.IDisplayView.OnDisplayViewStatusListener
                    public void onSurfaceSizeChanged() {
                        if (DisplayViewHelper.this.mListener != null) {
                            DisplayViewHelper.this.mListener.onSurfaceSizeChanged();
                        }
                        AliDisplayView.OnViewStatusListener onViewStatusListener2 = onViewStatusListener;
                        if (onViewStatusListener2 != null) {
                            onViewStatusListener2.onSurfaceSizeChanged();
                        }
                    }

                    @Override // com.aliyun.player.videoview.displayView.IDisplayView.OnDisplayViewStatusListener
                    public void onViewCreated(AliDisplayView.DisplayViewType displayViewType2) {
                    }
                });
                this.mDisPlayView.setSurfaceReuse(this.mReuseSurface);
                setRenderFlagChanged(z10);
                this.mDisPlayView.setVideoSize(this.mVideoWidth, this.mVideoHeight, this.mVideoRotate);
                this.mDisPlayView.setMirrorMode(this.mMirrorMode);
                this.mDisPlayView.setRotateMode(this.mRotateMode);
                this.mDisPlayView.setScaleMode(this.mScaleMode);
                this.mDisPlayView.attachView();
                if (iDisplayView != null) {
                    iDisplayView.setOnViewStatusListener(null);
                    this.mOldDisplayViews.add(iDisplayView);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    void firstFrameRender(final boolean z10) {
        Logger.i(TAG, "firstFrameRender , hasVideo = " + z10);
        runOnUiThread(new Runnable() { // from class: com.aliyun.player.nativeclass.DisplayViewHelper.4
            @Override // java.lang.Runnable
            public void run() {
                if (z10) {
                    for (IDisplayView iDisplayView : DisplayViewHelper.this.mOldDisplayViews) {
                        if (iDisplayView != null) {
                            iDisplayView.detachView();
                        }
                    }
                    DisplayViewHelper.this.mOldDisplayViews.clear();
                }
                DisplayViewHelper.this.mClearScreenView.setVisibility(4);
            }
        });
    }

    boolean needUpdateView(AliDisplayView.DisplayViewType displayViewType) {
        return true;
    }

    void setBackgroundColor(int i11) {
        Logger.i(TAG, "setBackgroundColor " + i11);
        this.mBackgroundColor = i11;
        View view = this.mClearScreenView;
        if (view != null) {
            view.setBackgroundColor(i11);
        }
        this.mAliView.setBackgroundColor(i11);
    }

    void setMirrorMode(IPlayer.MirrorMode mirrorMode) {
        Logger.i(TAG, "setMirrorMode " + mirrorMode);
        this.mMirrorMode = mirrorMode;
        IDisplayView iDisplayView = this.mDisPlayView;
        if (iDisplayView != null) {
            iDisplayView.setMirrorMode(mirrorMode);
        }
    }

    void setOnViewStatusListener(IDisplayView.OnDisplayViewStatusListener onDisplayViewStatusListener) {
        this.mListener = onDisplayViewStatusListener;
    }

    void setRenderFlagChanged(boolean z10) {
        Logger.i(TAG, "setRenderFlagChanged = " + z10);
        this.mDirectRender = z10;
        IDisplayView iDisplayView = this.mDisPlayView;
        if (iDisplayView != null) {
            iDisplayView.setRenderFlag(z10);
        }
    }

    void setRotateMode(IPlayer.RotateMode rotateMode) {
        Logger.i(TAG, "setRotateMode " + rotateMode);
        this.mRotateMode = rotateMode;
        IDisplayView iDisplayView = this.mDisPlayView;
        if (iDisplayView != null) {
            iDisplayView.setRotateMode(rotateMode);
        }
    }

    void setScaleMode(IPlayer.ScaleMode scaleMode) {
        Logger.i(TAG, "setScaleMode " + scaleMode);
        this.mScaleMode = scaleMode;
        IDisplayView iDisplayView = this.mDisPlayView;
        if (iDisplayView != null) {
            iDisplayView.setScaleMode(scaleMode);
        }
    }

    public void setSurfaceReuse(boolean z10) {
        this.mReuseSurface = z10;
        IDisplayView iDisplayView = this.mDisPlayView;
        if (iDisplayView != null) {
            iDisplayView.setSurfaceReuse(z10);
        }
    }

    void setVideoSize(int i11, int i12, int i13) {
        Logger.i(TAG, "setVideoSize " + i11 + " , " + i12);
        this.mVideoWidth = i11;
        this.mVideoHeight = i12;
        this.mVideoRotate = i13;
        IDisplayView iDisplayView = this.mDisPlayView;
        if (iDisplayView != null) {
            iDisplayView.setVideoSize(i11, i12, i13);
        }
    }

    Bitmap snapshot() {
        Bitmap bitmapSnapShot;
        IDisplayView iDisplayView = this.mDisPlayView;
        if (iDisplayView == null || (bitmapSnapShot = iDisplayView.snapShot()) == null) {
            return null;
        }
        this.mAliView.buildDrawingCache();
        Bitmap drawingCache = this.mAliView.getDrawingCache();
        if (drawingCache == null) {
            return null;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawingCache.getWidth(), drawingCache.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.drawBitmap(drawingCache, 0.0f, 0.0f, new Paint());
        drawingCache.recycle();
        canvas.drawBitmap(bitmapSnapShot, (drawingCache.getWidth() - bitmapSnapShot.getWidth()) / 2.0f, (drawingCache.getHeight() - bitmapSnapShot.getHeight()) / 2.0f, new Paint());
        bitmapSnapShot.recycle();
        if (this.mClearScreenView.getVisibility() == 0) {
            this.mClearScreenView.buildDrawingCache();
            Bitmap drawingCache2 = this.mClearScreenView.getDrawingCache();
            if (drawingCache2 != null) {
                canvas.drawBitmap(drawingCache2, 0.0f, 0.0f, new Paint());
                drawingCache2.recycle();
            }
        }
        canvas.save();
        canvas.restore();
        return bitmapCreateBitmap;
    }
}
