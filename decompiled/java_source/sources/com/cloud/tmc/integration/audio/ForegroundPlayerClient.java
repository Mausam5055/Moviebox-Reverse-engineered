package com.cloud.tmc.integration.audio;

import android.text.TextUtils;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.kernel.bridge.extension.BridgeCallback;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.utils.EngineUtils;
import com.google.gson.JsonObject;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public class ForegroundPlayerClient {
    private static final String ATTR_AUTO_PLAY = "autoPlay";
    private static final String ATTR_BUFFERED = "buffered";
    private static final String ATTR_CURRENT_TIME = "currentTime";
    private static final String ATTR_DURATION = "duration";
    private static final String ATTR_LOOP = "loop";
    private static final String ATTR_PAUSED = "paused";
    private static final String ATTR_SRC = "src";
    private static final String ATTR_START_TIME = "startTime";
    private static final String ATTR_VOLUME = "volume";
    private static final String KEY_AUDIO_PLAYER_ID = "audioPlayerID";
    private static final String KEY_OPTION_ENTRY = "option";
    private static final String ON_F_CAN_PLAY = "onForegroundAudioCanPlay";
    private static final String ON_F_ENDED = "onForegroundAudioEnded";
    private static final String ON_F_ERROR = "onForegroundAudioError";
    private static final String ON_F_PAUSE = "onForegroundAudioPause";
    private static final String ON_F_PLAY = "onForegroundAudioPlay";
    private static final String ON_F_SEEKED = "onForegroundAudioSeeked";
    private static final String ON_F_SEEKING = "onForegroundAudioSeeking";
    private static final String ON_F_STOP = "onForegroundAudioStop";
    private static final String ON_F_TIME_UPDATE = "onForegroundAudioTimeUpdate";
    private static final String ON_F_WAITING = "onForegroundAudioWaiting";
    private static final String TAG = "ForegroundPlayerClient";
    private final App mApp;
    private final String mAppId;
    private final Map<String, PlayerInstance> mPlayerMap = new ConcurrentHashMap();
    private PlayerInstance foregroundPlayer = null;
    boolean enableMultiAudio = false;
    private AtomicBoolean isAPPPause = new AtomicBoolean(false);

    /* JADX INFO: renamed from: com.cloud.tmc.integration.audio.ForegroundPlayerClient$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$cloud$tmc$integration$audio$PlayerInstance$PlayType;

        static {
            int[] iArr = new int[PlayerInstance.PlayType.values().length];
            $SwitchMap$com$cloud$tmc$integration$audio$PlayerInstance$PlayType = iArr;
            try {
                iArr[PlayerInstance.PlayType.ON_CAN_PLAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$cloud$tmc$integration$audio$PlayerInstance$PlayType[PlayerInstance.PlayType.ON_PLAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$cloud$tmc$integration$audio$PlayerInstance$PlayType[PlayerInstance.PlayType.ON_STOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$cloud$tmc$integration$audio$PlayerInstance$PlayType[PlayerInstance.PlayType.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$cloud$tmc$integration$audio$PlayerInstance$PlayType[PlayerInstance.PlayType.ON_SEEKED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$cloud$tmc$integration$audio$PlayerInstance$PlayType[PlayerInstance.PlayType.ON_SEEKING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$cloud$tmc$integration$audio$PlayerInstance$PlayType[PlayerInstance.PlayType.ON_WAITING.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$cloud$tmc$integration$audio$PlayerInstance$PlayType[PlayerInstance.PlayType.ON_ERROR.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$cloud$tmc$integration$audio$PlayerInstance$PlayType[PlayerInstance.PlayType.ON_ENDED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    private class PlayCallback implements PlayerInstance.IPlayerCallback {
        private String playerId;

        public PlayCallback(String str) {
            this.playerId = str;
        }

        @Override // com.cloud.tmc.integration.audio.PlayerInstance.IPlayerCallback
        public void onDispatchEvent(PlayerInstance.PlayType playType, String str, String str2) {
            String str3;
            try {
                TmcLogger.d(ForegroundPlayerClient.TAG, "onDispatchEvent:### id=" + str2 + ",event = " + playType);
                JsonObject jsonObject = new JsonObject();
                jsonObject.addProperty(ForegroundPlayerClient.KEY_AUDIO_PLAYER_ID, str2);
                switch (AnonymousClass1.$SwitchMap$com$cloud$tmc$integration$audio$PlayerInstance$PlayType[playType.ordinal()]) {
                    case 1:
                        str3 = ForegroundPlayerClient.ON_F_CAN_PLAY;
                        break;
                    case 2:
                        ForegroundPlayerClient foregroundPlayerClient = ForegroundPlayerClient.this;
                        foregroundPlayerClient.foregroundPlayer = (PlayerInstance) foregroundPlayerClient.mPlayerMap.get(str2);
                        str3 = ForegroundPlayerClient.ON_F_PLAY;
                        break;
                    case 3:
                        str3 = ForegroundPlayerClient.ON_F_STOP;
                        break;
                    case 4:
                        str3 = ForegroundPlayerClient.ON_F_PAUSE;
                        break;
                    case 5:
                        str3 = ForegroundPlayerClient.ON_F_SEEKED;
                        break;
                    case 6:
                        str3 = ForegroundPlayerClient.ON_F_SEEKING;
                        break;
                    case 7:
                        str3 = ForegroundPlayerClient.ON_F_WAITING;
                        break;
                    case 8:
                        str3 = ForegroundPlayerClient.ON_F_ERROR;
                        jsonObject.addProperty("errMsg", str);
                        break;
                    case 9:
                        str3 = ForegroundPlayerClient.ON_F_ENDED;
                        break;
                    default:
                        return;
                }
                JsonObject jsonObject2 = new JsonObject();
                jsonObject2.add("data", jsonObject);
                if (ForegroundPlayerClient.this.mApp == null || ForegroundPlayerClient.this.mApp.getActivePage() == null) {
                    return;
                }
                EngineUtils.sendToRender(ForegroundPlayerClient.this.mApp.getActivePage().getRender(), str3, jsonObject2, null);
            } catch (Exception e11) {
                TmcLogger.e(ForegroundPlayerClient.TAG, e11);
            }
        }
    }

    public ForegroundPlayerClient(App app) {
        this.mApp = app;
        this.mAppId = app.getAppId();
    }

    private void notifyAttr(BridgeCallback bridgeCallback, JsonObject jsonObject, String str) {
        jsonObject.addProperty(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, Boolean.TRUE);
        jsonObject.addProperty(KEY_AUDIO_PLAYER_ID, str);
        if (bridgeCallback != null) {
            bridgeCallback.sendJSONResponse(jsonObject);
        }
    }

    private synchronized void onGetOption(BridgeCallback bridgeCallback, String str, PlayerInstance playerInstance) {
        try {
            TmcLogger.d(TAG, "onGetOption:### " + str);
            if (bridgeCallback == null) {
                return;
            }
            JsonObject jsonObject = new JsonObject();
            if (TextUtils.isEmpty(str)) {
                TmcLogger.d(TAG, "InvalidParam : " + str);
                PlayerInstance.notifyInvalidParam(bridgeCallback, "error option = " + str);
            } else if (ATTR_SRC.equalsIgnoreCase(str)) {
                jsonObject.addProperty(ATTR_SRC, playerInstance.getSrc());
                notifyAttr(bridgeCallback, jsonObject, playerInstance.getPlayerId());
            } else if (ATTR_AUTO_PLAY.equalsIgnoreCase(str)) {
                jsonObject.addProperty(ATTR_AUTO_PLAY, Boolean.valueOf(playerInstance.getAutoPlay()));
                notifyAttr(bridgeCallback, jsonObject, playerInstance.getPlayerId());
            } else if (ATTR_LOOP.equalsIgnoreCase(str)) {
                jsonObject.addProperty(ATTR_LOOP, Boolean.valueOf(playerInstance.getLoop()));
                notifyAttr(bridgeCallback, jsonObject, playerInstance.getPlayerId());
            } else if (ATTR_START_TIME.equalsIgnoreCase(str)) {
                jsonObject.addProperty(ATTR_START_TIME, Float.valueOf(playerInstance.getStartTime()));
                notifyAttr(bridgeCallback, jsonObject, playerInstance.getPlayerId());
            } else if (ATTR_VOLUME.equalsIgnoreCase(str)) {
                jsonObject.addProperty(ATTR_VOLUME, Float.valueOf(playerInstance.getVolume()));
                notifyAttr(bridgeCallback, jsonObject, playerInstance.getPlayerId());
            } else if (ATTR_DURATION.equalsIgnoreCase(str)) {
                jsonObject.addProperty(ATTR_DURATION, Float.valueOf(playerInstance.getDuration() / 1000.0f));
                notifyAttr(bridgeCallback, jsonObject, playerInstance.getPlayerId());
            } else if (ATTR_CURRENT_TIME.equalsIgnoreCase(str)) {
                jsonObject.addProperty(ATTR_CURRENT_TIME, Float.valueOf(playerInstance.getCurrentPosition() / 1000.0f));
                notifyAttr(bridgeCallback, jsonObject, playerInstance.getPlayerId());
            } else if (ATTR_BUFFERED.equalsIgnoreCase(str)) {
                jsonObject.addProperty(ATTR_BUFFERED, Integer.valueOf(playerInstance.getBufferedProgress()));
                notifyAttr(bridgeCallback, jsonObject, playerInstance.getPlayerId());
            } else if (ATTR_PAUSED.equalsIgnoreCase(str)) {
                jsonObject.addProperty(ATTR_PAUSED, Boolean.valueOf(!playerInstance.isPlaying()));
                notifyAttr(bridgeCallback, jsonObject, playerInstance.getPlayerId());
            } else {
                TmcLogger.d(TAG, "InvalidParam : " + str);
                PlayerInstance.notifyInvalidParam(bridgeCallback, "error option = " + str);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private synchronized void onSetOption(BridgeCallback bridgeCallback, JsonObject jsonObject, PlayerInstance playerInstance) {
        boolean z10;
        try {
            TmcLogger.d(TAG, "onSetOption:### " + jsonObject);
            if (jsonObject == null) {
                if (bridgeCallback != null) {
                    bridgeCallback.sendFailResponse();
                }
                TmcLogger.d(TAG, "InvalidParam : " + jsonObject);
                return;
            }
            boolean z11 = false;
            try {
                if (this.isAPPPause.get() && jsonObject.get(ATTR_AUTO_PLAY).getAsBoolean()) {
                    jsonObject.addProperty(ATTR_AUTO_PLAY, Boolean.FALSE);
                    this.foregroundPlayer = playerInstance;
                    playerInstance.pausedBack = true;
                }
                Iterator<String> it = jsonObject.keySet().iterator();
                loop0: while (true) {
                    z10 = true;
                    while (true) {
                        if (!it.hasNext()) {
                            break loop0;
                        }
                        String next = it.next();
                        if (!TextUtils.isEmpty(next)) {
                            if (ATTR_SRC.equals(next)) {
                                if (z10 && playerInstance.setSrc(jsonObject.get(ATTR_SRC).getAsString())) {
                                }
                                z10 = false;
                            } else if (ATTR_LOOP.equals(next)) {
                                if (z10 && playerInstance.setLoop(jsonObject.get(ATTR_LOOP).getAsBoolean())) {
                                }
                                z10 = false;
                            } else if (ATTR_START_TIME.equals(next)) {
                                if (z10 && playerInstance.setStartTime(jsonObject.get(ATTR_START_TIME).getAsInt())) {
                                }
                                z10 = false;
                            } else if (ATTR_VOLUME.equals(next)) {
                                if (z10 && playerInstance.setVolume(jsonObject.get(ATTR_VOLUME).getAsFloat())) {
                                }
                                z10 = false;
                            } else {
                                if (!ATTR_AUTO_PLAY.equals(next)) {
                                    TmcLogger.d("PlayerInstance", "InvalidParam : " + jsonObject);
                                } else if (z10 && playerInstance.setAutoPlay(jsonObject.get(ATTR_AUTO_PLAY).getAsBoolean())) {
                                }
                                z10 = false;
                            }
                        }
                    }
                }
                z11 = z10;
            } catch (Exception e11) {
                TmcLogger.e(TAG, e11);
            }
            sendResponse(z11, bridgeCallback);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void sendResponse(boolean z10, BridgeCallback bridgeCallback) {
        if (bridgeCallback == null) {
            return;
        }
        if (z10) {
            bridgeCallback.sendSuccessResponse();
        } else {
            bridgeCallback.sendFailResponse();
        }
    }

    public synchronized void addMonitor(String str, BridgeCallback bridgeCallback) {
        if (this.isAPPPause.get()) {
            bridgeCallback.sendFailResponse();
            return;
        }
        PlayerInstance playerInstance = this.mPlayerMap.get(str);
        if (playerInstance == null) {
            playerInstance = new PlayerInstance(this.mApp, str, new PlayCallback(str));
            this.mPlayerMap.put(str, playerInstance);
        }
        playerInstance.addMonitors();
        bridgeCallback.sendSuccessResponse();
    }

    public synchronized void destroy(String str, BridgeCallback bridgeCallback) {
        PlayerInstance playerInstanceRemove = this.mPlayerMap.remove(str);
        if (playerInstanceRemove == null) {
            bridgeCallback.sendFailResponse();
        } else {
            playerInstanceRemove.releaseMediaPlayer();
            bridgeCallback.sendSuccessResponse();
        }
    }

    public synchronized void getAudioOption(String str, String str2, BridgeCallback bridgeCallback) {
        try {
            PlayerInstance playerInstance = this.mPlayerMap.get(str);
            if (playerInstance == null) {
                playerInstance = new PlayerInstance(this.mApp, str, new PlayCallback(str));
                this.mPlayerMap.put(str, playerInstance);
            }
            onGetOption(bridgeCallback, str2, playerInstance);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void pause(String str, BridgeCallback bridgeCallback) {
        try {
            PlayerInstance playerInstance = this.mPlayerMap.get(str);
            if (playerInstance == null) {
                playerInstance = new PlayerInstance(this.mApp, str, new PlayCallback(str));
                this.mPlayerMap.put(str, playerInstance);
            }
            playerInstance.addMonitors();
            sendResponse(playerInstance.pause(), bridgeCallback);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void pauseAppAudio() {
        TmcLogger.d(TAG, "pauseAppAudio - appId=" + this.mAppId);
        setAppPause(true);
        PlayerInstance playerInstance = this.foregroundPlayer;
        if (playerInstance != null && playerInstance.isPlaying()) {
            this.foregroundPlayer.pause();
            this.foregroundPlayer.pausedBack = true;
        }
    }

    public synchronized void play(String str, BridgeCallback bridgeCallback) {
        if (this.isAPPPause.get()) {
            bridgeCallback.sendFailResponse();
            return;
        }
        PlayerInstance playerInstance = this.mPlayerMap.get(str);
        if (playerInstance == null) {
            playerInstance = new PlayerInstance(this.mApp, str, new PlayCallback(str));
            this.mPlayerMap.put(str, playerInstance);
        }
        if (!this.enableMultiAudio) {
            for (Map.Entry<String, PlayerInstance> entry : this.mPlayerMap.entrySet()) {
                if (!str.equals(entry.getKey())) {
                    entry.getValue().pause();
                }
            }
        }
        playerInstance.addMonitors();
        sendResponse(playerInstance.play(), bridgeCallback);
    }

    public synchronized void releaseAppAudio() {
        try {
            try {
                TmcLogger.e(TAG, "App releaseAppAudio appId = " + this.mAppId);
                for (Map.Entry<String, PlayerInstance> entry : this.mPlayerMap.entrySet()) {
                    if (entry.getValue() != null) {
                        entry.getValue().releaseMediaPlayer();
                    }
                }
                this.mPlayerMap.clear();
                setAppPause(false);
            } catch (Exception e11) {
                TmcLogger.e(TAG, e11);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void removeMonitor(String str, BridgeCallback bridgeCallback) {
        if (this.isAPPPause.get()) {
            bridgeCallback.sendFailResponse();
            return;
        }
        PlayerInstance playerInstance = this.mPlayerMap.get(str);
        if (playerInstance == null) {
            playerInstance = new PlayerInstance(this.mApp, str, new PlayCallback(str));
            this.mPlayerMap.put(str, playerInstance);
        }
        playerInstance.removeMonitors();
        bridgeCallback.sendSuccessResponse();
    }

    public synchronized void restoreAppAudio() {
        TmcLogger.d(TAG, "restoreAppAudio - appId=" + this.mAppId);
        setAppPause(false);
        PlayerInstance playerInstance = this.foregroundPlayer;
        if (playerInstance != null && playerInstance.pausedBack) {
            playerInstance.pausedBack = false;
            playerInstance.play();
        }
    }

    public synchronized void seek(String str, float f11, BridgeCallback bridgeCallback) {
        if (this.isAPPPause.get()) {
            bridgeCallback.sendFailResponse();
            return;
        }
        PlayerInstance playerInstance = this.mPlayerMap.get(str);
        if (playerInstance == null) {
            playerInstance = new PlayerInstance(this.mApp, str, new PlayCallback(str));
            this.mPlayerMap.put(str, playerInstance);
        }
        playerInstance.addMonitors();
        sendResponse(playerInstance.seek(f11), bridgeCallback);
    }

    public synchronized void setAppPause(boolean z10) {
        this.isAPPPause.set(z10);
        for (Map.Entry<String, PlayerInstance> entry : this.mPlayerMap.entrySet()) {
            if (entry.getValue() != null) {
                entry.getValue().isAppPause = true;
            }
        }
    }

    public synchronized void setAudioOption(String str, JsonObject jsonObject, BridgeCallback bridgeCallback) {
        try {
            PlayerInstance playerInstance = this.mPlayerMap.get(str);
            if (playerInstance == null) {
                playerInstance = new PlayerInstance(this.mApp, str, new PlayCallback(str));
                this.mPlayerMap.put(str, playerInstance);
            }
            playerInstance.addMonitors();
            onSetOption(bridgeCallback, jsonObject, playerInstance);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void stop(String str, BridgeCallback bridgeCallback) {
        try {
            PlayerInstance playerInstance = this.mPlayerMap.get(str);
            if (playerInstance == null) {
                playerInstance = new PlayerInstance(this.mApp, str, new PlayCallback(str));
                this.mPlayerMap.put(str, playerInstance);
            }
            playerInstance.addMonitors();
            sendResponse(playerInstance.stop(), bridgeCallback);
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
