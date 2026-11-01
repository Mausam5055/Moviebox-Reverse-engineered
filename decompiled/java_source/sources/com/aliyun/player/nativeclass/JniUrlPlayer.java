package com.aliyun.player.nativeclass;

import android.content.Context;
import com.aliyun.player.source.BitStreamSource;
import com.aliyun.player.source.UrlSource;
import com.aliyun.utils.NativeLoader;
import com.cicada.player.utils.NativeUsed;

/* JADX INFO: loaded from: classes2.dex */
public class JniUrlPlayer extends NativePlayerBase {
    private static final String TAG = "JniUrlPlayer";
    private BitStreamSource.ReadCallback mReadCallback;
    private BitStreamSource.SeekCallback mSeekCallback;

    static {
        NativeLoader.loadPlayer();
    }

    public JniUrlPlayer(Context context) {
        super(context);
        this.mReadCallback = null;
        this.mSeekCallback = null;
    }

    public static void loadClass() {
    }

    @NativeUsed
    private int nRead(byte[] bArr) {
        BitStreamSource.ReadCallback readCallback = this.mReadCallback;
        if (readCallback != null) {
            return readCallback.read(bArr);
        }
        return -22;
    }

    @NativeUsed
    private long nSeek(long j11, int i11) {
        BitStreamSource.SeekCallback seekCallback = this.mSeekCallback;
        if (seekCallback != null) {
            return seekCallback.seek(j11, i11);
        }
        return -22L;
    }

    private native void nSetDataSource(BitStreamSource bitStreamSource);

    private native void nSetDataSource(UrlSource urlSource);

    public void setDataSource(BitStreamSource bitStreamSource) {
        this.mReadCallback = bitStreamSource.getReadCallback();
        this.mSeekCallback = bitStreamSource.getSeekCallback();
        nSetDataSource(bitStreamSource);
    }

    public void setDataSource(UrlSource urlSource) {
        nSetDataSource(urlSource);
    }
}
