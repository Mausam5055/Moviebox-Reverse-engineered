package com.google.android.gms.internal.play_billing;

import com.google.android.gms.fido.u2f.api.common.RegisterRequest;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.mvel2.ast.ASTNode;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
final class zzgf<T> implements zzgm<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzhn.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzgc zzg;
    private final boolean zzh;
    private final int[] zzi;
    private final int zzj;
    private final int zzk;
    private final zzfq zzl;
    private final zzhd zzm;
    private final zzek zzn;
    private final zzgh zzo;
    private final zzfx zzp;

    private zzgf(int[] iArr, Object[] objArr, int i11, int i12, zzgc zzgcVar, int i13, boolean z10, int[] iArr2, int i14, int i15, zzgh zzghVar, zzfq zzfqVar, zzhd zzhdVar, zzek zzekVar, zzfx zzfxVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i11;
        this.zzf = i12;
        boolean z11 = false;
        if (zzekVar != null && zzekVar.zzc(zzgcVar)) {
            z11 = true;
        }
        this.zzh = z11;
        this.zzi = iArr2;
        this.zzj = i14;
        this.zzk = i15;
        this.zzo = zzghVar;
        this.zzl = zzfqVar;
        this.zzm = zzhdVar;
        this.zzn = zzekVar;
        this.zzg = zzgcVar;
        this.zzp = zzfxVar;
    }

    private static void zzA(Object obj) {
        if (!zzL(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
    }

    private final void zzB(Object obj, Object obj2, int i11) {
        if (zzI(obj2, i11)) {
            int iZzs = zzs(i11) & 1048575;
            Unsafe unsafe = zzb;
            long j11 = iZzs;
            Object object = unsafe.getObject(obj2, j11);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i11] + " is present but null: " + obj2.toString());
            }
            zzgm zzgmVarZzv = zzv(i11);
            if (!zzI(obj, i11)) {
                if (zzL(object)) {
                    Object objZze = zzgmVarZzv.zze();
                    zzgmVarZzv.zzg(objZze, object);
                    unsafe.putObject(obj, j11, objZze);
                } else {
                    unsafe.putObject(obj, j11, object);
                }
                zzD(obj, i11);
                return;
            }
            Object object2 = unsafe.getObject(obj, j11);
            if (!zzL(object2)) {
                Object objZze2 = zzgmVarZzv.zze();
                zzgmVarZzv.zzg(objZze2, object2);
                unsafe.putObject(obj, j11, objZze2);
                object2 = objZze2;
            }
            zzgmVarZzv.zzg(object2, object);
        }
    }

    private final void zzC(Object obj, Object obj2, int i11) {
        int i12 = this.zzc[i11];
        if (zzM(obj2, i12, i11)) {
            int iZzs = zzs(i11) & 1048575;
            Unsafe unsafe = zzb;
            long j11 = iZzs;
            Object object = unsafe.getObject(obj2, j11);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i11] + " is present but null: " + obj2.toString());
            }
            zzgm zzgmVarZzv = zzv(i11);
            if (!zzM(obj, i12, i11)) {
                if (zzL(object)) {
                    Object objZze = zzgmVarZzv.zze();
                    zzgmVarZzv.zzg(objZze, object);
                    unsafe.putObject(obj, j11, objZze);
                } else {
                    unsafe.putObject(obj, j11, object);
                }
                zzE(obj, i12, i11);
                return;
            }
            Object object2 = unsafe.getObject(obj, j11);
            if (!zzL(object2)) {
                Object objZze2 = zzgmVarZzv.zze();
                zzgmVarZzv.zzg(objZze2, object2);
                unsafe.putObject(obj, j11, objZze2);
                object2 = objZze2;
            }
            zzgmVarZzv.zzg(object2, object);
        }
    }

    private final void zzD(Object obj, int i11) {
        int iZzp = zzp(i11);
        long j11 = 1048575 & iZzp;
        if (j11 == 1048575) {
            return;
        }
        zzhn.zzq(obj, j11, (1 << (iZzp >>> 20)) | zzhn.zzc(obj, j11));
    }

    private final void zzE(Object obj, int i11, int i12) {
        zzhn.zzq(obj, zzp(i12) & 1048575, i11);
    }

    private final void zzF(Object obj, int i11, Object obj2) {
        zzb.putObject(obj, zzs(i11) & 1048575, obj2);
        zzD(obj, i11);
    }

    private final void zzG(Object obj, int i11, int i12, Object obj2) {
        zzb.putObject(obj, zzs(i12) & 1048575, obj2);
        zzE(obj, i11, i12);
    }

    private final boolean zzH(Object obj, Object obj2, int i11) {
        return zzI(obj, i11) == zzI(obj2, i11);
    }

    private final boolean zzI(Object obj, int i11) {
        int iZzp = zzp(i11);
        long j11 = iZzp & 1048575;
        if (j11 != 1048575) {
            return (zzhn.zzc(obj, j11) & (1 << (iZzp >>> 20))) != 0;
        }
        int iZzs = zzs(i11);
        long j12 = iZzs & 1048575;
        switch (zzr(iZzs)) {
            case 0:
                return Double.doubleToRawLongBits(zzhn.zza(obj, j12)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzhn.zzb(obj, j12)) != 0;
            case 2:
                return zzhn.zzd(obj, j12) != 0;
            case 3:
                return zzhn.zzd(obj, j12) != 0;
            case 4:
                return zzhn.zzc(obj, j12) != 0;
            case 5:
                return zzhn.zzd(obj, j12) != 0;
            case 6:
                return zzhn.zzc(obj, j12) != 0;
            case 7:
                return zzhn.zzw(obj, j12);
            case 8:
                Object objZzf = zzhn.zzf(obj, j12);
                if (objZzf instanceof String) {
                    return !((String) objZzf).isEmpty();
                }
                if (objZzf instanceof zzdw) {
                    return !zzdw.zzb.equals(objZzf);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzhn.zzf(obj, j12) != null;
            case 10:
                return !zzdw.zzb.equals(zzhn.zzf(obj, j12));
            case 11:
                return zzhn.zzc(obj, j12) != 0;
            case 12:
                return zzhn.zzc(obj, j12) != 0;
            case 13:
                return zzhn.zzc(obj, j12) != 0;
            case 14:
                return zzhn.zzd(obj, j12) != 0;
            case 15:
                return zzhn.zzc(obj, j12) != 0;
            case 16:
                return zzhn.zzd(obj, j12) != 0;
            case 17:
                return zzhn.zzf(obj, j12) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzJ(Object obj, int i11, int i12, int i13, int i14) {
        if (i12 == 1048575) {
            return zzI(obj, i11);
        }
        return (i13 & i14) != 0;
    }

    private static boolean zzK(Object obj, int i11, zzgm zzgmVar) {
        return zzgmVar.zzk(zzhn.zzf(obj, i11 & 1048575));
    }

    private static boolean zzL(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzex) {
            return ((zzex) obj).zzt();
        }
        return true;
    }

    private final boolean zzM(Object obj, int i11, int i12) {
        return zzhn.zzc(obj, (long) (zzp(i12) & 1048575)) == i11;
    }

    private static boolean zzN(Object obj, long j11) {
        return ((Boolean) zzhn.zzf(obj, j11)).booleanValue();
    }

    private static final void zzO(int i11, Object obj, zzhv zzhvVar) throws IOException {
        if (obj instanceof String) {
            zzhvVar.zzF(i11, (String) obj);
        } else {
            zzhvVar.zzd(i11, (zzdw) obj);
        }
    }

    static zzhe zzd(Object obj) {
        zzex zzexVar = (zzex) obj;
        zzhe zzheVar = zzexVar.zzc;
        if (zzheVar != zzhe.zzc()) {
            return zzheVar;
        }
        zzhe zzheVarZzf = zzhe.zzf();
        zzexVar.zzc = zzheVarZzf;
        return zzheVarZzf;
    }

    /* JADX WARN: Code duplicated, block: B:125:0x0266  */
    /* JADX WARN: Code duplicated, block: B:127:0x026b  */
    /* JADX WARN: Code duplicated, block: B:130:0x0281  */
    /* JADX WARN: Code duplicated, block: B:131:0x0284  */
    static zzgf zzl(Class cls, zzfz zzfzVar, zzgh zzghVar, zzfq zzfqVar, zzhd zzhdVar, zzek zzekVar, zzfx zzfxVar) {
        int i11;
        int iCharAt;
        int iCharAt2;
        int i12;
        int[] iArr;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        char cCharAt;
        int i18;
        char cCharAt2;
        int i19;
        char cCharAt3;
        int i20;
        char cCharAt4;
        int i21;
        char cCharAt5;
        int i22;
        char cCharAt6;
        int i23;
        char cCharAt7;
        int i24;
        char cCharAt8;
        int i25;
        int i26;
        int iObjectFieldOffset;
        int i27;
        int i28;
        int i29;
        int iObjectFieldOffset2;
        Field fieldZzz;
        char cCharAt9;
        int i30;
        int i31;
        int i32;
        int i33;
        int i34;
        Object obj;
        Field fieldZzz2;
        int i35;
        Object obj2;
        Field fieldZzz3;
        int i36;
        char cCharAt10;
        int i37;
        char cCharAt11;
        int i38;
        char cCharAt12;
        int i39;
        char cCharAt13;
        if (!(zzfzVar instanceof zzgl)) {
            throw null;
        }
        zzgl zzglVar = (zzgl) zzfzVar;
        String strZzd = zzglVar.zzd();
        int length = strZzd.length();
        char c11 = 55296;
        if (strZzd.charAt(0) >= 55296) {
            int i40 = 1;
            while (true) {
                i11 = i40 + 1;
                if (strZzd.charAt(i40) < 55296) {
                    break;
                }
                i40 = i11;
            }
        } else {
            i11 = 1;
        }
        int i41 = i11 + 1;
        int iCharAt3 = strZzd.charAt(i11);
        if (iCharAt3 >= 55296) {
            int i42 = iCharAt3 & 8191;
            int i43 = 13;
            while (true) {
                i39 = i41 + 1;
                cCharAt13 = strZzd.charAt(i41);
                if (cCharAt13 < 55296) {
                    break;
                }
                i42 |= (cCharAt13 & 8191) << i43;
                i43 += 13;
                i41 = i39;
            }
            iCharAt3 = i42 | (cCharAt13 << i43);
            i41 = i39;
        }
        if (iCharAt3 == 0) {
            iCharAt = 0;
            iCharAt2 = 0;
            i13 = 0;
            i16 = 0;
            i12 = 0;
            i14 = 0;
            iArr = zza;
            i15 = 0;
        } else {
            int i44 = i41 + 1;
            int iCharAt4 = strZzd.charAt(i41);
            if (iCharAt4 >= 55296) {
                int i45 = iCharAt4 & 8191;
                int i46 = 13;
                while (true) {
                    i24 = i44 + 1;
                    cCharAt8 = strZzd.charAt(i44);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i45 |= (cCharAt8 & 8191) << i46;
                    i46 += 13;
                    i44 = i24;
                }
                iCharAt4 = i45 | (cCharAt8 << i46);
                i44 = i24;
            }
            int i47 = i44 + 1;
            int iCharAt5 = strZzd.charAt(i44);
            if (iCharAt5 >= 55296) {
                int i48 = iCharAt5 & 8191;
                int i49 = 13;
                while (true) {
                    i23 = i47 + 1;
                    cCharAt7 = strZzd.charAt(i47);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i48 |= (cCharAt7 & 8191) << i49;
                    i49 += 13;
                    i47 = i23;
                }
                iCharAt5 = i48 | (cCharAt7 << i49);
                i47 = i23;
            }
            int i50 = i47 + 1;
            int iCharAt6 = strZzd.charAt(i47);
            if (iCharAt6 >= 55296) {
                int i51 = iCharAt6 & 8191;
                int i52 = 13;
                while (true) {
                    i22 = i50 + 1;
                    cCharAt6 = strZzd.charAt(i50);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i51 |= (cCharAt6 & 8191) << i52;
                    i52 += 13;
                    i50 = i22;
                }
                iCharAt6 = i51 | (cCharAt6 << i52);
                i50 = i22;
            }
            int i53 = i50 + 1;
            int iCharAt7 = strZzd.charAt(i50);
            if (iCharAt7 >= 55296) {
                int i54 = iCharAt7 & 8191;
                int i55 = 13;
                while (true) {
                    i21 = i53 + 1;
                    cCharAt5 = strZzd.charAt(i53);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i54 |= (cCharAt5 & 8191) << i55;
                    i55 += 13;
                    i53 = i21;
                }
                iCharAt7 = i54 | (cCharAt5 << i55);
                i53 = i21;
            }
            int i56 = i53 + 1;
            iCharAt = strZzd.charAt(i53);
            if (iCharAt >= 55296) {
                int i57 = iCharAt & 8191;
                int i58 = 13;
                while (true) {
                    i20 = i56 + 1;
                    cCharAt4 = strZzd.charAt(i56);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i57 |= (cCharAt4 & 8191) << i58;
                    i58 += 13;
                    i56 = i20;
                }
                iCharAt = i57 | (cCharAt4 << i58);
                i56 = i20;
            }
            int i59 = i56 + 1;
            iCharAt2 = strZzd.charAt(i56);
            if (iCharAt2 >= 55296) {
                int i60 = iCharAt2 & 8191;
                int i61 = 13;
                while (true) {
                    i19 = i59 + 1;
                    cCharAt3 = strZzd.charAt(i59);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i60 |= (cCharAt3 & 8191) << i61;
                    i61 += 13;
                    i59 = i19;
                }
                iCharAt2 = i60 | (cCharAt3 << i61);
                i59 = i19;
            }
            int i62 = i59 + 1;
            int iCharAt8 = strZzd.charAt(i59);
            if (iCharAt8 >= 55296) {
                int i63 = iCharAt8 & 8191;
                int i64 = 13;
                while (true) {
                    i18 = i62 + 1;
                    cCharAt2 = strZzd.charAt(i62);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i63 |= (cCharAt2 & 8191) << i64;
                    i64 += 13;
                    i62 = i18;
                }
                iCharAt8 = i63 | (cCharAt2 << i64);
                i62 = i18;
            }
            int i65 = i62 + 1;
            int iCharAt9 = strZzd.charAt(i62);
            if (iCharAt9 >= 55296) {
                int i66 = iCharAt9 & 8191;
                int i67 = 13;
                while (true) {
                    i17 = i65 + 1;
                    cCharAt = strZzd.charAt(i65);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i66 |= (cCharAt & 8191) << i67;
                    i67 += 13;
                    i65 = i17;
                }
                iCharAt9 = i66 | (cCharAt << i67);
                i65 = i17;
            }
            i12 = iCharAt4 + iCharAt4 + iCharAt5;
            iArr = new int[iCharAt9 + iCharAt2 + iCharAt8];
            i13 = iCharAt6;
            i14 = iCharAt9;
            i15 = iCharAt4;
            i16 = iCharAt7;
            i41 = i65;
        }
        Unsafe unsafe = zzb;
        Object[] objArrZze = zzglVar.zze();
        Class<?> cls2 = zzglVar.zza().getClass();
        int i68 = i14 + iCharAt2;
        int i69 = iCharAt + iCharAt;
        int[] iArr2 = new int[iCharAt * 3];
        Object[] objArr = new Object[i69];
        int i70 = 0;
        int i71 = 0;
        int i72 = i14;
        int i73 = i68;
        while (i41 < length) {
            int i74 = i41 + 1;
            int iCharAt10 = strZzd.charAt(i41);
            if (iCharAt10 >= c11) {
                int i75 = iCharAt10 & 8191;
                int i76 = i74;
                int i77 = 13;
                while (true) {
                    i38 = i76 + 1;
                    cCharAt12 = strZzd.charAt(i76);
                    if (cCharAt12 < c11) {
                        break;
                    }
                    i75 |= (cCharAt12 & 8191) << i77;
                    i77 += 13;
                    i76 = i38;
                }
                iCharAt10 = i75 | (cCharAt12 << i77);
                i25 = i38;
            } else {
                i25 = i74;
            }
            int i78 = i25 + 1;
            int iCharAt11 = strZzd.charAt(i25);
            if (iCharAt11 >= c11) {
                int i79 = iCharAt11 & 8191;
                int i80 = i78;
                int i81 = 13;
                while (true) {
                    i37 = i80 + 1;
                    cCharAt11 = strZzd.charAt(i80);
                    if (cCharAt11 < c11) {
                        break;
                    }
                    i79 |= (cCharAt11 & 8191) << i81;
                    i81 += 13;
                    i80 = i37;
                }
                iCharAt11 = i79 | (cCharAt11 << i81);
                i26 = i37;
            } else {
                i26 = i78;
            }
            if ((iCharAt11 & 1024) != 0) {
                iArr[i70] = i71;
                i70++;
            }
            int i82 = iCharAt11 & 255;
            int i83 = iCharAt11 & 2048;
            int i84 = length;
            if (i82 >= 51) {
                int i85 = i26 + 1;
                int iCharAt12 = strZzd.charAt(i26);
                char c12 = 55296;
                if (iCharAt12 >= 55296) {
                    int i86 = 13;
                    int i87 = iCharAt12 & 8191;
                    int i88 = i85;
                    while (true) {
                        i36 = i88 + 1;
                        cCharAt10 = strZzd.charAt(i88);
                        if (cCharAt10 < c12) {
                            break;
                        }
                        i87 |= (cCharAt10 & 8191) << i86;
                        i86 += 13;
                        i88 = i36;
                        c12 = 55296;
                    }
                    iCharAt12 = i87 | (cCharAt10 << i86);
                    i32 = i36;
                } else {
                    i32 = i85;
                }
                int i89 = i32;
                int i90 = i82 - 51;
                if (i90 == 9 || i90 == 17) {
                    i33 = i12 + 1;
                    int i91 = i71 / 3;
                    objArr[i91 + i91 + 1] = objArrZze[i12];
                } else {
                    if (i90 == 12) {
                        if (zzglVar.zzc() == 1 || i83 != 0) {
                            i33 = i12 + 1;
                            int i92 = i71 / 3;
                            objArr[i92 + i92 + 1] = objArrZze[i12];
                        } else {
                            i83 = 0;
                        }
                    }
                    i34 = iCharAt12 + iCharAt12;
                    obj = objArrZze[i34];
                    if (obj instanceof Field) {
                        fieldZzz2 = (Field) obj;
                    } else {
                        fieldZzz2 = zzz(cls2, (String) obj);
                        objArrZze[i34] = fieldZzz2;
                    }
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzz2);
                    i35 = i34 + 1;
                    obj2 = objArrZze[i35];
                    if (obj2 instanceof Field) {
                        fieldZzz3 = (Field) obj2;
                    } else {
                        fieldZzz3 = zzz(cls2, (String) obj2);
                        objArrZze[i35] = fieldZzz3;
                    }
                    zzglVar = zzglVar;
                    strZzd = strZzd;
                    i29 = i12;
                    i27 = i89;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzz3);
                    i28 = 0;
                }
                i12 = i33;
                i34 = iCharAt12 + iCharAt12;
                obj = objArrZze[i34];
                if (obj instanceof Field) {
                    fieldZzz2 = (Field) obj;
                } else {
                    fieldZzz2 = zzz(cls2, (String) obj);
                    objArrZze[i34] = fieldZzz2;
                }
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzz2);
                i35 = i34 + 1;
                obj2 = objArrZze[i35];
                if (obj2 instanceof Field) {
                    fieldZzz3 = (Field) obj2;
                } else {
                    fieldZzz3 = zzz(cls2, (String) obj2);
                    objArrZze[i35] = fieldZzz3;
                }
                zzglVar = zzglVar;
                strZzd = strZzd;
                i29 = i12;
                i27 = i89;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzz3);
                i28 = 0;
            } else {
                int i93 = i12 + 1;
                Field fieldZzz4 = zzz(cls2, (String) objArrZze[i12]);
                if (i82 == 9 || i82 == 17) {
                    zzglVar = zzglVar;
                    int i94 = i71 / 3;
                    objArr[i94 + i94 + 1] = fieldZzz4.getType();
                } else {
                    if (i82 == 27) {
                        i30 = 1;
                        i31 = i12 + 2;
                    } else if (i82 == 49) {
                        i31 = i12 + 2;
                        i30 = 1;
                    } else if (i82 == 12 || i82 == 30 || i82 == 44) {
                        zzglVar = zzglVar;
                        if (zzglVar.zzc() == 1 || i83 != 0) {
                            i31 = i12 + 2;
                            int i95 = i71 / 3;
                            objArr[i95 + i95 + 1] = objArrZze[i93];
                            i93 = i31;
                        } else {
                            i83 = 0;
                        }
                    } else {
                        if (i82 == 50) {
                            int i96 = i12 + 2;
                            int i97 = i72 + 1;
                            iArr[i72] = i71;
                            int i98 = i71 / 3;
                            int i99 = i98 + i98;
                            objArr[i99] = objArrZze[i93];
                            if (i83 != 0) {
                                i93 = i12 + 3;
                                objArr[i99 + 1] = objArrZze[i96];
                                i72 = i97;
                            } else {
                                i93 = i96;
                                i72 = i97;
                                i83 = 0;
                            }
                        }
                        zzglVar = zzglVar;
                    }
                    int i100 = i71 / 3;
                    objArr[i100 + i100 + i30] = objArrZze[i93];
                    i93 = i31;
                }
                int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldZzz4);
                iObjectFieldOffset = 1048575;
                if ((iCharAt11 & 4096) == 0 || i82 > 17) {
                    i27 = i26;
                    i28 = 0;
                } else {
                    int i101 = i26 + 1;
                    int iCharAt13 = strZzd.charAt(i26);
                    if (iCharAt13 >= 55296) {
                        int i102 = iCharAt13 & 8191;
                        int i103 = 13;
                        while (true) {
                            i27 = i101 + 1;
                            cCharAt9 = strZzd.charAt(i101);
                            if (cCharAt9 < 55296) {
                                break;
                            }
                            i102 |= (cCharAt9 & 8191) << i103;
                            i103 += 13;
                            i101 = i27;
                        }
                        iCharAt13 = i102 | (cCharAt9 << i103);
                    } else {
                        i27 = i101;
                    }
                    int i104 = i15 + i15 + (iCharAt13 / 32);
                    Object obj3 = objArrZze[i104];
                    if (obj3 instanceof Field) {
                        fieldZzz = (Field) obj3;
                    } else {
                        fieldZzz = zzz(cls2, (String) obj3);
                        objArrZze[i104] = fieldZzz;
                    }
                    i28 = iCharAt13 % 32;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzz);
                }
                if (i82 >= 18 && i82 <= 49) {
                    iArr[i73] = iObjectFieldOffset3;
                    i73++;
                }
                i29 = i93;
                iObjectFieldOffset2 = iObjectFieldOffset3;
            }
            int i105 = i71 + 1;
            iArr2[i71] = iCharAt10;
            int i106 = i71 + 2;
            iArr2[i105] = iObjectFieldOffset2 | ((iCharAt11 & 256) != 0 ? ASTNode.DEOP : 0) | ((iCharAt11 & 512) != 0 ? ASTNode.DISCARD : 0) | (i83 != 0 ? Integer.MIN_VALUE : 0) | (i82 << 20);
            i71 += 3;
            iArr2[i106] = (i28 << 20) | iObjectFieldOffset;
            i12 = i29;
            i41 = i27;
            length = i84;
            zzglVar = zzglVar;
            strZzd = strZzd;
            i16 = i16;
            i13 = i13;
            c11 = 55296;
        }
        zzgl zzglVar2 = zzglVar;
        return new zzgf(iArr2, objArr, i13, i16, zzglVar2.zza(), zzglVar2.zzc(), false, iArr, i14, i68, zzghVar, zzfqVar, zzhdVar, zzekVar, zzfxVar);
    }

    private static double zzm(Object obj, long j11) {
        return ((Double) zzhn.zzf(obj, j11)).doubleValue();
    }

    private static float zzn(Object obj, long j11) {
        return ((Float) zzhn.zzf(obj, j11)).floatValue();
    }

    private static int zzo(Object obj, long j11) {
        return ((Integer) zzhn.zzf(obj, j11)).intValue();
    }

    private final int zzp(int i11) {
        return this.zzc[i11 + 2];
    }

    private final int zzq(int i11, int i12) {
        int length = (this.zzc.length / 3) - 1;
        while (i12 <= length) {
            int i13 = (length + i12) >>> 1;
            int i14 = i13 * 3;
            int i15 = this.zzc[i14];
            if (i11 == i15) {
                return i14;
            }
            if (i11 < i15) {
                length = i13 - 1;
            } else {
                i12 = i13 + 1;
            }
        }
        return -1;
    }

    private static int zzr(int i11) {
        return (i11 >>> 20) & 255;
    }

    private final int zzs(int i11) {
        return this.zzc[i11 + 1];
    }

    private static long zzt(Object obj, long j11) {
        return ((Long) zzhn.zzf(obj, j11)).longValue();
    }

    private final zzfb zzu(int i11) {
        int i12 = i11 / 3;
        return (zzfb) this.zzd[i12 + i12 + 1];
    }

    private final zzgm zzv(int i11) {
        Object[] objArr = this.zzd;
        int i12 = i11 / 3;
        int i13 = i12 + i12;
        zzgm zzgmVar = (zzgm) objArr[i13];
        if (zzgmVar != null) {
            return zzgmVar;
        }
        zzgm zzgmVarZzb = zzgk.zza().zzb((Class) objArr[i13 + 1]);
        this.zzd[i13] = zzgmVarZzb;
        return zzgmVarZzb;
    }

    private final Object zzw(int i11) {
        int i12 = i11 / 3;
        return this.zzd[i12 + i12];
    }

    private final Object zzx(Object obj, int i11) {
        zzgm zzgmVarZzv = zzv(i11);
        int iZzs = zzs(i11) & 1048575;
        if (!zzI(obj, i11)) {
            return zzgmVarZzv.zze();
        }
        Object object = zzb.getObject(obj, iZzs);
        if (zzL(object)) {
            return object;
        }
        Object objZze = zzgmVarZzv.zze();
        if (object != null) {
            zzgmVarZzv.zzg(objZze, object);
        }
        return objZze;
    }

    private final Object zzy(Object obj, int i11, int i12) {
        zzgm zzgmVarZzv = zzv(i12);
        if (!zzM(obj, i11, i12)) {
            return zzgmVarZzv.zze();
        }
        Object object = zzb.getObject(obj, zzs(i12) & 1048575);
        if (zzL(object)) {
            return object;
        }
        Object objZze = zzgmVarZzv.zze();
        if (object != null) {
            zzgmVarZzv.zzg(objZze, object);
        }
        return objZze;
    }

    private static Field zzz(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:142:0x038f  */
    /* JADX WARN: Code duplicated, block: B:181:0x048b  */
    /* JADX WARN: Code duplicated, block: B:92:0x021b  */
    @Override // com.google.android.gms.internal.play_billing.zzgm
    public final int zza(Object obj) {
        int i11;
        int i12;
        int i13;
        int i14;
        int iZzx;
        int iZzx2;
        int iZzy;
        int iZzx3;
        int iZzx4;
        int i15;
        int iZzx5;
        int iZzx6;
        int iZzx7;
        boolean z10;
        int iZzd;
        int iZzg;
        int size;
        int iZzl;
        int iZzx8;
        int iZzd2;
        boolean z11;
        int iZzb;
        int iZzx9;
        int iZzx10;
        int size2;
        int iZzk;
        int iZzx11;
        int iZzy2;
        int iZze;
        int iZzx12;
        int iZzx13;
        int iZzx14;
        int iZzx15;
        int iZzx16;
        int iZzx17;
        Unsafe unsafe = zzb;
        int i16 = 1048575;
        int i17 = 1048575;
        int i18 = 0;
        int i19 = 0;
        int iZzh = 0;
        while (i19 < this.zzc.length) {
            int iZzs = zzs(i19);
            int iZzr = zzr(iZzs);
            int[] iArr = this.zzc;
            int i20 = iArr[i19];
            int i21 = iArr[i19 + 2];
            int i22 = i21 & i16;
            if (iZzr <= 17) {
                if (i22 != i17) {
                    i18 = i22 == i16 ? 0 : unsafe.getInt(obj, i22);
                    i17 = i22;
                }
                i13 = 1 << (i21 >>> 20);
                i11 = i17;
                i12 = i18;
            } else {
                i11 = i17;
                i12 = i18;
                i13 = 0;
            }
            int i23 = iZzs & i16;
            if (iZzr >= zzep.zzJ.zza()) {
                zzep.zzW.zza();
            }
            long j11 = i23;
            switch (iZzr) {
                case 0:
                    i14 = i19;
                    if (zzJ(obj, i14, i11, i12, i13)) {
                        iZzx = zzee.zzx(i20 << 3);
                        iZzx4 = iZzx + 8;
                        iZzh += iZzx4;
                    }
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 1:
                    i14 = i19;
                    if (zzJ(obj, i14, i11, i12, i13)) {
                        iZzx2 = zzee.zzx(i20 << 3);
                        iZzx4 = iZzx2 + 4;
                        iZzh += iZzx4;
                    }
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 2:
                    i14 = i19;
                    if (zzJ(obj, i14, i11, i12, i13)) {
                        iZzy = zzee.zzy(unsafe.getLong(obj, j11));
                        iZzx3 = zzee.zzx(i20 << 3);
                        iZzx4 = iZzx3 + iZzy;
                        iZzh += iZzx4;
                    }
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 3:
                    i14 = i19;
                    if (zzJ(obj, i14, i11, i12, i13)) {
                        iZzy = zzee.zzy(unsafe.getLong(obj, j11));
                        iZzx3 = zzee.zzx(i20 << 3);
                        iZzx4 = iZzx3 + iZzy;
                        iZzh += iZzx4;
                    }
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 4:
                    i14 = i19;
                    if (zzJ(obj, i14, i11, i12, i13)) {
                        iZzy = zzee.zzu(unsafe.getInt(obj, j11));
                        iZzx3 = zzee.zzx(i20 << 3);
                        iZzx4 = iZzx3 + iZzy;
                        iZzh += iZzx4;
                    }
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 5:
                    i14 = i19;
                    if (zzJ(obj, i14, i11, i12, i13)) {
                        iZzx = zzee.zzx(i20 << 3);
                        iZzx4 = iZzx + 8;
                        iZzh += iZzx4;
                    }
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 6:
                    i14 = i19;
                    if (zzJ(obj, i14, i11, i12, i13)) {
                        iZzx2 = zzee.zzx(i20 << 3);
                        iZzx4 = iZzx2 + 4;
                        iZzh += iZzx4;
                    }
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 7:
                    i14 = i19;
                    if (zzJ(obj, i14, i11, i12, i13)) {
                        iZzx4 = zzee.zzx(i20 << 3) + 1;
                        iZzh += iZzx4;
                    }
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 8:
                    int i24 = i19;
                    i14 = i24;
                    if (zzJ(obj, i24, i11, i12, i13)) {
                        int i25 = i20 << 3;
                        Object object = unsafe.getObject(obj, j11);
                        if (object instanceof zzdw) {
                            int i26 = zzee.zzb;
                            int iZzd3 = ((zzdw) object).zzd();
                            iZzx4 = zzee.zzx(i25) + zzee.zzx(iZzd3) + iZzd3;
                        } else {
                            iZzy = zzee.zzw((String) object);
                            iZzx3 = zzee.zzx(i25);
                            iZzx4 = iZzx3 + iZzy;
                        }
                        iZzh += iZzx4;
                    }
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 9:
                    i15 = i19;
                    if (zzJ(obj, i15, i11, i12, i13)) {
                        iZzh += zzgo.zzh(i20, unsafe.getObject(obj, j11), zzv(i15));
                        i14 = i15;
                    } else {
                        i14 = i15;
                    }
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 10:
                    i15 = i19;
                    if (zzJ(obj, i15, i11, i12, i13)) {
                        zzdw zzdwVar = (zzdw) unsafe.getObject(obj, j11);
                        int i27 = zzee.zzb;
                        int iZzd4 = zzdwVar.zzd();
                        iZzx5 = zzee.zzx(i20 << 3) + zzee.zzx(iZzd4) + iZzd4;
                        iZzh += iZzx5;
                    }
                    i14 = i15;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 11:
                    i15 = i19;
                    if (zzJ(obj, i15, i11, i12, i13)) {
                        iZzx6 = zzee.zzx(unsafe.getInt(obj, j11));
                        iZzx7 = zzee.zzx(i20 << 3);
                        iZzx5 = iZzx7 + iZzx6;
                        iZzh += iZzx5;
                    }
                    i14 = i15;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 12:
                    i15 = i19;
                    if (zzJ(obj, i15, i11, i12, i13)) {
                        iZzx6 = zzee.zzu(unsafe.getInt(obj, j11));
                        iZzx7 = zzee.zzx(i20 << 3);
                        iZzx5 = iZzx7 + iZzx6;
                        iZzh += iZzx5;
                    }
                    i14 = i15;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 13:
                    i15 = i19;
                    if (zzJ(obj, i15, i11, i12, i13)) {
                        iZzx5 = zzee.zzx(i20 << 3) + 4;
                        iZzh += iZzx5;
                    }
                    i14 = i15;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 14:
                    i15 = i19;
                    if (zzJ(obj, i15, i11, i12, i13)) {
                        iZzx5 = zzee.zzx(i20 << 3) + 8;
                        iZzh += iZzx5;
                    }
                    i14 = i15;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 15:
                    i15 = i19;
                    if (zzJ(obj, i15, i11, i12, i13)) {
                        int i28 = unsafe.getInt(obj, j11);
                        iZzx7 = zzee.zzx(i20 << 3);
                        iZzx6 = zzee.zzx((i28 >> 31) ^ (i28 + i28));
                        iZzx5 = iZzx7 + iZzx6;
                        iZzh += iZzx5;
                    }
                    i14 = i15;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 16:
                    i15 = i19;
                    if (zzJ(obj, i19, i11, i12, i13)) {
                        long j12 = unsafe.getLong(obj, j11);
                        iZzx7 = zzee.zzx(i20 << 3);
                        iZzx6 = zzee.zzy((j12 >> 63) ^ (j12 + j12));
                        iZzx5 = iZzx7 + iZzx6;
                        iZzh += iZzx5;
                    }
                    i14 = i15;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 17:
                    if (zzJ(obj, i19, i11, i12, i13)) {
                        iZzh += zzee.zzt(i20, (zzgc) unsafe.getObject(obj, j11), zzv(i19));
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 18:
                    z10 = false;
                    iZzd = zzgo.zzd(i20, (List) unsafe.getObject(obj, j11), false);
                    iZzh += iZzd;
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 19:
                    z10 = false;
                    iZzd = zzgo.zzb(i20, (List) unsafe.getObject(obj, j11), false);
                    iZzh += iZzd;
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 20:
                    List list = (List) unsafe.getObject(obj, j11);
                    int i29 = zzgo.zza;
                    if (list.size() == 0) {
                        iZzg = 0;
                    } else {
                        iZzg = zzgo.zzg(list) + (list.size() * zzee.zzx(i20 << 3));
                    }
                    iZzh += iZzg;
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 21:
                    List list2 = (List) unsafe.getObject(obj, j11);
                    int i30 = zzgo.zza;
                    size = list2.size();
                    if (size == 0) {
                        iZzg = 0;
                    } else {
                        iZzl = zzgo.zzl(list2);
                        iZzx8 = zzee.zzx(i20 << 3);
                        iZzg = iZzl + (size * iZzx8);
                    }
                    iZzh += iZzg;
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 22:
                    List list3 = (List) unsafe.getObject(obj, j11);
                    int i31 = zzgo.zza;
                    size = list3.size();
                    if (size == 0) {
                        iZzg = 0;
                    } else {
                        iZzl = zzgo.zzf(list3);
                        iZzx8 = zzee.zzx(i20 << 3);
                        iZzg = iZzl + (size * iZzx8);
                    }
                    iZzh += iZzg;
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 23:
                    iZzd2 = zzgo.zzd(i20, (List) unsafe.getObject(obj, j11), false);
                    iZzh += iZzd2;
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 24:
                    z11 = false;
                    iZzb = zzgo.zzb(i20, (List) unsafe.getObject(obj, j11), false);
                    iZzh += iZzb;
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 25:
                    List list4 = (List) unsafe.getObject(obj, j11);
                    int i32 = zzgo.zza;
                    int size3 = list4.size();
                    if (size3 == 0) {
                        iZzd2 = 0;
                    } else {
                        iZzd2 = size3 * (zzee.zzx(i20 << 3) + 1);
                    }
                    iZzh += iZzd2;
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 26:
                    List list5 = (List) unsafe.getObject(obj, j11);
                    int i33 = zzgo.zza;
                    int size4 = list5.size();
                    if (size4 == 0) {
                        iZzg = 0;
                    } else {
                        boolean z12 = list5 instanceof zzfk;
                        int iZzx18 = zzee.zzx(i20 << 3) * size4;
                        if (z12) {
                            zzfk zzfkVar = (zzfk) list5;
                            iZzg = iZzx18;
                            for (int i34 = 0; i34 < size4; i34++) {
                                Object objZzf = zzfkVar.zzf(i34);
                                if (objZzf instanceof zzdw) {
                                    int iZzd5 = ((zzdw) objZzf).zzd();
                                    iZzg += zzee.zzx(iZzd5) + iZzd5;
                                } else {
                                    iZzg += zzee.zzw((String) objZzf);
                                }
                            }
                        } else {
                            iZzg = iZzx18;
                            for (int i35 = 0; i35 < size4; i35++) {
                                Object obj2 = list5.get(i35);
                                if (obj2 instanceof zzdw) {
                                    int iZzd6 = ((zzdw) obj2).zzd();
                                    iZzg += zzee.zzx(iZzd6) + iZzd6;
                                } else {
                                    iZzg += zzee.zzw((String) obj2);
                                }
                            }
                        }
                    }
                    iZzh += iZzg;
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 27:
                    List list6 = (List) unsafe.getObject(obj, j11);
                    zzgm zzgmVarZzv = zzv(i19);
                    int i36 = zzgo.zza;
                    int size5 = list6.size();
                    if (size5 == 0) {
                        iZzx9 = 0;
                    } else {
                        iZzx9 = zzee.zzx(i20 << 3) * size5;
                        for (int i37 = 0; i37 < size5; i37++) {
                            Object obj3 = list6.get(i37);
                            if (obj3 instanceof zzfi) {
                                int iZza = ((zzfi) obj3).zza();
                                iZzx9 += zzee.zzx(iZza) + iZza;
                            } else {
                                iZzx9 += zzee.zzv((zzgc) obj3, zzgmVarZzv);
                            }
                        }
                    }
                    iZzh += iZzx9;
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 28:
                    List list7 = (List) unsafe.getObject(obj, j11);
                    int i38 = zzgo.zza;
                    int size6 = list7.size();
                    if (size6 == 0) {
                        iZzx10 = 0;
                    } else {
                        iZzx10 = size6 * zzee.zzx(i20 << 3);
                        for (int i39 = 0; i39 < list7.size(); i39++) {
                            int iZzd7 = ((zzdw) list7.get(i39)).zzd();
                            iZzx10 += zzee.zzx(iZzd7) + iZzd7;
                        }
                    }
                    iZzh += iZzx10;
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case NOTIFICATION_REDIRECT_VALUE:
                    List list8 = (List) unsafe.getObject(obj, j11);
                    int i40 = zzgo.zza;
                    size2 = list8.size();
                    if (size2 == 0) {
                        iZzd2 = 0;
                    } else {
                        iZzk = zzgo.zzk(list8);
                        iZzx11 = zzee.zzx(i20 << 3);
                        iZzy2 = size2 * iZzx11;
                        iZzd2 = iZzk + iZzy2;
                    }
                    iZzh += iZzd2;
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 30:
                    List list9 = (List) unsafe.getObject(obj, j11);
                    int i41 = zzgo.zza;
                    size2 = list9.size();
                    if (size2 == 0) {
                        iZzd2 = 0;
                    } else {
                        iZzk = zzgo.zza(list9);
                        iZzx11 = zzee.zzx(i20 << 3);
                        iZzy2 = size2 * iZzx11;
                        iZzd2 = iZzk + iZzy2;
                    }
                    iZzh += iZzd2;
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case TEMPLATE_HTML_SIZE_VALUE:
                    iZzd2 = zzgo.zzb(i20, (List) unsafe.getObject(obj, j11), false);
                    iZzh += iZzd2;
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 32:
                    z11 = false;
                    iZzb = zzgo.zzd(i20, (List) unsafe.getObject(obj, j11), false);
                    iZzh += iZzb;
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 33:
                    List list10 = (List) unsafe.getObject(obj, j11);
                    int i42 = zzgo.zza;
                    size2 = list10.size();
                    if (size2 == 0) {
                        iZzd2 = 0;
                    } else {
                        iZzk = zzgo.zzi(list10);
                        iZzx11 = zzee.zzx(i20 << 3);
                        iZzy2 = size2 * iZzx11;
                        iZzd2 = iZzk + iZzy2;
                    }
                    iZzh += iZzd2;
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 34:
                    List list11 = (List) unsafe.getObject(obj, j11);
                    int i43 = zzgo.zza;
                    size2 = list11.size();
                    if (size2 == 0) {
                        iZzd2 = 0;
                    } else {
                        iZzk = zzgo.zzj(list11);
                        iZzx11 = zzee.zzx(i20 << 3);
                        iZzy2 = size2 * iZzx11;
                        iZzd2 = iZzk + iZzy2;
                    }
                    iZzh += iZzd2;
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 35:
                    iZze = zzgo.zze((List) unsafe.getObject(obj, j11));
                    if (iZze > 0) {
                        iZzx12 = zzee.zzx(iZze);
                        iZzx13 = zzee.zzx(i20 << 3);
                        iZzh += iZzx13 + iZzx12 + iZze;
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 36:
                    iZze = zzgo.zzc((List) unsafe.getObject(obj, j11));
                    if (iZze > 0) {
                        iZzx12 = zzee.zzx(iZze);
                        iZzx13 = zzee.zzx(i20 << 3);
                        iZzh += iZzx13 + iZzx12 + iZze;
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 37:
                    iZze = zzgo.zzg((List) unsafe.getObject(obj, j11));
                    if (iZze > 0) {
                        iZzx12 = zzee.zzx(iZze);
                        iZzx13 = zzee.zzx(i20 << 3);
                        iZzh += iZzx13 + iZzx12 + iZze;
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 38:
                    iZze = zzgo.zzl((List) unsafe.getObject(obj, j11));
                    if (iZze > 0) {
                        iZzx12 = zzee.zzx(iZze);
                        iZzx13 = zzee.zzx(i20 << 3);
                        iZzh += iZzx13 + iZzx12 + iZze;
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 39:
                    iZze = zzgo.zzf((List) unsafe.getObject(obj, j11));
                    if (iZze > 0) {
                        iZzx12 = zzee.zzx(iZze);
                        iZzx13 = zzee.zzx(i20 << 3);
                        iZzh += iZzx13 + iZzx12 + iZze;
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 40:
                    iZze = zzgo.zze((List) unsafe.getObject(obj, j11));
                    if (iZze > 0) {
                        iZzx12 = zzee.zzx(iZze);
                        iZzx13 = zzee.zzx(i20 << 3);
                        iZzh += iZzx13 + iZzx12 + iZze;
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 41:
                    iZze = zzgo.zzc((List) unsafe.getObject(obj, j11));
                    if (iZze > 0) {
                        iZzx12 = zzee.zzx(iZze);
                        iZzx13 = zzee.zzx(i20 << 3);
                        iZzh += iZzx13 + iZzx12 + iZze;
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 42:
                    List list12 = (List) unsafe.getObject(obj, j11);
                    int i44 = zzgo.zza;
                    iZze = list12.size();
                    if (iZze > 0) {
                        iZzx12 = zzee.zzx(iZze);
                        iZzx13 = zzee.zzx(i20 << 3);
                        iZzh += iZzx13 + iZzx12 + iZze;
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 43:
                    iZze = zzgo.zzk((List) unsafe.getObject(obj, j11));
                    if (iZze > 0) {
                        iZzx12 = zzee.zzx(iZze);
                        iZzx13 = zzee.zzx(i20 << 3);
                        iZzh += iZzx13 + iZzx12 + iZze;
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 44:
                    iZze = zzgo.zza((List) unsafe.getObject(obj, j11));
                    if (iZze > 0) {
                        iZzx12 = zzee.zzx(iZze);
                        iZzx13 = zzee.zzx(i20 << 3);
                        iZzh += iZzx13 + iZzx12 + iZze;
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 45:
                    iZze = zzgo.zzc((List) unsafe.getObject(obj, j11));
                    if (iZze > 0) {
                        iZzx12 = zzee.zzx(iZze);
                        iZzx13 = zzee.zzx(i20 << 3);
                        iZzh += iZzx13 + iZzx12 + iZze;
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 46:
                    iZze = zzgo.zze((List) unsafe.getObject(obj, j11));
                    if (iZze > 0) {
                        iZzx12 = zzee.zzx(iZze);
                        iZzx13 = zzee.zzx(i20 << 3);
                        iZzh += iZzx13 + iZzx12 + iZze;
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 47:
                    iZze = zzgo.zzi((List) unsafe.getObject(obj, j11));
                    if (iZze > 0) {
                        iZzx12 = zzee.zzx(iZze);
                        iZzx13 = zzee.zzx(i20 << 3);
                        iZzh += iZzx13 + iZzx12 + iZze;
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                    iZze = zzgo.zzj((List) unsafe.getObject(obj, j11));
                    if (iZze > 0) {
                        iZzx12 = zzee.zzx(iZze);
                        iZzx13 = zzee.zzx(i20 << 3);
                        iZzh += iZzx13 + iZzx12 + iZze;
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    List list13 = (List) unsafe.getObject(obj, j11);
                    zzgm zzgmVarZzv2 = zzv(i19);
                    int i45 = zzgo.zza;
                    int size7 = list13.size();
                    if (size7 == 0) {
                        iZzx9 = 0;
                    } else {
                        iZzx9 = 0;
                        for (int i46 = 0; i46 < size7; i46++) {
                            iZzx9 += zzee.zzt(i20, (zzgc) list13.get(i46), zzgmVarZzv2);
                        }
                    }
                    iZzh += iZzx9;
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 50:
                    zzfw zzfwVar = (zzfw) unsafe.getObject(obj, j11);
                    if (!zzfwVar.isEmpty()) {
                        Iterator it = zzfwVar.entrySet().iterator();
                        if (it.hasNext()) {
                            Map.Entry entry = (Map.Entry) it.next();
                            entry.getKey();
                            entry.getValue();
                            throw null;
                        }
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case AD_REWARD_USER_VALUE:
                    if (zzM(obj, i20, i19)) {
                        iZzx14 = zzee.zzx(i20 << 3);
                        iZzd2 = iZzx14 + 8;
                        iZzh += iZzd2;
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    if (zzM(obj, i20, i19)) {
                        iZzx15 = zzee.zzx(i20 << 3);
                        iZzd2 = iZzx15 + 4;
                        iZzh += iZzd2;
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    if (zzM(obj, i20, i19)) {
                        iZzy2 = zzee.zzy(zzt(obj, j11));
                        iZzk = zzee.zzx(i20 << 3);
                        iZzd2 = iZzk + iZzy2;
                        iZzh += iZzd2;
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    if (zzM(obj, i20, i19)) {
                        iZzy2 = zzee.zzy(zzt(obj, j11));
                        iZzk = zzee.zzx(i20 << 3);
                        iZzd2 = iZzk + iZzy2;
                        iZzh += iZzd2;
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    if (zzM(obj, i20, i19)) {
                        iZzy2 = zzee.zzu(zzo(obj, j11));
                        iZzk = zzee.zzx(i20 << 3);
                        iZzd2 = iZzk + iZzy2;
                        iZzh += iZzd2;
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case AD_VISIBILITY_VALUE:
                    if (zzM(obj, i20, i19)) {
                        iZzx14 = zzee.zzx(i20 << 3);
                        iZzd2 = iZzx14 + 8;
                        iZzh += iZzd2;
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 57:
                    if (zzM(obj, i20, i19)) {
                        iZzx15 = zzee.zzx(i20 << 3);
                        iZzd2 = iZzx15 + 4;
                        iZzh += iZzd2;
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    if (zzM(obj, i20, i19)) {
                        iZzd2 = zzee.zzx(i20 << 3) + 1;
                        iZzh += iZzd2;
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 59:
                    if (zzM(obj, i20, i19)) {
                        int i47 = i20 << 3;
                        Object object2 = unsafe.getObject(obj, j11);
                        if (object2 instanceof zzdw) {
                            int i48 = zzee.zzb;
                            int iZzd8 = ((zzdw) object2).zzd();
                            iZzx16 = zzee.zzx(iZzd8) + iZzd8;
                            iZzx17 = zzee.zzx(i47);
                            iZzd2 = iZzx17 + iZzx16;
                            iZzh += iZzd2;
                        } else {
                            iZzy2 = zzee.zzw((String) object2);
                            iZzk = zzee.zzx(i47);
                            iZzd2 = iZzk + iZzy2;
                            iZzh += iZzd2;
                        }
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 60:
                    if (zzM(obj, i20, i19)) {
                        iZzd2 = zzgo.zzh(i20, unsafe.getObject(obj, j11), zzv(i19));
                        iZzh += iZzd2;
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 61:
                    if (zzM(obj, i20, i19)) {
                        zzdw zzdwVar2 = (zzdw) unsafe.getObject(obj, j11);
                        int i49 = zzee.zzb;
                        int iZzd9 = zzdwVar2.zzd();
                        iZzx16 = zzee.zzx(iZzd9) + iZzd9;
                        iZzx17 = zzee.zzx(i20 << 3);
                        iZzd2 = iZzx17 + iZzx16;
                        iZzh += iZzd2;
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 62:
                    if (zzM(obj, i20, i19)) {
                        iZzy2 = zzee.zzx(zzo(obj, j11));
                        iZzk = zzee.zzx(i20 << 3);
                        iZzd2 = iZzk + iZzy2;
                        iZzh += iZzd2;
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 63:
                    if (zzM(obj, i20, i19)) {
                        iZzy2 = zzee.zzu(zzo(obj, j11));
                        iZzk = zzee.zzx(i20 << 3);
                        iZzd2 = iZzk + iZzy2;
                        iZzh += iZzd2;
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 64:
                    if (zzM(obj, i20, i19)) {
                        iZzx15 = zzee.zzx(i20 << 3);
                        iZzd2 = iZzx15 + 4;
                        iZzh += iZzd2;
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                    if (zzM(obj, i20, i19)) {
                        iZzx14 = zzee.zzx(i20 << 3);
                        iZzd2 = iZzx14 + 8;
                        iZzh += iZzd2;
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 66:
                    if (zzM(obj, i20, i19)) {
                        int iZzo = zzo(obj, j11);
                        iZzk = zzee.zzx(i20 << 3);
                        iZzy2 = zzee.zzx((iZzo >> 31) ^ (iZzo + iZzo));
                        iZzd2 = iZzk + iZzy2;
                        iZzh += iZzd2;
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 67:
                    if (zzM(obj, i20, i19)) {
                        long jZzt = zzt(obj, j11);
                        iZzk = zzee.zzx(i20 << 3);
                        iZzy2 = zzee.zzy((jZzt >> 63) ^ (jZzt + jZzt));
                        iZzd2 = iZzk + iZzy2;
                        iZzh += iZzd2;
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                case 68:
                    if (zzM(obj, i20, i19)) {
                        iZzd2 = zzee.zzt(i20, (zzgc) unsafe.getObject(obj, j11), zzv(i19));
                        iZzh += iZzd2;
                    }
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
                default:
                    i14 = i19;
                    i19 = i14 + 3;
                    i17 = i11;
                    i18 = i12;
                    i16 = 1048575;
                    break;
            }
        }
        zzhd zzhdVar = this.zzm;
        int iZza2 = iZzh + zzhdVar.zza(zzhdVar.zzd(obj));
        if (!this.zzh) {
            return iZza2;
        }
        this.zzn.zza(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgm
    public final int zzb(Object obj) {
        int i11;
        long jDoubleToLongBits;
        int iFloatToIntBits;
        int i12;
        int i13 = 0;
        for (int i14 = 0; i14 < this.zzc.length; i14 += 3) {
            int iZzs = zzs(i14);
            int[] iArr = this.zzc;
            int i15 = 1048575 & iZzs;
            int iZzr = zzr(iZzs);
            int i16 = iArr[i14];
            long j11 = i15;
            int iHashCode = 37;
            switch (iZzr) {
                case 0:
                    i11 = i13 * 53;
                    jDoubleToLongBits = Double.doubleToLongBits(zzhn.zza(obj, j11));
                    byte[] bArr = zzfd.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 1:
                    i11 = i13 * 53;
                    iFloatToIntBits = Float.floatToIntBits(zzhn.zzb(obj, j11));
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 2:
                    i11 = i13 * 53;
                    jDoubleToLongBits = zzhn.zzd(obj, j11);
                    byte[] bArr2 = zzfd.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 3:
                    i11 = i13 * 53;
                    jDoubleToLongBits = zzhn.zzd(obj, j11);
                    byte[] bArr3 = zzfd.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 4:
                    i11 = i13 * 53;
                    iFloatToIntBits = zzhn.zzc(obj, j11);
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 5:
                    i11 = i13 * 53;
                    jDoubleToLongBits = zzhn.zzd(obj, j11);
                    byte[] bArr4 = zzfd.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 6:
                    i11 = i13 * 53;
                    iFloatToIntBits = zzhn.zzc(obj, j11);
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 7:
                    i11 = i13 * 53;
                    iFloatToIntBits = zzfd.zza(zzhn.zzw(obj, j11));
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 8:
                    i11 = i13 * 53;
                    iFloatToIntBits = ((String) zzhn.zzf(obj, j11)).hashCode();
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 9:
                    i12 = i13 * 53;
                    Object objZzf = zzhn.zzf(obj, j11);
                    if (objZzf != null) {
                        iHashCode = objZzf.hashCode();
                    }
                    i13 = i12 + iHashCode;
                    break;
                case 10:
                    i11 = i13 * 53;
                    iFloatToIntBits = zzhn.zzf(obj, j11).hashCode();
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 11:
                    i11 = i13 * 53;
                    iFloatToIntBits = zzhn.zzc(obj, j11);
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 12:
                    i11 = i13 * 53;
                    iFloatToIntBits = zzhn.zzc(obj, j11);
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 13:
                    i11 = i13 * 53;
                    iFloatToIntBits = zzhn.zzc(obj, j11);
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 14:
                    i11 = i13 * 53;
                    jDoubleToLongBits = zzhn.zzd(obj, j11);
                    byte[] bArr5 = zzfd.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 15:
                    i11 = i13 * 53;
                    iFloatToIntBits = zzhn.zzc(obj, j11);
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 16:
                    i11 = i13 * 53;
                    jDoubleToLongBits = zzhn.zzd(obj, j11);
                    byte[] bArr6 = zzfd.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 17:
                    i12 = i13 * 53;
                    Object objZzf2 = zzhn.zzf(obj, j11);
                    if (objZzf2 != null) {
                        iHashCode = objZzf2.hashCode();
                    }
                    i13 = i12 + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case NOTIFICATION_REDIRECT_VALUE:
                case 30:
                case TEMPLATE_HTML_SIZE_VALUE:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    i11 = i13 * 53;
                    iFloatToIntBits = zzhn.zzf(obj, j11).hashCode();
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 50:
                    i11 = i13 * 53;
                    iFloatToIntBits = zzhn.zzf(obj, j11).hashCode();
                    i13 = i11 + iFloatToIntBits;
                    break;
                case AD_REWARD_USER_VALUE:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        jDoubleToLongBits = Double.doubleToLongBits(zzm(obj, j11));
                        byte[] bArr7 = zzfd.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        iFloatToIntBits = Float.floatToIntBits(zzn(obj, j11));
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        jDoubleToLongBits = zzt(obj, j11);
                        byte[] bArr8 = zzfd.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        jDoubleToLongBits = zzt(obj, j11);
                        byte[] bArr9 = zzfd.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        iFloatToIntBits = zzo(obj, j11);
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case AD_VISIBILITY_VALUE:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        jDoubleToLongBits = zzt(obj, j11);
                        byte[] bArr10 = zzfd.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case 57:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        iFloatToIntBits = zzo(obj, j11);
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        iFloatToIntBits = zzfd.zza(zzN(obj, j11));
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case 59:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        iFloatToIntBits = ((String) zzhn.zzf(obj, j11)).hashCode();
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case 60:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        iFloatToIntBits = zzhn.zzf(obj, j11).hashCode();
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case 61:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        iFloatToIntBits = zzhn.zzf(obj, j11).hashCode();
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case 62:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        iFloatToIntBits = zzo(obj, j11);
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case 63:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        iFloatToIntBits = zzo(obj, j11);
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case 64:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        iFloatToIntBits = zzo(obj, j11);
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        jDoubleToLongBits = zzt(obj, j11);
                        byte[] bArr11 = zzfd.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case 66:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        iFloatToIntBits = zzo(obj, j11);
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case 67:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        jDoubleToLongBits = zzt(obj, j11);
                        byte[] bArr12 = zzfd.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case 68:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        iFloatToIntBits = zzhn.zzf(obj, j11).hashCode();
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
            }
        }
        int iHashCode2 = (i13 * 53) + this.zzm.zzd(obj).hashCode();
        if (!this.zzh) {
            return iHashCode2;
        }
        this.zzn.zza(obj);
        throw null;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 40681. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    final int zzc(java.lang.Object r37, byte[] r38, int r39, int r40, int r41, com.google.android.gms.internal.play_billing.zzdj r42) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 4068
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzgf.zzc(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.play_billing.zzdj):int");
    }

    @Override // com.google.android.gms.internal.play_billing.zzgm
    public final Object zze() {
        return ((zzex) this.zzg).zzi();
    }

    /* JADX WARN: Code duplicated, block: B:26:0x006d  */
    /* JADX WARN: Code duplicated, block: B:28:0x0073  */
    /* JADX WARN: Code duplicated, block: B:41:0x0080 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.play_billing.zzgm
    public final void zzf(Object obj) {
        if (zzL(obj)) {
            if (obj instanceof zzex) {
                zzex zzexVar = (zzex) obj;
                zzexVar.zzq(Integer.MAX_VALUE);
                zzexVar.zza = 0;
                zzexVar.zzo();
            }
            int[] iArr = this.zzc;
            for (int i11 = 0; i11 < iArr.length; i11 += 3) {
                int iZzs = zzs(i11);
                int i12 = 1048575 & iZzs;
                int iZzr = zzr(iZzs);
                long j11 = i12;
                if (iZzr != 9) {
                    if (iZzr != 60 && iZzr != 68) {
                        switch (iZzr) {
                            case 17:
                                if (zzI(obj, i11)) {
                                    zzv(i11).zzf(zzb.getObject(obj, j11));
                                }
                                break;
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case NOTIFICATION_REDIRECT_VALUE:
                            case 30:
                            case TEMPLATE_HTML_SIZE_VALUE:
                            case 32:
                            case 33:
                            case 34:
                            case 35:
                            case 36:
                            case 37:
                            case 38:
                            case 39:
                            case 40:
                            case 41:
                            case 42:
                            case 43:
                            case 44:
                            case 45:
                            case 46:
                            case 47:
                            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                                this.zzl.zza(obj, j11);
                                break;
                            case 50:
                                Unsafe unsafe = zzb;
                                Object object = unsafe.getObject(obj, j11);
                                if (object != null) {
                                    ((zzfw) object).zzc();
                                    unsafe.putObject(obj, j11, object);
                                }
                                break;
                        }
                    } else if (zzM(obj, this.zzc[i11], i11)) {
                        zzv(i11).zzf(zzb.getObject(obj, j11));
                    }
                } else if (zzI(obj, i11)) {
                    zzv(i11).zzf(zzb.getObject(obj, j11));
                }
            }
            this.zzm.zzg(obj);
            if (this.zzh) {
                this.zzn.zzb(obj);
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzgm
    public final void zzg(Object obj, Object obj2) {
        zzA(obj);
        obj2.getClass();
        for (int i11 = 0; i11 < this.zzc.length; i11 += 3) {
            int iZzs = zzs(i11);
            int i12 = 1048575 & iZzs;
            int[] iArr = this.zzc;
            int iZzr = zzr(iZzs);
            int i13 = iArr[i11];
            long j11 = i12;
            switch (iZzr) {
                case 0:
                    if (zzI(obj2, i11)) {
                        zzhn.zzo(obj, j11, zzhn.zza(obj2, j11));
                        zzD(obj, i11);
                    }
                    break;
                case 1:
                    if (zzI(obj2, i11)) {
                        zzhn.zzp(obj, j11, zzhn.zzb(obj2, j11));
                        zzD(obj, i11);
                    }
                    break;
                case 2:
                    if (zzI(obj2, i11)) {
                        zzhn.zzr(obj, j11, zzhn.zzd(obj2, j11));
                        zzD(obj, i11);
                    }
                    break;
                case 3:
                    if (zzI(obj2, i11)) {
                        zzhn.zzr(obj, j11, zzhn.zzd(obj2, j11));
                        zzD(obj, i11);
                    }
                    break;
                case 4:
                    if (zzI(obj2, i11)) {
                        zzhn.zzq(obj, j11, zzhn.zzc(obj2, j11));
                        zzD(obj, i11);
                    }
                    break;
                case 5:
                    if (zzI(obj2, i11)) {
                        zzhn.zzr(obj, j11, zzhn.zzd(obj2, j11));
                        zzD(obj, i11);
                    }
                    break;
                case 6:
                    if (zzI(obj2, i11)) {
                        zzhn.zzq(obj, j11, zzhn.zzc(obj2, j11));
                        zzD(obj, i11);
                    }
                    break;
                case 7:
                    if (zzI(obj2, i11)) {
                        zzhn.zzm(obj, j11, zzhn.zzw(obj2, j11));
                        zzD(obj, i11);
                    }
                    break;
                case 8:
                    if (zzI(obj2, i11)) {
                        zzhn.zzs(obj, j11, zzhn.zzf(obj2, j11));
                        zzD(obj, i11);
                    }
                    break;
                case 9:
                    zzB(obj, obj2, i11);
                    break;
                case 10:
                    if (zzI(obj2, i11)) {
                        zzhn.zzs(obj, j11, zzhn.zzf(obj2, j11));
                        zzD(obj, i11);
                    }
                    break;
                case 11:
                    if (zzI(obj2, i11)) {
                        zzhn.zzq(obj, j11, zzhn.zzc(obj2, j11));
                        zzD(obj, i11);
                    }
                    break;
                case 12:
                    if (zzI(obj2, i11)) {
                        zzhn.zzq(obj, j11, zzhn.zzc(obj2, j11));
                        zzD(obj, i11);
                    }
                    break;
                case 13:
                    if (zzI(obj2, i11)) {
                        zzhn.zzq(obj, j11, zzhn.zzc(obj2, j11));
                        zzD(obj, i11);
                    }
                    break;
                case 14:
                    if (zzI(obj2, i11)) {
                        zzhn.zzr(obj, j11, zzhn.zzd(obj2, j11));
                        zzD(obj, i11);
                    }
                    break;
                case 15:
                    if (zzI(obj2, i11)) {
                        zzhn.zzq(obj, j11, zzhn.zzc(obj2, j11));
                        zzD(obj, i11);
                    }
                    break;
                case 16:
                    if (zzI(obj2, i11)) {
                        zzhn.zzr(obj, j11, zzhn.zzd(obj2, j11));
                        zzD(obj, i11);
                    }
                    break;
                case 17:
                    zzB(obj, obj2, i11);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case NOTIFICATION_REDIRECT_VALUE:
                case 30:
                case TEMPLATE_HTML_SIZE_VALUE:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    this.zzl.zzb(obj, obj2, j11);
                    break;
                case 50:
                    int i14 = zzgo.zza;
                    zzhn.zzs(obj, j11, zzfx.zza(zzhn.zzf(obj, j11), zzhn.zzf(obj2, j11)));
                    break;
                case AD_REWARD_USER_VALUE:
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                case AD_VISIBILITY_VALUE:
                case 57:
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                case 59:
                    if (zzM(obj2, i13, i11)) {
                        zzhn.zzs(obj, j11, zzhn.zzf(obj2, j11));
                        zzE(obj, i13, i11);
                    }
                    break;
                case 60:
                    zzC(obj, obj2, i11);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                case 66:
                case 67:
                    if (zzM(obj2, i13, i11)) {
                        zzhn.zzs(obj, j11, zzhn.zzf(obj2, j11));
                        zzE(obj, i13, i11);
                    }
                    break;
                case 68:
                    zzC(obj, obj2, i11);
                    break;
            }
        }
        zzgo.zzp(this.zzm, obj, obj2);
        if (this.zzh) {
            this.zzn.zza(obj2);
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzgm
    public final void zzh(Object obj, byte[] bArr, int i11, int i12, zzdj zzdjVar) throws IOException {
        zzc(obj, bArr, i11, i12, 0, zzdjVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v20 */
    @Override // com.google.android.gms.internal.play_billing.zzgm
    public final void zzi(Object obj, zzhv zzhvVar) throws Throwable {
        int i11;
        int i12;
        int i13;
        boolean z10;
        ?? r11 = 1;
        Throwable th2 = null;
        if (this.zzh) {
            this.zzn.zza(obj);
            throw null;
        }
        int[] iArr = this.zzc;
        Unsafe unsafe = zzb;
        int i14 = 1048575;
        int i15 = 1048575;
        int i16 = 0;
        int i17 = 0;
        while (i17 < iArr.length) {
            int iZzs = zzs(i17);
            int[] iArr2 = this.zzc;
            int iZzr = zzr(iZzs);
            int i18 = iArr2[i17];
            if (iZzr <= 17) {
                int i19 = iArr2[i17 + 2];
                int i20 = i19 & i14;
                if (i20 != i15) {
                    i16 = i20 == i14 ? 0 : unsafe.getInt(obj, i20);
                    i15 = i20;
                }
                i11 = i15;
                i12 = i16;
                i13 = r11 << (i19 >>> 20);
            } else {
                i11 = i15;
                i12 = i16;
                i13 = 0;
            }
            long j11 = iZzs & i14;
            switch (iZzr) {
                case 0:
                    if (zzJ(obj, i17, i11, i12, i13)) {
                        zzhvVar.zzf(i18, zzhn.zza(obj, j11));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 1:
                    if (zzJ(obj, i17, i11, i12, i13)) {
                        zzhvVar.zzo(i18, zzhn.zzb(obj, j11));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 2:
                    if (zzJ(obj, i17, i11, i12, i13)) {
                        zzhvVar.zzt(i18, unsafe.getLong(obj, j11));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 3:
                    if (zzJ(obj, i17, i11, i12, i13)) {
                        zzhvVar.zzJ(i18, unsafe.getLong(obj, j11));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 4:
                    if (zzJ(obj, i17, i11, i12, i13)) {
                        zzhvVar.zzr(i18, unsafe.getInt(obj, j11));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 5:
                    if (zzJ(obj, i17, i11, i12, i13)) {
                        zzhvVar.zzm(i18, unsafe.getLong(obj, j11));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 6:
                    if (zzJ(obj, i17, i11, i12, i13)) {
                        zzhvVar.zzk(i18, unsafe.getInt(obj, j11));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 7:
                    if (zzJ(obj, i17, i11, i12, i13)) {
                        zzhvVar.zzb(i18, zzhn.zzw(obj, j11));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 8:
                    if (zzJ(obj, i17, i11, i12, i13)) {
                        zzO(i18, unsafe.getObject(obj, j11), zzhvVar);
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 9:
                    if (zzJ(obj, i17, i11, i12, i13)) {
                        zzhvVar.zzv(i18, unsafe.getObject(obj, j11), zzv(i17));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 10:
                    if (zzJ(obj, i17, i11, i12, i13)) {
                        zzhvVar.zzd(i18, (zzdw) unsafe.getObject(obj, j11));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 11:
                    if (zzJ(obj, i17, i11, i12, i13)) {
                        zzhvVar.zzH(i18, unsafe.getInt(obj, j11));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 12:
                    if (zzJ(obj, i17, i11, i12, i13)) {
                        zzhvVar.zzi(i18, unsafe.getInt(obj, j11));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 13:
                    if (zzJ(obj, i17, i11, i12, i13)) {
                        zzhvVar.zzw(i18, unsafe.getInt(obj, j11));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 14:
                    if (zzJ(obj, i17, i11, i12, i13)) {
                        zzhvVar.zzy(i18, unsafe.getLong(obj, j11));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 15:
                    if (zzJ(obj, i17, i11, i12, i13)) {
                        zzhvVar.zzA(i18, unsafe.getInt(obj, j11));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 16:
                    if (zzJ(obj, i17, i11, i12, i13)) {
                        zzhvVar.zzC(i18, unsafe.getLong(obj, j11));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 17:
                    if (zzJ(obj, i17, i11, i12, i13)) {
                        zzhvVar.zzq(i18, unsafe.getObject(obj, j11), zzv(i17));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 18:
                    z10 = false;
                    zzgo.zzs(this.zzc[i17], (List) unsafe.getObject(obj, j11), zzhvVar, false);
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 19:
                    z10 = false;
                    zzgo.zzw(this.zzc[i17], (List) unsafe.getObject(obj, j11), zzhvVar, false);
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 20:
                    z10 = false;
                    zzgo.zzy(this.zzc[i17], (List) unsafe.getObject(obj, j11), zzhvVar, false);
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 21:
                    z10 = false;
                    zzgo.zzE(this.zzc[i17], (List) unsafe.getObject(obj, j11), zzhvVar, false);
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 22:
                    z10 = false;
                    zzgo.zzx(this.zzc[i17], (List) unsafe.getObject(obj, j11), zzhvVar, false);
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 23:
                    z10 = false;
                    zzgo.zzv(this.zzc[i17], (List) unsafe.getObject(obj, j11), zzhvVar, false);
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 24:
                    z10 = false;
                    zzgo.zzu(this.zzc[i17], (List) unsafe.getObject(obj, j11), zzhvVar, false);
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 25:
                    z10 = false;
                    zzgo.zzr(this.zzc[i17], (List) unsafe.getObject(obj, j11), zzhvVar, false);
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 26:
                    int i21 = this.zzc[i17];
                    List list = (List) unsafe.getObject(obj, j11);
                    int i22 = zzgo.zza;
                    if (list != null && !list.isEmpty()) {
                        zzhvVar.zzG(i21, list);
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 27:
                    int i23 = this.zzc[i17];
                    List list2 = (List) unsafe.getObject(obj, j11);
                    zzgm zzgmVarZzv = zzv(i17);
                    int i24 = zzgo.zza;
                    if (list2 != null && !list2.isEmpty()) {
                        for (int i25 = 0; i25 < list2.size(); i25 += r11) {
                            ((zzef) zzhvVar).zzv(i23, list2.get(i25), zzgmVarZzv);
                        }
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 28:
                    int i26 = this.zzc[i17];
                    List list3 = (List) unsafe.getObject(obj, j11);
                    int i27 = zzgo.zza;
                    if (list3 != null && !list3.isEmpty()) {
                        zzhvVar.zze(i26, list3);
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case NOTIFICATION_REDIRECT_VALUE:
                    z10 = false;
                    zzgo.zzD(this.zzc[i17], (List) unsafe.getObject(obj, j11), zzhvVar, false);
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 30:
                    z10 = false;
                    zzgo.zzt(this.zzc[i17], (List) unsafe.getObject(obj, j11), zzhvVar, false);
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case TEMPLATE_HTML_SIZE_VALUE:
                    z10 = false;
                    zzgo.zzz(this.zzc[i17], (List) unsafe.getObject(obj, j11), zzhvVar, false);
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 32:
                    z10 = false;
                    zzgo.zzA(this.zzc[i17], (List) unsafe.getObject(obj, j11), zzhvVar, false);
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 33:
                    z10 = false;
                    zzgo.zzB(this.zzc[i17], (List) unsafe.getObject(obj, j11), zzhvVar, false);
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 34:
                    z10 = false;
                    zzgo.zzC(this.zzc[i17], (List) unsafe.getObject(obj, j11), zzhvVar, false);
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 35:
                    zzgo.zzs(this.zzc[i17], (List) unsafe.getObject(obj, j11), zzhvVar, r11);
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 36:
                    zzgo.zzw(this.zzc[i17], (List) unsafe.getObject(obj, j11), zzhvVar, r11);
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 37:
                    zzgo.zzy(this.zzc[i17], (List) unsafe.getObject(obj, j11), zzhvVar, r11);
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 38:
                    zzgo.zzE(this.zzc[i17], (List) unsafe.getObject(obj, j11), zzhvVar, r11);
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 39:
                    zzgo.zzx(this.zzc[i17], (List) unsafe.getObject(obj, j11), zzhvVar, r11);
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 40:
                    zzgo.zzv(this.zzc[i17], (List) unsafe.getObject(obj, j11), zzhvVar, r11);
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 41:
                    zzgo.zzu(this.zzc[i17], (List) unsafe.getObject(obj, j11), zzhvVar, r11);
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 42:
                    zzgo.zzr(this.zzc[i17], (List) unsafe.getObject(obj, j11), zzhvVar, r11);
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 43:
                    zzgo.zzD(this.zzc[i17], (List) unsafe.getObject(obj, j11), zzhvVar, r11);
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 44:
                    zzgo.zzt(this.zzc[i17], (List) unsafe.getObject(obj, j11), zzhvVar, r11);
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 45:
                    zzgo.zzz(this.zzc[i17], (List) unsafe.getObject(obj, j11), zzhvVar, r11);
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 46:
                    zzgo.zzA(this.zzc[i17], (List) unsafe.getObject(obj, j11), zzhvVar, r11);
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 47:
                    zzgo.zzB(this.zzc[i17], (List) unsafe.getObject(obj, j11), zzhvVar, r11);
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                    zzgo.zzC(this.zzc[i17], (List) unsafe.getObject(obj, j11), zzhvVar, r11);
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    int i28 = this.zzc[i17];
                    List list4 = (List) unsafe.getObject(obj, j11);
                    zzgm zzgmVarZzv2 = zzv(i17);
                    int i29 = zzgo.zza;
                    if (list4 != null && !list4.isEmpty()) {
                        for (int i30 = 0; i30 < list4.size(); i30 += r11) {
                            ((zzef) zzhvVar).zzq(i28, list4.get(i30), zzgmVarZzv2);
                        }
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 50:
                    if (unsafe.getObject(obj, j11) != null) {
                        throw th2;
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case AD_REWARD_USER_VALUE:
                    if (zzM(obj, i18, i17)) {
                        zzhvVar.zzf(i18, zzm(obj, j11));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    if (zzM(obj, i18, i17)) {
                        zzhvVar.zzo(i18, zzn(obj, j11));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    if (zzM(obj, i18, i17)) {
                        zzhvVar.zzt(i18, zzt(obj, j11));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    if (zzM(obj, i18, i17)) {
                        zzhvVar.zzJ(i18, zzt(obj, j11));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    if (zzM(obj, i18, i17)) {
                        zzhvVar.zzr(i18, zzo(obj, j11));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case AD_VISIBILITY_VALUE:
                    if (zzM(obj, i18, i17)) {
                        zzhvVar.zzm(i18, zzt(obj, j11));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 57:
                    if (zzM(obj, i18, i17)) {
                        zzhvVar.zzk(i18, zzo(obj, j11));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    if (zzM(obj, i18, i17)) {
                        zzhvVar.zzb(i18, zzN(obj, j11));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 59:
                    if (zzM(obj, i18, i17)) {
                        zzO(i18, unsafe.getObject(obj, j11), zzhvVar);
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 60:
                    if (zzM(obj, i18, i17)) {
                        zzhvVar.zzv(i18, unsafe.getObject(obj, j11), zzv(i17));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 61:
                    if (zzM(obj, i18, i17)) {
                        zzhvVar.zzd(i18, (zzdw) unsafe.getObject(obj, j11));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 62:
                    if (zzM(obj, i18, i17)) {
                        zzhvVar.zzH(i18, zzo(obj, j11));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 63:
                    if (zzM(obj, i18, i17)) {
                        zzhvVar.zzi(i18, zzo(obj, j11));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 64:
                    if (zzM(obj, i18, i17)) {
                        zzhvVar.zzw(i18, zzo(obj, j11));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                    if (zzM(obj, i18, i17)) {
                        zzhvVar.zzy(i18, zzt(obj, j11));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 66:
                    if (zzM(obj, i18, i17)) {
                        zzhvVar.zzA(i18, zzo(obj, j11));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 67:
                    if (zzM(obj, i18, i17)) {
                        zzhvVar.zzC(i18, zzt(obj, j11));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                case 68:
                    if (zzM(obj, i18, i17)) {
                        zzhvVar.zzq(i18, unsafe.getObject(obj, j11), zzv(i17));
                    }
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
                default:
                    i17 += 3;
                    i15 = i11;
                    i16 = i12;
                    r11 = 1;
                    th2 = null;
                    i14 = 1048575;
                    break;
            }
        }
        zzhd zzhdVar = this.zzm;
        zzhdVar.zzi(zzhdVar.zzd(obj), zzhvVar);
    }

    @Override // com.google.android.gms.internal.play_billing.zzgm
    public final boolean zzj(Object obj, Object obj2) {
        boolean zZzF;
        for (int i11 = 0; i11 < this.zzc.length; i11 += 3) {
            int iZzs = zzs(i11);
            long j11 = iZzs & 1048575;
            switch (zzr(iZzs)) {
                case 0:
                    if (!zzH(obj, obj2, i11) || Double.doubleToLongBits(zzhn.zza(obj, j11)) != Double.doubleToLongBits(zzhn.zza(obj2, j11))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 1:
                    if (!zzH(obj, obj2, i11) || Float.floatToIntBits(zzhn.zzb(obj, j11)) != Float.floatToIntBits(zzhn.zzb(obj2, j11))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 2:
                    if (!zzH(obj, obj2, i11) || zzhn.zzd(obj, j11) != zzhn.zzd(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 3:
                    if (!zzH(obj, obj2, i11) || zzhn.zzd(obj, j11) != zzhn.zzd(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 4:
                    if (!zzH(obj, obj2, i11) || zzhn.zzc(obj, j11) != zzhn.zzc(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 5:
                    if (!zzH(obj, obj2, i11) || zzhn.zzd(obj, j11) != zzhn.zzd(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 6:
                    if (!zzH(obj, obj2, i11) || zzhn.zzc(obj, j11) != zzhn.zzc(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 7:
                    if (!zzH(obj, obj2, i11) || zzhn.zzw(obj, j11) != zzhn.zzw(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 8:
                    if (!zzH(obj, obj2, i11) || !zzgo.zzF(zzhn.zzf(obj, j11), zzhn.zzf(obj2, j11))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 9:
                    if (!zzH(obj, obj2, i11) || !zzgo.zzF(zzhn.zzf(obj, j11), zzhn.zzf(obj2, j11))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 10:
                    if (!zzH(obj, obj2, i11) || !zzgo.zzF(zzhn.zzf(obj, j11), zzhn.zzf(obj2, j11))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 11:
                    if (!zzH(obj, obj2, i11) || zzhn.zzc(obj, j11) != zzhn.zzc(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 12:
                    if (!zzH(obj, obj2, i11) || zzhn.zzc(obj, j11) != zzhn.zzc(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 13:
                    if (!zzH(obj, obj2, i11) || zzhn.zzc(obj, j11) != zzhn.zzc(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 14:
                    if (!zzH(obj, obj2, i11) || zzhn.zzd(obj, j11) != zzhn.zzd(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 15:
                    if (!zzH(obj, obj2, i11) || zzhn.zzc(obj, j11) != zzhn.zzc(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 16:
                    if (!zzH(obj, obj2, i11) || zzhn.zzd(obj, j11) != zzhn.zzd(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 17:
                    if (!zzH(obj, obj2, i11) || !zzgo.zzF(zzhn.zzf(obj, j11), zzhn.zzf(obj2, j11))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case NOTIFICATION_REDIRECT_VALUE:
                case 30:
                case TEMPLATE_HTML_SIZE_VALUE:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    zZzF = zzgo.zzF(zzhn.zzf(obj, j11), zzhn.zzf(obj2, j11));
                    break;
                case 50:
                    zZzF = zzgo.zzF(zzhn.zzf(obj, j11), zzhn.zzf(obj2, j11));
                    break;
                case AD_REWARD_USER_VALUE:
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                case AD_VISIBILITY_VALUE:
                case 57:
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                case 66:
                case 67:
                case 68:
                    long jZzp = zzp(i11) & 1048575;
                    if (zzhn.zzc(obj, jZzp) != zzhn.zzc(obj2, jZzp) || !zzgo.zzF(zzhn.zzf(obj, j11), zzhn.zzf(obj2, j11))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                default:
                    continue;
                    break;
            }
            if (!zZzF) {
                return false;
            }
        }
        if (!this.zzm.zzd(obj).equals(this.zzm.zzd(obj2))) {
            return false;
        }
        if (!this.zzh) {
            return true;
        }
        this.zzn.zza(obj);
        this.zzn.zza(obj2);
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x009e  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:50:0x00c3 A[LOOP:1: B:45:0x00b2->B:50:0x00c3, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:66:0x00c2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:70:0x00e1 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.play_billing.zzgm
    public final boolean zzk(Object obj) {
        int i11;
        int i12;
        List list;
        zzgm zzgmVarZzv;
        int i13;
        int i14 = 0;
        int i15 = 0;
        int i16 = 1048575;
        while (i15 < this.zzj) {
            int[] iArr = this.zzi;
            int[] iArr2 = this.zzc;
            int i17 = iArr[i15];
            int i18 = iArr2[i17];
            int iZzs = zzs(i17);
            int i19 = this.zzc[i17 + 2];
            int i20 = i19 & 1048575;
            int i21 = 1 << (i19 >>> 20);
            if (i20 != i16) {
                if (i20 != 1048575) {
                    i14 = zzb.getInt(obj, i20);
                }
                i12 = i14;
                i11 = i20;
            } else {
                i11 = i16;
                i12 = i14;
            }
            if ((268435456 & iZzs) != 0 && !zzJ(obj, i17, i11, i12, i21)) {
                return false;
            }
            int iZzr = zzr(iZzs);
            if (iZzr == 9 || iZzr == 17) {
                if (zzJ(obj, i17, i11, i12, i21) && !zzK(obj, iZzs, zzv(i17))) {
                    return false;
                }
            } else if (iZzr == 27) {
                list = (List) zzhn.zzf(obj, iZzs & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzgmVarZzv = zzv(i17);
                    for (i13 = 0; i13 < list.size(); i13++) {
                        if (!zzgmVarZzv.zzk(list.get(i13))) {
                            return false;
                        }
                    }
                }
            } else if (iZzr == 60 || iZzr == 68) {
                if (zzM(obj, i18, i17) && !zzK(obj, iZzs, zzv(i17))) {
                    return false;
                }
            } else if (iZzr == 49) {
                list = (List) zzhn.zzf(obj, iZzs & 1048575);
                if (list.isEmpty()) {
                    zzgmVarZzv = zzv(i17);
                    while (i13 < list.size()) {
                        if (!zzgmVarZzv.zzk(list.get(i13))) {
                            return false;
                        }
                    }
                } else {
                    continue;
                }
            } else if (iZzr == 50 && !((zzfw) zzhn.zzf(obj, iZzs & 1048575)).isEmpty()) {
                throw null;
            }
            i15++;
            i16 = i11;
            i14 = i12;
        }
        if (!this.zzh) {
            return true;
        }
        this.zzn.zza(obj);
        throw null;
    }
}
