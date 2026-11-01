package okio;

import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000D\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\f\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\u001a\u0011\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0001H\u0080\b\u001a\u0011\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0007H\u0080\b\u001a4\u0010\u0010\u001a\u00020\u0001*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\bø\u0001\u0000\u001a4\u0010\u0017\u001a\u00020\u0001*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\bø\u0001\u0000\u001a4\u0010\u0018\u001a\u00020\u0001*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\bø\u0001\u0000\u001a4\u0010\u0019\u001a\u00020\u0016*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\bø\u0001\u0000\u001a4\u0010\u001a\u001a\u00020\u0016*\u00020\u001b2\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\bø\u0001\u0000\u001a4\u0010\u001c\u001a\u00020\u0016*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00160\u0015H\u0080\bø\u0001\u0000\u001a%\u0010\u001d\u001a\u00020\u001e*\u00020\u001b2\b\b\u0002\u0010\u0012\u001a\u00020\u00012\b\b\u0002\u0010\u0013\u001a\u00020\u0001H\u0007¢\u0006\u0002\b\u001f\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0007X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\b\u001a\u00020\tX\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006 "}, d2 = {"HIGH_SURROGATE_HEADER", "", "LOG_SURROGATE_HEADER", "MASK_2BYTES", "MASK_3BYTES", "MASK_4BYTES", "REPLACEMENT_BYTE", "", "REPLACEMENT_CHARACTER", "", "REPLACEMENT_CODE_POINT", "isIsoControl", "", "codePoint", "isUtf8Continuation", "byte", "process2Utf8Bytes", "", "beginIndex", "endIndex", "yield", "Lkotlin/Function1;", "", "process3Utf8Bytes", "process4Utf8Bytes", "processUtf16Chars", "processUtf8Bytes", "", "processUtf8CodePoints", "utf8Size", "", "size", "okio"}, k = 2, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@JvmName
@SourceDebugExtension
public final class Utf8 {
    public static final int HIGH_SURROGATE_HEADER = 55232;
    public static final int LOG_SURROGATE_HEADER = 56320;
    public static final int MASK_2BYTES = 3968;
    public static final int MASK_3BYTES = -123008;
    public static final int MASK_4BYTES = 3678080;
    public static final byte REPLACEMENT_BYTE = 63;
    public static final char REPLACEMENT_CHARACTER = 65533;
    public static final int REPLACEMENT_CODE_POINT = 65533;

    public static final boolean isIsoControl(int i11) {
        return (i11 >= 0 && i11 < 32) || (127 <= i11 && i11 < 160);
    }

    public static final boolean isUtf8Continuation(byte b11) {
        return (b11 & 192) == 128;
    }

    public static final int process2Utf8Bytes(byte[] bArr, int i11, int i12, Function1<? super Integer, Unit> yield) {
        Intrinsics.h(bArr, "<this>");
        Intrinsics.h(yield, "yield");
        int i13 = i11 + 1;
        Integer numValueOf = Integer.valueOf(REPLACEMENT_CODE_POINT);
        if (i12 <= i13) {
            yield.invoke(numValueOf);
            return 1;
        }
        byte b11 = bArr[i11];
        byte b12 = bArr[i13];
        if ((b12 & 192) != 128) {
            yield.invoke(numValueOf);
            return 1;
        }
        int i14 = (b12 ^ 3968) ^ (b11 << 6);
        if (i14 < 128) {
            yield.invoke(numValueOf);
            return 2;
        }
        yield.invoke(Integer.valueOf(i14));
        return 2;
    }

    public static final int process3Utf8Bytes(byte[] bArr, int i11, int i12, Function1<? super Integer, Unit> yield) {
        Intrinsics.h(bArr, "<this>");
        Intrinsics.h(yield, "yield");
        int i13 = i11 + 2;
        Integer numValueOf = Integer.valueOf(REPLACEMENT_CODE_POINT);
        if (i12 <= i13) {
            yield.invoke(numValueOf);
            int i14 = i11 + 1;
            return (i12 <= i14 || (bArr[i14] & 192) != 128) ? 1 : 2;
        }
        byte b11 = bArr[i11];
        byte b12 = bArr[i11 + 1];
        if ((b12 & 192) != 128) {
            yield.invoke(numValueOf);
            return 1;
        }
        byte b13 = bArr[i13];
        if ((b13 & 192) != 128) {
            yield.invoke(numValueOf);
            return 2;
        }
        int i15 = ((b13 ^ (-123008)) ^ (b12 << 6)) ^ (b11 << 12);
        if (i15 < 2048) {
            yield.invoke(numValueOf);
            return 3;
        }
        if (55296 > i15 || i15 >= 57344) {
            yield.invoke(Integer.valueOf(i15));
            return 3;
        }
        yield.invoke(numValueOf);
        return 3;
    }

    public static final int process4Utf8Bytes(byte[] bArr, int i11, int i12, Function1<? super Integer, Unit> yield) {
        Intrinsics.h(bArr, "<this>");
        Intrinsics.h(yield, "yield");
        int i13 = i11 + 3;
        Integer numValueOf = Integer.valueOf(REPLACEMENT_CODE_POINT);
        if (i12 <= i13) {
            yield.invoke(numValueOf);
            int i14 = i11 + 1;
            if (i12 <= i14 || (bArr[i14] & 192) != 128) {
                return 1;
            }
            int i15 = i11 + 2;
            return (i12 <= i15 || (bArr[i15] & 192) != 128) ? 2 : 3;
        }
        byte b11 = bArr[i11];
        byte b12 = bArr[i11 + 1];
        if ((b12 & 192) != 128) {
            yield.invoke(numValueOf);
            return 1;
        }
        byte b13 = bArr[i11 + 2];
        if ((b13 & 192) != 128) {
            yield.invoke(numValueOf);
            return 2;
        }
        byte b14 = bArr[i13];
        if ((b14 & 192) != 128) {
            yield.invoke(numValueOf);
            return 3;
        }
        int i16 = (((b14 ^ 3678080) ^ (b13 << 6)) ^ (b12 << 12)) ^ (b11 << 18);
        if (i16 > 1114111) {
            yield.invoke(numValueOf);
            return 4;
        }
        if (55296 <= i16 && i16 < 57344) {
            yield.invoke(numValueOf);
            return 4;
        }
        if (i16 < 65536) {
            yield.invoke(numValueOf);
            return 4;
        }
        yield.invoke(Integer.valueOf(i16));
        return 4;
    }

    public static final void processUtf16Chars(byte[] bArr, int i11, int i12, Function1<? super Character, Unit> yield) {
        int i13;
        int i14;
        Intrinsics.h(bArr, "<this>");
        Intrinsics.h(yield, "yield");
        int i15 = i11;
        while (i15 < i12) {
            byte b11 = bArr[i15];
            if (b11 >= 0) {
                yield.invoke(Character.valueOf((char) b11));
                i15++;
                while (i15 < i12) {
                    byte b12 = bArr[i15];
                    if (b12 < 0) {
                        break;
                    }
                    i15++;
                    yield.invoke(Character.valueOf((char) b12));
                }
            } else if ((b11 >> 5) == -2) {
                int i16 = i15 + 1;
                if (i12 > i16) {
                    byte b13 = bArr[i16];
                    if ((b13 & 192) == 128) {
                        int i17 = (b11 << 6) ^ (b13 ^ 3968);
                        yield.invoke(Character.valueOf(i17 < 128 ? (char) REPLACEMENT_CODE_POINT : (char) i17));
                        Unit unit = Unit.f67061a;
                        i15 += i13;
                    }
                }
                yield.invoke(Character.valueOf((char) REPLACEMENT_CODE_POINT));
                Unit unit2 = Unit.f67061a;
                i15 += i13;
            } else if ((b11 >> 4) == -2) {
                int i18 = i15 + 2;
                if (i12 <= i18) {
                    yield.invoke(Character.valueOf((char) REPLACEMENT_CODE_POINT));
                    Unit unit3 = Unit.f67061a;
                    int i19 = i15 + 1;
                    i13 = (i12 <= i19 || (bArr[i19] & 192) != 128) ? 1 : 2;
                } else {
                    byte b14 = bArr[i15 + 1];
                    if ((b14 & 192) == 128) {
                        byte b15 = bArr[i18];
                        if ((b15 & 192) == 128) {
                            int i20 = (b11 << 12) ^ ((b15 ^ (-123008)) ^ (b14 << 6));
                            yield.invoke(Character.valueOf((i20 >= 2048 && (55296 > i20 || i20 >= 57344)) ? (char) i20 : (char) REPLACEMENT_CODE_POINT));
                            Unit unit4 = Unit.f67061a;
                            i13 = 3;
                        } else {
                            yield.invoke(Character.valueOf((char) REPLACEMENT_CODE_POINT));
                            Unit unit5 = Unit.f67061a;
                        }
                    } else {
                        yield.invoke(Character.valueOf((char) REPLACEMENT_CODE_POINT));
                        Unit unit6 = Unit.f67061a;
                    }
                }
                i15 += i13;
            } else if ((b11 >> 3) == -2) {
                int i21 = i15 + 3;
                if (i12 <= i21) {
                    yield.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                    Unit unit7 = Unit.f67061a;
                    int i22 = i15 + 1;
                    if (i12 <= i22 || (bArr[i22] & 192) != 128) {
                        i14 = 1;
                    } else {
                        int i23 = i15 + 2;
                        i14 = (i12 <= i23 || (bArr[i23] & 192) != 128) ? 2 : 3;
                    }
                } else {
                    byte b16 = bArr[i15 + 1];
                    if ((b16 & 192) == 128) {
                        byte b17 = bArr[i15 + 2];
                        if ((b17 & 192) == 128) {
                            byte b18 = bArr[i21];
                            if ((b18 & 192) == 128) {
                                int i24 = (((b18 ^ 3678080) ^ (b17 << 6)) ^ (b16 << 12)) ^ (b11 << 18);
                                if (i24 <= 1114111 && ((55296 > i24 || i24 >= 57344) && i24 >= 65536 && i24 != 65533)) {
                                    yield.invoke(Character.valueOf((char) ((i24 >>> 10) + HIGH_SURROGATE_HEADER)));
                                    yield.invoke(Character.valueOf((char) ((i24 & 1023) + LOG_SURROGATE_HEADER)));
                                } else {
                                    yield.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                                }
                                Unit unit8 = Unit.f67061a;
                                i14 = 4;
                            } else {
                                yield.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                                Unit unit9 = Unit.f67061a;
                            }
                        } else {
                            yield.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                            Unit unit10 = Unit.f67061a;
                        }
                    } else {
                        yield.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                        Unit unit11 = Unit.f67061a;
                        i14 = 1;
                    }
                }
                i15 += i14;
            } else {
                yield.invoke(Character.valueOf(REPLACEMENT_CHARACTER));
                i15++;
            }
        }
    }

    public static final void processUtf8Bytes(String str, int i11, int i12, Function1<? super Byte, Unit> yield) {
        int i13;
        char cCharAt;
        Intrinsics.h(str, "<this>");
        Intrinsics.h(yield, "yield");
        while (i11 < i12) {
            char cCharAt2 = str.charAt(i11);
            if (Intrinsics.j(cCharAt2, 128) < 0) {
                yield.invoke(Byte.valueOf((byte) cCharAt2));
                i11++;
                while (i11 < i12 && Intrinsics.j(str.charAt(i11), 128) < 0) {
                    yield.invoke(Byte.valueOf((byte) str.charAt(i11)));
                    i11++;
                }
            } else {
                if (Intrinsics.j(cCharAt2, 2048) < 0) {
                    yield.invoke(Byte.valueOf((byte) ((cCharAt2 >> 6) | PsExtractor.AUDIO_STREAM)));
                    yield.invoke(Byte.valueOf((byte) ((cCharAt2 & '?') | 128)));
                } else if (55296 > cCharAt2 || cCharAt2 >= 57344) {
                    yield.invoke(Byte.valueOf((byte) ((cCharAt2 >> '\f') | 224)));
                    yield.invoke(Byte.valueOf((byte) (((cCharAt2 >> 6) & 63) | 128)));
                    yield.invoke(Byte.valueOf((byte) ((cCharAt2 & '?') | 128)));
                } else if (Intrinsics.j(cCharAt2, 56319) > 0 || i12 <= (i13 = i11 + 1) || 56320 > (cCharAt = str.charAt(i13)) || cCharAt >= 57344) {
                    yield.invoke(Byte.valueOf(REPLACEMENT_BYTE));
                } else {
                    int iCharAt = ((cCharAt2 << '\n') + str.charAt(i13)) - 56613888;
                    yield.invoke(Byte.valueOf((byte) ((iCharAt >> 18) | 240)));
                    yield.invoke(Byte.valueOf((byte) (((iCharAt >> 12) & 63) | 128)));
                    yield.invoke(Byte.valueOf((byte) (((iCharAt >> 6) & 63) | 128)));
                    yield.invoke(Byte.valueOf((byte) ((iCharAt & 63) | 128)));
                    i11 += 2;
                }
                i11++;
            }
        }
    }

    public static final void processUtf8CodePoints(byte[] bArr, int i11, int i12, Function1<? super Integer, Unit> yield) {
        int i13;
        int i14;
        Intrinsics.h(bArr, "<this>");
        Intrinsics.h(yield, "yield");
        int i15 = i11;
        while (i15 < i12) {
            byte b11 = bArr[i15];
            if (b11 >= 0) {
                yield.invoke(Integer.valueOf(b11));
                i15++;
                while (i15 < i12) {
                    byte b12 = bArr[i15];
                    if (b12 < 0) {
                        break;
                    }
                    i15++;
                    yield.invoke(Integer.valueOf(b12));
                }
            } else if ((b11 >> 5) == -2) {
                int i16 = i15 + 1;
                if (i12 > i16) {
                    byte b13 = bArr[i16];
                    if ((b13 & 192) == 128) {
                        int i17 = (b11 << 6) ^ (b13 ^ 3968);
                        yield.invoke(i17 < 128 ? Integer.valueOf(REPLACEMENT_CODE_POINT) : Integer.valueOf(i17));
                        Unit unit = Unit.f67061a;
                        i15 += i13;
                    }
                }
                yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                Unit unit2 = Unit.f67061a;
                i15 += i13;
            } else if ((b11 >> 4) == -2) {
                int i18 = i15 + 2;
                if (i12 <= i18) {
                    yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                    Unit unit3 = Unit.f67061a;
                    int i19 = i15 + 1;
                    i13 = (i12 <= i19 || (bArr[i19] & 192) != 128) ? 1 : 2;
                } else {
                    byte b14 = bArr[i15 + 1];
                    if ((b14 & 192) == 128) {
                        byte b15 = bArr[i18];
                        if ((b15 & 192) == 128) {
                            int i20 = (b11 << 12) ^ ((b15 ^ (-123008)) ^ (b14 << 6));
                            yield.invoke((i20 >= 2048 && (55296 > i20 || i20 >= 57344)) ? Integer.valueOf(i20) : Integer.valueOf(REPLACEMENT_CODE_POINT));
                            Unit unit4 = Unit.f67061a;
                            i13 = 3;
                        } else {
                            yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                            Unit unit5 = Unit.f67061a;
                        }
                    } else {
                        yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                        Unit unit6 = Unit.f67061a;
                    }
                }
                i15 += i13;
            } else if ((b11 >> 3) == -2) {
                int i21 = i15 + 3;
                if (i12 <= i21) {
                    yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                    Unit unit7 = Unit.f67061a;
                    int i22 = i15 + 1;
                    if (i12 <= i22 || (bArr[i22] & 192) != 128) {
                        i14 = 1;
                    } else {
                        int i23 = i15 + 2;
                        i14 = (i12 <= i23 || (bArr[i23] & 192) != 128) ? 2 : 3;
                    }
                } else {
                    byte b16 = bArr[i15 + 1];
                    if ((b16 & 192) == 128) {
                        byte b17 = bArr[i15 + 2];
                        if ((b17 & 192) == 128) {
                            byte b18 = bArr[i21];
                            if ((b18 & 192) == 128) {
                                int i24 = (((b18 ^ 3678080) ^ (b17 << 6)) ^ (b16 << 12)) ^ (b11 << 18);
                                yield.invoke((i24 <= 1114111 && (55296 > i24 || i24 >= 57344) && i24 >= 65536) ? Integer.valueOf(i24) : Integer.valueOf(REPLACEMENT_CODE_POINT));
                                Unit unit8 = Unit.f67061a;
                                i14 = 4;
                            } else {
                                yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                                Unit unit9 = Unit.f67061a;
                            }
                        } else {
                            yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                            Unit unit10 = Unit.f67061a;
                        }
                    } else {
                        yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                        Unit unit11 = Unit.f67061a;
                        i14 = 1;
                    }
                }
                i15 += i14;
            } else {
                yield.invoke(Integer.valueOf(REPLACEMENT_CODE_POINT));
                i15++;
            }
        }
    }

    @JvmOverloads
    @JvmName
    public static final long size(String str) {
        Intrinsics.h(str, "<this>");
        return size$default(str, 0, 0, 3, null);
    }

    @JvmOverloads
    @JvmName
    public static final long size(String str, int i11) {
        Intrinsics.h(str, "<this>");
        return size$default(str, i11, 0, 2, null);
    }

    @JvmOverloads
    @JvmName
    public static final long size(String str, int i11, int i12) {
        int i13;
        Intrinsics.h(str, "<this>");
        if (i11 < 0) {
            throw new IllegalArgumentException(("beginIndex < 0: " + i11).toString());
        }
        if (i12 < i11) {
            throw new IllegalArgumentException(("endIndex < beginIndex: " + i12 + " < " + i11).toString());
        }
        if (i12 > str.length()) {
            throw new IllegalArgumentException(("endIndex > string.length: " + i12 + " > " + str.length()).toString());
        }
        long j11 = 0;
        while (i11 < i12) {
            char cCharAt = str.charAt(i11);
            if (cCharAt < 128) {
                j11++;
            } else {
                if (cCharAt < 2048) {
                    i13 = 2;
                } else if (cCharAt < 55296 || cCharAt > 57343) {
                    i13 = 3;
                } else {
                    int i14 = i11 + 1;
                    char cCharAt2 = i14 < i12 ? str.charAt(i14) : (char) 0;
                    if (cCharAt > 56319 || cCharAt2 < 56320 || cCharAt2 > 57343) {
                        j11++;
                        i11 = i14;
                    } else {
                        j11 += (long) 4;
                        i11 += 2;
                    }
                }
                j11 += (long) i13;
            }
            i11++;
        }
        return j11;
    }

    public static /* synthetic */ long size$default(String str, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i11 = 0;
        }
        if ((i13 & 2) != 0) {
            i12 = str.length();
        }
        return size(str, i11, i12);
    }
}
