package okio.internal;

import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okio.Utf8;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0012\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u001e\u0010\u0003\u001a\u00020\u0002*\u00020\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005¨\u0006\u0007"}, d2 = {"commonAsUtf8ToByteArray", "", "", "commonToUtf8String", "beginIndex", "", "endIndex", "okio"}, k = 2, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class _Utf8Kt {
    public static final byte[] commonAsUtf8ToByteArray(String str) {
        int i11;
        char cCharAt;
        Intrinsics.h(str, "<this>");
        byte[] bArr = new byte[str.length() * 4];
        int length = str.length();
        int i12 = 0;
        while (i12 < length) {
            char cCharAt2 = str.charAt(i12);
            if (Intrinsics.j(cCharAt2, 128) >= 0) {
                int length2 = str.length();
                int i13 = i12;
                while (i12 < length2) {
                    char cCharAt3 = str.charAt(i12);
                    if (Intrinsics.j(cCharAt3, 128) < 0) {
                        int i14 = i13 + 1;
                        bArr[i13] = (byte) cCharAt3;
                        i12++;
                        while (true) {
                            i13 = i14;
                            if (i12 >= length2 || Intrinsics.j(str.charAt(i12), 128) >= 0) {
                                break;
                            }
                            i14 = i13 + 1;
                            bArr[i13] = (byte) str.charAt(i12);
                            i12++;
                        }
                    } else {
                        if (Intrinsics.j(cCharAt3, 2048) < 0) {
                            bArr[i13] = (byte) ((cCharAt3 >> 6) | PsExtractor.AUDIO_STREAM);
                            i13 += 2;
                            bArr[i13 + 1] = (byte) ((cCharAt3 & '?') | 128);
                        } else if (55296 > cCharAt3 || cCharAt3 >= 57344) {
                            bArr[i13] = (byte) ((cCharAt3 >> '\f') | 224);
                            bArr[i13 + 1] = (byte) (((cCharAt3 >> 6) & 63) | 128);
                            i13 += 3;
                            bArr[i13 + 2] = (byte) ((cCharAt3 & '?') | 128);
                        } else if (Intrinsics.j(cCharAt3, 56319) > 0 || length2 <= (i11 = i12 + 1) || 56320 > (cCharAt = str.charAt(i11)) || cCharAt >= 57344) {
                            bArr[i13] = Utf8.REPLACEMENT_BYTE;
                            i12++;
                            i13++;
                        } else {
                            int iCharAt = ((cCharAt3 << '\n') + str.charAt(i11)) - 56613888;
                            bArr[i13] = (byte) ((iCharAt >> 18) | 240);
                            bArr[i13 + 1] = (byte) (((iCharAt >> 12) & 63) | 128);
                            bArr[i13 + 2] = (byte) (((iCharAt >> 6) & 63) | 128);
                            i13 += 4;
                            bArr[i13 + 3] = (byte) ((iCharAt & 63) | 128);
                            i12 += 2;
                        }
                        i12++;
                    }
                }
                byte[] bArrCopyOf = Arrays.copyOf(bArr, i13);
                Intrinsics.g(bArrCopyOf, "copyOf(this, newSize)");
                return bArrCopyOf;
            }
            bArr[i12] = (byte) cCharAt2;
            i12++;
        }
        byte[] bArrCopyOf2 = Arrays.copyOf(bArr, str.length());
        Intrinsics.g(bArrCopyOf2, "copyOf(this, newSize)");
        return bArrCopyOf2;
    }

    public static final String commonToUtf8String(byte[] bArr, int i11, int i12) {
        byte b11;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19 = i11;
        int i20 = 3;
        Intrinsics.h(bArr, "<this>");
        if (i19 < 0 || i12 > bArr.length || i19 > i12) {
            throw new ArrayIndexOutOfBoundsException("size=" + bArr.length + " beginIndex=" + i19 + " endIndex=" + i12);
        }
        char[] cArr = new char[i12 - i19];
        int i21 = 0;
        while (i19 < i12) {
            byte b12 = bArr[i19];
            if (b12 >= 0) {
                int i22 = i21 + 1;
                cArr[i21] = (char) b12;
                i19++;
                while (true) {
                    i21 = i22;
                    if (i19 >= i12 || (b11 = bArr[i19]) < 0) {
                        break;
                    }
                    i19++;
                    i22 = i21 + 1;
                    cArr[i21] = (char) b11;
                }
            } else if ((b12 >> 5) == -2) {
                int i23 = i19 + 1;
                if (i12 <= i23) {
                    i13 = i21 + 1;
                    cArr[i21] = (char) Utf8.REPLACEMENT_CODE_POINT;
                } else {
                    byte b13 = bArr[i23];
                    if ((b13 & 192) == 128) {
                        int i24 = (b12 << 6) ^ (b13 ^ 3968);
                        if (i24 < 128) {
                            i13 = i21 + 1;
                            cArr[i21] = (char) Utf8.REPLACEMENT_CODE_POINT;
                        } else {
                            i13 = i21 + 1;
                            cArr[i21] = (char) i24;
                        }
                        Unit unit = Unit.f67061a;
                        i14 = 2;
                    } else {
                        i13 = i21 + 1;
                        cArr[i21] = (char) Utf8.REPLACEMENT_CODE_POINT;
                    }
                    i21 = i13;
                    i19 += i14;
                }
                Unit unit2 = Unit.f67061a;
                i14 = 1;
                i21 = i13;
                i19 += i14;
            } else if ((b12 >> 4) == -2) {
                int i25 = i19 + 2;
                if (i12 <= i25) {
                    int i26 = i21 + 1;
                    cArr[i21] = (char) Utf8.REPLACEMENT_CODE_POINT;
                    Unit unit3 = Unit.f67061a;
                    int i27 = i19 + 1;
                    i16 = (i12 <= i27 || (bArr[i27] & 192) != 128) ? 1 : 2;
                    i21 = i26;
                } else {
                    byte b14 = bArr[i19 + 1];
                    if ((b14 & 192) == 128) {
                        byte b15 = bArr[i25];
                        if ((b15 & 192) == 128) {
                            int i28 = ((b15 ^ (-123008)) ^ (b14 << 6)) ^ (b12 << 12);
                            if (i28 < 2048) {
                                i15 = i21 + 1;
                                cArr[i21] = (char) Utf8.REPLACEMENT_CODE_POINT;
                            } else if (55296 > i28 || i28 >= 57344) {
                                char c11 = (char) i28;
                                i15 = i21 + 1;
                                cArr[i21] = c11;
                            } else {
                                i15 = i21 + 1;
                                cArr[i21] = (char) Utf8.REPLACEMENT_CODE_POINT;
                            }
                            Unit unit4 = Unit.f67061a;
                            i16 = i20;
                        } else {
                            i15 = i21 + 1;
                            cArr[i21] = (char) Utf8.REPLACEMENT_CODE_POINT;
                            Unit unit5 = Unit.f67061a;
                            i16 = 2;
                        }
                    } else {
                        i15 = i21 + 1;
                        cArr[i21] = (char) Utf8.REPLACEMENT_CODE_POINT;
                        Unit unit6 = Unit.f67061a;
                        i16 = 1;
                    }
                    i21 = i15;
                }
                i19 += i16;
            } else {
                if ((b12 >> 3) == -2) {
                    int i29 = i19 + 3;
                    if (i12 <= i29) {
                        i17 = i21 + 1;
                        cArr[i21] = Utf8.REPLACEMENT_CHARACTER;
                        Unit unit7 = Unit.f67061a;
                        int i30 = i19 + 1;
                        if (i12 <= i30 || (bArr[i30] & 192) != 128) {
                            i21 = i17;
                            i20 = 1;
                        } else {
                            int i31 = i19 + 2;
                            if (i12 <= i31 || (bArr[i31] & 192) != 128) {
                                i21 = i17;
                                i20 = 2;
                            } else {
                                i21 = i17;
                            }
                        }
                    } else {
                        byte b16 = bArr[i19 + 1];
                        if ((b16 & 192) == 128) {
                            byte b17 = bArr[i19 + 2];
                            if ((b17 & 192) == 128) {
                                byte b18 = bArr[i29];
                                if ((b18 & 192) == 128) {
                                    int i32 = (((b18 ^ 3678080) ^ (b17 << 6)) ^ (b16 << 12)) ^ (b12 << 18);
                                    if (i32 > 1114111) {
                                        i18 = i21 + 1;
                                        cArr[i21] = Utf8.REPLACEMENT_CHARACTER;
                                    } else if ((55296 > i32 || i32 >= 57344) && i32 >= 65536 && i32 != 65533) {
                                        cArr[i21] = (char) ((i32 >>> 10) + Utf8.HIGH_SURROGATE_HEADER);
                                        cArr[i21 + 1] = (char) ((i32 & 1023) + Utf8.LOG_SURROGATE_HEADER);
                                        i18 = i21 + 2;
                                    } else {
                                        i18 = i21 + 1;
                                        cArr[i21] = Utf8.REPLACEMENT_CHARACTER;
                                    }
                                    Unit unit8 = Unit.f67061a;
                                    i21 = i18;
                                    i20 = 4;
                                } else {
                                    cArr[i21] = Utf8.REPLACEMENT_CHARACTER;
                                    Unit unit9 = Unit.f67061a;
                                    i21++;
                                    i20 = 3;
                                }
                            } else {
                                i17 = i21 + 1;
                                cArr[i21] = Utf8.REPLACEMENT_CHARACTER;
                                Unit unit10 = Unit.f67061a;
                                i21 = i17;
                                i20 = 2;
                            }
                        } else {
                            i17 = i21 + 1;
                            cArr[i21] = Utf8.REPLACEMENT_CHARACTER;
                            Unit unit11 = Unit.f67061a;
                            i21 = i17;
                            i20 = 1;
                        }
                    }
                    i19 += i20;
                } else {
                    cArr[i21] = Utf8.REPLACEMENT_CHARACTER;
                    i19++;
                    i21++;
                }
                i20 = 3;
            }
        }
        return StringsKt.C(cArr, 0, i21);
    }

    public static /* synthetic */ String commonToUtf8String$default(byte[] bArr, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i11 = 0;
        }
        if ((i13 & 2) != 0) {
            i12 = bArr.length;
        }
        return commonToUtf8String(bArr, i11, i12);
    }
}
