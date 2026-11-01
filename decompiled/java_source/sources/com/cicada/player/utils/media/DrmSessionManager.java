package com.cicada.player.utils.media;

import android.annotation.SuppressLint;
import android.media.MediaDrm;
import android.media.NotProvisionedException;
import android.media.UnsupportedSchemeException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.Base64;
import com.cicada.player.utils.Logger;
import com.cicada.player.utils.NativeUsed;
import java.util.UUID;

/* JADX INFO: loaded from: classes3.dex */
@NativeUsed
public class DrmSessionManager {
    private static final String TAG = "DrmSessionManager";
    private static final String WIDEVINE_FORMAT = "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed";
    private DrmSession drmSession = null;
    private long mNativeInstance;
    public static final UUID WIDEVINE_UUID = new UUID(-1301668207276963122L, -6645017420763422227L);
    public static int SESSION_STATE_ERROR = -1;
    public static int SESSION_STATE_IDLE = -2;
    public static int SESSION_STATE_OPENED = 0;
    public static int ERROR_CODE_NONE = 0;
    public static int ERROR_CODE_UNSUPPORT_SCHEME = 1;
    public static int ERROR_CODE_RESOURCE_BUSY = 2;
    public static int ERROR_CODE_KEY_RESPONSE_NULL = 3;
    public static int ERROR_CODE_PROVISION_RESPONSE_NULL = 4;
    public static int ERROR_CODE_DENIED_BY_SERVER = 5;
    public static int ERROR_CODE_RELEASED = 6;
    public static int ERROR_CODE_PROVISION_FAIL = 7;

    private static class DrmInfo {
        public String keyFormat;
        public String keyUrl;
        public String licenseUrl;
        public String mime;

        private DrmInfo() {
            this.licenseUrl = null;
            this.keyUrl = null;
            this.keyFormat = null;
            this.mime = null;
        }

        private static boolean areEqual(Object obj, Object obj2) {
            if (obj == null) {
                return obj2 == null;
            }
            return obj.equals(obj2);
        }

        public boolean isSame(DrmInfo drmInfo) {
            return drmInfo != null && areEqual(this.keyUrl, drmInfo.keyUrl) && areEqual(this.licenseUrl, drmInfo.licenseUrl) && areEqual(this.keyFormat, drmInfo.keyFormat);
        }
    }

    private class DrmSession {
        public DrmInfo drmInfo;
        public Handler requestHandler;
        private HandlerThread requestHandlerThread;
        public MediaDrm mediaDrm = null;
        public byte[] sessionId = null;
        public int state = DrmSessionManager.SESSION_STATE_IDLE;
        private boolean hasProvideProvision = false;

        public DrmSession(DrmInfo drmInfo) {
            this.drmInfo = null;
            this.requestHandlerThread = null;
            this.requestHandler = null;
            this.drmInfo = drmInfo;
            HandlerThread handlerThread = new HandlerThread("DrmRequestHanderThread");
            this.requestHandlerThread = handlerThread;
            handlerThread.start();
            this.requestHandler = new Handler(this.requestHandlerThread.getLooper()) { // from class: com.cicada.player.utils.media.DrmSessionManager.DrmSession.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    int i11 = message.what;
                    if (i11 == 1) {
                        DrmSession.this.requestProvision();
                    } else if (i11 == 2 || i11 == 3) {
                        try {
                            DrmSession.this.requestKey();
                        } catch (NotProvisionedException unused) {
                            DrmSession.this.requestProvision();
                        }
                    }
                    super.handleMessage(message);
                }
            };
        }

        private void changeState(int i11, int i12) {
            this.state = i11;
            Logger.d(DrmSessionManager.TAG, "changeState " + i11);
            DrmSessionManager drmSessionManager = DrmSessionManager.this;
            drmSessionManager.native_changeState(drmSessionManager.mNativeInstance, i11, i12);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void requestKey() throws NotProvisionedException {
            Logger.d(DrmSessionManager.TAG, "requestKey state = " + this.state);
            if (this.state == DrmSessionManager.SESSION_STATE_ERROR) {
                return;
            }
            try {
                String str = this.drmInfo.keyUrl;
                MediaDrm.KeyRequest keyRequest = this.mediaDrm.getKeyRequest(this.sessionId, Base64.decode(str.substring(str.indexOf(44)), 0), this.drmInfo.mime, 1, null);
                DrmSessionManager drmSessionManager = DrmSessionManager.this;
                byte[] bArrNative_requestKey = drmSessionManager.native_requestKey(drmSessionManager.mNativeInstance, keyRequest.getDefaultUrl(), keyRequest.getData());
                Logger.v(DrmSessionManager.TAG, "requestKey result = " + new String(bArrNative_requestKey));
                if (bArrNative_requestKey != null) {
                    this.mediaDrm.provideKeyResponse(this.sessionId, bArrNative_requestKey);
                    changeState(DrmSessionManager.SESSION_STATE_OPENED, DrmSessionManager.ERROR_CODE_NONE);
                    return;
                }
                Logger.e(DrmSessionManager.TAG, "requestKey fail: data = null , url : " + keyRequest.getDefaultUrl());
                changeState(DrmSessionManager.SESSION_STATE_ERROR, DrmSessionManager.ERROR_CODE_KEY_RESPONSE_NULL);
            } catch (Exception e11) {
                Logger.e(DrmSessionManager.TAG, "requestKey fail: " + e11.getMessage());
                changeState(DrmSessionManager.SESSION_STATE_ERROR, DrmSessionManager.ERROR_CODE_DENIED_BY_SERVER);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void requestProvision() {
            Logger.d(DrmSessionManager.TAG, "requestProvision  state = " + this.state);
            if (this.hasProvideProvision) {
                return;
            }
            MediaDrm.ProvisionRequest provisionRequest = this.mediaDrm.getProvisionRequest();
            DrmSessionManager drmSessionManager = DrmSessionManager.this;
            byte[] bArrNative_requestProvision = drmSessionManager.native_requestProvision(drmSessionManager.mNativeInstance, provisionRequest.getDefaultUrl(), provisionRequest.getData());
            if (bArrNative_requestProvision == null) {
                Logger.e(DrmSessionManager.TAG, "requestProvision fail: data = null , url : " + provisionRequest.getDefaultUrl());
                changeState(DrmSessionManager.SESSION_STATE_ERROR, DrmSessionManager.ERROR_CODE_PROVISION_RESPONSE_NULL);
                return;
            }
            Logger.d(DrmSessionManager.TAG, "requestProvision : data =  " + new String(bArrNative_requestProvision));
            try {
                this.mediaDrm.provideProvisionResponse(bArrNative_requestProvision);
                this.hasProvideProvision = true;
                if (this.state == DrmSessionManager.SESSION_STATE_IDLE) {
                    prepare(false);
                }
            } catch (Exception e11) {
                Logger.e(DrmSessionManager.TAG, "requestProvision fail: " + e11.getMessage());
                changeState(DrmSessionManager.SESSION_STATE_ERROR, DrmSessionManager.ERROR_CODE_PROVISION_FAIL);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void sendRequest(int i11, byte[] bArr) {
            this.requestHandler.sendMessage(this.requestHandler.obtainMessage(i11, bArr));
        }

        @SuppressLint({"WrongConstant"})
        public boolean isForceInsecureDecoder() {
            return false;
        }

        public boolean prepare(boolean z10) {
            if (this.mediaDrm == null) {
                try {
                    if (!DrmSessionManager.WIDEVINE_FORMAT.equals(this.drmInfo.keyFormat)) {
                        Logger.e(DrmSessionManager.TAG, " prepare fail : not support format :" + this.drmInfo.keyFormat);
                        changeState(DrmSessionManager.SESSION_STATE_ERROR, DrmSessionManager.ERROR_CODE_UNSUPPORT_SCHEME);
                        return false;
                    }
                    MediaDrm mediaDrm = new MediaDrm(DrmSessionManager.WIDEVINE_UUID);
                    this.mediaDrm = mediaDrm;
                    mediaDrm.setOnEventListener(new MediaDrm.OnEventListener() { // from class: com.cicada.player.utils.media.DrmSessionManager.DrmSession.2
                        @Override // android.media.MediaDrm.OnEventListener
                        public void onEvent(MediaDrm mediaDrm2, byte[] bArr, int i11, int i12, byte[] bArr2) {
                            Logger.d(DrmSessionManager.TAG, " drm Event = " + i11 + " , extra = " + i12 + " , sessionId =  " + bArr);
                            DrmSession.this.sendRequest(i11, bArr);
                        }
                    });
                } catch (UnsupportedSchemeException e11) {
                    Logger.e(DrmSessionManager.TAG, " prepare fail : " + e11.getMessage());
                    changeState(DrmSessionManager.SESSION_STATE_ERROR, DrmSessionManager.ERROR_CODE_UNSUPPORT_SCHEME);
                    return false;
                }
            }
            try {
                this.sessionId = this.mediaDrm.openSession();
                DrmSessionManager drmSessionManager = DrmSessionManager.this;
                drmSessionManager.native_updateSessionId(drmSessionManager.mNativeInstance, this.sessionId);
                changeState(DrmSessionManager.SESSION_STATE_IDLE, DrmSessionManager.ERROR_CODE_NONE);
                sendRequest(2, this.sessionId);
                return true;
            } catch (NotProvisionedException e12) {
                Logger.e(DrmSessionManager.TAG, " prepare NotProvisionedException : " + e12.getMessage());
                if (z10) {
                    sendRequest(1, null);
                } else {
                    changeState(DrmSessionManager.SESSION_STATE_ERROR, DrmSessionManager.ERROR_CODE_PROVISION_FAIL);
                }
                return false;
            } catch (Exception e13) {
                Logger.e(DrmSessionManager.TAG, " prepare fail : " + e13.getMessage());
                changeState(DrmSessionManager.SESSION_STATE_ERROR, DrmSessionManager.ERROR_CODE_RESOURCE_BUSY);
                return false;
            }
        }

        public boolean release() {
            changeState(DrmSessionManager.SESSION_STATE_ERROR, DrmSessionManager.ERROR_CODE_RELEASED);
            this.requestHandlerThread.quit();
            MediaDrm mediaDrm = this.mediaDrm;
            if (mediaDrm == null) {
                return true;
            }
            try {
                byte[] bArr = this.sessionId;
                if (bArr != null) {
                    mediaDrm.closeSession(bArr);
                }
            } catch (Exception e11) {
                Logger.e(DrmSessionManager.TAG, " closeSession fail : " + e11.getMessage());
            }
            try {
                this.mediaDrm.release();
            } catch (Exception e12) {
                Logger.e(DrmSessionManager.TAG, " release fail : " + e12.getMessage());
            }
            this.mediaDrm = null;
            return true;
        }
    }

    public DrmSessionManager(long j11) {
        this.mNativeInstance = j11;
    }

    private void requireSessionInner(DrmInfo drmInfo) {
        if (this.drmSession == null) {
            DrmSession drmSession = new DrmSession(drmInfo);
            this.drmSession = drmSession;
            drmSession.prepare(true);
        }
    }

    @NativeUsed
    @SuppressLint({"ObsoleteSdkInt"})
    public static boolean supportDrm(String str) {
        return !WIDEVINE_FORMAT.equals(str) || MediaDrm.isCryptoSchemeSupported(WIDEVINE_UUID);
    }

    @NativeUsed
    public boolean isForceInsecureDecoder() {
        DrmSession drmSession = this.drmSession;
        if (drmSession != null) {
            return drmSession.isForceInsecureDecoder();
        }
        return false;
    }

    protected native void native_changeState(long j11, int i11, int i12);

    protected native byte[] native_requestKey(long j11, String str, byte[] bArr);

    protected native byte[] native_requestProvision(long j11, String str, byte[] bArr);

    protected native void native_updateSessionId(long j11, byte[] bArr);

    @NativeUsed
    public synchronized void releaseSession() {
        Logger.d(TAG, "releaseSession");
        DrmSession drmSession = this.drmSession;
        if (drmSession != null) {
            drmSession.release();
            this.drmSession = null;
        }
    }

    @NativeUsed
    public synchronized void requireSession(String str, String str2, String str3, String str4) {
        Logger.d(TAG, "requireSessionInner info = " + str2);
        DrmInfo drmInfo = new DrmInfo();
        drmInfo.licenseUrl = str4;
        drmInfo.keyFormat = str2;
        drmInfo.keyUrl = str;
        drmInfo.mime = str3;
        requireSessionInner(drmInfo);
    }
}
