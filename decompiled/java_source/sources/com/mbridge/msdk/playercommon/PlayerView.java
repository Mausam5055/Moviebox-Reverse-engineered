package com.mbridge.msdk.playercommon;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.iab.omid.library.mmadbridge.adsession.media.a;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.feedback.b;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class PlayerView extends LinearLayout {
    public static final String TAG = "PlayerView";
    private boolean hadOMPause;
    private boolean isBTVideo;
    private boolean isBTVideoPlaying;
    private boolean mHasReportedData;
    private boolean mInitState;
    private boolean mIsCovered;
    private boolean mIsFirstCreateHolder;
    private boolean mIsNeedToRepeatPrepare;
    private boolean mIsSurfaceHolderDestoryed;
    private LinearLayout mLlSurContainer;
    private LinearLayout mLoadingView;
    private String mPlayUrl;
    private SurfaceHolder mSurfaceHolder;
    private VideoFeedsPlayer mVideoFeedsPlayer;
    private OnPlayerViewVisibleListener onPlayerViewVisibleListener;
    protected int orientation;
    private a videoEvents;
    protected float xInScreen;
    protected float yInScreen;

    private class MySurfaceHoldeCallback implements SurfaceHolder.Callback {
        private MySurfaceHoldeCallback() {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i11, int i12, int i13) {
            try {
                o0.c(PlayerView.TAG, "surfaceChanged");
                if (PlayerView.this.mIsSurfaceHolderDestoryed && !PlayerView.this.mIsCovered && !PlayerView.this.isComplete() && !PlayerView.this.isBTVideo && !b.f35289f) {
                    if (PlayerView.this.mVideoFeedsPlayer.hasPrepare()) {
                        o0.c(PlayerView.TAG, "surfaceChanged  start====");
                        PlayerView.this.resumeStart();
                    } else {
                        o0.c(PlayerView.TAG, "surfaceChanged  PLAY====");
                        PlayerView.this.playVideo(0);
                        PlayerView.this.resumeOMSDK();
                    }
                    if (PlayerView.this.isBTVideo) {
                        if (PlayerView.this.isBTVideoPlaying) {
                            if (!PlayerView.this.mVideoFeedsPlayer.hasPrepare()) {
                                PlayerView.this.mVideoFeedsPlayer.prepare();
                            }
                            PlayerView.this.mVideoFeedsPlayer.start(false);
                            PlayerView.this.resumeOMSDK();
                        } else {
                            PlayerView.this.pause();
                        }
                    }
                }
                PlayerView.this.mIsSurfaceHolderDestoryed = false;
            } catch (Exception e11) {
                o0.b(PlayerView.TAG, e11.getMessage());
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            try {
                o0.c(PlayerView.TAG, "surfaceCreated");
                if (PlayerView.this.mVideoFeedsPlayer == null || surfaceHolder == null) {
                    return;
                }
                PlayerView.this.mSurfaceHolder = surfaceHolder;
                PlayerView.this.mVideoFeedsPlayer.setDisplay(surfaceHolder);
            } catch (Exception e11) {
                o0.b(PlayerView.TAG, e11.getMessage());
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            try {
                o0.c(PlayerView.TAG, "surfaceDestroyed ");
                PlayerView.this.mIsSurfaceHolderDestoryed = true;
                PlayerView.this.mIsNeedToRepeatPrepare = true;
                PlayerView.this.mVideoFeedsPlayer.pause();
                PlayerView.this.pauseOmsdk();
            } catch (Exception e11) {
                o0.b(PlayerView.TAG, e11.getMessage());
            }
        }
    }

    public interface OnPlayerViewVisibleListener {
        void playerViewVisibleCallback();
    }

    public PlayerView(Context context) {
        super(context);
        this.mInitState = false;
        this.mIsFirstCreateHolder = true;
        this.mIsSurfaceHolderDestoryed = false;
        this.mIsCovered = false;
        this.mIsNeedToRepeatPrepare = false;
        this.isBTVideo = false;
        this.isBTVideoPlaying = false;
        this.orientation = 1;
        this.mHasReportedData = false;
        this.hadOMPause = false;
        init();
    }

    public PlayerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mInitState = false;
        this.mIsFirstCreateHolder = true;
        this.mIsSurfaceHolderDestoryed = false;
        this.mIsCovered = false;
        this.mIsNeedToRepeatPrepare = false;
        this.isBTVideo = false;
        this.isBTVideoPlaying = false;
        this.orientation = 1;
        this.mHasReportedData = false;
        this.hadOMPause = false;
        init();
    }

    private void init() {
        try {
            initView();
            initPlayer();
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    private void initPlayer() {
        this.mVideoFeedsPlayer = new VideoFeedsPlayer();
    }

    private void initView() {
        View viewInflate = LayoutInflater.from(getContext()).inflate(g0.a(getContext(), "mbridge_playercommon_player_view", TtmlNode.TAG_LAYOUT), (ViewGroup) null);
        if (viewInflate != null) {
            this.mLlSurContainer = (LinearLayout) viewInflate.findViewById(g0.a(getContext(), "mbridge_playercommon_ll_sur_container", "id"));
            this.mLoadingView = (LinearLayout) viewInflate.findViewById(g0.a(getContext(), "mbridge_playercommon_ll_loading", "id"));
            addSurfaceView();
            addView(viewInflate, -1, -1);
        }
    }

    public void addSurfaceView() {
        try {
            o0.c(TAG, "addSurfaceView");
            SurfaceView surfaceView = new SurfaceView(getContext().getApplicationContext());
            SurfaceHolder holder = surfaceView.getHolder();
            this.mSurfaceHolder = holder;
            holder.setType(3);
            this.mSurfaceHolder.setKeepScreenOn(true);
            this.mSurfaceHolder.addCallback(new MySurfaceHoldeCallback());
            this.mLlSurContainer.addView(surfaceView, -1, -1);
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    public JSONObject buildH5JsonObject(int i11) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put(com.mbridge.msdk.foundation.same.a.f35336h, t0.b(c.m().d(), this.xInScreen));
                jSONObject2.put(com.mbridge.msdk.foundation.same.a.f35337i, t0.b(c.m().d(), this.yInScreen));
                jSONObject2.put(com.mbridge.msdk.foundation.same.a.f35341m, i11);
                try {
                    this.orientation = getContext().getResources().getConfiguration().orientation;
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
                jSONObject2.put(com.mbridge.msdk.foundation.same.a.f35339k, this.orientation);
                jSONObject2.put(com.mbridge.msdk.foundation.same.a.f35340l, t0.d(getContext()));
                return jSONObject2;
            } catch (JSONException e12) {
                e = e12;
                jSONObject = jSONObject2;
                e.printStackTrace();
                return jSONObject;
            }
        } catch (JSONException e13) {
            e = e13;
        }
    }

    public void closeSound() {
        VideoFeedsPlayer videoFeedsPlayer = this.mVideoFeedsPlayer;
        if (videoFeedsPlayer != null) {
            videoFeedsPlayer.closeSound();
        }
    }

    public void coverUnlockResume() {
        try {
            this.mVideoFeedsPlayer.setIsFrontDesk(true);
            if (this.mVideoFeedsPlayer != null) {
                o0.c(TAG, "coverUnlockResume========");
                if (!this.mVideoFeedsPlayer.hasPrepare() || this.mIsNeedToRepeatPrepare) {
                    playVideo(0);
                } else {
                    start(true);
                }
            }
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    public int getCurPosition() {
        try {
            VideoFeedsPlayer videoFeedsPlayer = this.mVideoFeedsPlayer;
            if (videoFeedsPlayer != null) {
                return videoFeedsPlayer.getCurPosition();
            }
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
        return 0;
    }

    public int getDuration() {
        VideoFeedsPlayer videoFeedsPlayer = this.mVideoFeedsPlayer;
        if (videoFeedsPlayer != null) {
            return videoFeedsPlayer.getDuration();
        }
        return 0;
    }

    public a getVideoEvents() {
        return this.videoEvents;
    }

    public float getVolume() {
        VideoFeedsPlayer videoFeedsPlayer = this.mVideoFeedsPlayer;
        if (videoFeedsPlayer != null) {
            return videoFeedsPlayer.getVolume();
        }
        return 0.0f;
    }

    public void initBufferIngParam(int i11) {
        VideoFeedsPlayer videoFeedsPlayer = this.mVideoFeedsPlayer;
        if (videoFeedsPlayer != null) {
            videoFeedsPlayer.initBufferIngParam(i11);
        }
    }

    public boolean initVFPData(String str, String str2, VideoPlayerStatusListener videoPlayerStatusListener) {
        if (TextUtils.isEmpty(str)) {
            o0.c(TAG, "playUrl==null");
            return false;
        }
        this.mPlayUrl = str;
        this.mVideoFeedsPlayer.initPlayer(getContext(), this.mLoadingView, str, videoPlayerStatusListener);
        this.mInitState = true;
        return true;
    }

    public boolean isComplete() {
        try {
            VideoFeedsPlayer videoFeedsPlayer = this.mVideoFeedsPlayer;
            return videoFeedsPlayer != null && videoFeedsPlayer.isComplete();
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage(), th2);
            return false;
        }
    }

    public boolean isPlayIng() {
        try {
            VideoFeedsPlayer videoFeedsPlayer = this.mVideoFeedsPlayer;
            if (videoFeedsPlayer != null) {
                return videoFeedsPlayer.isPlayIng();
            }
            return false;
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
            return false;
        }
    }

    public boolean isSilent() {
        return this.mVideoFeedsPlayer.isSilent();
    }

    public void justSeekTo(int i11) {
        try {
            VideoFeedsPlayer videoFeedsPlayer = this.mVideoFeedsPlayer;
            if (videoFeedsPlayer != null) {
                videoFeedsPlayer.justSeekTo(i11);
            }
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.xInScreen = motionEvent.getRawX();
        this.yInScreen = motionEvent.getRawY();
        return super.onInterceptTouchEvent(motionEvent);
    }

    public void onPause() {
        try {
            pause();
            VideoFeedsPlayer videoFeedsPlayer = this.mVideoFeedsPlayer;
            if (videoFeedsPlayer != null) {
                videoFeedsPlayer.setIsFrontDesk(false);
            }
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    public void onResume() {
        try {
            this.mVideoFeedsPlayer.setIsFrontDesk(true);
            if (this.mVideoFeedsPlayer != null && !this.mIsSurfaceHolderDestoryed && !isComplete() && !this.mIsCovered) {
                o0.c(TAG, "onresume========");
                if (this.mVideoFeedsPlayer.hasPrepare()) {
                    resumeStart();
                } else {
                    playVideo(0);
                }
            }
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i11) {
        super.onVisibilityChanged(view, i11);
        try {
            if (q0.a().a("i_l_s_t_r_i", false) && i11 == 0 && !this.mHasReportedData) {
                this.mHasReportedData = true;
                OnPlayerViewVisibleListener onPlayerViewVisibleListener = this.onPlayerViewVisibleListener;
                if (onPlayerViewVisibleListener != null) {
                    onPlayerViewVisibleListener.playerViewVisibleCallback();
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public void openSound() {
        VideoFeedsPlayer videoFeedsPlayer = this.mVideoFeedsPlayer;
        if (videoFeedsPlayer != null) {
            videoFeedsPlayer.openSound();
        }
    }

    public void pause() {
        try {
            VideoFeedsPlayer videoFeedsPlayer = this.mVideoFeedsPlayer;
            if (videoFeedsPlayer != null) {
                videoFeedsPlayer.pause();
            }
            pauseOmsdk();
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    public void pauseOmsdk() {
        try {
            if (this.videoEvents == null || this.hadOMPause) {
                return;
            }
            o0.a("omsdk", "play view:  pause");
            this.hadOMPause = true;
            this.videoEvents.j();
        } catch (Exception e11) {
            throw new RuntimeException(e11);
        }
    }

    public boolean playVideo() {
        return playVideo(0);
    }

    public boolean playVideo(int i11) {
        try {
            VideoFeedsPlayer videoFeedsPlayer = this.mVideoFeedsPlayer;
            if (videoFeedsPlayer == null) {
                o0.c(TAG, "player init error 播放失败");
                return false;
            }
            if (!this.mInitState) {
                o0.c(TAG, "vfp init failed 播放失败");
                return false;
            }
            videoFeedsPlayer.play(this.mPlayUrl, i11);
            this.mIsNeedToRepeatPrepare = false;
            return true;
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage(), th2);
            return false;
        }
    }

    public void prepare() {
        try {
            VideoFeedsPlayer videoFeedsPlayer = this.mVideoFeedsPlayer;
            if (videoFeedsPlayer != null) {
                videoFeedsPlayer.prepare();
            }
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    public void release() {
        try {
            VideoFeedsPlayer videoFeedsPlayer = this.mVideoFeedsPlayer;
            if (videoFeedsPlayer != null) {
                videoFeedsPlayer.releasePlayer();
            }
            if (this.mSurfaceHolder != null) {
                o0.b(TAG, "mSurfaceHolder release");
                this.mSurfaceHolder.getSurface().release();
            }
        } catch (Throwable th2) {
            o0.b(TAG, th2.getMessage());
        }
    }

    public void removeSurface() {
        try {
            o0.c(TAG, "removeSurface");
            this.mLlSurContainer.removeAllViews();
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    public void resumeOMSDK() {
        try {
            a aVar = this.videoEvents;
            if (aVar != null) {
                this.hadOMPause = false;
                aVar.l();
                o0.a("omsdk", "play view:  resume");
            }
        } catch (Exception e11) {
            throw new RuntimeException(e11);
        }
    }

    public void resumeStart() {
        try {
            start(true);
            resumeOMSDK();
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    public void seekTo(int i11) {
        try {
            VideoFeedsPlayer videoFeedsPlayer = this.mVideoFeedsPlayer;
            if (videoFeedsPlayer != null) {
                videoFeedsPlayer.seekTo(i11);
            }
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    public void seekToEndFrame() {
        VideoFeedsPlayer videoFeedsPlayer = this.mVideoFeedsPlayer;
        if (videoFeedsPlayer != null) {
            videoFeedsPlayer.seekToEndFrame();
        }
    }

    public void setDataSource() {
        try {
            VideoFeedsPlayer videoFeedsPlayer = this.mVideoFeedsPlayer;
            if (videoFeedsPlayer != null) {
                videoFeedsPlayer.showLoading();
                this.mVideoFeedsPlayer.setDataSource();
                this.mIsNeedToRepeatPrepare = false;
            }
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    public void setDesk(boolean z10) {
        this.mVideoFeedsPlayer.setIsFrontDesk(z10);
    }

    public void setIsBTVideo(boolean z10) {
        this.isBTVideo = z10;
    }

    public void setIsBTVideoPlaying(boolean z10) {
        this.isBTVideoPlaying = z10;
    }

    public void setIsCovered(boolean z10) {
        try {
            this.mIsCovered = z10;
            o0.b(TAG, "mIsCovered:" + z10);
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    public void setNotifyListener(OnPlayerViewVisibleListener onPlayerViewVisibleListener) {
        this.onPlayerViewVisibleListener = onPlayerViewVisibleListener;
    }

    public void setPlaybackParams(float f11) {
        VideoFeedsPlayer videoFeedsPlayer = this.mVideoFeedsPlayer;
        if (videoFeedsPlayer != null) {
            videoFeedsPlayer.setPlaybackParams(f11);
        }
    }

    public void setVideoEvents(a aVar) {
        this.videoEvents = aVar;
    }

    public void setVolume(float f11, float f12) {
        VideoFeedsPlayer videoFeedsPlayer = this.mVideoFeedsPlayer;
        if (videoFeedsPlayer != null) {
            videoFeedsPlayer.setVolume(f11, f12);
        }
    }

    public void start(int i11) {
        try {
            VideoFeedsPlayer videoFeedsPlayer = this.mVideoFeedsPlayer;
            if (videoFeedsPlayer != null) {
                videoFeedsPlayer.start(i11);
            }
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    public void start(boolean z10) {
        try {
            VideoFeedsPlayer videoFeedsPlayer = this.mVideoFeedsPlayer;
            if (videoFeedsPlayer == null || this.mIsCovered) {
                return;
            }
            videoFeedsPlayer.start(z10);
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }

    public void stop() {
        try {
            VideoFeedsPlayer videoFeedsPlayer = this.mVideoFeedsPlayer;
            if (videoFeedsPlayer != null) {
                videoFeedsPlayer.stop();
            }
            if (this.videoEvents != null) {
                this.videoEvents = null;
            }
        } catch (Exception e11) {
            o0.b(TAG, e11.getMessage());
        }
    }
}
