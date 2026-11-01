package com.google.android.gms.internal.auth;

import com.google.android.gms.fido.u2f.api.common.RegisterRequest;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import org.mvel2.ast.ASTNode;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
final class zzfz<T> implements zzgh<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzhi.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzfw zzg;
    private final boolean zzh;
    private final int[] zzi;
    private final int zzj;
    private final int zzk;
    private final zzfk zzl;
    private final zzgy zzm;
    private final zzel zzn;
    private final zzgb zzo;
    private final zzfr zzp;

    private zzfz(int[] iArr, Object[] objArr, int i11, int i12, zzfw zzfwVar, boolean z10, boolean z11, int[] iArr2, int i13, int i14, zzgb zzgbVar, zzfk zzfkVar, zzgy zzgyVar, zzel zzelVar, zzfr zzfrVar, byte[] bArr) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i11;
        this.zzf = i12;
        this.zzh = z10;
        this.zzi = iArr2;
        this.zzj = i13;
        this.zzk = i14;
        this.zzo = zzgbVar;
        this.zzl = zzfkVar;
        this.zzm = zzgyVar;
        this.zzn = zzelVar;
        this.zzg = zzfwVar;
        this.zzp = zzfrVar;
    }

    private static Field zzA(Class cls, String str) {
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

    private final void zzB(Object obj, Object obj2, int i11) {
        long jZzv = zzv(i11) & 1048575;
        if (zzG(obj2, i11)) {
            Object objZzf = zzhi.zzf(obj, jZzv);
            Object objZzf2 = zzhi.zzf(obj2, jZzv);
            if (objZzf != null && objZzf2 != null) {
                zzhi.zzp(obj, jZzv, zzez.zzg(objZzf, objZzf2));
                zzD(obj, i11);
            } else if (objZzf2 != null) {
                zzhi.zzp(obj, jZzv, objZzf2);
                zzD(obj, i11);
            }
        }
    }

    private final void zzC(Object obj, Object obj2, int i11) {
        int iZzv = zzv(i11);
        int i12 = this.zzc[i11];
        long j11 = iZzv & 1048575;
        if (zzJ(obj2, i12, i11)) {
            Object objZzf = zzJ(obj, i12, i11) ? zzhi.zzf(obj, j11) : null;
            Object objZzf2 = zzhi.zzf(obj2, j11);
            if (objZzf != null && objZzf2 != null) {
                zzhi.zzp(obj, j11, zzez.zzg(objZzf, objZzf2));
                zzE(obj, i12, i11);
            } else if (objZzf2 != null) {
                zzhi.zzp(obj, j11, objZzf2);
                zzE(obj, i12, i11);
            }
        }
    }

    private final void zzD(Object obj, int i11) {
        int iZzs = zzs(i11);
        long j11 = 1048575 & iZzs;
        if (j11 == 1048575) {
            return;
        }
        zzhi.zzn(obj, j11, (1 << (iZzs >>> 20)) | zzhi.zzc(obj, j11));
    }

    private final void zzE(Object obj, int i11, int i12) {
        zzhi.zzn(obj, zzs(i12) & 1048575, i11);
    }

    private final boolean zzF(Object obj, Object obj2, int i11) {
        return zzG(obj, i11) == zzG(obj2, i11);
    }

    private final boolean zzG(Object obj, int i11) {
        int iZzs = zzs(i11);
        long j11 = iZzs & 1048575;
        if (j11 != 1048575) {
            return (zzhi.zzc(obj, j11) & (1 << (iZzs >>> 20))) != 0;
        }
        int iZzv = zzv(i11);
        long j12 = iZzv & 1048575;
        switch (zzu(iZzv)) {
            case 0:
                return Double.doubleToRawLongBits(zzhi.zza(obj, j12)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzhi.zzb(obj, j12)) != 0;
            case 2:
                return zzhi.zzd(obj, j12) != 0;
            case 3:
                return zzhi.zzd(obj, j12) != 0;
            case 4:
                return zzhi.zzc(obj, j12) != 0;
            case 5:
                return zzhi.zzd(obj, j12) != 0;
            case 6:
                return zzhi.zzc(obj, j12) != 0;
            case 7:
                return zzhi.zzt(obj, j12);
            case 8:
                Object objZzf = zzhi.zzf(obj, j12);
                if (objZzf instanceof String) {
                    return !((String) objZzf).isEmpty();
                }
                if (objZzf instanceof zzee) {
                    return !zzee.zzb.equals(objZzf);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzhi.zzf(obj, j12) != null;
            case 10:
                return !zzee.zzb.equals(zzhi.zzf(obj, j12));
            case 11:
                return zzhi.zzc(obj, j12) != 0;
            case 12:
                return zzhi.zzc(obj, j12) != 0;
            case 13:
                return zzhi.zzc(obj, j12) != 0;
            case 14:
                return zzhi.zzd(obj, j12) != 0;
            case 15:
                return zzhi.zzc(obj, j12) != 0;
            case 16:
                return zzhi.zzd(obj, j12) != 0;
            case 17:
                return zzhi.zzf(obj, j12) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzH(Object obj, int i11, int i12, int i13, int i14) {
        if (i12 == 1048575) {
            return zzG(obj, i11);
        }
        return (i13 & i14) != 0;
    }

    private static boolean zzI(Object obj, int i11, zzgh zzghVar) {
        return zzghVar.zzi(zzhi.zzf(obj, i11 & 1048575));
    }

    private final boolean zzJ(Object obj, int i11, int i12) {
        return zzhi.zzc(obj, (long) (zzs(i12) & 1048575)) == i11;
    }

    static zzgz zzc(Object obj) {
        zzeu zzeuVar = (zzeu) obj;
        zzgz zzgzVar = zzeuVar.zzc;
        if (zzgzVar != zzgz.zza()) {
            return zzgzVar;
        }
        zzgz zzgzVarZzc = zzgz.zzc();
        zzeuVar.zzc = zzgzVarZzc;
        return zzgzVarZzc;
    }

    static zzfz zzj(Class cls, zzft zzftVar, zzgb zzgbVar, zzfk zzfkVar, zzgy zzgyVar, zzel zzelVar, zzfr zzfrVar) {
        if (zzftVar instanceof zzgg) {
            return zzk((zzgg) zzftVar, zzgbVar, zzfkVar, zzgyVar, zzelVar, zzfrVar);
        }
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:123:0x025f  */
    /* JADX WARN: Code duplicated, block: B:125:0x0265  */
    /* JADX WARN: Code duplicated, block: B:128:0x027b  */
    /* JADX WARN: Code duplicated, block: B:130:0x027f  */
    /* JADX WARN: Code duplicated, block: B:164:0x0334  */
    /* JADX WARN: Code duplicated, block: B:180:0x0384  */
    /* JADX WARN: Code duplicated, block: B:183:0x038e  */
    static zzfz zzk(zzgg zzggVar, zzgb zzgbVar, zzfk zzfkVar, zzgy zzgyVar, zzel zzelVar, zzfr zzfrVar) {
        int i11;
        int iCharAt;
        int iCharAt2;
        int iCharAt3;
        int[] iArr;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        char cCharAt;
        int i17;
        char cCharAt2;
        int i18;
        char cCharAt3;
        int i19;
        char cCharAt4;
        int i20;
        char cCharAt5;
        int i21;
        char cCharAt6;
        int i22;
        char cCharAt7;
        int i23;
        char cCharAt8;
        int i24;
        int i25;
        int i26;
        int[] iArr2;
        int i27;
        int i28;
        int i29;
        int iObjectFieldOffset;
        int iObjectFieldOffset2;
        Object[] objArr;
        int i30;
        int i31;
        Field fieldZzA;
        char cCharAt9;
        int i32;
        int i33;
        int i34;
        int i35;
        Object obj;
        Field fieldZzA2;
        int i36;
        Object obj2;
        Field fieldZzA3;
        int i37;
        char cCharAt10;
        int i38;
        char cCharAt11;
        int i39;
        char cCharAt12;
        int i40;
        char cCharAt13;
        boolean z10 = zzggVar.zzc() == 2;
        String strZzd = zzggVar.zzd();
        int length = strZzd.length();
        char c11 = 55296;
        if (strZzd.charAt(0) >= 55296) {
            int i41 = 1;
            while (true) {
                i11 = i41 + 1;
                if (strZzd.charAt(i41) < 55296) {
                    break;
                }
                i41 = i11;
            }
        } else {
            i11 = 1;
        }
        int i42 = i11 + 1;
        int iCharAt4 = strZzd.charAt(i11);
        if (iCharAt4 >= 55296) {
            int i43 = iCharAt4 & 8191;
            int i44 = 13;
            while (true) {
                i40 = i42 + 1;
                cCharAt13 = strZzd.charAt(i42);
                if (cCharAt13 < 55296) {
                    break;
                }
                i43 |= (cCharAt13 & 8191) << i44;
                i44 += 13;
                i42 = i40;
            }
            iCharAt4 = i43 | (cCharAt13 << i44);
            i42 = i40;
        }
        if (iCharAt4 == 0) {
            iCharAt = 0;
            i15 = 0;
            iCharAt2 = 0;
            i14 = 0;
            iCharAt3 = 0;
            i12 = 0;
            iArr = zza;
            i13 = 0;
        } else {
            int i45 = i42 + 1;
            int iCharAt5 = strZzd.charAt(i42);
            if (iCharAt5 >= 55296) {
                int i46 = iCharAt5 & 8191;
                int i47 = 13;
                while (true) {
                    i23 = i45 + 1;
                    cCharAt8 = strZzd.charAt(i45);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i46 |= (cCharAt8 & 8191) << i47;
                    i47 += 13;
                    i45 = i23;
                }
                iCharAt5 = i46 | (cCharAt8 << i47);
                i45 = i23;
            }
            int i48 = i45 + 1;
            int iCharAt6 = strZzd.charAt(i45);
            if (iCharAt6 >= 55296) {
                int i49 = iCharAt6 & 8191;
                int i50 = 13;
                while (true) {
                    i22 = i48 + 1;
                    cCharAt7 = strZzd.charAt(i48);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i49 |= (cCharAt7 & 8191) << i50;
                    i50 += 13;
                    i48 = i22;
                }
                iCharAt6 = i49 | (cCharAt7 << i50);
                i48 = i22;
            }
            int i51 = i48 + 1;
            iCharAt = strZzd.charAt(i48);
            if (iCharAt >= 55296) {
                int i52 = iCharAt & 8191;
                int i53 = 13;
                while (true) {
                    i21 = i51 + 1;
                    cCharAt6 = strZzd.charAt(i51);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i52 |= (cCharAt6 & 8191) << i53;
                    i53 += 13;
                    i51 = i21;
                }
                iCharAt = i52 | (cCharAt6 << i53);
                i51 = i21;
            }
            int i54 = i51 + 1;
            int iCharAt7 = strZzd.charAt(i51);
            if (iCharAt7 >= 55296) {
                int i55 = iCharAt7 & 8191;
                int i56 = 13;
                while (true) {
                    i20 = i54 + 1;
                    cCharAt5 = strZzd.charAt(i54);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i55 |= (cCharAt5 & 8191) << i56;
                    i56 += 13;
                    i54 = i20;
                }
                iCharAt7 = i55 | (cCharAt5 << i56);
                i54 = i20;
            }
            int i57 = i54 + 1;
            iCharAt2 = strZzd.charAt(i54);
            if (iCharAt2 >= 55296) {
                int i58 = iCharAt2 & 8191;
                int i59 = 13;
                while (true) {
                    i19 = i57 + 1;
                    cCharAt4 = strZzd.charAt(i57);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i58 |= (cCharAt4 & 8191) << i59;
                    i59 += 13;
                    i57 = i19;
                }
                iCharAt2 = i58 | (cCharAt4 << i59);
                i57 = i19;
            }
            int i60 = i57 + 1;
            int iCharAt8 = strZzd.charAt(i57);
            if (iCharAt8 >= 55296) {
                int i61 = iCharAt8 & 8191;
                int i62 = 13;
                while (true) {
                    i18 = i60 + 1;
                    cCharAt3 = strZzd.charAt(i60);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i61 |= (cCharAt3 & 8191) << i62;
                    i62 += 13;
                    i60 = i18;
                }
                iCharAt8 = i61 | (cCharAt3 << i62);
                i60 = i18;
            }
            int i63 = i60 + 1;
            int iCharAt9 = strZzd.charAt(i60);
            if (iCharAt9 >= 55296) {
                int i64 = iCharAt9 & 8191;
                int i65 = 13;
                while (true) {
                    i17 = i63 + 1;
                    cCharAt2 = strZzd.charAt(i63);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i64 |= (cCharAt2 & 8191) << i65;
                    i65 += 13;
                    i63 = i17;
                }
                iCharAt9 = i64 | (cCharAt2 << i65);
                i63 = i17;
            }
            int i66 = i63 + 1;
            iCharAt3 = strZzd.charAt(i63);
            if (iCharAt3 >= 55296) {
                int i67 = iCharAt3 & 8191;
                int i68 = 13;
                while (true) {
                    i16 = i66 + 1;
                    cCharAt = strZzd.charAt(i66);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i67 |= (cCharAt & 8191) << i68;
                    i68 += 13;
                    i66 = i16;
                }
                iCharAt3 = i67 | (cCharAt << i68);
                i66 = i16;
            }
            iArr = new int[iCharAt3 + iCharAt8 + iCharAt9];
            i12 = iCharAt5 + iCharAt5 + iCharAt6;
            i13 = iCharAt5;
            i42 = i66;
            int i69 = iCharAt8;
            i14 = iCharAt7;
            i15 = i69;
        }
        Unsafe unsafe = zzb;
        Object[] objArrZze = zzggVar.zze();
        Class<?> cls = zzggVar.zza().getClass();
        int[] iArr3 = new int[iCharAt2 * 3];
        Object[] objArr2 = new Object[iCharAt2 + iCharAt2];
        int i70 = iCharAt3 + i15;
        int i71 = iCharAt3;
        int i72 = i70;
        int i73 = 0;
        int i74 = 0;
        while (i42 < length) {
            int i75 = i42 + 1;
            int iCharAt10 = strZzd.charAt(i42);
            if (iCharAt10 >= c11) {
                int i76 = iCharAt10 & 8191;
                int i77 = i75;
                int i78 = 13;
                while (true) {
                    i39 = i77 + 1;
                    cCharAt12 = strZzd.charAt(i77);
                    if (cCharAt12 < c11) {
                        break;
                    }
                    i76 |= (cCharAt12 & 8191) << i78;
                    i78 += 13;
                    i77 = i39;
                }
                iCharAt10 = i76 | (cCharAt12 << i78);
                i24 = i39;
            } else {
                i24 = i75;
            }
            int i79 = i24 + 1;
            int iCharAt11 = strZzd.charAt(i24);
            if (iCharAt11 >= c11) {
                int i80 = iCharAt11 & 8191;
                int i81 = i79;
                int i82 = 13;
                while (true) {
                    i38 = i81 + 1;
                    cCharAt11 = strZzd.charAt(i81);
                    i25 = length;
                    if (cCharAt11 < 55296) {
                        break;
                    }
                    i80 |= (cCharAt11 & 8191) << i82;
                    i82 += 13;
                    i81 = i38;
                    length = i25;
                }
                iCharAt11 = i80 | (cCharAt11 << i82);
                i26 = i38;
            } else {
                i25 = length;
                i26 = i79;
            }
            int i83 = iCharAt11 & 255;
            int i84 = iCharAt3;
            if ((iCharAt11 & 1024) != 0) {
                iArr[i74] = i73;
                i74++;
            }
            if (i83 >= 51) {
                int i85 = i26 + 1;
                int iCharAt12 = strZzd.charAt(i26);
                if (iCharAt12 >= 55296) {
                    int i86 = iCharAt12 & 8191;
                    int i87 = i85;
                    int i88 = 13;
                    while (true) {
                        i37 = i87 + 1;
                        cCharAt10 = strZzd.charAt(i87);
                        i28 = i14;
                        if (cCharAt10 < 55296) {
                            break;
                        }
                        i86 |= (cCharAt10 & 8191) << i88;
                        i88 += 13;
                        i87 = i37;
                        i14 = i28;
                    }
                    iCharAt12 = i86 | (cCharAt10 << i88);
                    i33 = i37;
                } else {
                    i28 = i14;
                    i33 = i85;
                }
                int i89 = i83 - 51;
                int i90 = i33;
                if (i89 == 9 || i89 == 17) {
                    int i91 = i73 / 3;
                    i34 = i12 + 1;
                    objArr2[i91 + i91 + 1] = objArrZze[i12];
                } else {
                    if (i89 == 12 && !z10) {
                        int i92 = i73 / 3;
                        i34 = i12 + 1;
                        objArr2[i92 + i92 + 1] = objArrZze[i12];
                    }
                    i35 = iCharAt12 + iCharAt12;
                    obj = objArrZze[i35];
                    if (obj instanceof Field) {
                        fieldZzA2 = (Field) obj;
                    } else {
                        fieldZzA2 = zzA(cls, (String) obj);
                        objArrZze[i35] = fieldZzA2;
                    }
                    iArr2 = iArr3;
                    i27 = iCharAt;
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldZzA2);
                    i36 = i35 + 1;
                    obj2 = objArrZze[i36];
                    if (obj2 instanceof Field) {
                        fieldZzA3 = (Field) obj2;
                    } else {
                        fieldZzA3 = zzA(cls, (String) obj2);
                        objArrZze[i36] = fieldZzA3;
                    }
                    strZzd = strZzd;
                    objArr = objArr2;
                    i29 = i12;
                    i30 = i90;
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzA3);
                    iObjectFieldOffset = iObjectFieldOffset3;
                    i31 = 0;
                }
                i12 = i34;
                i35 = iCharAt12 + iCharAt12;
                obj = objArrZze[i35];
                if (obj instanceof Field) {
                    fieldZzA2 = (Field) obj;
                } else {
                    fieldZzA2 = zzA(cls, (String) obj);
                    objArrZze[i35] = fieldZzA2;
                }
                iArr2 = iArr3;
                i27 = iCharAt;
                int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldZzA2);
                i36 = i35 + 1;
                obj2 = objArrZze[i36];
                if (obj2 instanceof Field) {
                    fieldZzA3 = (Field) obj2;
                } else {
                    fieldZzA3 = zzA(cls, (String) obj2);
                    objArrZze[i36] = fieldZzA3;
                }
                strZzd = strZzd;
                objArr = objArr2;
                i29 = i12;
                i30 = i90;
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzA3);
                iObjectFieldOffset = iObjectFieldOffset4;
                i31 = 0;
            } else {
                iArr2 = iArr3;
                i27 = iCharAt;
                i28 = i14;
                int i93 = i12 + 1;
                Field fieldZzA4 = zzA(cls, (String) objArrZze[i12]);
                if (i83 == 9 || i83 == 17) {
                    int i94 = i73 / 3;
                    objArr2[i94 + i94 + 1] = fieldZzA4.getType();
                } else {
                    if (i83 == 27 || i83 == 49) {
                        int i95 = i73 / 3;
                        i32 = i12 + 2;
                        objArr2[i95 + i95 + 1] = objArrZze[i93];
                    } else if (i83 == 12 || i83 == 30 || i83 == 44) {
                        if (!z10) {
                            int i96 = i73 / 3;
                            i32 = i12 + 2;
                            objArr2[i96 + i96 + 1] = objArrZze[i93];
                        }
                    } else if (i83 == 50) {
                        int i97 = i71 + 1;
                        iArr[i71] = i73;
                        int i98 = i73 / 3;
                        int i99 = i98 + i98;
                        int i100 = i12 + 2;
                        objArr2[i99] = objArrZze[i93];
                        if ((iCharAt11 & 2048) != 0) {
                            i93 = i12 + 3;
                            objArr2[i99 + 1] = objArrZze[i100];
                            i71 = i97;
                        } else {
                            i71 = i97;
                            i29 = i100;
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzA4);
                        iObjectFieldOffset2 = 1048575;
                        objArr = objArr2;
                        if ((iCharAt11 & 4096) == 4096 || i83 > 17) {
                            i30 = i26;
                            i31 = 0;
                        } else {
                            int i101 = i26 + 1;
                            int iCharAt13 = strZzd.charAt(i26);
                            if (iCharAt13 >= 55296) {
                                int i102 = iCharAt13 & 8191;
                                int i103 = 13;
                                while (true) {
                                    i30 = i101 + 1;
                                    cCharAt9 = strZzd.charAt(i101);
                                    if (cCharAt9 < 55296) {
                                        break;
                                    }
                                    i102 |= (cCharAt9 & 8191) << i103;
                                    i103 += 13;
                                    i101 = i30;
                                }
                                iCharAt13 = i102 | (cCharAt9 << i103);
                            } else {
                                i30 = i101;
                            }
                            int i104 = i13 + i13 + (iCharAt13 / 32);
                            Object obj3 = objArrZze[i104];
                            if (obj3 instanceof Field) {
                                fieldZzA = (Field) obj3;
                            } else {
                                fieldZzA = zzA(cls, (String) obj3);
                                objArrZze[i104] = fieldZzA;
                            }
                            i31 = iCharAt13 % 32;
                            iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzA);
                        }
                        if (i83 >= 18 && i83 <= 49) {
                            iArr[i72] = iObjectFieldOffset;
                            i72++;
                        }
                    }
                    i29 = i32;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzA4);
                    iObjectFieldOffset2 = 1048575;
                    objArr = objArr2;
                    if ((iCharAt11 & 4096) == 4096) {
                        i30 = i26;
                        i31 = 0;
                    } else {
                        i30 = i26;
                        i31 = 0;
                    }
                    if (i83 >= 18) {
                        iArr[i72] = iObjectFieldOffset;
                        i72++;
                    }
                }
                i29 = i93;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzA4);
                iObjectFieldOffset2 = 1048575;
                objArr = objArr2;
                if ((iCharAt11 & 4096) == 4096) {
                    i30 = i26;
                    i31 = 0;
                } else {
                    i30 = i26;
                    i31 = 0;
                }
                if (i83 >= 18) {
                    iArr[i72] = iObjectFieldOffset;
                    i72++;
                }
            }
            int i105 = i73 + 1;
            iArr2[i73] = iCharAt10;
            int i106 = i73 + 2;
            iArr2[i105] = ((iCharAt11 & 256) != 0 ? ASTNode.DEOP : 0) | ((iCharAt11 & 512) != 0 ? ASTNode.DISCARD : 0) | (i83 << 20) | iObjectFieldOffset;
            i73 += 3;
            iArr2[i106] = (i31 << 20) | iObjectFieldOffset2;
            i12 = i29;
            iCharAt = i27;
            iCharAt3 = i84;
            i42 = i30;
            length = i25;
            objArr2 = objArr;
            strZzd = strZzd;
            iArr3 = iArr2;
            i14 = i28;
            c11 = 55296;
        }
        return new zzfz(iArr3, objArr2, iCharAt, i14, zzggVar.zza(), z10, false, iArr, iCharAt3, i70, zzgbVar, zzfkVar, zzgyVar, zzelVar, zzfrVar, null);
    }

    private static int zzl(Object obj, long j11) {
        return ((Integer) zzhi.zzf(obj, j11)).intValue();
    }

    private final int zzm(Object obj, byte[] bArr, int i11, int i12, int i13, long j11, zzds zzdsVar) throws IOException {
        Unsafe unsafe = zzb;
        Object objZzz = zzz(i13);
        Object object = unsafe.getObject(obj, j11);
        if (!((zzfq) object).zze()) {
            zzfq zzfqVarZzb = zzfq.zza().zzb();
            zzfr.zza(zzfqVarZzb, object);
            unsafe.putObject(obj, j11, zzfqVarZzb);
        }
        throw null;
    }

    private final int zzn(Object obj, byte[] bArr, int i11, int i12, int i13, int i14, int i15, int i16, int i17, long j11, int i18, zzds zzdsVar) throws IOException {
        Unsafe unsafe = zzb;
        long j12 = this.zzc[i18 + 2] & 1048575;
        switch (i17) {
            case AD_REWARD_USER_VALUE:
                if (i15 != 1) {
                    return i11;
                }
                unsafe.putObject(obj, j11, Double.valueOf(Double.longBitsToDouble(zzdt.zzn(bArr, i11))));
                unsafe.putInt(obj, j12, i14);
                return i11 + 8;
            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                if (i15 != 5) {
                    return i11;
                }
                unsafe.putObject(obj, j11, Float.valueOf(Float.intBitsToFloat(zzdt.zzb(bArr, i11))));
                unsafe.putInt(obj, j12, i14);
                return i11 + 4;
            case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
            case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                if (i15 != 0) {
                    return i11;
                }
                int iZzm = zzdt.zzm(bArr, i11, zzdsVar);
                unsafe.putObject(obj, j11, Long.valueOf(zzdsVar.zzb));
                unsafe.putInt(obj, j12, i14);
                return iZzm;
            case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
            case 62:
                if (i15 != 0) {
                    return i11;
                }
                int iZzj = zzdt.zzj(bArr, i11, zzdsVar);
                unsafe.putObject(obj, j11, Integer.valueOf(zzdsVar.zza));
                unsafe.putInt(obj, j12, i14);
                return iZzj;
            case AD_VISIBILITY_VALUE:
            case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                if (i15 != 1) {
                    return i11;
                }
                unsafe.putObject(obj, j11, Long.valueOf(zzdt.zzn(bArr, i11)));
                unsafe.putInt(obj, j12, i14);
                return i11 + 8;
            case 57:
            case 64:
                if (i15 != 5) {
                    return i11;
                }
                unsafe.putObject(obj, j11, Integer.valueOf(zzdt.zzb(bArr, i11)));
                unsafe.putInt(obj, j12, i14);
                return i11 + 4;
            case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                if (i15 != 0) {
                    return i11;
                }
                int iZzm2 = zzdt.zzm(bArr, i11, zzdsVar);
                unsafe.putObject(obj, j11, Boolean.valueOf(zzdsVar.zzb != 0));
                unsafe.putInt(obj, j12, i14);
                return iZzm2;
            case 59:
                if (i15 != 2) {
                    return i11;
                }
                int iZzj2 = zzdt.zzj(bArr, i11, zzdsVar);
                int i19 = zzdsVar.zza;
                if (i19 == 0) {
                    unsafe.putObject(obj, j11, "");
                } else {
                    if ((i16 & ASTNode.DISCARD) != 0 && !zzhm.zzd(bArr, iZzj2, iZzj2 + i19)) {
                        throw zzfa.zzb();
                    }
                    unsafe.putObject(obj, j11, new String(bArr, iZzj2, i19, zzez.zzb));
                    iZzj2 += i19;
                }
                unsafe.putInt(obj, j12, i14);
                return iZzj2;
            case 60:
                if (i15 != 2) {
                    return i11;
                }
                int iZzd = zzdt.zzd(zzy(i18), bArr, i11, i12, zzdsVar);
                Object object = unsafe.getInt(obj, j12) == i14 ? unsafe.getObject(obj, j11) : null;
                if (object == null) {
                    unsafe.putObject(obj, j11, zzdsVar.zzc);
                } else {
                    unsafe.putObject(obj, j11, zzez.zzg(object, zzdsVar.zzc));
                }
                unsafe.putInt(obj, j12, i14);
                return iZzd;
            case 61:
                if (i15 != 2) {
                    return i11;
                }
                int iZza = zzdt.zza(bArr, i11, zzdsVar);
                unsafe.putObject(obj, j11, zzdsVar.zzc);
                unsafe.putInt(obj, j12, i14);
                return iZza;
            case 63:
                if (i15 != 0) {
                    return i11;
                }
                int iZzj3 = zzdt.zzj(bArr, i11, zzdsVar);
                int i20 = zzdsVar.zza;
                zzex zzexVarZzx = zzx(i18);
                if (zzexVarZzx == null || zzexVarZzx.zza()) {
                    unsafe.putObject(obj, j11, Integer.valueOf(i20));
                    unsafe.putInt(obj, j12, i14);
                } else {
                    zzc(obj).zzf(i13, Long.valueOf(i20));
                }
                return iZzj3;
            case 66:
                if (i15 != 0) {
                    return i11;
                }
                int iZzj4 = zzdt.zzj(bArr, i11, zzdsVar);
                unsafe.putObject(obj, j11, Integer.valueOf(zzei.zzb(zzdsVar.zza)));
                unsafe.putInt(obj, j12, i14);
                return iZzj4;
            case 67:
                if (i15 != 0) {
                    return i11;
                }
                int iZzm3 = zzdt.zzm(bArr, i11, zzdsVar);
                unsafe.putObject(obj, j11, Long.valueOf(zzei.zzc(zzdsVar.zzb)));
                unsafe.putInt(obj, j12, i14);
                return iZzm3;
            case 68:
                if (i15 != 3) {
                    return i11;
                }
                int iZzc = zzdt.zzc(zzy(i18), bArr, i11, i12, (i13 & (-8)) | 4, zzdsVar);
                Object object2 = unsafe.getInt(obj, j12) == i14 ? unsafe.getObject(obj, j11) : null;
                if (object2 == null) {
                    unsafe.putObject(obj, j11, zzdsVar.zzc);
                } else {
                    unsafe.putObject(obj, j11, zzez.zzg(object2, zzdsVar.zzc));
                }
                unsafe.putInt(obj, j12, i14);
                return iZzc;
            default:
                return i11;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:25:0x0081. Please report as an issue. */
    private final int zzo(Object obj, byte[] bArr, int i11, int i12, zzds zzdsVar) throws IOException {
        int i13;
        int iZzk;
        int i14;
        int i15;
        int i16;
        Unsafe unsafe;
        int i17;
        int i18;
        int i19;
        int i20;
        int iZzm;
        int iZzd;
        int i21;
        int i22;
        int i23;
        zzfz<T> zzfzVar = this;
        Object obj2 = obj;
        byte[] bArr2 = bArr;
        int i24 = i12;
        zzdsVar = zzdsVar;
        Unsafe unsafe2 = zzb;
        int i25 = 1048575;
        int i26 = -1;
        int iZzi = i11;
        int i27 = -1;
        int i28 = 1048575;
        int i29 = 0;
        int i30 = 0;
        while (iZzi < i24) {
            int i31 = iZzi + 1;
            byte b11 = bArr2[iZzi];
            if (b11 < 0) {
                iZzk = zzdt.zzk(b11, bArr2, i31, zzdsVar);
                i13 = zzdsVar.zza;
            } else {
                i13 = b11;
                iZzk = i31;
            }
            int i32 = i13 >>> 3;
            int i33 = i13 & 7;
            int iZzr = i32 > i27 ? zzfzVar.zzr(i32, i29 / 3) : zzfzVar.zzq(i32);
            if (iZzr == i26) {
                i14 = iZzk;
                i15 = i32;
                i16 = i26;
                unsafe = unsafe2;
                i17 = 0;
            } else {
                int[] iArr = zzfzVar.zzc;
                int i34 = iArr[iZzr + 1];
                int iZzu = zzu(i34);
                long j11 = i34 & i25;
                if (iZzu <= 17) {
                    int i35 = iArr[iZzr + 2];
                    int i36 = 1 << (i35 >>> 20);
                    i18 = 1048575;
                    int i37 = i35 & 1048575;
                    if (i37 != i28) {
                        if (i28 != 1048575) {
                            unsafe2.putInt(obj2, i28, i30);
                        }
                        if (i37 != 1048575) {
                            i30 = unsafe2.getInt(obj2, i37);
                        }
                        i28 = i37;
                    }
                    switch (iZzu) {
                        case 0:
                            i19 = iZzr;
                            i20 = iZzk;
                            i15 = i32;
                            if (i33 != 1) {
                                i14 = i20;
                                unsafe = unsafe2;
                                i17 = i19;
                                i16 = -1;
                            } else {
                                zzhi.zzl(obj2, j11, Double.longBitsToDouble(zzdt.zzn(bArr2, i20)));
                                iZzi = i20 + 8;
                                i30 |= i36;
                                i29 = i19;
                                i27 = i15;
                                i25 = i18;
                                i26 = -1;
                            }
                            break;
                        case 1:
                            zzdsVar = zzdsVar;
                            i19 = iZzr;
                            i20 = iZzk;
                            i18 = 1048575;
                            i15 = i32;
                            if (i33 != 5) {
                                i14 = i20;
                                unsafe = unsafe2;
                                i17 = i19;
                                i16 = -1;
                            } else {
                                zzhi.zzm(obj2, j11, Float.intBitsToFloat(zzdt.zzb(bArr2, i20)));
                                iZzi = i20 + 4;
                                i30 |= i36;
                                i29 = i19;
                                i27 = i15;
                                i25 = i18;
                                i26 = -1;
                            }
                            break;
                        case 2:
                        case 3:
                            zzdsVar = zzdsVar;
                            i19 = iZzr;
                            i20 = iZzk;
                            i15 = i32;
                            if (i33 != 0) {
                                i14 = i20;
                                unsafe = unsafe2;
                                i17 = i19;
                                i16 = -1;
                            } else {
                                iZzm = zzdt.zzm(bArr2, i20, zzdsVar);
                                unsafe2.putLong(obj, j11, zzdsVar.zzb);
                                i30 |= i36;
                                iZzi = iZzm;
                                i29 = i19;
                                i27 = i15;
                                i25 = i18;
                                i26 = -1;
                            }
                            break;
                        case 4:
                        case 11:
                            zzdsVar = zzdsVar;
                            i19 = iZzr;
                            i20 = iZzk;
                            i18 = 1048575;
                            i15 = i32;
                            if (i33 != 0) {
                                i14 = i20;
                                unsafe = unsafe2;
                                i17 = i19;
                                i16 = -1;
                            } else {
                                iZzi = zzdt.zzj(bArr2, i20, zzdsVar);
                                unsafe2.putInt(obj2, j11, zzdsVar.zza);
                                i30 |= i36;
                                i29 = i19;
                                i27 = i15;
                                i25 = i18;
                                i26 = -1;
                            }
                            break;
                        case 5:
                        case 14:
                            i19 = iZzr;
                            i15 = i32;
                            if (i33 != 1) {
                                i20 = iZzk;
                                i14 = i20;
                                unsafe = unsafe2;
                                i17 = i19;
                                i16 = -1;
                            } else {
                                i20 = iZzk;
                                unsafe2.putLong(obj, j11, zzdt.zzn(bArr2, iZzk));
                                iZzi = i20 + 8;
                                i30 |= i36;
                                i29 = i19;
                                i27 = i15;
                                i25 = i18;
                                i26 = -1;
                            }
                            break;
                        case 6:
                        case 13:
                            zzdsVar = zzdsVar;
                            i19 = iZzr;
                            i18 = 1048575;
                            i15 = i32;
                            if (i33 != 5) {
                                i20 = iZzk;
                                i14 = i20;
                                unsafe = unsafe2;
                                i17 = i19;
                                i16 = -1;
                            } else {
                                unsafe2.putInt(obj2, j11, zzdt.zzb(bArr2, iZzk));
                                iZzi = iZzk + 4;
                                i30 |= i36;
                                i29 = i19;
                                i27 = i15;
                                i25 = i18;
                                i26 = -1;
                            }
                            break;
                        case 7:
                            zzdsVar = zzdsVar;
                            i19 = iZzr;
                            i18 = 1048575;
                            i15 = i32;
                            if (i33 != 0) {
                                i20 = iZzk;
                                i14 = i20;
                                unsafe = unsafe2;
                                i17 = i19;
                                i16 = -1;
                            } else {
                                iZzi = zzdt.zzm(bArr2, iZzk, zzdsVar);
                                zzhi.zzk(obj2, j11, zzdsVar.zzb != 0);
                                i30 |= i36;
                                i29 = i19;
                                i27 = i15;
                                i25 = i18;
                                i26 = -1;
                            }
                            break;
                        case 8:
                            zzdsVar = zzdsVar;
                            i19 = iZzr;
                            i18 = 1048575;
                            i15 = i32;
                            if (i33 != 2) {
                                i20 = iZzk;
                                i14 = i20;
                                unsafe = unsafe2;
                                i17 = i19;
                                i16 = -1;
                            } else {
                                iZzi = (536870912 & i34) == 0 ? zzdt.zzg(bArr2, iZzk, zzdsVar) : zzdt.zzh(bArr2, iZzk, zzdsVar);
                                unsafe2.putObject(obj2, j11, zzdsVar.zzc);
                                i30 |= i36;
                                i29 = i19;
                                i27 = i15;
                                i25 = i18;
                                i26 = -1;
                            }
                            break;
                        case 9:
                            zzdsVar = zzdsVar;
                            i19 = iZzr;
                            i18 = 1048575;
                            i15 = i32;
                            if (i33 != 2) {
                                i20 = iZzk;
                                i14 = i20;
                                unsafe = unsafe2;
                                i17 = i19;
                                i16 = -1;
                            } else {
                                iZzd = zzdt.zzd(zzfzVar.zzy(i19), bArr2, iZzk, i24, zzdsVar);
                                Object object = unsafe2.getObject(obj2, j11);
                                if (object == null) {
                                    unsafe2.putObject(obj2, j11, zzdsVar.zzc);
                                } else {
                                    unsafe2.putObject(obj2, j11, zzez.zzg(object, zzdsVar.zzc));
                                }
                                i30 |= i36;
                                iZzi = iZzd;
                                i29 = i19;
                                i27 = i15;
                                i25 = i18;
                                i26 = -1;
                            }
                            break;
                        case 10:
                            zzdsVar = zzdsVar;
                            i19 = iZzr;
                            i18 = 1048575;
                            i15 = i32;
                            if (i33 != 2) {
                                i20 = iZzk;
                                i14 = i20;
                                unsafe = unsafe2;
                                i17 = i19;
                                i16 = -1;
                            } else {
                                iZzd = zzdt.zza(bArr2, iZzk, zzdsVar);
                                unsafe2.putObject(obj2, j11, zzdsVar.zzc);
                                i30 |= i36;
                                iZzi = iZzd;
                                i29 = i19;
                                i27 = i15;
                                i25 = i18;
                                i26 = -1;
                            }
                            break;
                        case 12:
                            zzdsVar = zzdsVar;
                            i19 = iZzr;
                            i18 = 1048575;
                            i15 = i32;
                            if (i33 != 0) {
                                i20 = iZzk;
                                i14 = i20;
                                unsafe = unsafe2;
                                i17 = i19;
                                i16 = -1;
                            } else {
                                iZzd = zzdt.zzj(bArr2, iZzk, zzdsVar);
                                unsafe2.putInt(obj2, j11, zzdsVar.zza);
                                i30 |= i36;
                                iZzi = iZzd;
                                i29 = i19;
                                i27 = i15;
                                i25 = i18;
                                i26 = -1;
                            }
                            break;
                        case 15:
                            zzdsVar = zzdsVar;
                            i19 = iZzr;
                            i18 = 1048575;
                            i15 = i32;
                            if (i33 != 0) {
                                i20 = iZzk;
                                i14 = i20;
                                unsafe = unsafe2;
                                i17 = i19;
                                i16 = -1;
                            } else {
                                iZzd = zzdt.zzj(bArr2, iZzk, zzdsVar);
                                unsafe2.putInt(obj2, j11, zzei.zzb(zzdsVar.zza));
                                i30 |= i36;
                                iZzi = iZzd;
                                i29 = i19;
                                i27 = i15;
                                i25 = i18;
                                i26 = -1;
                            }
                            break;
                        case 16:
                            if (i33 != 0) {
                                i15 = i32;
                                i19 = iZzr;
                                i20 = iZzk;
                                i14 = i20;
                                unsafe = unsafe2;
                                i17 = i19;
                                i16 = -1;
                            } else {
                                zzdsVar = zzdsVar;
                                iZzm = zzdt.zzm(bArr2, iZzk, zzdsVar);
                                i19 = iZzr;
                                i15 = i32;
                                unsafe2.putLong(obj, j11, zzei.zzc(zzdsVar.zzb));
                                i30 |= i36;
                                iZzi = iZzm;
                                i29 = i19;
                                i27 = i15;
                                i25 = i18;
                                i26 = -1;
                            }
                            break;
                        default:
                            i15 = i32;
                            i19 = iZzr;
                            i20 = iZzk;
                            i14 = i20;
                            unsafe = unsafe2;
                            i17 = i19;
                            i16 = -1;
                            break;
                    }
                } else {
                    zzdsVar = zzdsVar;
                    i19 = iZzr;
                    int i38 = iZzk;
                    i18 = 1048575;
                    i15 = i32;
                    if (iZzu == 27) {
                        if (i33 == 2) {
                            zzey zzeyVarZzd = (zzey) unsafe2.getObject(obj2, j11);
                            if (!zzeyVarZzd.zzc()) {
                                int size = zzeyVarZzd.size();
                                zzeyVarZzd = zzeyVarZzd.zzd(size == 0 ? 10 : size + size);
                                unsafe2.putObject(obj2, j11, zzeyVarZzd);
                            }
                            iZzi = zzdt.zze(zzfzVar.zzy(i19), i13, bArr, i38, i12, zzeyVarZzd, zzdsVar);
                            i30 = i30;
                            i29 = i19;
                            i27 = i15;
                            i25 = i18;
                            i26 = -1;
                        } else {
                            i21 = i38;
                            i22 = i30;
                            i23 = i28;
                            unsafe = unsafe2;
                            i17 = i19;
                            i16 = -1;
                        }
                    } else if (iZzu <= 49) {
                        i22 = i30;
                        i23 = i28;
                        i16 = -1;
                        unsafe = unsafe2;
                        i17 = i19;
                        iZzi = zzp(obj, bArr, i38, i12, i13, i15, i33, i19, i34, iZzu, j11, zzdsVar);
                        if (iZzi != i38) {
                            obj2 = obj;
                            bArr2 = bArr;
                            i24 = i12;
                            zzdsVar = zzdsVar;
                            i28 = i23;
                            i26 = i16;
                            i27 = i15;
                            i30 = i22;
                            i29 = i17;
                            unsafe2 = unsafe;
                            i25 = 1048575;
                            zzfzVar = this;
                        } else {
                            i14 = iZzi;
                            i28 = i23;
                            i30 = i22;
                        }
                    } else {
                        i21 = i38;
                        i22 = i30;
                        i23 = i28;
                        unsafe = unsafe2;
                        i17 = i19;
                        i16 = -1;
                        if (iZzu != 50) {
                            iZzi = zzn(obj, bArr, i21, i12, i13, i15, i33, i34, iZzu, j11, i17, zzdsVar);
                            if (iZzi != i21) {
                                obj2 = obj;
                                bArr2 = bArr;
                                i24 = i12;
                                zzdsVar = zzdsVar;
                                i28 = i23;
                                i26 = i16;
                                i27 = i15;
                                i30 = i22;
                                i29 = i17;
                                unsafe2 = unsafe;
                                i25 = 1048575;
                                zzfzVar = this;
                            } else {
                                i14 = iZzi;
                                i28 = i23;
                                i30 = i22;
                            }
                        } else if (i33 == 2) {
                            iZzi = zzm(obj, bArr, i21, i12, i17, j11, zzdsVar);
                            if (iZzi != i21) {
                                obj2 = obj;
                                bArr2 = bArr;
                                i24 = i12;
                                zzdsVar = zzdsVar;
                                i28 = i23;
                                i26 = i16;
                                i27 = i15;
                                i30 = i22;
                                i29 = i17;
                                unsafe2 = unsafe;
                                i25 = 1048575;
                                zzfzVar = this;
                            } else {
                                i14 = iZzi;
                                i28 = i23;
                                i30 = i22;
                            }
                        }
                    }
                    i14 = i21;
                    i28 = i23;
                    i30 = i22;
                }
            }
            iZzi = zzdt.zzi(i13, bArr, i14, i12, zzc(obj), zzdsVar);
            zzfzVar = this;
            obj2 = obj;
            bArr2 = bArr;
            i24 = i12;
            zzdsVar = zzdsVar;
            i26 = i16;
            i27 = i15;
            i29 = i17;
            unsafe2 = unsafe;
            i25 = 1048575;
        }
        int i39 = i30;
        int i40 = i28;
        Unsafe unsafe3 = unsafe2;
        if (i40 != i25) {
            unsafe3.putInt(obj, i40, i39);
        }
        if (iZzi == i12) {
            return iZzi;
        }
        throw zzfa.zzd();
    }

    private final int zzp(Object obj, byte[] bArr, int i11, int i12, int i13, int i14, int i15, int i16, long j11, int i17, long j12, zzds zzdsVar) throws IOException {
        int i18;
        int i19;
        int i20;
        int i21;
        int iZzj;
        int iZzj2 = i11;
        Unsafe unsafe = zzb;
        zzey zzeyVarZzd = (zzey) unsafe.getObject(obj, j12);
        if (!zzeyVarZzd.zzc()) {
            int size = zzeyVarZzd.size();
            zzeyVarZzd = zzeyVarZzd.zzd(size == 0 ? 10 : size + size);
            unsafe.putObject(obj, j12, zzeyVarZzd);
        }
        switch (i17) {
            case 18:
            case 35:
                if (i15 == 2) {
                    zzej zzejVar = (zzej) zzeyVarZzd;
                    int iZzj3 = zzdt.zzj(bArr, iZzj2, zzdsVar);
                    int i22 = zzdsVar.zza + iZzj3;
                    while (iZzj3 < i22) {
                        zzejVar.zze(Double.longBitsToDouble(zzdt.zzn(bArr, iZzj3)));
                        iZzj3 += 8;
                    }
                    if (iZzj3 == i22) {
                        return iZzj3;
                    }
                    throw zzfa.zzf();
                }
                if (i15 == 1) {
                    zzej zzejVar2 = (zzej) zzeyVarZzd;
                    zzejVar2.zze(Double.longBitsToDouble(zzdt.zzn(bArr, i11)));
                    while (true) {
                        i18 = iZzj2 + 8;
                        if (i18 < i12) {
                            iZzj2 = zzdt.zzj(bArr, i18, zzdsVar);
                            if (i13 == zzdsVar.zza) {
                                zzejVar2.zze(Double.longBitsToDouble(zzdt.zzn(bArr, iZzj2)));
                            }
                        }
                    }
                    return i18;
                }
                return iZzj2;
            case 19:
            case 36:
                if (i15 == 2) {
                    zzeq zzeqVar = (zzeq) zzeyVarZzd;
                    int iZzj4 = zzdt.zzj(bArr, iZzj2, zzdsVar);
                    int i23 = zzdsVar.zza + iZzj4;
                    while (iZzj4 < i23) {
                        zzeqVar.zze(Float.intBitsToFloat(zzdt.zzb(bArr, iZzj4)));
                        iZzj4 += 4;
                    }
                    if (iZzj4 == i23) {
                        return iZzj4;
                    }
                    throw zzfa.zzf();
                }
                if (i15 == 5) {
                    zzeq zzeqVar2 = (zzeq) zzeyVarZzd;
                    zzeqVar2.zze(Float.intBitsToFloat(zzdt.zzb(bArr, i11)));
                    while (true) {
                        i19 = iZzj2 + 4;
                        if (i19 < i12) {
                            iZzj2 = zzdt.zzj(bArr, i19, zzdsVar);
                            if (i13 == zzdsVar.zza) {
                                zzeqVar2.zze(Float.intBitsToFloat(zzdt.zzb(bArr, iZzj2)));
                            }
                        }
                    }
                    return i19;
                }
                return iZzj2;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i15 == 2) {
                    zzfl zzflVar = (zzfl) zzeyVarZzd;
                    int iZzj5 = zzdt.zzj(bArr, iZzj2, zzdsVar);
                    int i24 = zzdsVar.zza + iZzj5;
                    while (iZzj5 < i24) {
                        iZzj5 = zzdt.zzm(bArr, iZzj5, zzdsVar);
                        zzflVar.zze(zzdsVar.zzb);
                    }
                    if (iZzj5 == i24) {
                        return iZzj5;
                    }
                    throw zzfa.zzf();
                }
                if (i15 == 0) {
                    zzfl zzflVar2 = (zzfl) zzeyVarZzd;
                    int iZzm = zzdt.zzm(bArr, iZzj2, zzdsVar);
                    zzflVar2.zze(zzdsVar.zzb);
                    while (iZzm < i12) {
                        int iZzj6 = zzdt.zzj(bArr, iZzm, zzdsVar);
                        if (i13 != zzdsVar.zza) {
                            return iZzm;
                        }
                        iZzm = zzdt.zzm(bArr, iZzj6, zzdsVar);
                        zzflVar2.zze(zzdsVar.zzb);
                    }
                    return iZzm;
                }
                return iZzj2;
            case 22:
            case NOTIFICATION_REDIRECT_VALUE:
            case 39:
            case 43:
                if (i15 == 2) {
                    return zzdt.zzf(bArr, iZzj2, zzeyVarZzd, zzdsVar);
                }
                if (i15 == 0) {
                    return zzdt.zzl(i13, bArr, i11, i12, zzeyVarZzd, zzdsVar);
                }
                return iZzj2;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i15 == 2) {
                    zzfl zzflVar3 = (zzfl) zzeyVarZzd;
                    int iZzj7 = zzdt.zzj(bArr, iZzj2, zzdsVar);
                    int i25 = zzdsVar.zza + iZzj7;
                    while (iZzj7 < i25) {
                        zzflVar3.zze(zzdt.zzn(bArr, iZzj7));
                        iZzj7 += 8;
                    }
                    if (iZzj7 == i25) {
                        return iZzj7;
                    }
                    throw zzfa.zzf();
                }
                if (i15 == 1) {
                    zzfl zzflVar4 = (zzfl) zzeyVarZzd;
                    zzflVar4.zze(zzdt.zzn(bArr, i11));
                    while (true) {
                        i20 = iZzj2 + 8;
                        if (i20 < i12) {
                            iZzj2 = zzdt.zzj(bArr, i20, zzdsVar);
                            if (i13 == zzdsVar.zza) {
                                zzflVar4.zze(zzdt.zzn(bArr, iZzj2));
                            }
                        }
                    }
                    return i20;
                }
                return iZzj2;
            case 24:
            case TEMPLATE_HTML_SIZE_VALUE:
            case 41:
            case 45:
                if (i15 == 2) {
                    zzev zzevVar = (zzev) zzeyVarZzd;
                    int iZzj8 = zzdt.zzj(bArr, iZzj2, zzdsVar);
                    int i26 = zzdsVar.zza + iZzj8;
                    while (iZzj8 < i26) {
                        zzevVar.zze(zzdt.zzb(bArr, iZzj8));
                        iZzj8 += 4;
                    }
                    if (iZzj8 == i26) {
                        return iZzj8;
                    }
                    throw zzfa.zzf();
                }
                if (i15 == 5) {
                    zzev zzevVar2 = (zzev) zzeyVarZzd;
                    zzevVar2.zze(zzdt.zzb(bArr, i11));
                    while (true) {
                        i21 = iZzj2 + 4;
                        if (i21 < i12) {
                            iZzj2 = zzdt.zzj(bArr, i21, zzdsVar);
                            if (i13 == zzdsVar.zza) {
                                zzevVar2.zze(zzdt.zzb(bArr, iZzj2));
                            }
                        }
                    }
                    return i21;
                }
                return iZzj2;
            case 25:
            case 42:
                if (i15 == 2) {
                    zzdu zzduVar = (zzdu) zzeyVarZzd;
                    iZzj = zzdt.zzj(bArr, iZzj2, zzdsVar);
                    int i27 = zzdsVar.zza + iZzj;
                    while (iZzj < i27) {
                        iZzj = zzdt.zzm(bArr, iZzj, zzdsVar);
                        zzduVar.zze(zzdsVar.zzb != 0);
                    }
                    if (iZzj != i27) {
                        throw zzfa.zzf();
                    }
                    return iZzj;
                }
                if (i15 == 0) {
                    zzdu zzduVar2 = (zzdu) zzeyVarZzd;
                    int iZzm2 = zzdt.zzm(bArr, iZzj2, zzdsVar);
                    zzduVar2.zze(zzdsVar.zzb != 0);
                    while (iZzm2 < i12) {
                        int iZzj9 = zzdt.zzj(bArr, iZzm2, zzdsVar);
                        if (i13 != zzdsVar.zza) {
                            return iZzm2;
                        }
                        iZzm2 = zzdt.zzm(bArr, iZzj9, zzdsVar);
                        zzduVar2.zze(zzdsVar.zzb != 0);
                    }
                    return iZzm2;
                }
                return iZzj2;
            case 26:
                if (i15 == 2) {
                    if ((j11 & 536870912) == 0) {
                        int iZzj10 = zzdt.zzj(bArr, iZzj2, zzdsVar);
                        int i28 = zzdsVar.zza;
                        if (i28 < 0) {
                            throw zzfa.zzc();
                        }
                        if (i28 == 0) {
                            zzeyVarZzd.add("");
                        } else {
                            zzeyVarZzd.add(new String(bArr, iZzj10, i28, zzez.zzb));
                            iZzj10 += i28;
                        }
                        while (iZzj10 < i12) {
                            int iZzj11 = zzdt.zzj(bArr, iZzj10, zzdsVar);
                            if (i13 != zzdsVar.zza) {
                                return iZzj10;
                            }
                            iZzj10 = zzdt.zzj(bArr, iZzj11, zzdsVar);
                            int i29 = zzdsVar.zza;
                            if (i29 < 0) {
                                throw zzfa.zzc();
                            }
                            if (i29 == 0) {
                                zzeyVarZzd.add("");
                            } else {
                                zzeyVarZzd.add(new String(bArr, iZzj10, i29, zzez.zzb));
                                iZzj10 += i29;
                            }
                        }
                        return iZzj10;
                    }
                    int iZzj12 = zzdt.zzj(bArr, iZzj2, zzdsVar);
                    int i30 = zzdsVar.zza;
                    if (i30 < 0) {
                        throw zzfa.zzc();
                    }
                    if (i30 == 0) {
                        zzeyVarZzd.add("");
                    } else {
                        int i31 = iZzj12 + i30;
                        if (!zzhm.zzd(bArr, iZzj12, i31)) {
                            throw zzfa.zzb();
                        }
                        zzeyVarZzd.add(new String(bArr, iZzj12, i30, zzez.zzb));
                        iZzj12 = i31;
                    }
                    while (iZzj12 < i12) {
                        int iZzj13 = zzdt.zzj(bArr, iZzj12, zzdsVar);
                        if (i13 != zzdsVar.zza) {
                            return iZzj12;
                        }
                        iZzj12 = zzdt.zzj(bArr, iZzj13, zzdsVar);
                        int i32 = zzdsVar.zza;
                        if (i32 < 0) {
                            throw zzfa.zzc();
                        }
                        if (i32 == 0) {
                            zzeyVarZzd.add("");
                        } else {
                            int i33 = iZzj12 + i32;
                            if (!zzhm.zzd(bArr, iZzj12, i33)) {
                                throw zzfa.zzb();
                            }
                            zzeyVarZzd.add(new String(bArr, iZzj12, i32, zzez.zzb));
                            iZzj12 = i33;
                        }
                    }
                    return iZzj12;
                }
                return iZzj2;
            case 27:
                if (i15 == 2) {
                    return zzdt.zze(zzy(i16), i13, bArr, i11, i12, zzeyVarZzd, zzdsVar);
                }
                return iZzj2;
            case 28:
                if (i15 == 2) {
                    int iZzj14 = zzdt.zzj(bArr, iZzj2, zzdsVar);
                    int i34 = zzdsVar.zza;
                    if (i34 < 0) {
                        throw zzfa.zzc();
                    }
                    if (i34 > bArr.length - iZzj14) {
                        throw zzfa.zzf();
                    }
                    if (i34 == 0) {
                        zzeyVarZzd.add(zzee.zzb);
                    } else {
                        zzeyVarZzd.add(zzee.zzk(bArr, iZzj14, i34));
                        iZzj14 += i34;
                    }
                    while (iZzj14 < i12) {
                        int iZzj15 = zzdt.zzj(bArr, iZzj14, zzdsVar);
                        if (i13 != zzdsVar.zza) {
                            return iZzj14;
                        }
                        iZzj14 = zzdt.zzj(bArr, iZzj15, zzdsVar);
                        int i35 = zzdsVar.zza;
                        if (i35 < 0) {
                            throw zzfa.zzc();
                        }
                        if (i35 > bArr.length - iZzj14) {
                            throw zzfa.zzf();
                        }
                        if (i35 == 0) {
                            zzeyVarZzd.add(zzee.zzb);
                        } else {
                            zzeyVarZzd.add(zzee.zzk(bArr, iZzj14, i35));
                            iZzj14 += i35;
                        }
                    }
                    return iZzj14;
                }
                return iZzj2;
            case 30:
            case 44:
                if (i15 != 2) {
                    if (i15 == 0) {
                        iZzj = zzdt.zzl(i13, bArr, i11, i12, zzeyVarZzd, zzdsVar);
                    }
                    return iZzj2;
                }
                iZzj = zzdt.zzf(bArr, iZzj2, zzeyVarZzd, zzdsVar);
                zzeu zzeuVar = (zzeu) obj;
                zzgz zzgzVar = zzeuVar.zzc;
                if (zzgzVar == zzgz.zza()) {
                    zzgzVar = null;
                }
                Object objZzd = zzgj.zzd(i14, zzeyVarZzd, zzx(i16), zzgzVar, this.zzm);
                if (objZzd != null) {
                    zzeuVar.zzc = (zzgz) objZzd;
                    return iZzj;
                }
                return iZzj;
            case 33:
            case 47:
                if (i15 == 2) {
                    zzev zzevVar3 = (zzev) zzeyVarZzd;
                    int iZzj16 = zzdt.zzj(bArr, iZzj2, zzdsVar);
                    int i36 = zzdsVar.zza + iZzj16;
                    while (iZzj16 < i36) {
                        iZzj16 = zzdt.zzj(bArr, iZzj16, zzdsVar);
                        zzevVar3.zze(zzei.zzb(zzdsVar.zza));
                    }
                    if (iZzj16 == i36) {
                        return iZzj16;
                    }
                    throw zzfa.zzf();
                }
                if (i15 == 0) {
                    zzev zzevVar4 = (zzev) zzeyVarZzd;
                    int iZzj17 = zzdt.zzj(bArr, iZzj2, zzdsVar);
                    zzevVar4.zze(zzei.zzb(zzdsVar.zza));
                    while (iZzj17 < i12) {
                        int iZzj18 = zzdt.zzj(bArr, iZzj17, zzdsVar);
                        if (i13 != zzdsVar.zza) {
                            return iZzj17;
                        }
                        iZzj17 = zzdt.zzj(bArr, iZzj18, zzdsVar);
                        zzevVar4.zze(zzei.zzb(zzdsVar.zza));
                    }
                    return iZzj17;
                }
                return iZzj2;
            case 34:
            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                if (i15 == 2) {
                    zzfl zzflVar5 = (zzfl) zzeyVarZzd;
                    int iZzj19 = zzdt.zzj(bArr, iZzj2, zzdsVar);
                    int i37 = zzdsVar.zza + iZzj19;
                    while (iZzj19 < i37) {
                        iZzj19 = zzdt.zzm(bArr, iZzj19, zzdsVar);
                        zzflVar5.zze(zzei.zzc(zzdsVar.zzb));
                    }
                    if (iZzj19 == i37) {
                        return iZzj19;
                    }
                    throw zzfa.zzf();
                }
                if (i15 == 0) {
                    zzfl zzflVar6 = (zzfl) zzeyVarZzd;
                    int iZzm3 = zzdt.zzm(bArr, iZzj2, zzdsVar);
                    zzflVar6.zze(zzei.zzc(zzdsVar.zzb));
                    while (iZzm3 < i12) {
                        int iZzj20 = zzdt.zzj(bArr, iZzm3, zzdsVar);
                        if (i13 != zzdsVar.zza) {
                            return iZzm3;
                        }
                        iZzm3 = zzdt.zzm(bArr, iZzj20, zzdsVar);
                        zzflVar6.zze(zzei.zzc(zzdsVar.zzb));
                    }
                    return iZzm3;
                }
                return iZzj2;
            default:
                if (i15 == 3) {
                    zzgh zzghVarZzy = zzy(i16);
                    int i38 = (i13 & (-8)) | 4;
                    int iZzc = zzdt.zzc(zzghVarZzy, bArr, i11, i12, i38, zzdsVar);
                    zzeyVarZzd.add(zzdsVar.zzc);
                    while (iZzc < i12) {
                        int iZzj21 = zzdt.zzj(bArr, iZzc, zzdsVar);
                        if (i13 != zzdsVar.zza) {
                            return iZzc;
                        }
                        iZzc = zzdt.zzc(zzghVarZzy, bArr, iZzj21, i12, i38, zzdsVar);
                        zzeyVarZzd.add(zzdsVar.zzc);
                    }
                    return iZzc;
                }
                return iZzj2;
        }
    }

    private final int zzq(int i11) {
        if (i11 < this.zze || i11 > this.zzf) {
            return -1;
        }
        return zzt(i11, 0);
    }

    private final int zzr(int i11, int i12) {
        if (i11 < this.zze || i11 > this.zzf) {
            return -1;
        }
        return zzt(i11, i12);
    }

    private final int zzs(int i11) {
        return this.zzc[i11 + 2];
    }

    private final int zzt(int i11, int i12) {
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

    private static int zzu(int i11) {
        return (i11 >>> 20) & 255;
    }

    private final int zzv(int i11) {
        return this.zzc[i11 + 1];
    }

    private static long zzw(Object obj, long j11) {
        return ((Long) zzhi.zzf(obj, j11)).longValue();
    }

    private final zzex zzx(int i11) {
        int i12 = i11 / 3;
        return (zzex) this.zzd[i12 + i12 + 1];
    }

    private final zzgh zzy(int i11) {
        int i12 = i11 / 3;
        int i13 = i12 + i12;
        zzgh zzghVar = (zzgh) this.zzd[i13];
        if (zzghVar != null) {
            return zzghVar;
        }
        zzgh zzghVarZzb = zzge.zza().zzb((Class) this.zzd[i13 + 1]);
        this.zzd[i13] = zzghVarZzb;
        return zzghVarZzb;
    }

    private final Object zzz(int i11) {
        int i12 = i11 / 3;
        return this.zzd[i12 + i12];
    }

    @Override // com.google.android.gms.internal.auth.zzgh
    public final int zza(Object obj) {
        int i11;
        int iZzc;
        int length = this.zzc.length;
        int i12 = 0;
        for (int i13 = 0; i13 < length; i13 += 3) {
            int iZzv = zzv(i13);
            int i14 = this.zzc[i13];
            long j11 = 1048575 & iZzv;
            int iHashCode = 37;
            switch (zzu(iZzv)) {
                case 0:
                    i11 = i12 * 53;
                    iZzc = zzez.zzc(Double.doubleToLongBits(zzhi.zza(obj, j11)));
                    i12 = i11 + iZzc;
                    break;
                case 1:
                    i11 = i12 * 53;
                    iZzc = Float.floatToIntBits(zzhi.zzb(obj, j11));
                    i12 = i11 + iZzc;
                    break;
                case 2:
                    i11 = i12 * 53;
                    iZzc = zzez.zzc(zzhi.zzd(obj, j11));
                    i12 = i11 + iZzc;
                    break;
                case 3:
                    i11 = i12 * 53;
                    iZzc = zzez.zzc(zzhi.zzd(obj, j11));
                    i12 = i11 + iZzc;
                    break;
                case 4:
                    i11 = i12 * 53;
                    iZzc = zzhi.zzc(obj, j11);
                    i12 = i11 + iZzc;
                    break;
                case 5:
                    i11 = i12 * 53;
                    iZzc = zzez.zzc(zzhi.zzd(obj, j11));
                    i12 = i11 + iZzc;
                    break;
                case 6:
                    i11 = i12 * 53;
                    iZzc = zzhi.zzc(obj, j11);
                    i12 = i11 + iZzc;
                    break;
                case 7:
                    i11 = i12 * 53;
                    iZzc = zzez.zza(zzhi.zzt(obj, j11));
                    i12 = i11 + iZzc;
                    break;
                case 8:
                    i11 = i12 * 53;
                    iZzc = ((String) zzhi.zzf(obj, j11)).hashCode();
                    i12 = i11 + iZzc;
                    break;
                case 9:
                    Object objZzf = zzhi.zzf(obj, j11);
                    if (objZzf != null) {
                        iHashCode = objZzf.hashCode();
                    }
                    i12 = (i12 * 53) + iHashCode;
                    break;
                case 10:
                    i11 = i12 * 53;
                    iZzc = zzhi.zzf(obj, j11).hashCode();
                    i12 = i11 + iZzc;
                    break;
                case 11:
                    i11 = i12 * 53;
                    iZzc = zzhi.zzc(obj, j11);
                    i12 = i11 + iZzc;
                    break;
                case 12:
                    i11 = i12 * 53;
                    iZzc = zzhi.zzc(obj, j11);
                    i12 = i11 + iZzc;
                    break;
                case 13:
                    i11 = i12 * 53;
                    iZzc = zzhi.zzc(obj, j11);
                    i12 = i11 + iZzc;
                    break;
                case 14:
                    i11 = i12 * 53;
                    iZzc = zzez.zzc(zzhi.zzd(obj, j11));
                    i12 = i11 + iZzc;
                    break;
                case 15:
                    i11 = i12 * 53;
                    iZzc = zzhi.zzc(obj, j11);
                    i12 = i11 + iZzc;
                    break;
                case 16:
                    i11 = i12 * 53;
                    iZzc = zzez.zzc(zzhi.zzd(obj, j11));
                    i12 = i11 + iZzc;
                    break;
                case 17:
                    Object objZzf2 = zzhi.zzf(obj, j11);
                    if (objZzf2 != null) {
                        iHashCode = objZzf2.hashCode();
                    }
                    i12 = (i12 * 53) + iHashCode;
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
                    i11 = i12 * 53;
                    iZzc = zzhi.zzf(obj, j11).hashCode();
                    i12 = i11 + iZzc;
                    break;
                case 50:
                    i11 = i12 * 53;
                    iZzc = zzhi.zzf(obj, j11).hashCode();
                    i12 = i11 + iZzc;
                    break;
                case AD_REWARD_USER_VALUE:
                    if (zzJ(obj, i14, i13)) {
                        i11 = i12 * 53;
                        iZzc = zzez.zzc(Double.doubleToLongBits(((Double) zzhi.zzf(obj, j11)).doubleValue()));
                        i12 = i11 + iZzc;
                    }
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    if (zzJ(obj, i14, i13)) {
                        i11 = i12 * 53;
                        iZzc = Float.floatToIntBits(((Float) zzhi.zzf(obj, j11)).floatValue());
                        i12 = i11 + iZzc;
                    }
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    if (zzJ(obj, i14, i13)) {
                        i11 = i12 * 53;
                        iZzc = zzez.zzc(zzw(obj, j11));
                        i12 = i11 + iZzc;
                    }
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    if (zzJ(obj, i14, i13)) {
                        i11 = i12 * 53;
                        iZzc = zzez.zzc(zzw(obj, j11));
                        i12 = i11 + iZzc;
                    }
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    if (zzJ(obj, i14, i13)) {
                        i11 = i12 * 53;
                        iZzc = zzl(obj, j11);
                        i12 = i11 + iZzc;
                    }
                    break;
                case AD_VISIBILITY_VALUE:
                    if (zzJ(obj, i14, i13)) {
                        i11 = i12 * 53;
                        iZzc = zzez.zzc(zzw(obj, j11));
                        i12 = i11 + iZzc;
                    }
                    break;
                case 57:
                    if (zzJ(obj, i14, i13)) {
                        i11 = i12 * 53;
                        iZzc = zzl(obj, j11);
                        i12 = i11 + iZzc;
                    }
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    if (zzJ(obj, i14, i13)) {
                        i11 = i12 * 53;
                        iZzc = zzez.zza(((Boolean) zzhi.zzf(obj, j11)).booleanValue());
                        i12 = i11 + iZzc;
                    }
                    break;
                case 59:
                    if (zzJ(obj, i14, i13)) {
                        i11 = i12 * 53;
                        iZzc = ((String) zzhi.zzf(obj, j11)).hashCode();
                        i12 = i11 + iZzc;
                    }
                    break;
                case 60:
                    if (zzJ(obj, i14, i13)) {
                        i11 = i12 * 53;
                        iZzc = zzhi.zzf(obj, j11).hashCode();
                        i12 = i11 + iZzc;
                    }
                    break;
                case 61:
                    if (zzJ(obj, i14, i13)) {
                        i11 = i12 * 53;
                        iZzc = zzhi.zzf(obj, j11).hashCode();
                        i12 = i11 + iZzc;
                    }
                    break;
                case 62:
                    if (zzJ(obj, i14, i13)) {
                        i11 = i12 * 53;
                        iZzc = zzl(obj, j11);
                        i12 = i11 + iZzc;
                    }
                    break;
                case 63:
                    if (zzJ(obj, i14, i13)) {
                        i11 = i12 * 53;
                        iZzc = zzl(obj, j11);
                        i12 = i11 + iZzc;
                    }
                    break;
                case 64:
                    if (zzJ(obj, i14, i13)) {
                        i11 = i12 * 53;
                        iZzc = zzl(obj, j11);
                        i12 = i11 + iZzc;
                    }
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                    if (zzJ(obj, i14, i13)) {
                        i11 = i12 * 53;
                        iZzc = zzez.zzc(zzw(obj, j11));
                        i12 = i11 + iZzc;
                    }
                    break;
                case 66:
                    if (zzJ(obj, i14, i13)) {
                        i11 = i12 * 53;
                        iZzc = zzl(obj, j11);
                        i12 = i11 + iZzc;
                    }
                    break;
                case 67:
                    if (zzJ(obj, i14, i13)) {
                        i11 = i12 * 53;
                        iZzc = zzez.zzc(zzw(obj, j11));
                        i12 = i11 + iZzc;
                    }
                    break;
                case 68:
                    if (zzJ(obj, i14, i13)) {
                        i11 = i12 * 53;
                        iZzc = zzhi.zzf(obj, j11).hashCode();
                        i12 = i11 + iZzc;
                    }
                    break;
            }
        }
        return (i12 * 53) + this.zzm.zza(obj).hashCode();
    }

    /* JADX WARN: Code duplicated, block: B:117:0x0355 A[PHI: r0 r17 r19 r28
  0x0355: PHI (r0v22 int) = (r0v17 int), (r0v20 int), (r0v24 int) binds: [B:130:0x03c8, B:126:0x03a7, B:116:0x0353] A[DONT_GENERATE, DONT_INLINE]
  0x0355: PHI (r17v6 int) = (r17v4 int), (r17v4 int), (r17v7 int) binds: [B:130:0x03c8, B:126:0x03a7, B:116:0x0353] A[DONT_GENERATE, DONT_INLINE]
  0x0355: PHI (r19v2 int) = (r19v0 int), (r19v0 int), (r19v3 int) binds: [B:130:0x03c8, B:126:0x03a7, B:116:0x0353] A[DONT_GENERATE, DONT_INLINE]
  0x0355: PHI (r28v7 sun.misc.Unsafe) = (r28v5 sun.misc.Unsafe), (r28v5 sun.misc.Unsafe), (r28v8 sun.misc.Unsafe) binds: [B:130:0x03c8, B:126:0x03a7, B:116:0x0353] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:119:0x036f A[PHI: r0 r17 r19 r28
  0x036f: PHI (r0v21 int) = (r0v17 int), (r0v20 int), (r0v24 int) binds: [B:130:0x03c8, B:126:0x03a7, B:116:0x0353] A[DONT_GENERATE, DONT_INLINE]
  0x036f: PHI (r17v5 int) = (r17v4 int), (r17v4 int), (r17v7 int) binds: [B:130:0x03c8, B:126:0x03a7, B:116:0x0353] A[DONT_GENERATE, DONT_INLINE]
  0x036f: PHI (r19v1 int) = (r19v0 int), (r19v0 int), (r19v3 int) binds: [B:130:0x03c8, B:126:0x03a7, B:116:0x0353] A[DONT_GENERATE, DONT_INLINE]
  0x036f: PHI (r28v6 sun.misc.Unsafe) = (r28v5 sun.misc.Unsafe), (r28v5 sun.misc.Unsafe), (r28v8 sun.misc.Unsafe) binds: [B:130:0x03c8, B:126:0x03a7, B:116:0x0353] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Failed to find 'out' block for switch in B:23:0x0083. Please report as an issue. */
    final int zzb(Object obj, byte[] bArr, int i11, int i12, int i13, zzds zzdsVar) throws IOException {
        Unsafe unsafe;
        Object obj2;
        int i14;
        int iZzk;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        this = this;
        obj = obj;
        bArr = bArr;
        i12 = i12;
        zzdsVar = zzdsVar;
        Unsafe unsafe2 = zzb;
        int i28 = -1;
        int iZzi = i11;
        int i29 = -1;
        int i30 = 0;
        int i31 = 0;
        int i32 = 0;
        int i33 = 1048575;
        while (true) {
            if (iZzi < i12) {
                int i34 = iZzi + 1;
                byte b11 = bArr[iZzi];
                if (b11 < 0) {
                    iZzk = zzdt.zzk(b11, bArr, i34, zzdsVar);
                    i14 = zzdsVar.zza;
                } else {
                    i14 = b11;
                    iZzk = i34;
                }
                int i35 = i14 >>> 3;
                int i36 = i14 & 7;
                int iZzr = i35 > i29 ? this.zzr(i35, i31 / 3) : this.zzq(i35);
                if (iZzr == i28) {
                    i15 = i35;
                    i16 = iZzk;
                    i17 = i28;
                    unsafe = unsafe2;
                    i18 = 0;
                    i13 = i13;
                    i19 = i14;
                } else {
                    int[] iArr = this.zzc;
                    int i37 = iArr[iZzr + 1];
                    int iZzu = zzu(i37);
                    int i38 = i14;
                    long j11 = i37 & 1048575;
                    if (iZzu <= 17) {
                        int i39 = iArr[iZzr + 2];
                        int i40 = 1 << (i39 >>> 20);
                        int i41 = i39 & 1048575;
                        if (i41 != i33) {
                            if (i33 != 1048575) {
                                unsafe2.putInt(obj, i33, i32);
                            }
                            i32 = unsafe2.getInt(obj, i41);
                            i33 = i41;
                        }
                        switch (iZzu) {
                            case 0:
                                i15 = i35;
                                i23 = iZzr;
                                i24 = i33;
                                i25 = i38;
                                bArr = bArr;
                                i26 = iZzk;
                                if (i36 == 1) {
                                    zzhi.zzl(obj, j11, Double.longBitsToDouble(zzdt.zzn(bArr, i26)));
                                    iZzi = i26 + 8;
                                    i32 |= i40;
                                    i33 = i24;
                                    i31 = i23;
                                    i30 = i25;
                                    i29 = i15;
                                    i28 = -1;
                                } else {
                                    i33 = i24;
                                    i13 = i13;
                                    i16 = i26;
                                    unsafe = unsafe2;
                                    i18 = i23;
                                    i19 = i25;
                                    i17 = -1;
                                }
                                break;
                            case 1:
                                i15 = i35;
                                i23 = iZzr;
                                i24 = i33;
                                i25 = i38;
                                bArr = bArr;
                                i26 = iZzk;
                                if (i36 == 5) {
                                    zzhi.zzm(obj, j11, Float.intBitsToFloat(zzdt.zzb(bArr, i26)));
                                    iZzi = i26 + 4;
                                    i32 |= i40;
                                    i33 = i24;
                                    i31 = i23;
                                    i30 = i25;
                                    i29 = i15;
                                    i28 = -1;
                                } else {
                                    i33 = i24;
                                    i13 = i13;
                                    i16 = i26;
                                    unsafe = unsafe2;
                                    i18 = i23;
                                    i19 = i25;
                                    i17 = -1;
                                }
                                break;
                            case 2:
                            case 3:
                                i15 = i35;
                                i23 = iZzr;
                                i24 = i33;
                                i25 = i38;
                                bArr = bArr;
                                i12 = i12;
                                i26 = iZzk;
                                if (i36 == 0) {
                                    int iZzm = zzdt.zzm(bArr, i26, zzdsVar);
                                    unsafe2.putLong(obj, j11, zzdsVar.zzb);
                                    i32 |= i40;
                                    i33 = i24;
                                    i31 = i23;
                                    i30 = i25;
                                    iZzi = iZzm;
                                    i29 = i15;
                                    i28 = -1;
                                } else {
                                    i33 = i24;
                                    i13 = i13;
                                    i16 = i26;
                                    unsafe = unsafe2;
                                    i18 = i23;
                                    i19 = i25;
                                    i17 = -1;
                                }
                                break;
                            case 4:
                            case 11:
                                i15 = i35;
                                i23 = iZzr;
                                i24 = i33;
                                i25 = i38;
                                bArr = bArr;
                                i26 = iZzk;
                                if (i36 == 0) {
                                    iZzi = zzdt.zzj(bArr, i26, zzdsVar);
                                    unsafe2.putInt(obj, j11, zzdsVar.zza);
                                    i32 |= i40;
                                    i33 = i24;
                                    i31 = i23;
                                    i30 = i25;
                                    i29 = i15;
                                    i28 = -1;
                                } else {
                                    i33 = i24;
                                    i13 = i13;
                                    i16 = i26;
                                    unsafe = unsafe2;
                                    i18 = i23;
                                    i19 = i25;
                                    i17 = -1;
                                }
                                break;
                            case 5:
                            case 14:
                                i15 = i35;
                                i23 = iZzr;
                                i24 = i33;
                                i25 = i38;
                                bArr = bArr;
                                if (i36 == 1) {
                                    unsafe2.putLong(obj, j11, zzdt.zzn(bArr, iZzk));
                                    iZzi = iZzk + 8;
                                    i32 |= i40;
                                    i33 = i24;
                                    i31 = i23;
                                    i30 = i25;
                                    i29 = i15;
                                    i28 = -1;
                                } else {
                                    i26 = iZzk;
                                    i33 = i24;
                                    i13 = i13;
                                    i16 = i26;
                                    unsafe = unsafe2;
                                    i18 = i23;
                                    i19 = i25;
                                    i17 = -1;
                                }
                                break;
                            case 6:
                            case 13:
                                i15 = i35;
                                i23 = iZzr;
                                i24 = i33;
                                i25 = i38;
                                bArr = bArr;
                                if (i36 == 5) {
                                    unsafe2.putInt(obj, j11, zzdt.zzb(bArr, iZzk));
                                    iZzi = iZzk + 4;
                                    i32 |= i40;
                                    i33 = i24;
                                    i31 = i23;
                                    i30 = i25;
                                    i29 = i15;
                                    i28 = -1;
                                } else {
                                    i26 = iZzk;
                                    i33 = i24;
                                    i13 = i13;
                                    i16 = i26;
                                    unsafe = unsafe2;
                                    i18 = i23;
                                    i19 = i25;
                                    i17 = -1;
                                }
                                break;
                            case 7:
                                i15 = i35;
                                i23 = iZzr;
                                i27 = i38;
                                bArr = bArr;
                                i12 = i12;
                                if (i36 == 0) {
                                    iZzi = zzdt.zzm(bArr, iZzk, zzdsVar);
                                    zzhi.zzk(obj, j11, zzdsVar.zzb != 0);
                                    i32 |= i40;
                                    i30 = i27;
                                    i31 = i23;
                                    i29 = i15;
                                    i28 = -1;
                                } else {
                                    i26 = iZzk;
                                    i24 = i33;
                                    i25 = i27;
                                    i33 = i24;
                                    i13 = i13;
                                    i16 = i26;
                                    unsafe = unsafe2;
                                    i18 = i23;
                                    i19 = i25;
                                    i17 = -1;
                                }
                                break;
                            case 8:
                                i15 = i35;
                                i23 = iZzr;
                                i27 = i38;
                                bArr = bArr;
                                i12 = i12;
                                if (i36 == 2) {
                                    iZzi = (i37 & ASTNode.DISCARD) == 0 ? zzdt.zzg(bArr, iZzk, zzdsVar) : zzdt.zzh(bArr, iZzk, zzdsVar);
                                    unsafe2.putObject(obj, j11, zzdsVar.zzc);
                                    i32 |= i40;
                                    i30 = i27;
                                    i31 = i23;
                                    i29 = i15;
                                    i28 = -1;
                                } else {
                                    i26 = iZzk;
                                    i24 = i33;
                                    i25 = i27;
                                    i33 = i24;
                                    i13 = i13;
                                    i16 = i26;
                                    unsafe = unsafe2;
                                    i18 = i23;
                                    i19 = i25;
                                    i17 = -1;
                                }
                                break;
                            case 9:
                                i15 = i35;
                                i23 = iZzr;
                                i27 = i38;
                                bArr = bArr;
                                if (i36 == 2) {
                                    i12 = i12;
                                    iZzi = zzdt.zzd(this.zzy(i23), bArr, iZzk, i12, zzdsVar);
                                    if ((i32 & i40) == 0) {
                                        unsafe2.putObject(obj, j11, zzdsVar.zzc);
                                    } else {
                                        unsafe2.putObject(obj, j11, zzez.zzg(unsafe2.getObject(obj, j11), zzdsVar.zzc));
                                    }
                                    i32 |= i40;
                                    i30 = i27;
                                    i31 = i23;
                                    i29 = i15;
                                    i28 = -1;
                                } else {
                                    i26 = iZzk;
                                    i24 = i33;
                                    i25 = i27;
                                    i33 = i24;
                                    i13 = i13;
                                    i16 = i26;
                                    unsafe = unsafe2;
                                    i18 = i23;
                                    i19 = i25;
                                    i17 = -1;
                                }
                                break;
                            case 10:
                                i15 = i35;
                                i23 = iZzr;
                                i27 = i38;
                                bArr = bArr;
                                if (i36 == 2) {
                                    iZzi = zzdt.zza(bArr, iZzk, zzdsVar);
                                    unsafe2.putObject(obj, j11, zzdsVar.zzc);
                                    i32 |= i40;
                                    i12 = i12;
                                    i30 = i27;
                                    i31 = i23;
                                    i29 = i15;
                                    i28 = -1;
                                } else {
                                    i26 = iZzk;
                                    i24 = i33;
                                    i25 = i27;
                                    i33 = i24;
                                    i13 = i13;
                                    i16 = i26;
                                    unsafe = unsafe2;
                                    i18 = i23;
                                    i19 = i25;
                                    i17 = -1;
                                }
                                break;
                            case 12:
                                i15 = i35;
                                i23 = iZzr;
                                i27 = i38;
                                bArr = bArr;
                                if (i36 == 0) {
                                    iZzi = zzdt.zzj(bArr, iZzk, zzdsVar);
                                    int i42 = zzdsVar.zza;
                                    zzex zzexVarZzx = this.zzx(i23);
                                    if (zzexVarZzx == null || zzexVarZzx.zza()) {
                                        unsafe2.putInt(obj, j11, i42);
                                        i32 |= i40;
                                    } else {
                                        zzc(obj).zzf(i27, Long.valueOf(i42));
                                    }
                                    i12 = i12;
                                    i30 = i27;
                                    i31 = i23;
                                    i29 = i15;
                                    i28 = -1;
                                } else {
                                    i26 = iZzk;
                                    i24 = i33;
                                    i25 = i27;
                                    i33 = i24;
                                    i13 = i13;
                                    i16 = i26;
                                    unsafe = unsafe2;
                                    i18 = i23;
                                    i19 = i25;
                                    i17 = -1;
                                }
                                break;
                            case 15:
                                i15 = i35;
                                i23 = iZzr;
                                i27 = i38;
                                bArr = bArr;
                                if (i36 == 0) {
                                    iZzi = zzdt.zzj(bArr, iZzk, zzdsVar);
                                    unsafe2.putInt(obj, j11, zzei.zzb(zzdsVar.zza));
                                    i32 |= i40;
                                    i12 = i12;
                                    i30 = i27;
                                    i31 = i23;
                                    i29 = i15;
                                    i28 = -1;
                                } else {
                                    i26 = iZzk;
                                    i24 = i33;
                                    i25 = i27;
                                    i33 = i24;
                                    i13 = i13;
                                    i16 = i26;
                                    unsafe = unsafe2;
                                    i18 = i23;
                                    i19 = i25;
                                    i17 = -1;
                                }
                                break;
                            case 16:
                                i15 = i35;
                                i23 = iZzr;
                                i27 = i38;
                                if (i36 == 0) {
                                    bArr = bArr;
                                    int iZzm2 = zzdt.zzm(bArr, iZzk, zzdsVar);
                                    unsafe2.putLong(obj, j11, zzei.zzc(zzdsVar.zzb));
                                    i32 |= i40;
                                    i30 = i27;
                                    i31 = i23;
                                    iZzi = iZzm2;
                                    i29 = i15;
                                    i28 = -1;
                                    i12 = i12;
                                } else {
                                    i26 = iZzk;
                                    i24 = i33;
                                    i25 = i27;
                                    i33 = i24;
                                    i13 = i13;
                                    i16 = i26;
                                    unsafe = unsafe2;
                                    i18 = i23;
                                    i19 = i25;
                                    i17 = -1;
                                }
                                break;
                            default:
                                if (i36 == 3) {
                                    i15 = i35;
                                    i23 = iZzr;
                                    i27 = i38;
                                    iZzi = zzdt.zzc(this.zzy(iZzr), bArr, iZzk, i12, (i35 << 3) | 4, zzdsVar);
                                    if ((i32 & i40) == 0) {
                                        unsafe2.putObject(obj, j11, zzdsVar.zzc);
                                    } else {
                                        unsafe2.putObject(obj, j11, zzez.zzg(unsafe2.getObject(obj, j11), zzdsVar.zzc));
                                    }
                                    i32 |= i40;
                                    bArr = bArr;
                                    i12 = i12;
                                    i30 = i27;
                                    i31 = i23;
                                    i29 = i15;
                                    i28 = -1;
                                } else {
                                    i15 = i35;
                                    i23 = iZzr;
                                    i27 = i38;
                                    i26 = iZzk;
                                    i24 = i33;
                                    i25 = i27;
                                    i33 = i24;
                                    i13 = i13;
                                    i16 = i26;
                                    unsafe = unsafe2;
                                    i18 = i23;
                                    i19 = i25;
                                    i17 = -1;
                                }
                                break;
                        }
                    } else {
                        i15 = i35;
                        int i43 = iZzk;
                        int i44 = i33;
                        bArr = bArr;
                        i12 = i12;
                        if (iZzu != 27) {
                            i18 = iZzr;
                            i20 = i32;
                            if (iZzu <= 49) {
                                i22 = i38;
                                i17 = -1;
                                unsafe = unsafe2;
                                iZzi = zzp(obj, bArr, i43, i12, i38, i15, i36, i18, i37, iZzu, j11, zzdsVar);
                                if (iZzi != i43) {
                                    i28 = i17;
                                    i30 = i22;
                                    i33 = i44;
                                    i29 = i15;
                                    i31 = i18;
                                    i32 = i20;
                                } else {
                                    i16 = iZzi;
                                    i19 = i22;
                                    i33 = i44;
                                    i32 = i20;
                                }
                                unsafe2 = unsafe;
                            } else {
                                i21 = i43;
                                unsafe = unsafe2;
                                i22 = i38;
                                i17 = -1;
                                if (iZzu == 50) {
                                    if (i36 == 2) {
                                        iZzi = zzm(obj, bArr, i21, i12, i18, j11, zzdsVar);
                                        if (iZzi != i21) {
                                            i28 = i17;
                                            i30 = i22;
                                            i33 = i44;
                                            i29 = i15;
                                            i31 = i18;
                                            i32 = i20;
                                        } else {
                                            i16 = iZzi;
                                        }
                                        unsafe2 = unsafe;
                                    }
                                    i19 = i22;
                                    i33 = i44;
                                    i32 = i20;
                                } else {
                                    iZzi = zzn(obj, bArr, i21, i12, i22, i15, i36, i37, iZzu, j11, i18, zzdsVar);
                                    if (iZzi != i21) {
                                        i28 = i17;
                                        i30 = i22;
                                        i33 = i44;
                                        i29 = i15;
                                        i31 = i18;
                                        i32 = i20;
                                    } else {
                                        i16 = iZzi;
                                        i19 = i22;
                                        i33 = i44;
                                        i32 = i20;
                                    }
                                    unsafe2 = unsafe;
                                }
                            }
                        } else if (i36 == 2) {
                            zzey zzeyVarZzd = (zzey) unsafe2.getObject(obj, j11);
                            if (!zzeyVarZzd.zzc()) {
                                int size = zzeyVarZzd.size();
                                zzeyVarZzd = zzeyVarZzd.zzd(size == 0 ? 10 : size + size);
                                unsafe2.putObject(obj, j11, zzeyVarZzd);
                            }
                            i30 = i38;
                            iZzi = zzdt.zze(this.zzy(iZzr), i30, bArr, i43, i12, zzeyVarZzd, zzdsVar);
                            i33 = i44;
                            i29 = i15;
                            i31 = iZzr;
                            i32 = i32;
                            i28 = -1;
                        } else {
                            i18 = iZzr;
                            i20 = i32;
                            i21 = i43;
                            unsafe = unsafe2;
                            i22 = i38;
                            i17 = -1;
                        }
                        i16 = i21;
                        i19 = i22;
                        i33 = i44;
                        i32 = i20;
                    }
                }
                if (i19 != i13 || i13 == 0) {
                    iZzi = zzdt.zzi(i19, bArr, i16, i12, zzc(obj), zzdsVar);
                    i30 = i19;
                    i28 = i17;
                    i29 = i15;
                    i31 = i18;
                    unsafe2 = unsafe;
                } else {
                    iZzi = i16;
                    i30 = i19;
                }
            } else {
                i13 = i13;
                unsafe = unsafe2;
            }
        }
        if (i33 != 1048575) {
            obj2 = obj;
            unsafe.putInt(obj2, i33, i32);
        } else {
            obj2 = obj;
        }
        for (int i45 = this.zzj; i45 < this.zzk; i45++) {
            int i46 = this.zzi[i45];
            int i47 = this.zzc[i46];
            Object objZzf = zzhi.zzf(obj2, zzv(i46) & 1048575);
            if (objZzf != null && zzx(i46) != null) {
                throw null;
            }
        }
        if (i13 == 0) {
            if (iZzi != i12) {
                throw zzfa.zzd();
            }
        } else if (iZzi > i12 || i30 != i13) {
            throw zzfa.zzd();
        }
        return iZzi;
    }

    @Override // com.google.android.gms.internal.auth.zzgh
    public final Object zzd() {
        return ((zzeu) this.zzg).zzi(4, null, null);
    }

    @Override // com.google.android.gms.internal.auth.zzgh
    public final void zze(Object obj) {
        int i11;
        int i12 = this.zzj;
        while (true) {
            i11 = this.zzk;
            if (i12 >= i11) {
                break;
            }
            long jZzv = zzv(this.zzi[i12]) & 1048575;
            Object objZzf = zzhi.zzf(obj, jZzv);
            if (objZzf != null) {
                ((zzfq) objZzf).zzc();
                zzhi.zzp(obj, jZzv, objZzf);
            }
            i12++;
        }
        int length = this.zzi.length;
        while (i11 < length) {
            this.zzl.zza(obj, this.zzi[i11]);
            i11++;
        }
        this.zzm.zze(obj);
    }

    @Override // com.google.android.gms.internal.auth.zzgh
    public final void zzf(Object obj, Object obj2) {
        obj2.getClass();
        for (int i11 = 0; i11 < this.zzc.length; i11 += 3) {
            int iZzv = zzv(i11);
            long j11 = 1048575 & iZzv;
            int i12 = this.zzc[i11];
            switch (zzu(iZzv)) {
                case 0:
                    if (zzG(obj2, i11)) {
                        zzhi.zzl(obj, j11, zzhi.zza(obj2, j11));
                        zzD(obj, i11);
                    }
                    break;
                case 1:
                    if (zzG(obj2, i11)) {
                        zzhi.zzm(obj, j11, zzhi.zzb(obj2, j11));
                        zzD(obj, i11);
                    }
                    break;
                case 2:
                    if (zzG(obj2, i11)) {
                        zzhi.zzo(obj, j11, zzhi.zzd(obj2, j11));
                        zzD(obj, i11);
                    }
                    break;
                case 3:
                    if (zzG(obj2, i11)) {
                        zzhi.zzo(obj, j11, zzhi.zzd(obj2, j11));
                        zzD(obj, i11);
                    }
                    break;
                case 4:
                    if (zzG(obj2, i11)) {
                        zzhi.zzn(obj, j11, zzhi.zzc(obj2, j11));
                        zzD(obj, i11);
                    }
                    break;
                case 5:
                    if (zzG(obj2, i11)) {
                        zzhi.zzo(obj, j11, zzhi.zzd(obj2, j11));
                        zzD(obj, i11);
                    }
                    break;
                case 6:
                    if (zzG(obj2, i11)) {
                        zzhi.zzn(obj, j11, zzhi.zzc(obj2, j11));
                        zzD(obj, i11);
                    }
                    break;
                case 7:
                    if (zzG(obj2, i11)) {
                        zzhi.zzk(obj, j11, zzhi.zzt(obj2, j11));
                        zzD(obj, i11);
                    }
                    break;
                case 8:
                    if (zzG(obj2, i11)) {
                        zzhi.zzp(obj, j11, zzhi.zzf(obj2, j11));
                        zzD(obj, i11);
                    }
                    break;
                case 9:
                    zzB(obj, obj2, i11);
                    break;
                case 10:
                    if (zzG(obj2, i11)) {
                        zzhi.zzp(obj, j11, zzhi.zzf(obj2, j11));
                        zzD(obj, i11);
                    }
                    break;
                case 11:
                    if (zzG(obj2, i11)) {
                        zzhi.zzn(obj, j11, zzhi.zzc(obj2, j11));
                        zzD(obj, i11);
                    }
                    break;
                case 12:
                    if (zzG(obj2, i11)) {
                        zzhi.zzn(obj, j11, zzhi.zzc(obj2, j11));
                        zzD(obj, i11);
                    }
                    break;
                case 13:
                    if (zzG(obj2, i11)) {
                        zzhi.zzn(obj, j11, zzhi.zzc(obj2, j11));
                        zzD(obj, i11);
                    }
                    break;
                case 14:
                    if (zzG(obj2, i11)) {
                        zzhi.zzo(obj, j11, zzhi.zzd(obj2, j11));
                        zzD(obj, i11);
                    }
                    break;
                case 15:
                    if (zzG(obj2, i11)) {
                        zzhi.zzn(obj, j11, zzhi.zzc(obj2, j11));
                        zzD(obj, i11);
                    }
                    break;
                case 16:
                    if (zzG(obj2, i11)) {
                        zzhi.zzo(obj, j11, zzhi.zzd(obj2, j11));
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
                    zzgj.zzi(this.zzp, obj, obj2, j11);
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
                    if (zzJ(obj2, i12, i11)) {
                        zzhi.zzp(obj, j11, zzhi.zzf(obj2, j11));
                        zzE(obj, i12, i11);
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
                    if (zzJ(obj2, i12, i11)) {
                        zzhi.zzp(obj, j11, zzhi.zzf(obj2, j11));
                        zzE(obj, i12, i11);
                    }
                    break;
                case 68:
                    zzC(obj, obj2, i11);
                    break;
            }
        }
        zzgj.zzf(this.zzm, obj, obj2);
    }

    @Override // com.google.android.gms.internal.auth.zzgh
    public final void zzg(Object obj, byte[] bArr, int i11, int i12, zzds zzdsVar) throws IOException {
        if (this.zzh) {
            zzo(obj, bArr, i11, i12, zzdsVar);
        } else {
            zzb(obj, bArr, i11, i12, 0, zzdsVar);
        }
    }

    @Override // com.google.android.gms.internal.auth.zzgh
    public final boolean zzh(Object obj, Object obj2) {
        boolean zZzh;
        int length = this.zzc.length;
        for (int i11 = 0; i11 < length; i11 += 3) {
            int iZzv = zzv(i11);
            long j11 = iZzv & 1048575;
            switch (zzu(iZzv)) {
                case 0:
                    if (!zzF(obj, obj2, i11) || Double.doubleToLongBits(zzhi.zza(obj, j11)) != Double.doubleToLongBits(zzhi.zza(obj2, j11))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 1:
                    if (!zzF(obj, obj2, i11) || Float.floatToIntBits(zzhi.zzb(obj, j11)) != Float.floatToIntBits(zzhi.zzb(obj2, j11))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 2:
                    if (!zzF(obj, obj2, i11) || zzhi.zzd(obj, j11) != zzhi.zzd(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 3:
                    if (!zzF(obj, obj2, i11) || zzhi.zzd(obj, j11) != zzhi.zzd(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 4:
                    if (!zzF(obj, obj2, i11) || zzhi.zzc(obj, j11) != zzhi.zzc(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 5:
                    if (!zzF(obj, obj2, i11) || zzhi.zzd(obj, j11) != zzhi.zzd(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 6:
                    if (!zzF(obj, obj2, i11) || zzhi.zzc(obj, j11) != zzhi.zzc(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 7:
                    if (!zzF(obj, obj2, i11) || zzhi.zzt(obj, j11) != zzhi.zzt(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 8:
                    if (!zzF(obj, obj2, i11) || !zzgj.zzh(zzhi.zzf(obj, j11), zzhi.zzf(obj2, j11))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 9:
                    if (!zzF(obj, obj2, i11) || !zzgj.zzh(zzhi.zzf(obj, j11), zzhi.zzf(obj2, j11))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 10:
                    if (!zzF(obj, obj2, i11) || !zzgj.zzh(zzhi.zzf(obj, j11), zzhi.zzf(obj2, j11))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 11:
                    if (!zzF(obj, obj2, i11) || zzhi.zzc(obj, j11) != zzhi.zzc(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 12:
                    if (!zzF(obj, obj2, i11) || zzhi.zzc(obj, j11) != zzhi.zzc(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 13:
                    if (!zzF(obj, obj2, i11) || zzhi.zzc(obj, j11) != zzhi.zzc(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 14:
                    if (!zzF(obj, obj2, i11) || zzhi.zzd(obj, j11) != zzhi.zzd(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 15:
                    if (!zzF(obj, obj2, i11) || zzhi.zzc(obj, j11) != zzhi.zzc(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 16:
                    if (!zzF(obj, obj2, i11) || zzhi.zzd(obj, j11) != zzhi.zzd(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 17:
                    if (!zzF(obj, obj2, i11) || !zzgj.zzh(zzhi.zzf(obj, j11), zzhi.zzf(obj2, j11))) {
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
                    zZzh = zzgj.zzh(zzhi.zzf(obj, j11), zzhi.zzf(obj2, j11));
                    break;
                case 50:
                    zZzh = zzgj.zzh(zzhi.zzf(obj, j11), zzhi.zzf(obj2, j11));
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
                    long jZzs = zzs(i11) & 1048575;
                    if (zzhi.zzc(obj, jZzs) != zzhi.zzc(obj2, jZzs) || !zzgj.zzh(zzhi.zzf(obj, j11), zzhi.zzf(obj2, j11))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                default:
                    continue;
                    break;
            }
            if (!zZzh) {
                return false;
            }
        }
        return this.zzm.zza(obj).equals(this.zzm.zza(obj2));
    }

    /* JADX WARN: Code duplicated, block: B:42:0x009b  */
    /* JADX WARN: Code duplicated, block: B:44:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:50:0x00c0 A[LOOP:1: B:45:0x00af->B:50:0x00c0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:62:0x00bf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:66:0x00dd A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.auth.zzgh
    public final boolean zzi(Object obj) {
        int i11;
        int i12;
        List list;
        zzgh zzghVarZzy;
        int i13;
        int i14 = 1048575;
        int i15 = 0;
        int i16 = 0;
        while (i16 < this.zzj) {
            int i17 = this.zzi[i16];
            int i18 = this.zzc[i17];
            int iZzv = zzv(i17);
            int i19 = this.zzc[i17 + 2];
            int i20 = i19 & 1048575;
            int i21 = 1 << (i19 >>> 20);
            if (i20 != i14) {
                if (i20 != 1048575) {
                    i15 = zzb.getInt(obj, i20);
                }
                i12 = i15;
                i11 = i20;
            } else {
                i11 = i14;
                i12 = i15;
            }
            if ((268435456 & iZzv) != 0 && !zzH(obj, i17, i11, i12, i21)) {
                return false;
            }
            int iZzu = zzu(iZzv);
            if (iZzu == 9 || iZzu == 17) {
                if (zzH(obj, i17, i11, i12, i21) && !zzI(obj, iZzv, zzy(i17))) {
                    return false;
                }
            } else if (iZzu == 27) {
                list = (List) zzhi.zzf(obj, iZzv & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzghVarZzy = zzy(i17);
                    for (i13 = 0; i13 < list.size(); i13++) {
                        if (!zzghVarZzy.zzi(list.get(i13))) {
                            return false;
                        }
                    }
                }
            } else if (iZzu == 60 || iZzu == 68) {
                if (zzJ(obj, i18, i17) && !zzI(obj, iZzv, zzy(i17))) {
                    return false;
                }
            } else if (iZzu == 49) {
                list = (List) zzhi.zzf(obj, iZzv & 1048575);
                if (list.isEmpty()) {
                    zzghVarZzy = zzy(i17);
                    while (i13 < list.size()) {
                        if (!zzghVarZzy.zzi(list.get(i13))) {
                            return false;
                        }
                    }
                } else {
                    continue;
                }
            } else if (iZzu == 50 && !((zzfq) zzhi.zzf(obj, iZzv & 1048575)).isEmpty()) {
                throw null;
            }
            i16++;
            i14 = i11;
            i15 = i12;
        }
        return true;
    }
}
