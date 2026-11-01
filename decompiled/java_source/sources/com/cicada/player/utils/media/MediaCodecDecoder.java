package com.cicada.player.utils.media;

import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.text.TextUtils;
import android.view.Surface;
import androidx.media3.decoder.d;
import com.cicada.player.utils.Logger;
import com.cicada.player.utils.NativeUsed;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes3.dex */
@NativeUsed
public class MediaCodecDecoder {
    private static int CODEC_CATEGORY_AUDIO = 1;
    private static int CODEC_CATEGORY_VIDEO = 0;
    private static final int ERROR = -1;
    private static final String TAG = "MediaCodecDecoder";
    private static final int TRY_AGAIN = -11;
    private String mMime;
    private static final Object queLock = new Object();
    static List<String> blackCodecPrefix = new ArrayList();
    static List<String> blackCodecSuffix = new ArrayList();
    private Map<String, byte[]> mCodecSpecificDataMap = new LinkedHashMap();
    private int mCodecCateGory = CODEC_CATEGORY_VIDEO;
    private MediaCodec mMediaCodec = null;
    private MediaCrypto mediaCrypto = null;
    private boolean forceInsecureDecoder = false;
    private ByteBuffer[] mInputBuffers = null;
    private ByteBuffer[] mOutputBuffers = null;
    private MediaCodec.BufferInfo mBufferInfo = null;
    private boolean started = false;

    private MediaCodec.CryptoInfo createCryptoInfo(EncryptionInfo encryptionInfo) {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        cryptoInfo.key = encryptionInfo.key_id;
        cryptoInfo.iv = encryptionInfo.f21208iv;
        List<SubsampleEncryptionInfo> list = encryptionInfo.subsamples;
        if (list != null) {
            int size = list.size();
            cryptoInfo.numSubSamples = size;
            cryptoInfo.numBytesOfClearData = new int[size];
            cryptoInfo.numBytesOfEncryptedData = new int[size];
            for (int i11 = 0; i11 < encryptionInfo.subsamples.size(); i11++) {
                SubsampleEncryptionInfo subsampleEncryptionInfo = encryptionInfo.subsamples.get(i11);
                cryptoInfo.numBytesOfClearData[i11] = subsampleEncryptionInfo.bytes_of_clear_data;
                cryptoInfo.numBytesOfEncryptedData[i11] = subsampleEncryptionInfo.bytes_of_protected_data;
            }
        }
        if (C.CENC_TYPE_cenc.equals(encryptionInfo.scheme) || C.CENC_TYPE_cens.equals(encryptionInfo.scheme)) {
            cryptoInfo.mode = 1;
        } else if (C.CENC_TYPE_cbc1.equals(encryptionInfo.scheme) || C.CENC_TYPE_cbcs.equals(encryptionInfo.scheme)) {
            cryptoInfo.mode = 2;
        }
        if (Build.VERSION.SDK_INT >= 24 && (C.CENC_TYPE_cens.equals(encryptionInfo.scheme) || C.CENC_TYPE_cbcs.equals(encryptionInfo.scheme))) {
            cryptoInfo.setPattern(d.a(encryptionInfo.crypt_byte_block, encryptionInfo.skip_byte_block));
        }
        return cryptoInfo;
    }

    private OutputBufferInfo fillDecodeBufferInfo(int i11) {
        OutputBufferInfo outputBufferInfo = new OutputBufferInfo();
        outputBufferInfo.type = 0;
        outputBufferInfo.index = i11;
        MediaCodec.BufferInfo bufferInfo = this.mBufferInfo;
        outputBufferInfo.pts = bufferInfo.presentationTimeUs;
        outputBufferInfo.eos = (bufferInfo.flags & 4) != 0;
        outputBufferInfo.bufferSize = bufferInfo.size;
        outputBufferInfo.bufferOffset = bufferInfo.offset;
        return outputBufferInfo;
    }

    private OutputBufferInfo fillFormatOutputBufferInfo() {
        try {
            MediaFormat outputFormat = this.mMediaCodec.getOutputFormat();
            OutputBufferInfo outputBufferInfo = new OutputBufferInfo();
            outputBufferInfo.type = 1;
            outputBufferInfo.eos = false;
            if (this.mCodecCateGory == CODEC_CATEGORY_VIDEO) {
                outputBufferInfo.videoCropBottom = getFormatInteger(outputFormat, "crop-bottom");
                outputBufferInfo.videoCropLeft = getFormatInteger(outputFormat, "crop-left");
                outputBufferInfo.videoCropRight = getFormatInteger(outputFormat, "crop-right");
                outputBufferInfo.videoCropTop = getFormatInteger(outputFormat, "crop-top");
                outputBufferInfo.videoHeight = getFormatInteger(outputFormat, "width");
                outputBufferInfo.videoWidth = getFormatInteger(outputFormat, "height");
                outputBufferInfo.videoPixelFormat = getFormatInteger(outputFormat, "color-format");
                outputBufferInfo.videoSliceHeight = getFormatInteger(outputFormat, "slice-height");
                outputBufferInfo.videoStride = getFormatInteger(outputFormat, "stride");
            } else {
                outputBufferInfo.audioChannelCount = getFormatInteger(outputFormat, "channel-count");
                outputBufferInfo.audioChannelMask = getFormatInteger(outputFormat, "channel-mask");
                outputBufferInfo.audioSampleRate = getFormatInteger(outputFormat, "sample-rate");
                outputBufferInfo.audioFormat = getFormatInteger(outputFormat, "pcm-encoding");
            }
            return outputBufferInfo;
        } catch (Exception unused) {
            return null;
        }
    }

    private String findDecoderName(MediaFormat mediaFormat) {
        MediaCrypto mediaCrypto = this.mediaCrypto;
        boolean z10 = false;
        if (mediaCrypto != null && !this.forceInsecureDecoder && mediaCrypto.requiresSecureDecoderComponent(this.mMime)) {
            z10 = true;
        }
        String decoderName = getDecoderName(mediaFormat, z10);
        Logger.i(TAG, "findDecoderName : " + decoderName + " , secure = " + z10);
        return decoderName;
    }

    private String getDecoderName(MediaFormat mediaFormat, boolean z10) {
        List<MediaCodecInfo> codecInfos = MediaCodecUtils.getCodecInfos(this.mMime, z10, mediaFormat);
        String notBlackCodecName = getNotBlackCodecName(codecInfos);
        return (this.mediaCrypto == null || !TextUtils.isEmpty(notBlackCodecName) || codecInfos.isEmpty()) ? notBlackCodecName : codecInfos.get(0).getName();
    }

    private static int getFormatInteger(MediaFormat mediaFormat, String str) {
        if (mediaFormat.containsKey(str)) {
            return mediaFormat.getInteger(str);
        }
        return -1;
    }

    private ByteBuffer getInputBuffer(int i11) {
        try {
            return this.mMediaCodec.getInputBuffer(i11);
        } catch (Exception e11) {
            Logger.e(TAG, "getInputBuffer fail " + e11.getMessage());
            return null;
        }
    }

    private String getNotBlackCodecName(List<MediaCodecInfo> list) {
        if (!list.isEmpty()) {
            for (MediaCodecInfo mediaCodecInfo : list) {
                if (!isBlackCodec(mediaCodecInfo)) {
                    return mediaCodecInfo.getName();
                }
            }
        }
        return null;
    }

    private static boolean isBlackCodec(MediaCodecInfo mediaCodecInfo) {
        if (blackCodecPrefix.isEmpty()) {
            blackCodecPrefix.add("OMX.PV.");
            blackCodecPrefix.add("OMX.google.");
            blackCodecPrefix.add("OMX.ARICENT.");
            blackCodecPrefix.add("OMX.SEC.WMV.Decoder");
            blackCodecPrefix.add("OMX.SEC.MP3.Decoder");
            blackCodecPrefix.add("OMX.MTK.VIDEO.DECODER.VC1");
            blackCodecPrefix.add("OMX.SEC.vp8.dec");
        }
        if (blackCodecSuffix.isEmpty()) {
            blackCodecSuffix.add(".sw.dec");
            blackCodecSuffix.add(".hevcswvdec");
        }
        String name = mediaCodecInfo.getName();
        Iterator<String> it = blackCodecPrefix.iterator();
        while (it.hasNext()) {
            if (name.startsWith(it.next())) {
                return true;
            }
        }
        Iterator<String> it2 = blackCodecSuffix.iterator();
        while (it2.hasNext()) {
            if (name.endsWith(it2.next())) {
                return true;
            }
        }
        return false;
    }

    private int queueInputBufferInner(int i11, byte[] bArr, long j11, boolean z10, boolean z11, Object obj) {
        ByteBuffer inputBuffer;
        if (this.mMediaCodec == null || (inputBuffer = getInputBuffer(i11)) == null) {
            return -1;
        }
        inputBuffer.clear();
        if (bArr != null) {
            inputBuffer.put(bArr, 0, bArr.length);
            inputBuffer.flip();
        }
        int i12 = z10 ? 2 : 0;
        if (bArr == null) {
            i12 |= 4;
        }
        int i13 = i12;
        try {
            if (z11 && bArr != null) {
                MediaCodec.CryptoInfo cryptoInfoCreateCryptoInfo = createCryptoInfo((EncryptionInfo) obj);
                synchronized (queLock) {
                    this.mMediaCodec.queueSecureInputBuffer(i11, 0, cryptoInfoCreateCryptoInfo, j11, i13);
                }
            } else if ((i13 & 4) == 4) {
                this.mMediaCodec.queueInputBuffer(i11, 0, 0, 0L, i13);
            } else {
                this.mMediaCodec.queueInputBuffer(i11, 0, inputBuffer.limit(), j11, i13);
            }
            return 0;
        } catch (Exception e11) {
            Logger.e(TAG, "queueInputBufferInner  fail " + e11.getLocalizedMessage());
            return -1;
        }
    }

    @NativeUsed
    public int configureAudio(String str, int i11, int i12, int i13) {
        String str2 = TAG;
        Logger.i(str2, "--> configureAudio start " + str + i11 + " , " + i12);
        this.mCodecCateGory = CODEC_CATEGORY_AUDIO;
        this.mMime = str;
        MediaFormat mediaFormatCreateAudioFormat = MediaFormat.createAudioFormat(str, i11, i12);
        mediaFormatCreateAudioFormat.setInteger("is-adts", i13);
        String strFindDecoderName = findDecoderName(mediaFormatCreateAudioFormat);
        if (TextUtils.isEmpty(strFindDecoderName)) {
            Logger.e(str2, "not found codec : " + str);
            return -12;
        }
        try {
            this.mMediaCodec = MediaCodec.createByCodecName(strFindDecoderName);
        } catch (IOException unused) {
        }
        MediaCodec mediaCodec = this.mMediaCodec;
        if (mediaCodec == null) {
            Logger.e(TAG, "createByCodecName fail : " + strFindDecoderName);
            return -13;
        }
        try {
            mediaCodec.configure(mediaFormatCreateAudioFormat, (Surface) null, this.mediaCrypto, 0);
            return 0;
        } catch (Exception e11) {
            Logger.e(TAG, "configure fail : " + e11.getMessage());
            return -14;
        }
    }

    @NativeUsed
    public int configureVideo(String str, int i11, int i12, int i13, Object obj) {
        String str2 = TAG;
        Logger.i(str2, "--> configureVideo start " + str + ", " + i11 + ", " + i12 + ", " + obj);
        this.mCodecCateGory = CODEC_CATEGORY_VIDEO;
        this.mMime = str;
        MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat(str, i11, i12);
        if (i13 != 0) {
            mediaFormatCreateVideoFormat.setInteger("rotation-degrees", i13);
        }
        String strFindDecoderName = findDecoderName(mediaFormatCreateVideoFormat);
        if (TextUtils.isEmpty(strFindDecoderName)) {
            Logger.e(str2, "not found video codec : " + str);
            return -12;
        }
        try {
            this.mMediaCodec = MediaCodec.createByCodecName(strFindDecoderName);
        } catch (IOException unused) {
        }
        MediaCodec mediaCodec = this.mMediaCodec;
        if (mediaCodec == null) {
            Logger.e(TAG, "createByCodecName fail : " + strFindDecoderName);
            return -13;
        }
        try {
            if (obj instanceof Surface) {
                mediaCodec.configure(mediaFormatCreateVideoFormat, (Surface) obj, this.mediaCrypto, 0);
            } else {
                mediaCodec.configure(mediaFormatCreateVideoFormat, (Surface) null, this.mediaCrypto, 0);
            }
            return 0;
        } catch (Exception e11) {
            Logger.e(TAG, "configure fail : " + e11.getMessage());
            return -14;
        }
    }

    @NativeUsed
    public int dequeueInputBufferIndex(long j11) {
        ByteBuffer inputBuffer;
        if (this.mMediaCodec == null) {
            return -1;
        }
        try {
            if (!this.mCodecSpecificDataMap.isEmpty()) {
                for (String str : this.mCodecSpecificDataMap.keySet()) {
                    int iDequeueInputBuffer = this.mMediaCodec.dequeueInputBuffer(j11);
                    if (iDequeueInputBuffer < 0 || (inputBuffer = getInputBuffer(iDequeueInputBuffer)) == null) {
                        return TRY_AGAIN;
                    }
                    byte[] bArr = this.mCodecSpecificDataMap.get(str);
                    if (bArr != null) {
                        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArr.length);
                        byteBufferAllocate.put(bArr);
                        byteBufferAllocate.flip();
                        inputBuffer.put(byteBufferAllocate);
                        this.mMediaCodec.queueInputBuffer(iDequeueInputBuffer, 0, byteBufferAllocate.limit(), 0L, 2);
                    }
                }
                this.mCodecSpecificDataMap.clear();
            }
            int iDequeueInputBuffer2 = this.mMediaCodec.dequeueInputBuffer(j11);
            return iDequeueInputBuffer2 >= 0 ? iDequeueInputBuffer2 : TRY_AGAIN;
        } catch (Exception e11) {
            Logger.e(TAG, "dequeueInputBufferIndex fail " + e11.getMessage());
            return -1;
        }
    }

    @NativeUsed
    public int dequeueOutputBufferIndex(long j11) {
        MediaCodec mediaCodec = this.mMediaCodec;
        if (mediaCodec == null) {
            return -1;
        }
        try {
            int iDequeueOutputBuffer = mediaCodec.dequeueOutputBuffer(this.mBufferInfo, j11);
            if (iDequeueOutputBuffer >= 0) {
                return iDequeueOutputBuffer;
            }
            if (iDequeueOutputBuffer == -1) {
                return TRY_AGAIN;
            }
            if (iDequeueOutputBuffer == -2 || iDequeueOutputBuffer == -3) {
                return iDequeueOutputBuffer;
            }
            return -1;
        } catch (Exception e11) {
            Logger.e(TAG, "dequeueOutputBufferIndex fail " + e11.getMessage());
            return -1;
        }
    }

    @NativeUsed
    public int flush() {
        String str = TAG;
        Logger.i(str, "--> flush start");
        MediaCodec mediaCodec = this.mMediaCodec;
        if (mediaCodec == null) {
            Logger.e(str, "mMediaCodec  null ");
            return -1;
        }
        try {
            mediaCodec.flush();
            return 0;
        } catch (Exception e11) {
            Logger.e(TAG, "flush  fail " + e11.getMessage());
            return 0;
        }
    }

    @NativeUsed
    public Object getOutBuffer(int i11) {
        if (i11 < 0) {
            return null;
        }
        try {
            return this.mMediaCodec.getOutputBuffer(i11);
        } catch (Exception e11) {
            Logger.e(TAG, "getOutBuffer fail " + e11.getMessage());
            return null;
        }
    }

    @NativeUsed
    public Object getOutputBufferInfo(int i11) {
        if (i11 == -2) {
            return fillFormatOutputBufferInfo();
        }
        if (i11 >= 0) {
            return fillDecodeBufferInfo(i11);
        }
        return null;
    }

    @NativeUsed
    public int queueInputBuffer(int i11, byte[] bArr, long j11, boolean z10) {
        return queueInputBufferInner(i11, bArr, j11, z10, false, null);
    }

    @NativeUsed
    public int queueSecureInputBuffer(int i11, byte[] bArr, Object obj, long j11, boolean z10) {
        return queueInputBufferInner(i11, bArr, j11, z10, true, obj);
    }

    @NativeUsed
    public int release() {
        Logger.i(TAG, "--> release ");
        MediaCodec mediaCodec = this.mMediaCodec;
        if (mediaCodec == null) {
            return -1;
        }
        mediaCodec.release();
        this.mMediaCodec = null;
        MediaCrypto mediaCrypto = this.mediaCrypto;
        if (mediaCrypto == null) {
            return 0;
        }
        mediaCrypto.release();
        return 0;
    }

    @NativeUsed
    public int releaseOutputBuffer(int i11, boolean z10) {
        MediaCodec mediaCodec = this.mMediaCodec;
        if (mediaCodec == null) {
            return -1;
        }
        try {
            mediaCodec.releaseOutputBuffer(i11, z10);
            return 0;
        } catch (Exception e11) {
            Logger.e(TAG, "releaseOutputBuffer fail " + e11.getMessage());
            return -1;
        }
    }

    @NativeUsed
    public void setCodecSpecificData(Object obj) {
        Logger.d(TAG, "--> setCodecSpecificData datas " + obj);
        this.mCodecSpecificDataMap.clear();
        if (obj == null) {
            return;
        }
        this.mCodecSpecificDataMap.putAll((LinkedHashMap) obj);
    }

    @NativeUsed
    public boolean setDrmInfo(String str, byte[] bArr) {
        Logger.d(TAG, "--> setDrmInfo uuid " + str);
        try {
            this.mediaCrypto = new MediaCrypto(UUID.fromString(str), bArr);
            return true;
        } catch (Exception e11) {
            Logger.e(TAG, "createMediaCrypto failed: " + e11.getMessage());
            return false;
        }
    }

    @NativeUsed
    public void setForceInsecureDecoder(boolean z10) {
        Logger.d(TAG, "--> setForceInsecureDecoder  " + z10);
        this.forceInsecureDecoder = z10;
    }

    @NativeUsed
    public int start() {
        String str = TAG;
        Logger.i(str, "--> start ");
        MediaCodec mediaCodec = this.mMediaCodec;
        if (mediaCodec == null) {
            Logger.e(str, "mMediaCodec  null ");
            return -1;
        }
        try {
            mediaCodec.start();
            this.started = true;
            this.mBufferInfo = new MediaCodec.BufferInfo();
            return 0;
        } catch (Exception e11) {
            Logger.e(TAG, this.mMediaCodec.getName() + " start fail : " + e11.getMessage());
            return -1;
        }
    }

    public int stop() {
        Logger.i(TAG, "--> stop start");
        MediaCodec mediaCodec = this.mMediaCodec;
        if (mediaCodec == null) {
            return -1;
        }
        if (!this.started) {
            return 0;
        }
        try {
            mediaCodec.stop();
            return 0;
        } catch (Exception e11) {
            Logger.e(TAG, "stop fail " + e11.getMessage());
            return -1;
        }
    }
}
