package com.cloud.tmc.integration.audio;

import android.media.MediaPlayer;
import android.text.TextUtils;
import android.util.Log;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.integration.utils.FileUtil;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.gson.JsonObject;
import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
public class PlayerInstance implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnSeekCompleteListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener {
    private static final String KEY_AUDIO_PLAYER_ID = "audioPlayerID";
    private static final String TAG = "PlayerInstance";
    private volatile boolean autoPlay;
    private boolean loop;
    public final App mApp;
    private IPlayerCallback mPlayCallback;
    private MediaPlayer mediaPlayer;
    private String playerId;
    private String src;
    private int startTime;
    public boolean pausedBack = false;
    private boolean paused = false;
    private boolean isCompleted = false;
    private float volume = 1.0f;
    private int bufferedProgress = 0;
    public boolean isAppPause = false;
    private boolean shouldIgnoreWhenPlayAgain = true;

    public interface IPlayerCallback {
        void onDispatchEvent(PlayType playType, String str, String str2);
    }

    public enum PlayType {
        ON_CAN_PLAY,
        ON_PLAY,
        ON_PAUSE,
        ON_STOP,
        ON_ENDED,
        ON_ERROR,
        ON_WAITING,
        ON_SEEKING,
        ON_SEEKED
    }

    public PlayerInstance(App app, String str, IPlayerCallback iPlayerCallback) {
        this.mApp = app;
        this.playerId = str;
        this.mPlayCallback = iPlayerCallback;
        MediaPlayer mediaPlayer = new MediaPlayer();
        this.mediaPlayer = mediaPlayer;
        mediaPlayer.setAudioStreamType(3);
    }

    private void broadcastEvent(PlayType playType) {
        try {
            this.mPlayCallback.onDispatchEvent(playType, null, this.playerId);
        } catch (Exception e11) {
            TmcLogger.e(TAG, e11);
        }
    }

    private String getLocalPathIfNecessary(String str) {
        App app;
        if (TextUtils.isEmpty(str) || (app = this.mApp) == null) {
            return str;
        }
        File fileFromAllProcessors = FileUtil.getFileFromAllProcessors(app, str);
        if (fileFromAllProcessors == null || !fileFromAllProcessors.exists() || !fileFromAllProcessors.isFile()) {
            return "";
        }
        String absolutePath = fileFromAllProcessors.getAbsolutePath();
        if (TextUtils.isEmpty(absolutePath)) {
            return (str.startsWith("https://") || str.startsWith("http://")) ? str : "";
        }
        return absolutePath;
    }

    public static void notifyInvalidParam(BridgeCallback bridgeCallback, String str) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, Boolean.FALSE);
        jsonObject.addProperty("errMsg", str);
        if (bridgeCallback != null) {
            bridgeCallback.sendJSONResponse(jsonObject);
        }
    }

    private void notifySuccess(BridgeCallback bridgeCallback) {
        JsonObject jsonObject = new JsonObject();
        jsonObject.addProperty(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, Boolean.TRUE);
        jsonObject.addProperty(KEY_AUDIO_PLAYER_ID, this.playerId);
        if (bridgeCallback != null) {
            bridgeCallback.sendJSONResponse(jsonObject);
        }
    }

    public void addMonitors() {
        TmcLogger.d(TAG, "addMonitors");
        this.mediaPlayer.setOnPreparedListener(this);
        this.mediaPlayer.setOnBufferingUpdateListener(this);
        this.mediaPlayer.setOnErrorListener(this);
        this.mediaPlayer.setOnSeekCompleteListener(this);
        this.mediaPlayer.setOnCompletionListener(this);
    }

    public boolean getAutoPlay() {
        TmcLogger.d(TAG, "getAutoPlay:### id=" + this.playerId);
        return this.autoPlay;
    }

    public int getBufferedProgress() {
        return this.bufferedProgress;
    }

    public int getCurrentPosition() {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            return mediaPlayer.getCurrentPosition();
        }
        return 0;
    }

    public int getDuration() {
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            return mediaPlayer.getDuration();
        }
        return 0;
    }

    public boolean getLoop() {
        TmcLogger.d(TAG, "getLoop:### id=" + this.playerId);
        return this.loop;
    }

    public String getPlayerId() {
        return this.playerId;
    }

    public String getSrc() {
        TmcLogger.d(TAG, "getSrc:### id=" + this.playerId);
        return this.src;
    }

    public float getStartTime() {
        TmcLogger.d(TAG, "getStartTime:### id=" + this.playerId);
        return this.startTime / 1000.0f;
    }

    public float getVolume() {
        TmcLogger.d(TAG, "getVolume:### id=" + this.playerId);
        return this.volume;
    }

    public boolean isPause() {
        return this.paused;
    }

    public boolean isPlaying() {
        try {
            MediaPlayer mediaPlayer = this.mediaPlayer;
            return mediaPlayer != null && mediaPlayer.isPlaying();
        } catch (Exception e11) {
            TmcLogger.w(Log.getStackTraceString(e11));
            return false;
        }
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public void onBufferingUpdate(MediaPlayer mediaPlayer, int i11) {
        TmcLogger.e(TAG, "onBufferingUpdate i=" + i11);
        this.bufferedProgress = i11;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        this.isCompleted = true;
        broadcastEvent(PlayType.ON_ENDED);
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i11, int i12) {
        String str;
        String str2 = i11 == 1 ? "UNKNOWN_ERROR" : "SERVER_DIED";
        if (i12 == -1010) {
            str = "ERROR_UNSUPPORTED";
        } else if (i12 == -1007) {
            str = "ERROR_MALFORMED";
        } else if (i12 == -1004) {
            str = "IO_ERROR";
        } else if (i12 != -110) {
            str = "error code , what is : " + i11 + "   extra is :" + i12;
        } else {
            str = "TIMED_OUT_ERROR";
        }
        this.mPlayCallback.onDispatchEvent(PlayType.ON_ERROR, str2 + "\t" + str, this.playerId);
        return false;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        broadcastEvent(PlayType.ON_CAN_PLAY);
        if (mediaPlayer.isPlaying()) {
            return;
        }
        broadcastEvent(PlayType.ON_PLAY);
        if (!this.isAppPause) {
            mediaPlayer.start();
            this.paused = false;
        } else {
            this.paused = true;
            this.pausedBack = true;
            broadcastEvent(PlayType.ON_PAUSE);
        }
    }

    @Override // android.media.MediaPlayer.OnSeekCompleteListener
    public void onSeekComplete(MediaPlayer mediaPlayer) {
        broadcastEvent(PlayType.ON_SEEKED);
    }

    public boolean pause() {
        try {
            if (isPlaying()) {
                this.mediaPlayer.pause();
                this.paused = true;
                this.isCompleted = false;
                broadcastEvent(PlayType.ON_PAUSE);
            }
            return true;
        } catch (Exception e11) {
            TmcLogger.e(TAG, e11);
            return false;
        }
    }

    public boolean play() {
        try {
            if (isPlaying()) {
                if (!this.shouldIgnoreWhenPlayAgain) {
                    this.mediaPlayer.pause();
                    this.paused = true;
                }
                return true;
            }
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer != null) {
                if (this.paused || this.isCompleted) {
                    mediaPlayer.start();
                    broadcastEvent(PlayType.ON_PLAY);
                } else {
                    this.isCompleted = false;
                    mediaPlayer.prepareAsync();
                    broadcastEvent(PlayType.ON_WAITING);
                }
                this.paused = false;
            }
            return true;
        } catch (Exception e11) {
            TmcLogger.e(TAG, e11);
            return false;
        }
    }

    public void releaseMediaPlayer() {
        this.paused = false;
        this.pausedBack = false;
        MediaPlayer mediaPlayer = this.mediaPlayer;
        if (mediaPlayer != null) {
            mediaPlayer.release();
        }
    }

    public void removeMonitors() {
        TmcLogger.d(TAG, "removeMonitors");
        this.mediaPlayer.setOnPreparedListener(null);
        this.mediaPlayer.setOnBufferingUpdateListener(null);
        this.mediaPlayer.setOnErrorListener(null);
        this.mediaPlayer.setOnSeekCompleteListener(null);
        this.mediaPlayer.setOnCompletionListener(null);
    }

    public boolean seek(float f11) {
        boolean z10 = false;
        try {
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer == null) {
                return false;
            }
            mediaPlayer.seekTo(Math.round(f11 * 1000.0f));
            z10 = true;
            broadcastEvent(PlayType.ON_SEEKING);
            return true;
        } catch (Exception e11) {
            TmcLogger.w(Log.getStackTraceString(e11));
            return z10;
        }
    }

    public boolean setAutoPlay(boolean z10) {
        TmcLogger.d(TAG, "setAutoPlay:### id=" + this.playerId + "### autoPlay=" + z10);
        this.autoPlay = z10;
        if (!z10 || TextUtils.isEmpty(this.src) || isPlaying()) {
            return true;
        }
        play();
        return true;
    }

    public boolean setLoop(boolean z10) {
        TmcLogger.d(TAG, "setLoop:### id=" + this.playerId + ", loop=" + z10);
        this.loop = z10;
        this.mediaPlayer.setLooping(z10);
        return true;
    }

    public boolean setSrc(String str) {
        TmcLogger.d(TAG, "setSrc:### id=" + this.playerId);
        if (!TextUtils.isEmpty(this.src)) {
            TmcLogger.e(TAG, "must not set mutli src ### src=" + str);
            return false;
        }
        try {
            str = getLocalPathIfNecessary(str);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, "setSrc Error:### id=" + this.playerId, th2);
        }
        if (TextUtils.isEmpty(str)) {
            TmcLogger.d(TAG, "setSrc: param is invaild ### src=" + str);
            return false;
        }
        this.src = str;
        try {
            this.mediaPlayer.setDataSource(str);
            if (!this.autoPlay) {
                return true;
            }
            TmcLogger.d(TAG, "OnAutoPlay true,call play when setSrc = " + str);
            this.mediaPlayer.prepareAsync();
            broadcastEvent(PlayType.ON_WAITING);
            return true;
        } catch (Exception e11) {
            TmcLogger.w(Log.getStackTraceString(e11));
            broadcastEvent(PlayType.ON_ERROR);
            return false;
        }
    }

    public boolean setStartTime(int i11) {
        TmcLogger.d(TAG, "setStartTime:### id=" + this.playerId + ", startTime=" + i11);
        this.startTime = i11 * 1000;
        return true;
    }

    public boolean setVolume(float f11) {
        TmcLogger.d(TAG, "setVolume:### id=" + this.playerId + ", volume=" + f11);
        if (f11 < 0.0f || f11 > 1.0f) {
            TmcLogger.d(TAG, "setVolume invalid param.");
            return false;
        }
        this.mediaPlayer.setVolume(f11, f11);
        this.volume = f11;
        return true;
    }

    public boolean stop() {
        boolean z10 = false;
        try {
            MediaPlayer mediaPlayer = this.mediaPlayer;
            if (mediaPlayer == null) {
                return false;
            }
            mediaPlayer.stop();
            this.paused = false;
            this.pausedBack = false;
            this.isCompleted = false;
            z10 = true;
            broadcastEvent(PlayType.ON_STOP);
            return true;
        } catch (Exception e11) {
            TmcLogger.w(Log.getStackTraceString(e11));
            return z10;
        }
    }
}
