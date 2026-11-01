package com.aliyun.thumbnail;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.aliyun.utils.AbsHttpHelper;
import com.aliyun.utils.NativeLoader;
import com.aliyun.utils.ThreadManager;
import com.cicada.player.utils.Logger;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.HttpsURLConnection;

/* JADX INFO: loaded from: classes2.dex */
public class ThumbnailHelper {
    private static final int CONNECTION_TIMEOUT = 5000;
    private static final int MSG_KEY_BITMAP_FAIL = 2;
    private static final int MSG_KEY_BITMAP_SUCCESS = 3;
    private static final int MSG_KEY_PREPARE_FAIL = 0;
    private static final int MSG_KEY_PREPARE_SUCCESS = 1;
    private static final String TAG = "ThumbnailHelper";
    private ThumbnailInfo[] mThumbnailInfoArray;
    private String mUrl;
    private final Object lock = new Object();
    private Map<String, byte[]> mUrlDataMap = new HashMap();
    private volatile boolean hasPrepared = false;
    private OnPrepareListener mOnPrepareListener = null;
    private OnThumbnailGetListener mOnThumbnailGetListener = null;
    private ResultHandler mResultHandler = new ResultHandler(this);

    private class ByteHttp extends AbsHttpHelper {
        byte[] bytes;
        int len;

        private ByteHttp() {
            this.bytes = null;
            this.len = 0;
        }

        @Override // com.aliyun.utils.AbsHttpHelper
        protected void handleErrorInputStream(InputStream inputStream) {
        }

        @Override // com.aliyun.utils.AbsHttpHelper
        protected void handleOKInputStream(InputStream inputStream) {
            byte[] stream = ThumbnailHelper.readStream(inputStream);
            this.bytes = stream;
            if (stream != null) {
                this.len = stream.length;
            }
        }
    }

    private interface OnImgDataResultListener {
        void onFail();

        void onSuccess(byte[] bArr);
    }

    public interface OnPrepareListener {
        void onPrepareFail();

        void onPrepareSuccess();
    }

    public interface OnThumbnailGetListener {
        void onThumbnailGetFail(long j11, String str);

        void onThumbnailGetSuccess(long j11, ThumbnailBitmapInfo thumbnailBitmapInfo);
    }

    private static class ResultHandler extends Handler {
        private WeakReference<ThumbnailHelper> thumbnailHelperWeakReference;

        ResultHandler(ThumbnailHelper thumbnailHelper) {
            super(Looper.getMainLooper());
            this.thumbnailHelperWeakReference = new WeakReference<>(thumbnailHelper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            ThumbnailHelper thumbnailHelper = this.thumbnailHelperWeakReference.get();
            if (thumbnailHelper != null) {
                thumbnailHelper.handleMessage(message);
            }
            super.handleMessage(message);
        }
    }

    static {
        NativeLoader.loadPlayer();
    }

    public ThumbnailHelper(String str) {
        this.mUrl = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap getBitmap(ThumbnailInfo thumbnailInfo, byte[] bArr) {
        try {
            BitmapRegionDecoder bitmapRegionDecoderNewInstance = BitmapRegionDecoder.newInstance((InputStream) new ByteArrayInputStream(bArr), true);
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inPreferredConfig = Bitmap.Config.RGB_565;
            int i11 = thumbnailInfo.mLeft;
            int i12 = thumbnailInfo.mTop;
            return bitmapRegionDecoderNewInstance.decodeRegion(new Rect(i11, i12, thumbnailInfo.mWidth + i11, thumbnailInfo.mHeight + i12), options);
        } catch (IOException e11) {
            e11.printStackTrace();
            Logger.d(TAG, "获取缩略图异常。。" + e11.getMessage());
            return null;
        }
    }

    private URLConnection getHttpUrlConnection(String str) {
        URLConnection uRLConnection = null;
        try {
            URLConnection uRLConnection2 = (URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection());
            try {
                if (!(uRLConnection2 instanceof HttpURLConnection)) {
                    return null;
                }
                HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnection2;
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setConnectTimeout(5000);
                httpURLConnection.setReadTimeout(5000);
                return uRLConnection2;
            } catch (Exception unused) {
                uRLConnection = uRLConnection2;
                return uRLConnection;
            }
        } catch (Exception unused2) {
        }
    }

    private URLConnection getHttpsUrlConnection(String str) {
        URLConnection uRLConnection = null;
        try {
            URLConnection uRLConnection2 = (URLConnection) FirebasePerfUrlConnection.instrument(new URL(str).openConnection());
            try {
                if (!(uRLConnection2 instanceof HttpsURLConnection)) {
                    return null;
                }
                HttpsURLConnection httpsURLConnection = (HttpsURLConnection) uRLConnection2;
                httpsURLConnection.setRequestMethod("GET");
                httpsURLConnection.setConnectTimeout(5000);
                httpsURLConnection.setReadTimeout(5000);
                return uRLConnection2;
            } catch (Exception unused) {
                uRLConnection = uRLConnection2;
                return uRLConnection;
            }
        } catch (Exception unused2) {
        }
    }

    private ThumbnailInfo getInfoByPosition(long j11) {
        String str = TAG;
        Logger.d(str, "getInfoByPosition position = " + j11);
        ThumbnailInfo[] thumbnailInfoArr = this.mThumbnailInfoArray;
        ThumbnailInfo thumbnailInfo = null;
        if (thumbnailInfoArr == null) {
            Logger.e(str, "mThumbnailInfoArray == null");
            return null;
        }
        int length = thumbnailInfoArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            ThumbnailInfo thumbnailInfo2 = this.mThumbnailInfoArray[i11];
            if (thumbnailInfo2.mStart <= j11 && thumbnailInfo2.mUntil >= j11) {
                thumbnailInfo = thumbnailInfo2;
                break;
            }
        }
        Logger.d(TAG, "mThumbnailInfoArray targetInfo = " + thumbnailInfo);
        return thumbnailInfo;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getResponseCode(URLConnection uRLConnection) throws IOException {
        if (uRLConnection instanceof HttpsURLConnection) {
            return ((HttpsURLConnection) uRLConnection).getResponseCode();
        }
        if (uRLConnection instanceof HttpURLConnection) {
            return ((HttpURLConnection) uRLConnection).getResponseCode();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public native Object[] getThumbnailInfos(String str, String str2);

    /* JADX INFO: Access modifiers changed from: private */
    public URLConnection getUrlConnection(String str) {
        if (str.startsWith("https://")) {
            return getHttpsUrlConnection(str);
        }
        if (str.startsWith("http://")) {
            return getHttpUrlConnection(str);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleMessage(Message message) {
        int i11 = message.what;
        if (i11 == 1) {
            OnPrepareListener onPrepareListener = this.mOnPrepareListener;
            if (onPrepareListener != null) {
                onPrepareListener.onPrepareSuccess();
                return;
            }
            return;
        }
        if (i11 == 0) {
            OnPrepareListener onPrepareListener2 = this.mOnPrepareListener;
            if (onPrepareListener2 != null) {
                onPrepareListener2.onPrepareFail();
                return;
            }
            return;
        }
        if (i11 == 2) {
            if (this.mOnThumbnailGetListener != null) {
                this.mOnThumbnailGetListener.onThumbnailGetFail(message.getData().getLong("pos"), (String) message.obj);
            }
        } else {
            if (i11 != 3 || this.mOnThumbnailGetListener == null) {
                return;
            }
            long j11 = message.getData().getLong("pos");
            long j12 = message.getData().getLong("start");
            long j13 = message.getData().getLong("until");
            Bitmap bitmap = (Bitmap) message.obj;
            ThumbnailBitmapInfo thumbnailBitmapInfo = new ThumbnailBitmapInfo();
            thumbnailBitmapInfo.setPositionRange(new long[]{j12, j13});
            thumbnailBitmapInfo.setThumbnailBitmap(bitmap);
            this.mOnThumbnailGetListener.onThumbnailGetSuccess(j11, thumbnailBitmapInfo);
        }
    }

    public static void loadClass() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] readStream(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            try {
                try {
                    try {
                        int i11 = inputStream.read(bArr);
                        if (i11 == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr, 0, i11);
                    } catch (IOException e11) {
                        e11.printStackTrace();
                        byteArrayOutputStream.close();
                    }
                } catch (Throwable th2) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException e12) {
                        e12.printStackTrace();
                    }
                    throw th2;
                }
            } catch (IOException e13) {
                e13.printStackTrace();
            }
        }
        byteArrayOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    private void requestImgData(final String str, final OnImgDataResultListener onImgDataResultListener) {
        ThreadManager.threadPool.submit(new Runnable() { // from class: com.aliyun.thumbnail.ThumbnailHelper.3
            /* JADX INFO: Removed unreachable split cross block B:58:0x00b2 */
            /* JADX INFO: Removed unreachable split cross block B:63:0x00b2 */
            @Override // java.lang.Runnable
            public void run() {
                InputStream inputStream;
                byte[] stream;
                synchronized (ThumbnailHelper.this.lock) {
                    try {
                        inputStream = null;
                        stream = ThumbnailHelper.this.mUrlDataMap.containsKey(str) ? (byte[]) ThumbnailHelper.this.mUrlDataMap.get(str) : null;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (stream != null) {
                    onImgDataResultListener.onSuccess(stream);
                    return;
                }
                URLConnection urlConnection = ThumbnailHelper.this.getUrlConnection(str);
                try {
                    try {
                        if (urlConnection == null) {
                            Logger.e(ThumbnailHelper.TAG, "can not open url" + str);
                        } else {
                            try {
                                int responseCode = ThumbnailHelper.this.getResponseCode(urlConnection);
                                if (responseCode == 200) {
                                    inputStream = urlConnection.getInputStream();
                                    stream = ThumbnailHelper.readStream(inputStream);
                                    if (inputStream != null) {
                                        inputStream.close();
                                    }
                                } else {
                                    Logger.e(ThumbnailHelper.TAG, "open url responseCode = " + responseCode);
                                }
                            } catch (IOException e11) {
                                Logger.e(ThumbnailHelper.TAG, "open url exception = " + e11.getMessage());
                                if (0 != 0) {
                                    inputStream.close();
                                }
                            }
                        }
                    } catch (Throwable th3) {
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException e12) {
                                e12.printStackTrace();
                            }
                        }
                        throw th3;
                    }
                } catch (IOException e13) {
                    e13.printStackTrace();
                }
                if (stream == null) {
                    onImgDataResultListener.onFail();
                    return;
                }
                synchronized (ThumbnailHelper.this.lock) {
                    ThumbnailHelper.this.mUrlDataMap.put(str, stream);
                }
                onImgDataResultListener.onSuccess(stream);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendPrepareFailMsg() {
        Message messageObtainMessage = this.mResultHandler.obtainMessage();
        messageObtainMessage.what = 0;
        this.mResultHandler.sendMessage(messageObtainMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendPrepareSuccessMsg() {
        Message messageObtainMessage = this.mResultHandler.obtainMessage();
        messageObtainMessage.what = 1;
        this.mResultHandler.sendMessage(messageObtainMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendRequestBitmapFailMsg(String str, long j11) {
        Message messageObtainMessage = this.mResultHandler.obtainMessage();
        messageObtainMessage.what = 2;
        messageObtainMessage.obj = str;
        Bundle bundle = new Bundle();
        bundle.putLong("pos", j11);
        messageObtainMessage.setData(bundle);
        this.mResultHandler.sendMessage(messageObtainMessage);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendRequestBitmapSuccMsg(ThumbnailInfo thumbnailInfo, long j11, Bitmap bitmap) {
        Message messageObtainMessage = this.mResultHandler.obtainMessage();
        messageObtainMessage.what = 3;
        messageObtainMessage.obj = bitmap;
        Bundle bundle = new Bundle();
        bundle.putLong("pos", j11);
        bundle.putLong("start", thumbnailInfo.mStart);
        bundle.putLong("until", thumbnailInfo.mUntil);
        messageObtainMessage.setData(bundle);
        this.mResultHandler.sendMessage(messageObtainMessage);
    }

    public void prepare() {
        synchronized (this.lock) {
            try {
                if (this.hasPrepared) {
                    Logger.e(TAG, "prepare again?");
                } else {
                    this.hasPrepared = true;
                    ThreadManager.threadPool.submit(new Runnable() { // from class: com.aliyun.thumbnail.ThumbnailHelper.1
                        @Override // java.lang.Runnable
                        public void run() throws Throwable {
                            ByteHttp byteHttp = new ByteHttp();
                            byteHttp.doGet(ThumbnailHelper.this.mUrl);
                            Matcher matcher = Pattern.compile("([a-zA-Z]+://[^/]+).*[/]").matcher(ThumbnailHelper.this.mUrl);
                            if (matcher.find() && byteHttp.bytes != null) {
                                Object[] thumbnailInfos = ThumbnailHelper.this.getThumbnailInfos(matcher.group(0), new String(byteHttp.bytes));
                                if (thumbnailInfos == null) {
                                    ThumbnailHelper.this.mThumbnailInfoArray = null;
                                } else {
                                    ThumbnailHelper.this.mThumbnailInfoArray = (ThumbnailInfo[]) thumbnailInfos;
                                }
                            }
                            if (ThumbnailHelper.this.mThumbnailInfoArray != null) {
                                ThumbnailHelper.this.sendPrepareSuccessMsg();
                            } else {
                                ThumbnailHelper.this.sendPrepareFailMsg();
                            }
                        }
                    });
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void requestBitmapAtPosition(final long j11) {
        final ThumbnailInfo infoByPosition = getInfoByPosition(j11);
        if (infoByPosition != null) {
            requestImgData(infoByPosition.mPath, new OnImgDataResultListener() { // from class: com.aliyun.thumbnail.ThumbnailHelper.2
                @Override // com.aliyun.thumbnail.ThumbnailHelper.OnImgDataResultListener
                public void onFail() {
                    ThumbnailHelper.this.sendRequestBitmapFailMsg("can not get thumbnail at position:" + j11, j11);
                }

                @Override // com.aliyun.thumbnail.ThumbnailHelper.OnImgDataResultListener
                public void onSuccess(byte[] bArr) {
                    Bitmap bitmap = ThumbnailHelper.this.getBitmap(infoByPosition, bArr);
                    if (bitmap != null) {
                        ThumbnailHelper.this.sendRequestBitmapSuccMsg(infoByPosition, j11, bitmap);
                        return;
                    }
                    ThumbnailHelper.this.sendRequestBitmapFailMsg("can not get thumbnail at position:" + j11, j11);
                }
            });
            return;
        }
        sendRequestBitmapFailMsg("no match thumbnail at position:" + j11, j11);
    }

    public void setOnPrepareListener(OnPrepareListener onPrepareListener) {
        this.mOnPrepareListener = onPrepareListener;
    }

    public void setOnThumbnailGetListener(OnThumbnailGetListener onThumbnailGetListener) {
        this.mOnThumbnailGetListener = onThumbnailGetListener;
    }
}
