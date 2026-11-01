package com.mbridge.msdk.playercommon.exoplayer2.drm;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.NotProvisionedException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.drm.ExoMediaCrypto;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes5.dex */
@TargetApi(18)
class DefaultDrmSession<T extends ExoMediaCrypto> implements DrmSession<T> {
    private static final int MAX_LICENSE_DURATION_TO_RENEW = 60;
    private static final int MSG_KEYS = 1;
    private static final int MSG_PROVISION = 0;
    private static final String TAG = "DefaultDrmSession";
    final MediaDrmCallback callback;
    private Object currentKeyRequest;
    private Object currentProvisionRequest;
    private final DefaultDrmSessionEventListener.EventDispatcher eventDispatcher;
    private final int initialDrmRequestRetryCount;
    private DrmSession.DrmSessionException lastException;
    private T mediaCrypto;
    private final ExoMediaDrm<T> mediaDrm;
    private final int mode;
    private byte[] offlineLicenseKeySetId;
    private int openCount;
    private final HashMap<String, String> optionalKeyRequestParameters;
    private DefaultDrmSession<T>.PostRequestHandler postRequestHandler;
    final DefaultDrmSession<T>.PostResponseHandler postResponseHandler;
    private final ProvisioningManager<T> provisioningManager;
    private HandlerThread requestHandlerThread;
    private final DrmInitData.SchemeData schemeData;
    private byte[] sessionId;
    private int state;
    final UUID uuid;

    @SuppressLint({"HandlerLeak"})
    private class PostRequestHandler extends Handler {
        public PostRequestHandler(Looper looper) {
            super(looper);
        }

        private long getRetryDelayMillis(int i11) {
            return Math.min((i11 - 1) * 1000, 5000);
        }

        private boolean maybeRetryRequest(Message message) {
            int i11;
            if (message.arg1 != 1 || (i11 = message.arg2 + 1) > DefaultDrmSession.this.initialDrmRequestRetryCount) {
                return false;
            }
            Message messageObtain = Message.obtain(message);
            messageObtain.arg2 = i11;
            sendMessageDelayed(messageObtain, getRetryDelayMillis(i11));
            return true;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Object obj = message.obj;
            try {
                int i11 = message.what;
                if (i11 == 0) {
                    DefaultDrmSession defaultDrmSession = DefaultDrmSession.this;
                    e = defaultDrmSession.callback.executeProvisionRequest(defaultDrmSession.uuid, (ExoMediaDrm.ProvisionRequest) obj);
                } else {
                    if (i11 != 1) {
                        throw new RuntimeException();
                    }
                    Pair pair = (Pair) obj;
                    ExoMediaDrm.KeyRequest keyRequest = (ExoMediaDrm.KeyRequest) pair.first;
                    String str = (String) pair.second;
                    DefaultDrmSession defaultDrmSession2 = DefaultDrmSession.this;
                    e = defaultDrmSession2.callback.executeKeyRequest(defaultDrmSession2.uuid, keyRequest, str);
                }
            } catch (Exception e11) {
                e = e11;
                if (maybeRetryRequest(message)) {
                    return;
                }
            }
            DefaultDrmSession.this.postResponseHandler.obtainMessage(message.what, Pair.create(obj, e)).sendToTarget();
        }

        void post(int i11, Object obj, boolean z10) {
            obtainMessage(i11, z10 ? 1 : 0, 0, obj).sendToTarget();
        }
    }

    @SuppressLint({"HandlerLeak"})
    private class PostResponseHandler extends Handler {
        public PostResponseHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Pair pair = (Pair) message.obj;
            Object obj = pair.first;
            Object obj2 = pair.second;
            int i11 = message.what;
            if (i11 == 0) {
                DefaultDrmSession.this.onProvisionResponse(obj, obj2);
            } else {
                if (i11 != 1) {
                    return;
                }
                DefaultDrmSession.this.onKeyResponse(obj, obj2);
            }
        }
    }

    public interface ProvisioningManager<T extends ExoMediaCrypto> {
        void onProvisionCompleted();

        void onProvisionError(Exception exc);

        void provisionRequired(DefaultDrmSession<T> defaultDrmSession);
    }

    public DefaultDrmSession(UUID uuid, ExoMediaDrm<T> exoMediaDrm, ProvisioningManager<T> provisioningManager, @Nullable DrmInitData.SchemeData schemeData, int i11, @Nullable byte[] bArr, HashMap<String, String> map, MediaDrmCallback mediaDrmCallback, Looper looper, DefaultDrmSessionEventListener.EventDispatcher eventDispatcher, int i12) {
        this.uuid = uuid;
        this.provisioningManager = provisioningManager;
        this.mediaDrm = exoMediaDrm;
        this.mode = i11;
        this.offlineLicenseKeySetId = bArr;
        this.schemeData = bArr != null ? null : schemeData;
        this.optionalKeyRequestParameters = map;
        this.callback = mediaDrmCallback;
        this.initialDrmRequestRetryCount = i12;
        this.eventDispatcher = eventDispatcher;
        this.state = 2;
        this.postResponseHandler = new PostResponseHandler(looper);
        HandlerThread handlerThread = new HandlerThread("DrmRequestHandler");
        this.requestHandlerThread = handlerThread;
        handlerThread.start();
        this.postRequestHandler = new PostRequestHandler(this.requestHandlerThread.getLooper());
    }

    private void doLicense(boolean z10) {
        int i11 = this.mode;
        if (i11 != 0 && i11 != 1) {
            if (i11 != 2) {
                if (i11 == 3 && restoreKeys()) {
                    postKeyRequest(3, z10);
                    return;
                }
                return;
            }
            if (this.offlineLicenseKeySetId == null) {
                postKeyRequest(2, z10);
                return;
            } else {
                if (restoreKeys()) {
                    postKeyRequest(2, z10);
                    return;
                }
                return;
            }
        }
        if (this.offlineLicenseKeySetId == null) {
            postKeyRequest(1, z10);
            return;
        }
        if (this.state == 4 || restoreKeys()) {
            long licenseDurationRemainingSec = getLicenseDurationRemainingSec();
            if (this.mode == 0 && licenseDurationRemainingSec <= 60) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Offline license has expired or will expire soon. Remaining seconds: ");
                sb2.append(licenseDurationRemainingSec);
                postKeyRequest(2, z10);
                return;
            }
            if (licenseDurationRemainingSec <= 0) {
                onError(new KeysExpiredException());
            } else {
                this.state = 4;
                this.eventDispatcher.drmKeysRestored();
            }
        }
    }

    private long getLicenseDurationRemainingSec() {
        if (!C.WIDEVINE_UUID.equals(this.uuid)) {
            return Long.MAX_VALUE;
        }
        Pair<Long, Long> licenseDurationRemainingSec = WidevineUtil.getLicenseDurationRemainingSec(this);
        return Math.min(((Long) licenseDurationRemainingSec.first).longValue(), ((Long) licenseDurationRemainingSec.second).longValue());
    }

    private boolean isOpen() {
        int i11 = this.state;
        return i11 == 3 || i11 == 4;
    }

    private void onError(Exception exc) {
        this.lastException = new DrmSession.DrmSessionException(exc);
        this.eventDispatcher.drmSessionManagerError(exc);
        if (this.state != 4) {
            this.state = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onKeyResponse(Object obj, Object obj2) {
        if (obj == this.currentKeyRequest && isOpen()) {
            this.currentKeyRequest = null;
            if (obj2 instanceof Exception) {
                onKeysError((Exception) obj2);
                return;
            }
            try {
                byte[] bArr = (byte[]) obj2;
                if (this.mode == 3) {
                    this.mediaDrm.provideKeyResponse(this.offlineLicenseKeySetId, bArr);
                    this.eventDispatcher.drmKeysRemoved();
                    return;
                }
                byte[] bArrProvideKeyResponse = this.mediaDrm.provideKeyResponse(this.sessionId, bArr);
                int i11 = this.mode;
                if ((i11 == 2 || (i11 == 0 && this.offlineLicenseKeySetId != null)) && bArrProvideKeyResponse != null && bArrProvideKeyResponse.length != 0) {
                    this.offlineLicenseKeySetId = bArrProvideKeyResponse;
                }
                this.state = 4;
                this.eventDispatcher.drmKeysLoaded();
            } catch (Exception e11) {
                onKeysError(e11);
            }
        }
    }

    private void onKeysError(Exception exc) {
        if (exc instanceof NotProvisionedException) {
            this.provisioningManager.provisionRequired(this);
        } else {
            onError(exc);
        }
    }

    private void onKeysExpired() {
        if (this.state == 4) {
            this.state = 3;
            onError(new KeysExpiredException());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onProvisionResponse(Object obj, Object obj2) {
        if (obj == this.currentProvisionRequest) {
            if (this.state == 2 || isOpen()) {
                this.currentProvisionRequest = null;
                if (obj2 instanceof Exception) {
                    this.provisioningManager.onProvisionError((Exception) obj2);
                    return;
                }
                try {
                    this.mediaDrm.provideProvisionResponse((byte[]) obj2);
                    this.provisioningManager.onProvisionCompleted();
                } catch (Exception e11) {
                    this.provisioningManager.onProvisionError(e11);
                }
            }
        }
    }

    private boolean openInternal(boolean z10) {
        if (isOpen()) {
            return true;
        }
        try {
            byte[] bArrOpenSession = this.mediaDrm.openSession();
            this.sessionId = bArrOpenSession;
            this.mediaCrypto = (T) this.mediaDrm.createMediaCrypto(bArrOpenSession);
            this.state = 3;
            return true;
        } catch (NotProvisionedException e11) {
            if (z10) {
                this.provisioningManager.provisionRequired(this);
                return false;
            }
            onError(e11);
            return false;
        } catch (Exception e12) {
            onError(e12);
            return false;
        }
    }

    private void postKeyRequest(int i11, boolean z10) {
        String str;
        byte[] bArr;
        String str2;
        byte[] bArr2 = i11 == 3 ? this.offlineLicenseKeySetId : this.sessionId;
        DrmInitData.SchemeData schemeData = this.schemeData;
        if (schemeData != null) {
            byte[] bArr3 = schemeData.data;
            String str3 = schemeData.mimeType;
            str = schemeData.licenseServerUrl;
            str2 = str3;
            bArr = bArr3;
        } else {
            str = null;
            bArr = null;
            str2 = null;
        }
        try {
            Pair pairCreate = Pair.create(this.mediaDrm.getKeyRequest(bArr2, bArr, str2, i11, this.optionalKeyRequestParameters), str);
            this.currentKeyRequest = pairCreate;
            this.postRequestHandler.post(1, pairCreate, z10);
        } catch (Exception e11) {
            onKeysError(e11);
        }
    }

    private boolean restoreKeys() {
        try {
            this.mediaDrm.restoreKeys(this.sessionId, this.offlineLicenseKeySetId);
            return true;
        } catch (Exception e11) {
            Log.e(TAG, "Error trying to restore Widevine keys.", e11);
            onError(e11);
            return false;
        }
    }

    public void acquire() {
        int i11 = this.openCount + 1;
        this.openCount = i11;
        if (i11 == 1 && this.state != 1 && openInternal(true)) {
            doLicense(true);
        }
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.drm.DrmSession
    public final DrmSession.DrmSessionException getError() {
        if (this.state == 1) {
            return this.lastException;
        }
        return null;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.drm.DrmSession
    public final T getMediaCrypto() {
        return this.mediaCrypto;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.drm.DrmSession
    public byte[] getOfflineLicenseKeySetId() {
        return this.offlineLicenseKeySetId;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.drm.DrmSession
    public final int getState() {
        return this.state;
    }

    public boolean hasInitData(byte[] bArr) {
        DrmInitData.SchemeData schemeData = this.schemeData;
        return Arrays.equals(schemeData != null ? schemeData.data : null, bArr);
    }

    public boolean hasSessionId(byte[] bArr) {
        return Arrays.equals(this.sessionId, bArr);
    }

    public void onMediaDrmEvent(int i11) {
        if (isOpen()) {
            if (i11 == 1) {
                this.state = 3;
                this.provisioningManager.provisionRequired(this);
            } else if (i11 == 2) {
                doLicense(false);
            } else {
                if (i11 != 3) {
                    return;
                }
                onKeysExpired();
            }
        }
    }

    public void onProvisionCompleted() {
        if (openInternal(false)) {
            doLicense(true);
        }
    }

    public void onProvisionError(Exception exc) {
        onError(exc);
    }

    public void provision() {
        ExoMediaDrm.ProvisionRequest provisionRequest = this.mediaDrm.getProvisionRequest();
        this.currentProvisionRequest = provisionRequest;
        this.postRequestHandler.post(0, provisionRequest, true);
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.drm.DrmSession
    public Map<String, String> queryKeyStatus() {
        byte[] bArr = this.sessionId;
        if (bArr == null) {
            return null;
        }
        return this.mediaDrm.queryKeyStatus(bArr);
    }

    public boolean release() {
        int i11 = this.openCount - 1;
        this.openCount = i11;
        if (i11 != 0) {
            return false;
        }
        this.state = 0;
        this.postResponseHandler.removeCallbacksAndMessages(null);
        this.postRequestHandler.removeCallbacksAndMessages(null);
        this.postRequestHandler = null;
        this.requestHandlerThread.quit();
        this.requestHandlerThread = null;
        this.mediaCrypto = null;
        this.lastException = null;
        this.currentKeyRequest = null;
        this.currentProvisionRequest = null;
        byte[] bArr = this.sessionId;
        if (bArr != null) {
            this.mediaDrm.closeSession(bArr);
            this.sessionId = null;
        }
        return true;
    }
}
