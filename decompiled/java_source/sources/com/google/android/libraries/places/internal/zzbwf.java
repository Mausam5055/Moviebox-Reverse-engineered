package com.google.android.libraries.places.internal;

import java.io.Serializable;
import java.util.Arrays;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@SourceDebugExtension
public class zzbwf implements Serializable, Comparable {
    public static final zzbwe zza = new zzbwe(null);

    @JvmField
    public static final zzbwf zzb = new zzbwf(new byte[0]);
    private final byte[] zzc;
    private transient int zzd;
    private transient String zze;

    public zzbwf(byte[] data) {
        Intrinsics.h(data, "data");
        this.zzc = data;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        zzbwf other = (zzbwf) obj;
        Intrinsics.h(other, "other");
        int iZzc = zzc();
        int iZzc2 = other.zzc();
        int iMin = Math.min(iZzc, iZzc2);
        for (int i11 = 0; i11 < iMin; i11++) {
            int iZza = zza(i11) & 255;
            int iZza2 = other.zza(i11) & 255;
            if (iZza != iZza2) {
                if (iZza < iZza2) {
                    return -1;
                }
                return 1;
            }
        }
        if (iZzc == iZzc2) {
            return 0;
        }
        if (iZzc < iZzc2) {
            return -1;
        }
        return 1;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzbwf) {
            zzbwf zzbwfVar = (zzbwf) obj;
            int iZzc = zzbwfVar.zzc();
            byte[] bArr = this.zzc;
            int length = bArr.length;
            if (iZzc == length && zzbwfVar.zzl(0, bArr, 0, length)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i11 = this.zzd;
        if (i11 != 0) {
            return i11;
        }
        int iHashCode = Arrays.hashCode(this.zzc);
        this.zzd = iHashCode;
        return iHashCode;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0030 A[EDGE_INSN: B:17:0x0030->B:127:0x0155 BREAK  A[LOOP:0: B:6:0x0014->B:180:0x0014]] */
    public String toString() {
        int i11 = 2;
        int i12 = 1;
        byte[] bArr = this.zzc;
        int length = bArr.length;
        if (length == 0) {
            return "[size=0]";
        }
        int i13 = zzbwy.zza;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        loop0: while (i14 < length) {
            byte b11 = bArr[i14];
            if (b11 < 0) {
                if ((b11 >> 5) != -2) {
                    if ((b11 >> 4) != -2) {
                        if ((b11 >> 3) != -2) {
                            if (i15 == 64) {
                                break;
                            }
                            i16 = -1;
                            break;
                        }
                        int i17 = i14 + 3;
                        if (length > i17) {
                            byte b12 = bArr[i14 + 1];
                            if ((b12 & 192) != 128) {
                                if (i15 == 64) {
                                    break;
                                }
                                i16 = -1;
                                break;
                            }
                            byte b13 = bArr[i14 + 2];
                            if ((b13 & 192) != 128) {
                                if (i15 == 64) {
                                    break;
                                }
                                i16 = -1;
                                break;
                            }
                            byte b14 = bArr[i17];
                            if ((b14 & 192) != 128) {
                                if (i15 == 64) {
                                    break;
                                }
                                i16 = -1;
                                break;
                            }
                            int i18 = (((b14 ^ 3678080) ^ (b13 << 6)) ^ (b12 << 12)) ^ (b11 << 18);
                            if (i18 <= 1114111) {
                                if (i18 >= 55296 && i18 < 57344) {
                                    if (i15 == 64) {
                                        break;
                                    }
                                    i16 = -1;
                                    break;
                                }
                                if (i18 >= 65536) {
                                    int i19 = i15 + 1;
                                    if (i15 == 64) {
                                        break;
                                    }
                                    i16 += 2;
                                    Unit unit = Unit.f67061a;
                                    i14 += 4;
                                    i15 = i19;
                                    i12 = 1;
                                    i11 = 2;
                                } else {
                                    if (i15 == 64) {
                                        break;
                                    }
                                    i16 = -1;
                                    break;
                                }
                            } else {
                                if (i15 == 64) {
                                    break;
                                }
                                i16 = -1;
                                break;
                            }
                        } else {
                            if (i15 == 64) {
                                break;
                            }
                            i16 = -1;
                            break;
                        }
                    } else {
                        int i20 = i14 + 2;
                        if (length > i20) {
                            byte b15 = bArr[i14 + 1];
                            if ((b15 & 192) != 128) {
                                if (i15 == 64) {
                                    break;
                                }
                                i16 = -1;
                                break;
                            }
                            byte b16 = bArr[i20];
                            if ((b16 & 192) != 128) {
                                if (i15 == 64) {
                                    break;
                                }
                                i16 = -1;
                                break;
                            }
                            int i21 = ((b16 ^ (-123008)) ^ (b15 << 6)) ^ (b11 << 12);
                            if (i21 >= 2048) {
                                if (i21 >= 55296 && i21 < 57344) {
                                    if (i15 == 64) {
                                        break;
                                    }
                                    i16 = -1;
                                    break;
                                }
                                int i22 = i15 + 1;
                                if (i15 == 64) {
                                    break;
                                }
                                if (i21 == 65533) {
                                    i16 = -1;
                                    break;
                                }
                                i14 += 3;
                                i16 += i21 < 65536 ? i12 : 2;
                                Unit unit2 = Unit.f67061a;
                                i15 = i22;
                                i11 = 2;
                            } else {
                                if (i15 == 64) {
                                    break;
                                }
                                i16 = -1;
                                break;
                            }
                        } else {
                            if (i15 == 64) {
                                break;
                            }
                            i16 = -1;
                            break;
                        }
                    }
                } else {
                    int i23 = i14 + 1;
                    if (length > i23) {
                        byte b17 = bArr[i23];
                        if ((b17 & 192) != 128) {
                            if (i15 == 64) {
                                break;
                            }
                            i16 = -1;
                            break;
                        }
                        int i24 = (b17 ^ 3968) ^ (b11 << 6);
                        if (i24 >= 128) {
                            int i25 = i15 + 1;
                            if (i15 != 64) {
                                if (i24 < 160 || i24 == 65533) {
                                    i16 = -1;
                                    break;
                                }
                                i14 += i11;
                                i16 += i24 < 65536 ? i12 : i11;
                                Unit unit3 = Unit.f67061a;
                                i15 = i25;
                            } else {
                                break;
                            }
                        } else {
                            if (i15 == 64) {
                                break;
                            }
                            i16 = -1;
                            break;
                        }
                    } else {
                        if (i15 == 64) {
                            break;
                        }
                        i16 = -1;
                        break;
                    }
                }
            } else {
                int i26 = i15 + 1;
                if (i15 == 64) {
                    break;
                }
                if (b11 == 10 || b11 == 13 || (b11 >= 32 && b11 < 127)) {
                    i16 += i12;
                    i14 += i12;
                    while (true) {
                        if (i14 < length) {
                            byte b18 = bArr[i14];
                            if (b18 >= 0) {
                                i14 += i12;
                                int i27 = i26 + 1;
                                if (i26 == 64) {
                                    break loop0;
                                }
                                if (b18 == 10 || b18 == 13 || (b18 >= 32 && b18 < 127)) {
                                    i16 += i12;
                                    i26 = i27;
                                }
                            }
                        }
                        i15 = i26;
                    }
                }
                i16 = -1;
                break;
            }
        }
        if (i16 != -1) {
            String strZzf = zzf();
            String strSubstring = strZzf.substring(0, i16);
            Intrinsics.g(strSubstring, "substring(...)");
            String strQ = StringsKt.Q(StringsKt.Q(StringsKt.Q(strSubstring, "\\", "\\\\", false, 4, null), "\n", "\\n", false, 4, null), "\r", "\\r", false, 4, null);
            if (i16 >= strZzf.length()) {
                return "[text=" + strQ + "]";
            }
            return "[size=" + this.zzc.length + " text=" + strQ + "…]";
        }
        int length2 = this.zzc.length;
        if (length2 <= 64) {
            return "[hex=" + zze() + "]";
        }
        Intrinsics.h(this, "<this>");
        byte[] bArr2 = this.zzc;
        int length3 = bArr2.length;
        if (length3 < 64) {
            throw new IllegalArgumentException("endIndex > length(" + length3 + ")");
        }
        return "[size=" + length2 + " hex=" + (length3 != 64 ? new zzbwf(ArraysKt.s(bArr2, 0, 64)) : this).zze() + "…]";
    }

    public byte zza(int i11) {
        return this.zzc[i11];
    }

    public final int zzb() {
        return this.zzd;
    }

    public int zzc() {
        return this.zzc.length;
    }

    public final String zzd() {
        return zzbvu.zza(this.zzc, null, 1, null);
    }

    public String zze() {
        byte[] bArr = this.zzc;
        int length = bArr.length;
        char[] cArr = new char[length + length];
        int i11 = 0;
        for (byte b11 : bArr) {
            cArr[i11] = zzbwy.zza()[(b11 >> 4) & 15];
            cArr[i11 + 1] = zzbwy.zza()[b11 & 15];
            i11 += 2;
        }
        return StringsKt.B(cArr);
    }

    public final String zzf() {
        String str = this.zze;
        if (str != null) {
            return str;
        }
        String strZza = zzbww.zza(zzo());
        this.zze = strZza;
        return strZza;
    }

    public zzbwf zzg() {
        int i11 = 0;
        while (true) {
            byte[] bArr = this.zzc;
            int length = bArr.length;
            if (i11 >= length) {
                return this;
            }
            int i12 = i11 + 1;
            byte b11 = bArr[i11];
            if (b11 >= 65 && b11 <= 90) {
                byte[] bArrCopyOf = Arrays.copyOf(bArr, length);
                Intrinsics.g(bArrCopyOf, "copyOf(...)");
                bArrCopyOf[i11] = (byte) (b11 + 32);
                while (i12 < bArrCopyOf.length) {
                    int i13 = i12 + 1;
                    byte b12 = bArrCopyOf[i12];
                    if (b12 >= 65 && b12 <= 90) {
                        bArrCopyOf[i12] = (byte) (b12 + 32);
                    }
                    i12 = i13;
                }
                return new zzbwf(bArrCopyOf);
            }
            i11 = i12;
        }
    }

    public final void zzh(int i11) {
        this.zzd = i11;
    }

    public final void zzi(String str) {
        this.zze = str;
    }

    public void zzj(zzbwb buffer, int i11, int i12) {
        Intrinsics.h(buffer, "buffer");
        int i13 = zzbwy.zza;
        Intrinsics.h(this, "<this>");
        Intrinsics.h(buffer, "buffer");
        buffer.zzl(this.zzc, 0, i12);
    }

    public boolean zzk(int i11, zzbwf other, int i12, int i13) {
        Intrinsics.h(other, "other");
        return other.zzl(0, this.zzc, 0, i13);
    }

    public boolean zzl(int i11, byte[] other, int i12, int i13) {
        Intrinsics.h(other, "other");
        if (i11 < 0) {
            return false;
        }
        byte[] bArr = this.zzc;
        return i11 <= bArr.length - i13 && i12 >= 0 && i12 <= other.length - i13 && zzbvv.zzc(bArr, i11, other, i12, i13);
    }

    public final boolean zzm(zzbwf prefix) {
        Intrinsics.h(prefix, "prefix");
        return zzk(0, prefix, 0, prefix.zzc.length);
    }

    public final byte[] zzn() {
        return this.zzc;
    }

    public byte[] zzo() {
        return this.zzc;
    }

    public byte[] zzp() {
        byte[] bArr = this.zzc;
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        Intrinsics.g(bArrCopyOf, "copyOf(...)");
        return bArrCopyOf;
    }
}
