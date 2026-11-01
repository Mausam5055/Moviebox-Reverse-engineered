package nd;

import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.vungle.ads.internal.protos.Sdk$SDKError;

/* JADX INFO: loaded from: classes5.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f70308a = {5, 7, 10, 11, 12, 14, 18, 20, 24, 28, 36, 42, 48, 56, 62, 68};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int[][] f70309b = {new int[]{228, 48, 15, 111, 62}, new int[]{23, 68, 144, 134, 240, 92, 254}, new int[]{28, 24, 185, 166, Sdk$SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, 248, Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE, 255, 110, 61}, new int[]{175, 138, Sdk$SDKError.Reason.AD_IS_PLAYING_VALUE, 12, 194, 168, 39, 245, 60, 97, 120}, new int[]{41, 153, 158, 91, 61, 42, 142, Sdk$SDKError.Reason.INVALID_ADUNIT_BID_PAYLOAD_VALUE, 97, 178, 100, 242}, new int[]{156, 97, PsExtractor.AUDIO_STREAM, 252, 95, 9, 157, Sdk$SDKError.Reason.JSON_ENCODE_ERROR_VALUE, 138, 45, 18, 186, 83, 185}, new int[]{83, 195, 100, 39, 188, 75, 66, 61, 241, Sdk$SDKError.Reason.INVALID_ADUNIT_BID_PAYLOAD_VALUE, 109, 129, 94, 254, 225, 48, 90, 188}, new int[]{15, 195, 244, 9, 233, 71, 168, 2, 188, 160, 153, 145, 253, 79, TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, 82, 27, 174, 186, 172}, new int[]{52, 190, 88, Sdk$SDKError.Reason.AD_IS_PLAYING_VALUE, 109, 39, 176, 21, 155, 197, 251, Sdk$SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, 155, 21, 5, 172, 254, Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, 12, 181, 184, 96, 50, 193}, new int[]{211, 231, 43, 97, 71, 96, 103, 174, 37, 151, 170, 53, 75, 34, 249, Sdk$SDKError.Reason.TPAT_ERROR_VALUE, 17, 138, 110, Sdk$SDKError.Reason.INVALID_ADUNIT_BID_PAYLOAD_VALUE, 141, Sdk$SDKError.Reason.PRIVACY_URL_ERROR_VALUE, 120, 151, 233, 168, 93, 255}, new int[]{245, 127, 242, Sdk$SDKError.Reason.MRAID_JS_DOES_NOT_EXIST_VALUE, 130, 250, 162, 181, 102, 120, 84, 179, Sdk$SDKError.Reason.AD_RESPONSE_RETRY_AFTER_VALUE, 251, 80, 182, 229, 18, 2, 4, 68, 33, 101, Sdk$SDKError.Reason.TPAT_RETRY_FAILED_VALUE, 95, Sdk$SDKError.Reason.JSON_ENCODE_ERROR_VALUE, Sdk$SDKError.Reason.INVALID_INDEX_URL_VALUE, 44, 175, 184, 59, 25, 225, 98, 81, 112}, new int[]{77, 193, Sdk$SDKError.Reason.TPAT_RETRY_FAILED_VALUE, 31, 19, 38, 22, 153, 247, 105, Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE, 2, 245, Sdk$SDKError.Reason.OMSDK_JS_WRITE_FAILED_VALUE, 242, 8, 175, 95, 100, 9, 167, 105, Sdk$SDKError.Reason.INVALID_GZIP_BID_PAYLOAD_VALUE, 111, 57, Sdk$SDKError.Reason.TPAT_ERROR_VALUE, 21, 1, 253, 57, 54, 101, 248, Sdk$SDKError.Reason.AD_CONSUMED_VALUE, 69, 50, 150, 177, 226, 5, 9, 5}, new int[]{245, Sdk$SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE, 172, Sdk$SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, 96, 32, Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE, 22, 238, Sdk$SDKError.Reason.OMSDK_JS_WRITE_FAILED_VALUE, 238, 231, Sdk$SDKError.Reason.AD_IS_PLAYING_VALUE, 188, 237, 87, 191, 106, 16, 147, Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE, 23, 37, 90, 170, Sdk$SDKError.Reason.AD_IS_PLAYING_VALUE, Sdk$SDKError.Reason.MRAID_JS_WRITE_FAILED_VALUE, 88, 120, 100, 66, 138, 186, 240, 82, 44, 176, 87, 187, 147, 160, 175, 69, Sdk$SDKError.Reason.INVALID_ADUNIT_BID_PAYLOAD_VALUE, 92, 253, 225, 19}, new int[]{175, 9, Sdk$SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, 238, 12, 17, Sdk$SDKError.Reason.AD_RESPONSE_RETRY_AFTER_VALUE, Sdk$SDKError.Reason.INVALID_BID_PAYLOAD_VALUE, 100, 29, 175, 170, 230, PsExtractor.AUDIO_STREAM, Sdk$SDKError.Reason.AD_RESPONSE_EMPTY_VALUE, 235, 150, 159, 36, Sdk$SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, 38, 200, Sdk$SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE, 54, 228, 146, Sdk$SDKError.Reason.MRAID_JS_DOES_NOT_EXIST_VALUE, 234, Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE, Sdk$SDKError.Reason.AD_IS_LOADING_VALUE, 29, 232, 144, 238, 22, 150, 201, Sdk$SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE, 62, Sdk$SDKError.Reason.PLACEMENT_AD_TYPE_MISMATCH_VALUE, 164, 13, Sdk$SDKError.Reason.TPAT_RETRY_FAILED_VALUE, 245, 127, 67, 247, 28, 155, 43, Sdk$SDKError.Reason.AD_IS_LOADING_VALUE, 107, 233, 53, 143, 46}, new int[]{242, 93, 169, 50, 144, Sdk$SDKError.Reason.AD_NOT_LOADED_VALUE, 39, Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE, Sdk$SDKError.Reason.AD_CONSUMED_VALUE, 188, 201, PsExtractor.PRIVATE_STREAM_1, 143, TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, 196, 37, 185, 112, 134, 230, 245, 63, 197, 190, 250, 106, 185, Sdk$SDKError.Reason.AD_LOAD_FAIL_RETRY_AFTER_VALUE, 175, 64, Sdk$SDKError.Reason.ASSET_WRITE_ERROR_VALUE, 71, 161, 44, 147, 6, 27, Sdk$SDKError.Reason.MRAID_JS_DOES_NOT_EXIST_VALUE, 51, 63, 87, 10, 40, 130, 188, 17, 163, 31, 176, 170, 4, 107, 232, 7, 94, 166, 224, Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, 86, 47, 11, Sdk$SDKError.Reason.AD_ALREADY_LOADED_VALUE}, new int[]{Sdk$SDKError.Reason.AD_RESPONSE_RETRY_AFTER_VALUE, 228, 173, 89, 251, 149, 159, 56, 89, 33, 147, 244, 154, 36, 73, 127, Sdk$SDKError.Reason.INVALID_ADUNIT_BID_PAYLOAD_VALUE, Sdk$SDKError.Reason.PRIVACY_URL_ERROR_VALUE, 248, 180, 234, 197, 158, 177, 68, Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE, 93, Sdk$SDKError.Reason.INVALID_ADUNIT_BID_PAYLOAD_VALUE, 15, 160, 227, 236, 66, 139, 153, 185, Sdk$SDKError.Reason.AD_CONSUMED_VALUE, 167, 179, 25, Sdk$SDKError.Reason.AD_RESPONSE_RETRY_AFTER_VALUE, 232, 96, Sdk$SDKError.Reason.AD_NOT_LOADED_VALUE, 231, Sdk$SDKError.Reason.PRIVACY_URL_ERROR_VALUE, Sdk$SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, 239, 181, 241, 59, 52, 172, 25, 49, 232, 211, PsExtractor.PRIVATE_STREAM_1, 64, 54, TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, 153, Sdk$SDKError.Reason.OMSDK_DOWNLOAD_JS_ERROR_VALUE, 63, 96, 103, 82, 186}};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f70310c = new int[256];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f70311d = new int[255];

    static {
        int i11 = 1;
        for (int i12 = 0; i12 < 255; i12++) {
            f70311d[i12] = i11;
            f70310c[i11] = i12;
            i11 *= 2;
            if (i11 >= 256) {
                i11 ^= Sdk$SDKError.Reason.MRAID_ERROR_VALUE;
            }
        }
    }

    private static String a(CharSequence charSequence, int i11) {
        int i12;
        int i13;
        int i14 = 0;
        while (true) {
            int[] iArr = f70308a;
            if (i14 >= iArr.length) {
                i14 = -1;
                break;
            }
            if (iArr[i14] == i11) {
                break;
            }
            i14++;
        }
        if (i14 < 0) {
            throw new IllegalArgumentException("Illegal number of error correction codewords specified: " + i11);
        }
        int[] iArr2 = f70309b[i14];
        char[] cArr = new char[i11];
        for (int i15 = 0; i15 < i11; i15++) {
            cArr[i15] = 0;
        }
        for (int i16 = 0; i16 < charSequence.length(); i16++) {
            int i17 = i11 - 1;
            int iCharAt = cArr[i17] ^ charSequence.charAt(i16);
            while (i17 > 0) {
                if (iCharAt == 0 || (i13 = iArr2[i17]) == 0) {
                    cArr[i17] = cArr[i17 - 1];
                } else {
                    char c11 = cArr[i17 - 1];
                    int[] iArr3 = f70311d;
                    int[] iArr4 = f70310c;
                    cArr[i17] = (char) (iArr3[(iArr4[iCharAt] + iArr4[i13]) % 255] ^ c11);
                }
                i17--;
            }
            if (iCharAt == 0 || (i12 = iArr2[0]) == 0) {
                cArr[0] = 0;
            } else {
                int[] iArr5 = f70311d;
                int[] iArr6 = f70310c;
                cArr[0] = (char) iArr5[(iArr6[iCharAt] + iArr6[i12]) % 255];
            }
        }
        char[] cArr2 = new char[i11];
        for (int i18 = 0; i18 < i11; i18++) {
            cArr2[i18] = cArr[(i11 - i18) - 1];
        }
        return String.valueOf(cArr2);
    }

    public static String b(String str, d dVar) {
        if (str.length() != dVar.a()) {
            throw new IllegalArgumentException("The number of codewords does not match the selected symbol");
        }
        StringBuilder sb2 = new StringBuilder(dVar.a() + dVar.c());
        sb2.append(str);
        int iF = dVar.f();
        if (iF == 1) {
            sb2.append(a(str, dVar.c()));
        } else {
            sb2.setLength(sb2.capacity());
            int[] iArr = new int[iF];
            int[] iArr2 = new int[iF];
            int i11 = 0;
            while (i11 < iF) {
                int i12 = i11 + 1;
                iArr[i11] = dVar.b(i12);
                iArr2[i11] = dVar.d(i12);
                i11 = i12;
            }
            for (int i13 = 0; i13 < iF; i13++) {
                StringBuilder sb3 = new StringBuilder(iArr[i13]);
                for (int i14 = i13; i14 < dVar.a(); i14 += iF) {
                    sb3.append(str.charAt(i14));
                }
                String strA = a(sb3.toString(), iArr2[i13]);
                int i15 = 0;
                int i16 = i13;
                while (i16 < iArr2[i13] * iF) {
                    sb2.setCharAt(dVar.a() + i16, strA.charAt(i15));
                    i16 += iF;
                    i15++;
                }
            }
        }
        return sb2.toString();
    }
}
