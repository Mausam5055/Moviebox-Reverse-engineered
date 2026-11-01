package com.google.android.gms.internal.measurement;

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
final class zzlg<T> implements zzlu<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzml.zzb();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzlc zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final boolean zzj;
    private final int[] zzk;
    private final int zzl;
    private final int zzm;
    private final zzlk zzn;
    private final zzkm zzo;
    private final zzmk<?, ?> zzp;
    private final zzji<?> zzq;
    private final zzkv zzr;

    private zzlg(int[] iArr, Object[] objArr, int i11, int i12, zzlc zzlcVar, boolean z10, int[] iArr2, int i13, int i14, zzlk zzlkVar, zzkm zzkmVar, zzmk<?, ?> zzmkVar, zzji<?> zzjiVar, zzkv zzkvVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i11;
        this.zzf = i12;
        this.zzi = zzlcVar instanceof zzjt;
        this.zzh = zzjiVar != null && zzjiVar.zza(zzlcVar);
        this.zzj = false;
        this.zzk = iArr2;
        this.zzl = i13;
        this.zzm = i14;
        this.zzn = zzlkVar;
        this.zzo = zzkmVar;
        this.zzp = zzmkVar;
        this.zzq = zzjiVar;
        this.zzg = zzlcVar;
        this.zzr = zzkvVar;
    }

    private static <T> double zza(T t11, long j11) {
        return ((Double) zzml.zze(t11, j11)).doubleValue();
    }

    private final int zza(int i11) {
        if (i11 < this.zze || i11 > this.zzf) {
            return -1;
        }
        return zza(i11, 0);
    }

    private final int zza(int i11, int i12) {
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

    private static int zza(byte[] bArr, int i11, int i12, zzms zzmsVar, Class<?> cls, zzij zzijVar) throws IOException {
        switch (zzlf.zza[zzmsVar.ordinal()]) {
            case 1:
                int iZzd = zzig.zzd(bArr, i11, zzijVar);
                zzijVar.zzc = Boolean.valueOf(zzijVar.zzb != 0);
                return iZzd;
            case 2:
                return zzig.zza(bArr, i11, zzijVar);
            case 3:
                zzijVar.zzc = Double.valueOf(zzig.zza(bArr, i11));
                return i11 + 8;
            case 4:
            case 5:
                zzijVar.zzc = Integer.valueOf(zzig.zzc(bArr, i11));
                return i11 + 4;
            case 6:
            case 7:
                zzijVar.zzc = Long.valueOf(zzig.zzd(bArr, i11));
                return i11 + 8;
            case 8:
                zzijVar.zzc = Float.valueOf(zzig.zzb(bArr, i11));
                return i11 + 4;
            case 9:
            case 10:
            case 11:
                int iZzc = zzig.zzc(bArr, i11, zzijVar);
                zzijVar.zzc = Integer.valueOf(zzijVar.zza);
                return iZzc;
            case 12:
            case 13:
                int iZzd2 = zzig.zzd(bArr, i11, zzijVar);
                zzijVar.zzc = Long.valueOf(zzijVar.zzb);
                return iZzd2;
            case 14:
                return zzig.zza(zzlq.zza().zza((Class) cls), bArr, i11, i12, zzijVar);
            case 15:
                int iZzc2 = zzig.zzc(bArr, i11, zzijVar);
                zzijVar.zzc = Integer.valueOf(zziw.zza(zzijVar.zza));
                return iZzc2;
            case 16:
                int iZzd3 = zzig.zzd(bArr, i11, zzijVar);
                zzijVar.zzc = Long.valueOf(zziw.zza(zzijVar.zzb));
                return iZzd3;
            case 17:
                return zzig.zzb(bArr, i11, zzijVar);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    /* JADX WARN: Code duplicated, block: B:125:0x0266  */
    /* JADX WARN: Code duplicated, block: B:126:0x0269  */
    /* JADX WARN: Code duplicated, block: B:129:0x0280  */
    /* JADX WARN: Code duplicated, block: B:131:0x0284  */
    /* JADX WARN: Code duplicated, block: B:168:0x033f  */
    /* JADX WARN: Code duplicated, block: B:183:0x038c  */
    /* JADX WARN: Code duplicated, block: B:186:0x0399  */
    static <T> zzlg<T> zza(Class<T> cls, zzla zzlaVar, zzlk zzlkVar, zzkm zzkmVar, zzmk<?, ?> zzmkVar, zzji<?> zzjiVar, zzkv zzkvVar) {
        int i11;
        int iCharAt;
        int iCharAt2;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int[] iArr;
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
        int i27;
        int i28;
        zzls zzlsVar;
        int i29;
        int iObjectFieldOffset;
        int iObjectFieldOffset2;
        int i30;
        int i31;
        Field fieldZza;
        int i32;
        char cCharAt9;
        int i33;
        int i34;
        int i35;
        int i36;
        Object obj;
        Field fieldZza2;
        int i37;
        Object obj2;
        Field fieldZza3;
        int i38;
        char cCharAt10;
        int i39;
        char cCharAt11;
        int i40;
        char cCharAt12;
        int i41;
        char cCharAt13;
        if (!(zzlaVar instanceof zzls)) {
            throw new NoSuchMethodError();
        }
        zzls zzlsVar2 = (zzls) zzlaVar;
        String strZzd = zzlsVar2.zzd();
        int length = strZzd.length();
        char c11 = 55296;
        if (strZzd.charAt(0) >= 55296) {
            int i42 = 1;
            while (true) {
                i11 = i42 + 1;
                if (strZzd.charAt(i42) < 55296) {
                    break;
                }
                i42 = i11;
            }
        } else {
            i11 = 1;
        }
        int i43 = i11 + 1;
        int iCharAt3 = strZzd.charAt(i11);
        if (iCharAt3 >= 55296) {
            int i44 = iCharAt3 & 8191;
            int i45 = 13;
            while (true) {
                i41 = i43 + 1;
                cCharAt13 = strZzd.charAt(i43);
                if (cCharAt13 < 55296) {
                    break;
                }
                i44 |= (cCharAt13 & 8191) << i45;
                i45 += 13;
                i43 = i41;
            }
            iCharAt3 = i44 | (cCharAt13 << i45);
            i43 = i41;
        }
        if (iCharAt3 == 0) {
            i16 = 0;
            iCharAt = 0;
            iCharAt2 = 0;
            i15 = 0;
            i14 = 0;
            i13 = 0;
            iArr = zza;
            i12 = 0;
        } else {
            int i46 = i43 + 1;
            int iCharAt4 = strZzd.charAt(i43);
            if (iCharAt4 >= 55296) {
                int i47 = iCharAt4 & 8191;
                int i48 = 13;
                while (true) {
                    i24 = i46 + 1;
                    cCharAt8 = strZzd.charAt(i46);
                    if (cCharAt8 < 55296) {
                        break;
                    }
                    i47 |= (cCharAt8 & 8191) << i48;
                    i48 += 13;
                    i46 = i24;
                }
                iCharAt4 = i47 | (cCharAt8 << i48);
                i46 = i24;
            }
            int i49 = i46 + 1;
            int iCharAt5 = strZzd.charAt(i46);
            if (iCharAt5 >= 55296) {
                int i50 = iCharAt5 & 8191;
                int i51 = 13;
                while (true) {
                    i23 = i49 + 1;
                    cCharAt7 = strZzd.charAt(i49);
                    if (cCharAt7 < 55296) {
                        break;
                    }
                    i50 |= (cCharAt7 & 8191) << i51;
                    i51 += 13;
                    i49 = i23;
                }
                iCharAt5 = i50 | (cCharAt7 << i51);
                i49 = i23;
            }
            int i52 = i49 + 1;
            int iCharAt6 = strZzd.charAt(i49);
            if (iCharAt6 >= 55296) {
                int i53 = iCharAt6 & 8191;
                int i54 = 13;
                while (true) {
                    i22 = i52 + 1;
                    cCharAt6 = strZzd.charAt(i52);
                    if (cCharAt6 < 55296) {
                        break;
                    }
                    i53 |= (cCharAt6 & 8191) << i54;
                    i54 += 13;
                    i52 = i22;
                }
                iCharAt6 = i53 | (cCharAt6 << i54);
                i52 = i22;
            }
            int i55 = i52 + 1;
            int iCharAt7 = strZzd.charAt(i52);
            if (iCharAt7 >= 55296) {
                int i56 = iCharAt7 & 8191;
                int i57 = 13;
                while (true) {
                    i21 = i55 + 1;
                    cCharAt5 = strZzd.charAt(i55);
                    if (cCharAt5 < 55296) {
                        break;
                    }
                    i56 |= (cCharAt5 & 8191) << i57;
                    i57 += 13;
                    i55 = i21;
                }
                iCharAt7 = i56 | (cCharAt5 << i57);
                i55 = i21;
            }
            int i58 = i55 + 1;
            iCharAt = strZzd.charAt(i55);
            if (iCharAt >= 55296) {
                int i59 = iCharAt & 8191;
                int i60 = 13;
                while (true) {
                    i20 = i58 + 1;
                    cCharAt4 = strZzd.charAt(i58);
                    if (cCharAt4 < 55296) {
                        break;
                    }
                    i59 |= (cCharAt4 & 8191) << i60;
                    i60 += 13;
                    i58 = i20;
                }
                iCharAt = i59 | (cCharAt4 << i60);
                i58 = i20;
            }
            int i61 = i58 + 1;
            iCharAt2 = strZzd.charAt(i58);
            if (iCharAt2 >= 55296) {
                int i62 = iCharAt2 & 8191;
                int i63 = 13;
                while (true) {
                    i19 = i61 + 1;
                    cCharAt3 = strZzd.charAt(i61);
                    if (cCharAt3 < 55296) {
                        break;
                    }
                    i62 |= (cCharAt3 & 8191) << i63;
                    i63 += 13;
                    i61 = i19;
                }
                iCharAt2 = i62 | (cCharAt3 << i63);
                i61 = i19;
            }
            int i64 = i61 + 1;
            int iCharAt8 = strZzd.charAt(i61);
            if (iCharAt8 >= 55296) {
                int i65 = iCharAt8 & 8191;
                int i66 = 13;
                while (true) {
                    i18 = i64 + 1;
                    cCharAt2 = strZzd.charAt(i64);
                    if (cCharAt2 < 55296) {
                        break;
                    }
                    i65 |= (cCharAt2 & 8191) << i66;
                    i66 += 13;
                    i64 = i18;
                }
                iCharAt8 = i65 | (cCharAt2 << i66);
                i64 = i18;
            }
            int i67 = i64 + 1;
            int iCharAt9 = strZzd.charAt(i64);
            if (iCharAt9 >= 55296) {
                int i68 = iCharAt9 & 8191;
                int i69 = 13;
                while (true) {
                    i17 = i67 + 1;
                    cCharAt = strZzd.charAt(i67);
                    if (cCharAt < 55296) {
                        break;
                    }
                    i68 |= (cCharAt & 8191) << i69;
                    i69 += 13;
                    i67 = i17;
                }
                iCharAt9 = i68 | (cCharAt << i69);
                i67 = i17;
            }
            int[] iArr2 = new int[iCharAt9 + iCharAt2 + iCharAt8];
            int i70 = (iCharAt4 << 1) + iCharAt5;
            i12 = iCharAt4;
            i13 = iCharAt9;
            i43 = i67;
            i14 = iCharAt7;
            i15 = iCharAt6;
            i16 = i70;
            iArr = iArr2;
        }
        Unsafe unsafe = zzb;
        Object[] objArrZze = zzlsVar2.zze();
        Class<?> cls2 = zzlsVar2.zza().getClass();
        int[] iArr3 = new int[iCharAt * 3];
        Object[] objArr = new Object[iCharAt << 1];
        int i71 = i13 + iCharAt2;
        int i72 = i13;
        int i73 = i71;
        int i74 = 0;
        int i75 = 0;
        while (i43 < length) {
            int i76 = i43 + 1;
            int iCharAt10 = strZzd.charAt(i43);
            if (iCharAt10 >= c11) {
                int i77 = iCharAt10 & 8191;
                int i78 = i76;
                int i79 = 13;
                while (true) {
                    i40 = i78 + 1;
                    cCharAt12 = strZzd.charAt(i78);
                    if (cCharAt12 < c11) {
                        break;
                    }
                    i77 |= (cCharAt12 & 8191) << i79;
                    i79 += 13;
                    i78 = i40;
                }
                iCharAt10 = i77 | (cCharAt12 << i79);
                i25 = i40;
            } else {
                i25 = i76;
            }
            int i80 = i25 + 1;
            int iCharAt11 = strZzd.charAt(i25);
            if (iCharAt11 >= c11) {
                int i81 = iCharAt11 & 8191;
                int i82 = i80;
                int i83 = 13;
                while (true) {
                    i39 = i82 + 1;
                    cCharAt11 = strZzd.charAt(i82);
                    i26 = length;
                    if (cCharAt11 < 55296) {
                        break;
                    }
                    i81 |= (cCharAt11 & 8191) << i83;
                    i83 += 13;
                    i82 = i39;
                    length = i26;
                }
                iCharAt11 = i81 | (cCharAt11 << i83);
                i27 = i39;
            } else {
                i26 = length;
                i27 = i80;
            }
            int i84 = iCharAt11 & 255;
            int i85 = i14;
            if ((iCharAt11 & 1024) != 0) {
                iArr[i75] = i74;
                i75++;
            }
            int i86 = i15;
            if (i84 >= 51) {
                int i87 = i27 + 1;
                int iCharAt12 = strZzd.charAt(i27);
                char c12 = 55296;
                if (iCharAt12 >= 55296) {
                    int i88 = iCharAt12 & 8191;
                    int i89 = 13;
                    while (true) {
                        i38 = i87 + 1;
                        cCharAt10 = strZzd.charAt(i87);
                        if (cCharAt10 < c12) {
                            break;
                        }
                        i88 |= (cCharAt10 & 8191) << i89;
                        i89 += 13;
                        i87 = i38;
                        c12 = 55296;
                    }
                    iCharAt12 = i88 | (cCharAt10 << i89);
                    i87 = i38;
                }
                int i90 = i84 - 51;
                int i91 = i87;
                if (i90 == 9 || i90 == 17) {
                    i34 = 1;
                    i35 = i16 + 1;
                    objArr[((i74 / 3) << 1) + 1] = objArrZze[i16];
                } else {
                    if (i90 != 12 || (!zzlsVar2.zzb().equals(zzln.PROTO2) && (iCharAt11 & 2048) == 0)) {
                        i34 = 1;
                    } else {
                        i34 = 1;
                        i35 = i16 + 1;
                        objArr[((i74 / 3) << 1) + 1] = objArrZze[i16];
                    }
                    i36 = iCharAt12 << i34;
                    obj = objArrZze[i36];
                    if (obj instanceof Field) {
                        fieldZza2 = (Field) obj;
                    } else {
                        fieldZza2 = zza(cls2, (String) obj);
                        objArrZze[i36] = fieldZza2;
                    }
                    int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldZza2);
                    i37 = i36 + 1;
                    obj2 = objArrZze[i37];
                    int i92 = i16;
                    if (obj2 instanceof Field) {
                        fieldZza3 = (Field) obj2;
                    } else {
                        fieldZza3 = zza(cls2, (String) obj2);
                        objArrZze[i37] = fieldZza3;
                    }
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZza3);
                    strZzd = strZzd;
                    iObjectFieldOffset = iObjectFieldOffset3;
                    i29 = i92;
                    i31 = 0;
                    zzlsVar = zzlsVar2;
                    i28 = iCharAt10;
                    i30 = i91;
                }
                i16 = i35;
                i36 = iCharAt12 << i34;
                obj = objArrZze[i36];
                if (obj instanceof Field) {
                    fieldZza2 = (Field) obj;
                } else {
                    fieldZza2 = zza(cls2, (String) obj);
                    objArrZze[i36] = fieldZza2;
                }
                int iObjectFieldOffset4 = (int) unsafe.objectFieldOffset(fieldZza2);
                i37 = i36 + 1;
                obj2 = objArrZze[i37];
                int i93 = i16;
                if (obj2 instanceof Field) {
                    fieldZza3 = (Field) obj2;
                } else {
                    fieldZza3 = zza(cls2, (String) obj2);
                    objArrZze[i37] = fieldZza3;
                }
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZza3);
                strZzd = strZzd;
                iObjectFieldOffset = iObjectFieldOffset4;
                i29 = i93;
                i31 = 0;
                zzlsVar = zzlsVar2;
                i28 = iCharAt10;
                i30 = i91;
            } else {
                int i94 = i16 + 1;
                Field fieldZza4 = zza(cls2, (String) objArrZze[i16]);
                i28 = iCharAt10;
                if (i84 == 9 || i84 == 17) {
                    zzlsVar = zzlsVar2;
                    objArr[((i74 / 3) << 1) + 1] = fieldZza4.getType();
                } else {
                    if (i84 == 27 || i84 == 49) {
                        zzlsVar = zzlsVar2;
                        i33 = i16 + 2;
                        objArr[((i74 / 3) << 1) + 1] = objArrZze[i94];
                    } else if (i84 == 12 || i84 == 30 || i84 == 44) {
                        zzlsVar = zzlsVar2;
                        if (zzlsVar2.zzb() == zzln.PROTO2 || (iCharAt11 & 2048) != 0) {
                            i33 = i16 + 2;
                            objArr[((i74 / 3) << 1) + 1] = objArrZze[i94];
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZza4);
                        if ((iCharAt11 & 4096) != 0 || i84 > 17) {
                            iObjectFieldOffset2 = 1048575;
                            i30 = i27;
                            i31 = 0;
                        } else {
                            i30 = i27 + 1;
                            int iCharAt13 = strZzd.charAt(i27);
                            if (iCharAt13 >= 55296) {
                                int i95 = iCharAt13 & 8191;
                                int i96 = 13;
                                while (true) {
                                    i32 = i30 + 1;
                                    cCharAt9 = strZzd.charAt(i30);
                                    if (cCharAt9 < 55296) {
                                        break;
                                    }
                                    i95 |= (cCharAt9 & 8191) << i96;
                                    i96 += 13;
                                    i30 = i32;
                                }
                                iCharAt13 = i95 | (cCharAt9 << i96);
                                i30 = i32;
                            }
                            int i97 = (i12 << 1) + (iCharAt13 / 32);
                            Object obj3 = objArrZze[i97];
                            if (obj3 instanceof Field) {
                                fieldZza = (Field) obj3;
                            } else {
                                fieldZza = zza(cls2, (String) obj3);
                                objArrZze[i97] = fieldZza;
                            }
                            i31 = iCharAt13 % 32;
                            iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZza);
                        }
                        if (i84 >= 18 && i84 <= 49) {
                            iArr[i73] = iObjectFieldOffset;
                            i73++;
                        }
                    } else if (i84 == 50) {
                        int i98 = i72 + 1;
                        iArr[i72] = i74;
                        int i99 = (i74 / 3) << 1;
                        int i100 = i16 + 2;
                        objArr[i99] = objArrZze[i94];
                        if ((iCharAt11 & 2048) != 0) {
                            i94 = i16 + 3;
                            objArr[i99 + 1] = objArrZze[i100];
                            zzlsVar = zzlsVar2;
                            i72 = i98;
                        } else {
                            i72 = i98;
                            zzlsVar = zzlsVar2;
                            i29 = i100;
                        }
                        iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZza4);
                        if ((iCharAt11 & 4096) != 0) {
                            iObjectFieldOffset2 = 1048575;
                            i30 = i27;
                            i31 = 0;
                        } else {
                            iObjectFieldOffset2 = 1048575;
                            i30 = i27;
                            i31 = 0;
                        }
                        if (i84 >= 18) {
                            iArr[i73] = iObjectFieldOffset;
                            i73++;
                        }
                    } else {
                        zzlsVar = zzlsVar2;
                    }
                    i29 = i33;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZza4);
                    if ((iCharAt11 & 4096) != 0) {
                        iObjectFieldOffset2 = 1048575;
                        i30 = i27;
                        i31 = 0;
                    } else {
                        iObjectFieldOffset2 = 1048575;
                        i30 = i27;
                        i31 = 0;
                    }
                    if (i84 >= 18) {
                        iArr[i73] = iObjectFieldOffset;
                        i73++;
                    }
                }
                i29 = i94;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZza4);
                if ((iCharAt11 & 4096) != 0) {
                    iObjectFieldOffset2 = 1048575;
                    i30 = i27;
                    i31 = 0;
                } else {
                    iObjectFieldOffset2 = 1048575;
                    i30 = i27;
                    i31 = 0;
                }
                if (i84 >= 18) {
                    iArr[i73] = iObjectFieldOffset;
                    i73++;
                }
            }
            int i101 = i74 + 1;
            iArr3[i74] = i28;
            int i102 = i74 + 2;
            Class<?> cls3 = cls2;
            int i103 = i30;
            iArr3[i101] = ((iCharAt11 & 512) != 0 ? ASTNode.DISCARD : 0) | ((iCharAt11 & 256) != 0 ? ASTNode.DEOP : 0) | ((iCharAt11 & 2048) != 0 ? Integer.MIN_VALUE : 0) | (i84 << 20) | iObjectFieldOffset;
            i74 += 3;
            iArr3[i102] = (i31 << 20) | iObjectFieldOffset2;
            strZzd = strZzd;
            i14 = i85;
            i16 = i29;
            zzlsVar2 = zzlsVar;
            length = i26;
            i15 = i86;
            cls2 = cls3;
            i43 = i103;
            c11 = 55296;
        }
        return new zzlg<>(iArr3, objArr, i15, i14, zzlsVar2.zza(), false, iArr, i13, i71, zzlkVar, zzkmVar, zzmkVar, zzjiVar, zzkvVar);
    }

    private final <K, V, UT, UB> UB zza(int i11, int i12, Map<K, V> map, zzjx zzjxVar, UB ub2, zzmk<UT, UB> zzmkVar, Object obj) {
        zzkt<?, ?> zzktVarZza = this.zzr.zza(zzf(i11));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!zzjxVar.zza(((Integer) next.getValue()).intValue())) {
                if (ub2 == null) {
                    ub2 = zzmkVar.zzc(obj);
                }
                zzit zzitVarZzc = zzik.zzc(zzku.zza(zzktVarZza, next.getKey(), next.getValue()));
                try {
                    zzku.zza(zzitVarZzc.zzb(), zzktVarZza, next.getKey(), next.getValue());
                    zzmkVar.zza(ub2, i12, zzitVarZzc.zza());
                    it.remove();
                } catch (IOException e11) {
                    throw new RuntimeException(e11);
                }
            }
        }
        return ub2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Object zza(T t11, int i11) {
        zzlu zzluVarZze = zze(i11);
        long jZzc = zzc(i11) & 1048575;
        if (!zzc((Object) t11, i11)) {
            return zzluVarZze.zza();
        }
        Object object = zzb.getObject(t11, jZzc);
        if (zzg(object)) {
            return object;
        }
        Object objZza = zzluVarZze.zza();
        if (object != null) {
            zzluVarZze.zza(objZza, object);
        }
        return objZza;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Object zza(T t11, int i11, int i12) {
        zzlu zzluVarZze = zze(i12);
        if (!zzc(t11, i11, i12)) {
            return zzluVarZze.zza();
        }
        Object object = zzb.getObject(t11, zzc(i12) & 1048575);
        if (zzg(object)) {
            return object;
        }
        Object objZza = zzluVarZze.zza();
        if (object != null) {
            zzluVarZze.zza(objZza, object);
        }
        return objZza;
    }

    private final <UT, UB> UB zza(Object obj, int i11, UB ub2, zzmk<UT, UB> zzmkVar, Object obj2) {
        zzjx zzjxVarZzd;
        int i12 = this.zzc[i11];
        Object objZze = zzml.zze(obj, zzc(i11) & 1048575);
        return (objZze == null || (zzjxVarZzd = zzd(i11)) == null) ? ub2 : (UB) zza(i11, i12, this.zzr.zze(objZze), zzjxVarZzd, ub2, zzmkVar, obj2);
    }

    private static Field zza(Class<?> cls, String str) {
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

    private static void zza(int i11, Object obj, zznb zznbVar) throws IOException {
        if (obj instanceof String) {
            zznbVar.zza(i11, (String) obj);
        } else {
            zznbVar.zza(i11, (zzik) obj);
        }
    }

    private static <UT, UB> void zza(zzmk<UT, UB> zzmkVar, T t11, zznb zznbVar) throws IOException {
        zzmkVar.zzb(zzmkVar.zzd(t11), zznbVar);
    }

    private final <K, V> void zza(zznb zznbVar, int i11, Object obj, int i12) throws IOException {
        if (obj != null) {
            zznbVar.zza(i11, this.zzr.zza(zzf(i12)), this.zzr.zzd(obj));
        }
    }

    private final void zza(T t11, int i11, int i12, Object obj) {
        zzb.putObject(t11, zzc(i12) & 1048575, obj);
        zzb(t11, i11, i12);
    }

    private final void zza(Object obj, int i11, zzlr zzlrVar) throws IOException {
        if (zzg(i11)) {
            zzml.zza(obj, i11 & 1048575, zzlrVar.zzr());
        } else if (this.zzi) {
            zzml.zza(obj, i11 & 1048575, zzlrVar.zzq());
        } else {
            zzml.zza(obj, i11 & 1048575, zzlrVar.zzp());
        }
    }

    private final void zza(T t11, int i11, Object obj) {
        zzb.putObject(t11, zzc(i11) & 1048575, obj);
        zzb((Object) t11, i11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void zza(T t11, T t12, int i11) {
        if (zzc((Object) t12, i11)) {
            long jZzc = zzc(i11) & 1048575;
            Unsafe unsafe = zzb;
            Object object = unsafe.getObject(t12, jZzc);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i11] + " is present but null: " + String.valueOf(t12));
            }
            zzlu zzluVarZze = zze(i11);
            if (!zzc((Object) t11, i11)) {
                if (zzg(object)) {
                    Object objZza = zzluVarZze.zza();
                    zzluVarZze.zza(objZza, object);
                    unsafe.putObject(t11, jZzc, objZza);
                } else {
                    unsafe.putObject(t11, jZzc, object);
                }
                zzb((Object) t11, i11);
                return;
            }
            Object object2 = unsafe.getObject(t11, jZzc);
            if (!zzg(object2)) {
                Object objZza2 = zzluVarZze.zza();
                zzluVarZze.zza(objZza2, object2);
                unsafe.putObject(t11, jZzc, objZza2);
                object2 = objZza2;
            }
            zzluVarZze.zza(object2, object);
        }
    }

    private final boolean zza(T t11, int i11, int i12, int i13, int i14) {
        if (i12 == 1048575) {
            return zzc((Object) t11, i11);
        }
        return (i13 & i14) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zza(Object obj, int i11, zzlu zzluVar) {
        return zzluVar.zze(zzml.zze(obj, i11 & 1048575));
    }

    private static <T> float zzb(T t11, long j11) {
        return ((Float) zzml.zze(t11, j11)).floatValue();
    }

    private final int zzb(int i11) {
        return this.zzc[i11 + 2];
    }

    private final void zzb(T t11, int i11) {
        int iZzb = zzb(i11);
        long j11 = 1048575 & iZzb;
        if (j11 == 1048575) {
            return;
        }
        zzml.zza((Object) t11, j11, (1 << (iZzb >>> 20)) | zzml.zzc(t11, j11));
    }

    private final void zzb(T t11, int i11, int i12) {
        zzml.zza((Object) t11, zzb(i12) & 1048575, i11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void zzb(T t11, T t12, int i11) {
        int i12 = this.zzc[i11];
        if (zzc(t12, i12, i11)) {
            long jZzc = zzc(i11) & 1048575;
            Unsafe unsafe = zzb;
            Object object = unsafe.getObject(t12, jZzc);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i11] + " is present but null: " + String.valueOf(t12));
            }
            zzlu zzluVarZze = zze(i11);
            if (!zzc(t11, i12, i11)) {
                if (zzg(object)) {
                    Object objZza = zzluVarZze.zza();
                    zzluVarZze.zza(objZza, object);
                    unsafe.putObject(t11, jZzc, objZza);
                } else {
                    unsafe.putObject(t11, jZzc, object);
                }
                zzb(t11, i12, i11);
                return;
            }
            Object object2 = unsafe.getObject(t11, jZzc);
            if (!zzg(object2)) {
                Object objZza2 = zzluVarZze.zza();
                zzluVarZze.zza(objZza2, object2);
                unsafe.putObject(t11, jZzc, objZza2);
                object2 = objZza2;
            }
            zzluVarZze.zza(object2, object);
        }
    }

    private final int zzc(int i11) {
        return this.zzc[i11 + 1];
    }

    private static <T> int zzc(T t11, long j11) {
        return ((Integer) zzml.zze(t11, j11)).intValue();
    }

    static zzmj zzc(Object obj) {
        zzjt zzjtVar = (zzjt) obj;
        zzmj zzmjVar = zzjtVar.zzb;
        if (zzmjVar != zzmj.zzc()) {
            return zzmjVar;
        }
        zzmj zzmjVarZzd = zzmj.zzd();
        zzjtVar.zzb = zzmjVarZzd;
        return zzmjVarZzd;
    }

    private final boolean zzc(T t11, int i11) {
        int iZzb = zzb(i11);
        long j11 = iZzb & 1048575;
        if (j11 != 1048575) {
            return (zzml.zzc(t11, j11) & (1 << (iZzb >>> 20))) != 0;
        }
        int iZzc = zzc(i11);
        long j12 = iZzc & 1048575;
        switch ((iZzc & 267386880) >>> 20) {
            case 0:
                return Double.doubleToRawLongBits(zzml.zza(t11, j12)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzml.zzb(t11, j12)) != 0;
            case 2:
                return zzml.zzd(t11, j12) != 0;
            case 3:
                return zzml.zzd(t11, j12) != 0;
            case 4:
                return zzml.zzc(t11, j12) != 0;
            case 5:
                return zzml.zzd(t11, j12) != 0;
            case 6:
                return zzml.zzc(t11, j12) != 0;
            case 7:
                return zzml.zzh(t11, j12);
            case 8:
                Object objZze = zzml.zze(t11, j12);
                if (objZze instanceof String) {
                    return !((String) objZze).isEmpty();
                }
                if (objZze instanceof zzik) {
                    return !zzik.zza.equals(objZze);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzml.zze(t11, j12) != null;
            case 10:
                return !zzik.zza.equals(zzml.zze(t11, j12));
            case 11:
                return zzml.zzc(t11, j12) != 0;
            case 12:
                return zzml.zzc(t11, j12) != 0;
            case 13:
                return zzml.zzc(t11, j12) != 0;
            case 14:
                return zzml.zzd(t11, j12) != 0;
            case 15:
                return zzml.zzc(t11, j12) != 0;
            case 16:
                return zzml.zzd(t11, j12) != 0;
            case 17:
                return zzml.zze(t11, j12) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzc(T t11, int i11, int i12) {
        return zzml.zzc(t11, (long) (zzb(i12) & 1048575)) == i11;
    }

    private final boolean zzc(T t11, T t12, int i11) {
        return zzc((Object) t11, i11) == zzc((Object) t12, i11);
    }

    private static <T> long zzd(T t11, long j11) {
        return ((Long) zzml.zze(t11, j11)).longValue();
    }

    private final zzjx zzd(int i11) {
        return (zzjx) this.zzd[((i11 / 3) << 1) + 1];
    }

    private final zzlu zze(int i11) {
        int i12 = (i11 / 3) << 1;
        zzlu zzluVar = (zzlu) this.zzd[i12];
        if (zzluVar != null) {
            return zzluVar;
        }
        zzlu<T> zzluVarZza = zzlq.zza().zza((Class) this.zzd[i12 + 1]);
        this.zzd[i12] = zzluVarZza;
        return zzluVarZza;
    }

    private static <T> boolean zze(T t11, long j11) {
        return ((Boolean) zzml.zze(t11, j11)).booleanValue();
    }

    private final Object zzf(int i11) {
        return this.zzd[(i11 / 3) << 1];
    }

    private static void zzf(Object obj) {
        if (zzg(obj)) {
            return;
        }
        throw new IllegalArgumentException("Mutating immutable message: " + String.valueOf(obj));
    }

    private static boolean zzg(int i11) {
        return (i11 & ASTNode.DISCARD) != 0;
    }

    private static boolean zzg(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzjt) {
            return ((zzjt) obj).zzco();
        }
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:24:0x0071 A[PHI: r12
  0x0071: PHI (r12v4 int) = 
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v8 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v1 int)
  (r12v9 int)
  (r12v1 int)
 binds: [B:18:0x0058, B:180:0x04cf, B:177:0x04bb, B:171:0x0495, B:168:0x0478, B:165:0x045d, B:162:0x0444, B:159:0x042b, B:156:0x0415, B:153:0x0401, B:150:0x03e9, B:147:0x03d0, B:144:0x03b1, B:123:0x02bd, B:120:0x02a7, B:117:0x0291, B:114:0x027b, B:111:0x0265, B:108:0x024f, B:105:0x0239, B:102:0x0223, B:99:0x020e, B:96:0x01f9, B:93:0x01e4, B:90:0x01cf, B:87:0x01ba, B:83:0x01a2, B:78:0x016e, B:75:0x0162, B:72:0x0152, B:69:0x0142, B:66:0x0132, B:63:0x0126, B:60:0x011a, B:57:0x010e, B:51:0x00f0, B:48:0x00dd, B:45:0x00cc, B:42:0x00bd, B:39:0x00ae, B:37:0x00a8, B:35:0x00a1, B:32:0x0096, B:29:0x0087, B:26:0x0078, B:23:0x0070, B:21:0x0060] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.google.android.gms.internal.measurement.zzlu
    public final int zza(T t11) {
        int i11;
        int i12;
        int i13;
        int iZza;
        int iZzb;
        int iZzh;
        boolean z10;
        int iZzc;
        int iZzd;
        int iZzi;
        int iZzj;
        Unsafe unsafe = zzb;
        int i14 = 1048575;
        int i15 = 1048575;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        while (i17 < this.zzc.length) {
            int iZzc2 = zzc(i17);
            int i19 = (267386880 & iZzc2) >>> 20;
            int[] iArr = this.zzc;
            int i20 = iArr[i17];
            int i21 = iArr[i17 + 2];
            int i22 = i21 & i14;
            if (i19 <= 17) {
                if (i22 != i15) {
                    i16 = i22 == i14 ? 0 : unsafe.getInt(t11, i22);
                    i15 = i22;
                }
                i11 = i15;
                i12 = i16;
                i13 = 1 << (i21 >>> 20);
            } else {
                i11 = i15;
                i12 = i16;
                i13 = 0;
            }
            long j11 = iZzc2 & i14;
            if (i19 >= zzjn.zza.zza()) {
                zzjn.zzb.zza();
            }
            switch (i19) {
                case 0:
                    if (zza(t11, i17, i11, i12, i13)) {
                        iZza = zzjc.zza(i20, 0.0d);
                        i18 += iZza;
                    }
                    break;
                case 1:
                    if (zza(t11, i17, i11, i12, i13)) {
                        iZza = zzjc.zza(i20, 0.0f);
                        i18 += iZza;
                    }
                    break;
                case 2:
                    if (zza(t11, i17, i11, i12, i13)) {
                        iZza = zzjc.zzd(i20, unsafe.getLong(t11, j11));
                        i18 += iZza;
                    }
                    break;
                case 3:
                    if (zza(t11, i17, i11, i12, i13)) {
                        iZza = zzjc.zzg(i20, unsafe.getLong(t11, j11));
                        i18 += iZza;
                    }
                    break;
                case 4:
                    if (zza(t11, i17, i11, i12, i13)) {
                        iZza = zzjc.zzg(i20, unsafe.getInt(t11, j11));
                        i18 += iZza;
                    }
                    break;
                case 5:
                    if (zza(t11, i17, i11, i12, i13)) {
                        iZza = zzjc.zzc(i20, 0L);
                        i18 += iZza;
                    }
                    break;
                case 6:
                    if (zza(t11, i17, i11, i12, i13)) {
                        iZza = zzjc.zzf(i20, 0);
                        i18 += iZza;
                    }
                    break;
                case 7:
                    if (zza(t11, i17, i11, i12, i13)) {
                        iZzb = zzjc.zzb(i20, true);
                        i18 += iZzb;
                    }
                    break;
                case 8:
                    if (zza(t11, i17, i11, i12, i13)) {
                        Object object = unsafe.getObject(t11, j11);
                        iZzb = object instanceof zzik ? zzjc.zzc(i20, (zzik) object) : zzjc.zzb(i20, (String) object);
                        i18 += iZzb;
                    }
                    break;
                case 9:
                    if (zza(t11, i17, i11, i12, i13)) {
                        iZzb = zzlw.zza(i20, unsafe.getObject(t11, j11), (zzlu<?>) zze(i17));
                        i18 += iZzb;
                    }
                    break;
                case 10:
                    if (zza(t11, i17, i11, i12, i13)) {
                        iZzb = zzjc.zzc(i20, (zzik) unsafe.getObject(t11, j11));
                        i18 += iZzb;
                    }
                    break;
                case 11:
                    if (zza(t11, i17, i11, i12, i13)) {
                        iZzb = zzjc.zzj(i20, unsafe.getInt(t11, j11));
                        i18 += iZzb;
                    }
                    break;
                case 12:
                    if (zza(t11, i17, i11, i12, i13)) {
                        iZzb = zzjc.zze(i20, unsafe.getInt(t11, j11));
                        i18 += iZzb;
                    }
                    break;
                case 13:
                    if (zza(t11, i17, i11, i12, i13)) {
                        iZzh = zzjc.zzh(i20, 0);
                        i18 += iZzh;
                    }
                    break;
                case 14:
                    if (zza(t11, i17, i11, i12, i13)) {
                        iZzb = zzjc.zze(i20, 0L);
                        i18 += iZzb;
                    }
                    break;
                case 15:
                    if (zza(t11, i17, i11, i12, i13)) {
                        iZzb = zzjc.zzi(i20, unsafe.getInt(t11, j11));
                        i18 += iZzb;
                    }
                    break;
                case 16:
                    if (zza(t11, i17, i11, i12, i13)) {
                        iZzb = zzjc.zzf(i20, unsafe.getLong(t11, j11));
                        i18 += iZzb;
                    }
                    break;
                case 17:
                    if (zza(t11, i17, i11, i12, i13)) {
                        iZzb = zzjc.zzb(i20, (zzlc) unsafe.getObject(t11, j11), zze(i17));
                        i18 += iZzb;
                    }
                    break;
                case 18:
                    iZzb = zzlw.zzd(i20, (List) unsafe.getObject(t11, j11), false);
                    i18 += iZzb;
                    break;
                case 19:
                    z10 = false;
                    iZzc = zzlw.zzc(i20, (List) unsafe.getObject(t11, j11), false);
                    i18 += iZzc;
                    break;
                case 20:
                    z10 = false;
                    iZzc = zzlw.zzf(i20, (List) unsafe.getObject(t11, j11), false);
                    i18 += iZzc;
                    break;
                case 21:
                    z10 = false;
                    iZzc = zzlw.zzj(i20, (List) unsafe.getObject(t11, j11), false);
                    i18 += iZzc;
                    break;
                case 22:
                    z10 = false;
                    iZzc = zzlw.zze(i20, (List) unsafe.getObject(t11, j11), false);
                    i18 += iZzc;
                    break;
                case 23:
                    z10 = false;
                    iZzc = zzlw.zzd(i20, (List) unsafe.getObject(t11, j11), false);
                    i18 += iZzc;
                    break;
                case 24:
                    z10 = false;
                    iZzc = zzlw.zzc(i20, (List) unsafe.getObject(t11, j11), false);
                    i18 += iZzc;
                    break;
                case 25:
                    z10 = false;
                    iZzc = zzlw.zza(i20, (List<?>) unsafe.getObject(t11, j11), false);
                    i18 += iZzc;
                    break;
                case 26:
                    iZzb = zzlw.zzb(i20, (List) unsafe.getObject(t11, j11));
                    i18 += iZzb;
                    break;
                case 27:
                    iZzb = zzlw.zzb(i20, (List<?>) unsafe.getObject(t11, j11), (zzlu<?>) zze(i17));
                    i18 += iZzb;
                    break;
                case 28:
                    iZzb = zzlw.zza(i20, (List<zzik>) unsafe.getObject(t11, j11));
                    i18 += iZzb;
                    break;
                case NOTIFICATION_REDIRECT_VALUE:
                    iZzb = zzlw.zzi(i20, (List) unsafe.getObject(t11, j11), false);
                    i18 += iZzb;
                    break;
                case 30:
                    z10 = false;
                    iZzc = zzlw.zzb(i20, (List<Integer>) unsafe.getObject(t11, j11), false);
                    i18 += iZzc;
                    break;
                case TEMPLATE_HTML_SIZE_VALUE:
                    z10 = false;
                    iZzc = zzlw.zzc(i20, (List) unsafe.getObject(t11, j11), false);
                    i18 += iZzc;
                    break;
                case 32:
                    z10 = false;
                    iZzc = zzlw.zzd(i20, (List) unsafe.getObject(t11, j11), false);
                    i18 += iZzc;
                    break;
                case 33:
                    z10 = false;
                    iZzc = zzlw.zzg(i20, (List) unsafe.getObject(t11, j11), false);
                    i18 += iZzc;
                    break;
                case 34:
                    z10 = false;
                    iZzc = zzlw.zzh(i20, (List) unsafe.getObject(t11, j11), false);
                    i18 += iZzc;
                    break;
                case 35:
                    iZzd = zzlw.zzd((List) unsafe.getObject(t11, j11));
                    if (iZzd > 0) {
                        iZzi = zzjc.zzi(i20);
                        iZzj = zzjc.zzj(iZzd);
                        iZzh = iZzi + iZzj + iZzd;
                        i18 += iZzh;
                    }
                    break;
                case 36:
                    iZzd = zzlw.zzc((List) unsafe.getObject(t11, j11));
                    if (iZzd > 0) {
                        iZzi = zzjc.zzi(i20);
                        iZzj = zzjc.zzj(iZzd);
                        iZzh = iZzi + iZzj + iZzd;
                        i18 += iZzh;
                    }
                    break;
                case 37:
                    iZzd = zzlw.zzf((List) unsafe.getObject(t11, j11));
                    if (iZzd > 0) {
                        iZzi = zzjc.zzi(i20);
                        iZzj = zzjc.zzj(iZzd);
                        iZzh = iZzi + iZzj + iZzd;
                        i18 += iZzh;
                    }
                    break;
                case 38:
                    iZzd = zzlw.zzj((List) unsafe.getObject(t11, j11));
                    if (iZzd > 0) {
                        iZzi = zzjc.zzi(i20);
                        iZzj = zzjc.zzj(iZzd);
                        iZzh = iZzi + iZzj + iZzd;
                        i18 += iZzh;
                    }
                    break;
                case 39:
                    iZzd = zzlw.zze((List) unsafe.getObject(t11, j11));
                    if (iZzd > 0) {
                        iZzi = zzjc.zzi(i20);
                        iZzj = zzjc.zzj(iZzd);
                        iZzh = iZzi + iZzj + iZzd;
                        i18 += iZzh;
                    }
                    break;
                case 40:
                    iZzd = zzlw.zzd((List) unsafe.getObject(t11, j11));
                    if (iZzd > 0) {
                        iZzi = zzjc.zzi(i20);
                        iZzj = zzjc.zzj(iZzd);
                        iZzh = iZzi + iZzj + iZzd;
                        i18 += iZzh;
                    }
                    break;
                case 41:
                    iZzd = zzlw.zzc((List) unsafe.getObject(t11, j11));
                    if (iZzd > 0) {
                        iZzi = zzjc.zzi(i20);
                        iZzj = zzjc.zzj(iZzd);
                        iZzh = iZzi + iZzj + iZzd;
                        i18 += iZzh;
                    }
                    break;
                case 42:
                    iZzd = zzlw.zza((List<?>) unsafe.getObject(t11, j11));
                    if (iZzd > 0) {
                        iZzi = zzjc.zzi(i20);
                        iZzj = zzjc.zzj(iZzd);
                        iZzh = iZzi + iZzj + iZzd;
                        i18 += iZzh;
                    }
                    break;
                case 43:
                    iZzd = zzlw.zzi((List) unsafe.getObject(t11, j11));
                    if (iZzd > 0) {
                        iZzi = zzjc.zzi(i20);
                        iZzj = zzjc.zzj(iZzd);
                        iZzh = iZzi + iZzj + iZzd;
                        i18 += iZzh;
                    }
                    break;
                case 44:
                    iZzd = zzlw.zzb((List) unsafe.getObject(t11, j11));
                    if (iZzd > 0) {
                        iZzi = zzjc.zzi(i20);
                        iZzj = zzjc.zzj(iZzd);
                        iZzh = iZzi + iZzj + iZzd;
                        i18 += iZzh;
                    }
                    break;
                case 45:
                    iZzd = zzlw.zzc((List) unsafe.getObject(t11, j11));
                    if (iZzd > 0) {
                        iZzi = zzjc.zzi(i20);
                        iZzj = zzjc.zzj(iZzd);
                        iZzh = iZzi + iZzj + iZzd;
                        i18 += iZzh;
                    }
                    break;
                case 46:
                    iZzd = zzlw.zzd((List) unsafe.getObject(t11, j11));
                    if (iZzd > 0) {
                        iZzi = zzjc.zzi(i20);
                        iZzj = zzjc.zzj(iZzd);
                        iZzh = iZzi + iZzj + iZzd;
                        i18 += iZzh;
                    }
                    break;
                case 47:
                    iZzd = zzlw.zzg((List) unsafe.getObject(t11, j11));
                    if (iZzd > 0) {
                        iZzi = zzjc.zzi(i20);
                        iZzj = zzjc.zzj(iZzd);
                        iZzh = iZzi + iZzj + iZzd;
                        i18 += iZzh;
                    }
                    break;
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                    iZzd = zzlw.zzh((List) unsafe.getObject(t11, j11));
                    if (iZzd > 0) {
                        iZzi = zzjc.zzi(i20);
                        iZzj = zzjc.zzj(iZzd);
                        iZzh = iZzi + iZzj + iZzd;
                        i18 += iZzh;
                    }
                    break;
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    iZzb = zzlw.zza(i20, (List<zzlc>) unsafe.getObject(t11, j11), (zzlu<?>) zze(i17));
                    i18 += iZzb;
                    break;
                case 50:
                    iZzb = this.zzr.zza(i20, unsafe.getObject(t11, j11), zzf(i17));
                    i18 += iZzb;
                    break;
                case AD_REWARD_USER_VALUE:
                    if (zzc(t11, i20, i17)) {
                        iZzb = zzjc.zza(i20, 0.0d);
                        i18 += iZzb;
                    }
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    if (zzc(t11, i20, i17)) {
                        iZzb = zzjc.zza(i20, 0.0f);
                        i18 += iZzb;
                    }
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    if (zzc(t11, i20, i17)) {
                        iZzb = zzjc.zzd(i20, zzd(t11, j11));
                        i18 += iZzb;
                    }
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    if (zzc(t11, i20, i17)) {
                        iZzb = zzjc.zzg(i20, zzd(t11, j11));
                        i18 += iZzb;
                    }
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    if (zzc(t11, i20, i17)) {
                        iZzb = zzjc.zzg(i20, zzc(t11, j11));
                        i18 += iZzb;
                    }
                    break;
                case AD_VISIBILITY_VALUE:
                    if (zzc(t11, i20, i17)) {
                        iZzb = zzjc.zzc(i20, 0L);
                        i18 += iZzb;
                    }
                    break;
                case 57:
                    if (zzc(t11, i20, i17)) {
                        iZzh = zzjc.zzf(i20, 0);
                        i18 += iZzh;
                    }
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    if (zzc(t11, i20, i17)) {
                        iZzb = zzjc.zzb(i20, true);
                        i18 += iZzb;
                    }
                    break;
                case 59:
                    if (zzc(t11, i20, i17)) {
                        Object object2 = unsafe.getObject(t11, j11);
                        iZzb = object2 instanceof zzik ? zzjc.zzc(i20, (zzik) object2) : zzjc.zzb(i20, (String) object2);
                        i18 += iZzb;
                    }
                    break;
                case 60:
                    if (zzc(t11, i20, i17)) {
                        iZzb = zzlw.zza(i20, unsafe.getObject(t11, j11), (zzlu<?>) zze(i17));
                        i18 += iZzb;
                    }
                    break;
                case 61:
                    if (zzc(t11, i20, i17)) {
                        iZzb = zzjc.zzc(i20, (zzik) unsafe.getObject(t11, j11));
                        i18 += iZzb;
                    }
                    break;
                case 62:
                    if (zzc(t11, i20, i17)) {
                        iZzb = zzjc.zzj(i20, zzc(t11, j11));
                        i18 += iZzb;
                    }
                    break;
                case 63:
                    if (zzc(t11, i20, i17)) {
                        iZzb = zzjc.zze(i20, zzc(t11, j11));
                        i18 += iZzb;
                    }
                    break;
                case 64:
                    if (zzc(t11, i20, i17)) {
                        iZzh = zzjc.zzh(i20, 0);
                        i18 += iZzh;
                    }
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                    if (zzc(t11, i20, i17)) {
                        iZzb = zzjc.zze(i20, 0L);
                        i18 += iZzb;
                    }
                    break;
                case 66:
                    if (zzc(t11, i20, i17)) {
                        iZzb = zzjc.zzi(i20, zzc(t11, j11));
                        i18 += iZzb;
                    }
                    break;
                case 67:
                    if (zzc(t11, i20, i17)) {
                        iZzb = zzjc.zzf(i20, zzd(t11, j11));
                        i18 += iZzb;
                    }
                    break;
                case 68:
                    if (zzc(t11, i20, i17)) {
                        iZzb = zzjc.zzb(i20, (zzlc) unsafe.getObject(t11, j11), zze(i17));
                        i18 += iZzb;
                    }
                    break;
                default:
                    break;
            }
            i17 += 3;
            i15 = i11;
            i16 = i12;
            i14 = 1048575;
        }
        int iZza2 = 0;
        zzmk<?, ?> zzmkVar = this.zzp;
        int iZza3 = i18 + zzmkVar.zza(zzmkVar.zzd(t11));
        if (!this.zzh) {
            return iZza3;
        }
        zzjm<T> zzjmVarZza = this.zzq.zza(t11);
        int iZza4 = zzjmVarZza.zza.zza();
        for (int i23 = 0; i23 < iZza4; i23++) {
            Map.Entry entryZza = zzjmVarZza.zza.zza(i23);
            iZza2 += zzjm.zza((zzjo<?>) entryZza.getKey(), entryZza.getValue());
        }
        for (Map.Entry entry : zzjmVarZza.zza.zzb()) {
            iZza2 += zzjm.zza((zzjo<?>) entry.getKey(), entry.getValue());
        }
        return iZza3 + iZza2;
    }

    /* JADX WARN: Code duplicated, block: B:384:0x08b5 A[PHI: r2 r7 r8 r11 r12 r15
  0x08b5: PHI (r2v68 int) = (r2v29 int), (r2v30 int), (r2v31 int), (r2v41 int), (r2v46 int), (r2v61 int), (r2v69 int) binds: [B:378:0x0894, B:358:0x0834, B:338:0x07d3, B:255:0x0644, B:202:0x054c, B:148:0x0438, B:124:0x039f] A[DONT_GENERATE, DONT_INLINE]
  0x08b5: PHI (r7v134 sun.misc.Unsafe) = 
  (r7v56 sun.misc.Unsafe)
  (r7v57 sun.misc.Unsafe)
  (r7v58 sun.misc.Unsafe)
  (r7v84 sun.misc.Unsafe)
  (r7v107 sun.misc.Unsafe)
  (r7v121 sun.misc.Unsafe)
  (r7v135 sun.misc.Unsafe)
 binds: [B:378:0x0894, B:358:0x0834, B:338:0x07d3, B:255:0x0644, B:202:0x054c, B:148:0x0438, B:124:0x039f] A[DONT_GENERATE, DONT_INLINE]
  0x08b5: PHI (r8v82 int) = (r8v23 int), (r8v24 int), (r8v25 int), (r8v50 int), (r8v60 int), (r2v25 int), (r8v83 int) binds: [B:378:0x0894, B:358:0x0834, B:338:0x07d3, B:255:0x0644, B:202:0x054c, B:148:0x0438, B:124:0x039f] A[DONT_GENERATE, DONT_INLINE]
  0x08b5: PHI (r11v53 com.google.android.gms.internal.measurement.zzij) = 
  (r11v16 com.google.android.gms.internal.measurement.zzij)
  (r11v17 com.google.android.gms.internal.measurement.zzij)
  (r11v18 com.google.android.gms.internal.measurement.zzij)
  (r11v28 com.google.android.gms.internal.measurement.zzij)
  (r11v38 com.google.android.gms.internal.measurement.zzij)
  (r0v66 com.google.android.gms.internal.measurement.zzij)
  (r11v54 com.google.android.gms.internal.measurement.zzij)
 binds: [B:378:0x0894, B:358:0x0834, B:338:0x07d3, B:255:0x0644, B:202:0x054c, B:148:0x0438, B:124:0x039f] A[DONT_GENERATE, DONT_INLINE]
  0x08b5: PHI (r12v73 int) = (r12v46 int), (r12v47 int), (r12v48 int), (r12v51 int), (r12v57 int), (r12v62 int), (r12v74 int) binds: [B:378:0x0894, B:358:0x0834, B:338:0x07d3, B:255:0x0644, B:202:0x054c, B:148:0x0438, B:124:0x039f] A[DONT_GENERATE, DONT_INLINE]
  0x08b5: PHI (r15v36 int) = (r15v8 int), (r15v9 int), (r15v10 int), (r15v16 int), (r15v20 int), (r15v28 int), (r15v37 int) binds: [B:378:0x0894, B:358:0x0834, B:338:0x07d3, B:255:0x0644, B:202:0x054c, B:148:0x0438, B:124:0x039f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:509:0x0c83 A[PHI: r4 r7 r12 r13 r19
  0x0c83: PHI (r4v118 int) = 
  (r4v88 int)
  (r4v89 int)
  (r4v90 int)
  (r4v91 int)
  (r4v92 int)
  (r4v94 int)
  (r4v95 int)
  (r4v97 int)
  (r4v105 int)
  (r4v110 int)
  (r4v113 int)
  (r4v119 int)
 binds: [B:507:0x0c6f, B:504:0x0c4e, B:501:0x0c2d, B:498:0x0c0d, B:495:0x0bee, B:491:0x0bcc, B:484:0x0ba3, B:469:0x0b65, B:449:0x0aba, B:445:0x0a93, B:440:0x0a5b, B:436:0x0a1f] A[DONT_GENERATE, DONT_INLINE]
  0x0c83: PHI (r7v163 int) = 
  (r7v140 int)
  (r7v141 int)
  (r7v142 int)
  (r7v143 int)
  (r7v144 int)
  (r7v146 int)
  (r7v147 int)
  (r7v149 int)
  (r7v153 int)
  (r7v155 int)
  (r7v158 int)
  (r7v164 int)
 binds: [B:507:0x0c6f, B:504:0x0c4e, B:501:0x0c2d, B:498:0x0c0d, B:495:0x0bee, B:491:0x0bcc, B:484:0x0ba3, B:469:0x0b65, B:449:0x0aba, B:445:0x0a93, B:440:0x0a5b, B:436:0x0a1f] A[DONT_GENERATE, DONT_INLINE]
  0x0c83: PHI (r12v115 com.google.android.gms.internal.measurement.zzij) = 
  (r12v92 com.google.android.gms.internal.measurement.zzij)
  (r12v93 com.google.android.gms.internal.measurement.zzij)
  (r12v94 com.google.android.gms.internal.measurement.zzij)
  (r12v95 com.google.android.gms.internal.measurement.zzij)
  (r12v96 com.google.android.gms.internal.measurement.zzij)
  (r12v98 com.google.android.gms.internal.measurement.zzij)
  (r12v99 com.google.android.gms.internal.measurement.zzij)
  (r12v101 com.google.android.gms.internal.measurement.zzij)
  (r12v105 com.google.android.gms.internal.measurement.zzij)
  (r12v107 com.google.android.gms.internal.measurement.zzij)
  (r12v110 com.google.android.gms.internal.measurement.zzij)
  (r12v116 com.google.android.gms.internal.measurement.zzij)
 binds: [B:507:0x0c6f, B:504:0x0c4e, B:501:0x0c2d, B:498:0x0c0d, B:495:0x0bee, B:491:0x0bcc, B:484:0x0ba3, B:469:0x0b65, B:449:0x0aba, B:445:0x0a93, B:440:0x0a5b, B:436:0x0a1f] A[DONT_GENERATE, DONT_INLINE]
  0x0c83: PHI (r13v96 int) = 
  (r13v73 int)
  (r13v74 int)
  (r13v75 int)
  (r13v76 int)
  (r13v77 int)
  (r13v79 int)
  (r13v80 int)
  (r13v82 int)
  (r13v86 int)
  (r13v88 int)
  (r13v91 int)
  (r13v97 int)
 binds: [B:507:0x0c6f, B:504:0x0c4e, B:501:0x0c2d, B:498:0x0c0d, B:495:0x0bee, B:491:0x0bcc, B:484:0x0ba3, B:469:0x0b65, B:449:0x0aba, B:445:0x0a93, B:440:0x0a5b, B:436:0x0a1f] A[DONT_GENERATE, DONT_INLINE]
  0x0c83: PHI (r19v46 int) = 
  (r19v27 int)
  (r19v28 int)
  (r19v29 int)
  (r19v30 int)
  (r19v31 int)
  (r19v33 int)
  (r19v34 int)
  (r19v36 int)
  (r19v40 int)
  (r19v41 int)
  (r19v43 int)
  (r19v47 int)
 binds: [B:507:0x0c6f, B:504:0x0c4e, B:501:0x0c2d, B:498:0x0c0d, B:495:0x0bee, B:491:0x0bcc, B:484:0x0ba3, B:469:0x0b65, B:449:0x0aba, B:445:0x0a93, B:440:0x0a5b, B:436:0x0a1f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:582:0x08c7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:588:0x0d03 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:634:0x08b8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:640:0x08c4 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    final int zza(T t11, byte[] bArr, int i11, int i12, int i13, zzij zzijVar) throws IOException {
        int i14;
        Unsafe unsafe;
        int i15;
        zzlg<T> zzlgVar;
        int i16;
        int i17;
        int iZza;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        zzij zzijVar2;
        zzij zzijVar3;
        Unsafe unsafe2;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        zzij zzijVar4;
        int i30;
        int i31;
        int i32;
        Unsafe unsafe3;
        zzij zzijVar5;
        int i33;
        int i34;
        int i35;
        Unsafe unsafe4;
        char c11;
        int iZza2;
        int i36;
        Object[] objArr;
        char c12;
        int iZza3;
        int i37;
        int i38;
        char c13;
        int iZzc;
        int iZzc2;
        int i39;
        int i40;
        Unsafe unsafe5;
        int i41;
        int iZzd;
        int i42;
        int i43;
        int i44;
        zzlg<T> zzlgVar2 = this;
        T t12 = t11;
        byte[] bArr2 = bArr;
        i12 = i12;
        zzij zzijVar6 = zzijVar;
        zzf(t11);
        Unsafe unsafe6 = zzb;
        int i45 = -1;
        int iZza4 = i11;
        int i46 = -1;
        int iZza5 = 0;
        int i47 = 0;
        int i48 = 0;
        int i49 = 1048575;
        while (true) {
            if (iZza4 < i12) {
                int i50 = iZza4 + 1;
                int i51 = bArr2[iZza4];
                if (i51 < 0) {
                    iZza = zzig.zza(i51, bArr2, i50, zzijVar6);
                    i51 = zzijVar6.zza;
                } else {
                    iZza = i50;
                }
                int i52 = i51 >>> 3;
                int i53 = i51 & 7;
                iZza5 = i52 > i46 ? (i52 < zzlgVar2.zze || i52 > zzlgVar2.zzf) ? i45 : zzlgVar2.zza(i52, iZza5 / 3) : zzlgVar2.zza(i52);
                if (iZza5 == i45) {
                    i18 = i51;
                    i19 = i45;
                    unsafe = unsafe6;
                    i20 = i52;
                    i21 = iZza;
                    i22 = i48;
                    i23 = i49;
                    i24 = 0;
                    i13 = i13;
                    zzijVar2 = zzijVar6;
                } else {
                    int[] iArr = zzlgVar2.zzc;
                    int i54 = iArr[iZza5 + 1];
                    int i55 = (i54 & 267386880) >>> 20;
                    int i56 = i51;
                    long j11 = i54 & 1048575;
                    if (i55 <= 17) {
                        int i57 = iArr[iZza5 + 2];
                        int i58 = 1 << (i57 >>> 20);
                        int i59 = i57 & 1048575;
                        if (i59 != i49) {
                            if (i49 != 1048575) {
                                unsafe6.putInt(t12, i49, i48);
                            }
                            i23 = i59;
                            i22 = i59 == 1048575 ? 0 : unsafe6.getInt(t12, i59);
                        } else {
                            i22 = i48;
                            i23 = i49;
                        }
                        switch (i55) {
                            case 0:
                                unsafe2 = unsafe6;
                                i25 = i52;
                                i26 = i56 == true ? 1 : 0;
                                i19 = -1;
                                zzijVar3 = zzijVar;
                                if (i53 == 1) {
                                    zzml.zza(t12, j11, zzig.zza(bArr2, iZza));
                                    iZza4 = iZza + 8;
                                    i27 = i22 | i58;
                                    i12 = i12;
                                    zzijVar6 = zzijVar3;
                                    i47 = i26;
                                    unsafe6 = unsafe2;
                                    i46 = i25;
                                    i49 = i23;
                                    i48 = i27;
                                    i45 = i19;
                                } else {
                                    i21 = iZza;
                                    unsafe = unsafe2;
                                    i20 = i25;
                                    i13 = i13;
                                    i24 = iZza5;
                                    int i60 = i26;
                                    zzijVar2 = zzijVar3;
                                    i18 = i60 == true ? 1 : 0;
                                }
                                break;
                            case 1:
                                unsafe2 = unsafe6;
                                i25 = i52;
                                i26 = i56 == true ? 1 : 0;
                                i19 = -1;
                                zzijVar3 = zzijVar;
                                if (i53 == 5) {
                                    zzml.zza((Object) t12, j11, zzig.zzb(bArr2, iZza));
                                    iZza4 = iZza + 4;
                                    i27 = i22 | i58;
                                    i12 = i12;
                                    zzijVar6 = zzijVar3;
                                    i47 = i26;
                                    unsafe6 = unsafe2;
                                    i46 = i25;
                                    i49 = i23;
                                    i48 = i27;
                                    i45 = i19;
                                } else {
                                    i21 = iZza;
                                    unsafe = unsafe2;
                                    i20 = i25;
                                    i13 = i13;
                                    i24 = iZza5;
                                    int i61 = i26;
                                    zzijVar2 = zzijVar3;
                                    i18 = i61 == true ? 1 : 0;
                                }
                                break;
                            case 2:
                            case 3:
                                unsafe2 = unsafe6;
                                i25 = i52;
                                i26 = i56 == true ? 1 : 0;
                                i19 = -1;
                                zzijVar3 = zzijVar;
                                if (i53 == 0) {
                                    int iZzd2 = zzig.zzd(bArr2, iZza, zzijVar3);
                                    unsafe2.putLong(t11, j11, zzijVar3.zzb);
                                    i12 = i12;
                                    zzijVar6 = zzijVar3;
                                    unsafe6 = unsafe2;
                                    i45 = -1;
                                    i46 = i25;
                                    i49 = i23;
                                    i48 = i22 | i58;
                                    iZza4 = iZzd2;
                                    i47 = i26 == true ? 1 : 0;
                                } else {
                                    i21 = iZza;
                                    unsafe = unsafe2;
                                    i20 = i25;
                                    i13 = i13;
                                    i24 = iZza5;
                                    int i62 = i26;
                                    zzijVar2 = zzijVar3;
                                    i18 = i62 == true ? 1 : 0;
                                }
                                break;
                            case 4:
                            case 11:
                                unsafe2 = unsafe6;
                                i25 = i52;
                                i26 = i56 == true ? 1 : 0;
                                i19 = -1;
                                zzijVar3 = zzijVar;
                                if (i53 == 0) {
                                    iZza4 = zzig.zzc(bArr2, iZza, zzijVar3);
                                    unsafe2.putInt(t12, j11, zzijVar3.zza);
                                    i27 = i22 | i58;
                                    i12 = i12;
                                    zzijVar6 = zzijVar3;
                                    i47 = i26;
                                    unsafe6 = unsafe2;
                                    i46 = i25;
                                    i49 = i23;
                                    i48 = i27;
                                    i45 = i19;
                                } else {
                                    i21 = iZza;
                                    unsafe = unsafe2;
                                    i20 = i25;
                                    i13 = i13;
                                    i24 = iZza5;
                                    int i63 = i26;
                                    zzijVar2 = zzijVar3;
                                    i18 = i63 == true ? 1 : 0;
                                }
                                break;
                            case 5:
                            case 14:
                                unsafe2 = unsafe6;
                                i25 = i52;
                                i26 = i56 == true ? 1 : 0;
                                i19 = -1;
                                zzijVar3 = zzijVar;
                                if (i53 == 1) {
                                    unsafe2.putLong(t11, j11, zzig.zzd(bArr2, iZza));
                                    iZza4 = iZza + 8;
                                    i27 = i22 | i58;
                                    i12 = i12;
                                    zzijVar6 = zzijVar3;
                                    i47 = i26;
                                    unsafe6 = unsafe2;
                                    i46 = i25;
                                    i49 = i23;
                                    i48 = i27;
                                    i45 = i19;
                                } else {
                                    i21 = iZza;
                                    unsafe = unsafe2;
                                    i20 = i25;
                                    i13 = i13;
                                    i24 = iZza5;
                                    int i64 = i26;
                                    zzijVar2 = zzijVar3;
                                    i18 = i64 == true ? 1 : 0;
                                }
                                break;
                            case 6:
                            case 13:
                                unsafe2 = unsafe6;
                                i25 = i52;
                                i26 = i56 == true ? 1 : 0;
                                i19 = -1;
                                zzijVar3 = zzijVar;
                                if (i53 == 5) {
                                    unsafe2.putInt(t12, j11, zzig.zzc(bArr2, iZza));
                                    iZza4 = iZza + 4;
                                    i27 = i22 | i58;
                                    i12 = i12;
                                    zzijVar6 = zzijVar3;
                                    i47 = i26;
                                    unsafe6 = unsafe2;
                                    i46 = i25;
                                    i49 = i23;
                                    i48 = i27;
                                    i45 = i19;
                                } else {
                                    i21 = iZza;
                                    unsafe = unsafe2;
                                    i20 = i25;
                                    i13 = i13;
                                    i24 = iZza5;
                                    int i65 = i26;
                                    zzijVar2 = zzijVar3;
                                    i18 = i65 == true ? 1 : 0;
                                }
                                break;
                            case 7:
                                unsafe2 = unsafe6;
                                i25 = i52;
                                i26 = i56 == true ? 1 : 0;
                                i19 = -1;
                                zzijVar3 = zzijVar;
                                if (i53 == 0) {
                                    iZza4 = zzig.zzd(bArr2, iZza, zzijVar3);
                                    zzml.zzc(t12, j11, zzijVar3.zzb != 0);
                                    i27 = i22 | i58;
                                    i12 = i12;
                                    zzijVar6 = zzijVar3;
                                    i47 = i26;
                                    unsafe6 = unsafe2;
                                    i46 = i25;
                                    i49 = i23;
                                    i48 = i27;
                                    i45 = i19;
                                } else {
                                    i21 = iZza;
                                    unsafe = unsafe2;
                                    i20 = i25;
                                    i13 = i13;
                                    i24 = iZza5;
                                    int i66 = i26;
                                    zzijVar2 = zzijVar3;
                                    i18 = i66 == true ? 1 : 0;
                                }
                                break;
                            case 8:
                                unsafe2 = unsafe6;
                                i25 = i52;
                                i26 = i56 == true ? 1 : 0;
                                i19 = -1;
                                zzijVar3 = zzijVar;
                                if (i53 == 2) {
                                    if (zzg(i54)) {
                                        iZza4 = zzig.zzb(bArr2, iZza, zzijVar3);
                                    } else {
                                        iZza4 = zzig.zzc(bArr2, iZza, zzijVar3);
                                        int i67 = zzijVar3.zza;
                                        if (i67 < 0) {
                                            throw zzkb.zzf();
                                        }
                                        if (i67 == 0) {
                                            zzijVar3.zzc = "";
                                        } else {
                                            zzijVar3.zzc = new String(bArr2, iZza4, i67, zzjv.zza);
                                            iZza4 += i67;
                                        }
                                    }
                                    unsafe2.putObject(t12, j11, zzijVar3.zzc);
                                    i27 = i22 | i58;
                                    i12 = i12;
                                    zzijVar6 = zzijVar3;
                                    i47 = i26;
                                    unsafe6 = unsafe2;
                                    i46 = i25;
                                    i49 = i23;
                                    i48 = i27;
                                    i45 = i19;
                                } else {
                                    i21 = iZza;
                                    unsafe = unsafe2;
                                    i20 = i25;
                                    i13 = i13;
                                    i24 = iZza5;
                                    int i68 = i26;
                                    zzijVar2 = zzijVar3;
                                    i18 = i68 == true ? 1 : 0;
                                }
                                break;
                            case 9:
                                unsafe2 = unsafe6;
                                i25 = i52;
                                i26 = i56 == true ? 1 : 0;
                                i19 = -1;
                                zzijVar3 = zzijVar;
                                if (i53 == 2) {
                                    Object objZza = zzlgVar2.zza((Object) t12, iZza5);
                                    i12 = i12;
                                    iZza4 = zzig.zza(objZza, zzlgVar2.zze(iZza5), bArr, iZza, i12, zzijVar);
                                    zzlgVar2.zza(t12, iZza5, objZza);
                                    i27 = i22 | i58;
                                    zzijVar6 = zzijVar3;
                                    i47 = i26;
                                    unsafe6 = unsafe2;
                                    i46 = i25;
                                    i49 = i23;
                                    i48 = i27;
                                    i45 = i19;
                                } else {
                                    i21 = iZza;
                                    unsafe = unsafe2;
                                    i20 = i25;
                                    i13 = i13;
                                    i24 = iZza5;
                                    int i69 = i26;
                                    zzijVar2 = zzijVar3;
                                    i18 = i69 == true ? 1 : 0;
                                }
                                break;
                            case 10:
                                unsafe2 = unsafe6;
                                i25 = i52;
                                i26 = i56 == true ? 1 : 0;
                                i19 = -1;
                                zzijVar3 = zzijVar;
                                if (i53 == 2) {
                                    iZza4 = zzig.zza(bArr2, iZza, zzijVar3);
                                    unsafe2.putObject(t12, j11, zzijVar3.zzc);
                                    i27 = i22 | i58;
                                    i12 = i12;
                                    zzijVar6 = zzijVar3;
                                    i47 = i26;
                                    unsafe6 = unsafe2;
                                    i46 = i25;
                                    i49 = i23;
                                    i48 = i27;
                                    i45 = i19;
                                } else {
                                    i21 = iZza;
                                    unsafe = unsafe2;
                                    i20 = i25;
                                    i13 = i13;
                                    i24 = iZza5;
                                    int i610 = i26;
                                    zzijVar2 = zzijVar3;
                                    i18 = i610 == true ? 1 : 0;
                                }
                                break;
                            case 12:
                                unsafe2 = unsafe6;
                                i25 = i52;
                                i26 = i56 == true ? 1 : 0;
                                i19 = -1;
                                zzijVar3 = zzijVar;
                                if (i53 == 0) {
                                    iZza4 = zzig.zzc(bArr2, iZza, zzijVar3);
                                    int i70 = zzijVar3.zza;
                                    zzjx zzjxVarZzd = zzlgVar2.zzd(iZza5);
                                    if ((i54 & Integer.MIN_VALUE) == 0 || zzjxVarZzd == null || zzjxVarZzd.zza(i70)) {
                                        unsafe2.putInt(t12, j11, i70);
                                        i27 = i22 | i58;
                                        i12 = i12;
                                        zzijVar6 = zzijVar3;
                                        i47 = i26;
                                        unsafe6 = unsafe2;
                                        i46 = i25;
                                        i49 = i23;
                                        i48 = i27;
                                        i45 = i19;
                                    } else {
                                        zzc(t11).zza(i26 == true ? 1 : 0, Long.valueOf(i70));
                                        i12 = i12;
                                        zzijVar6 = zzijVar3;
                                        i47 = i26 == true ? 1 : 0;
                                        unsafe6 = unsafe2;
                                        i45 = -1;
                                        i46 = i25;
                                        i48 = i22;
                                        i49 = i23;
                                    }
                                } else {
                                    i21 = iZza;
                                    unsafe = unsafe2;
                                    i20 = i25;
                                    i13 = i13;
                                    i24 = iZza5;
                                    int i611 = i26;
                                    zzijVar2 = zzijVar3;
                                    i18 = i611 == true ? 1 : 0;
                                }
                                break;
                            case 15:
                                unsafe2 = unsafe6;
                                i25 = i52;
                                i26 = i56 == true ? 1 : 0;
                                i19 = -1;
                                zzijVar3 = zzijVar;
                                if (i53 == 0) {
                                    iZza4 = zzig.zzc(bArr2, iZza, zzijVar3);
                                    unsafe2.putInt(t12, j11, zziw.zza(zzijVar3.zza));
                                    i27 = i22 | i58;
                                    i12 = i12;
                                    zzijVar6 = zzijVar3;
                                    i47 = i26;
                                    unsafe6 = unsafe2;
                                    i46 = i25;
                                    i49 = i23;
                                    i48 = i27;
                                    i45 = i19;
                                } else {
                                    i21 = iZza;
                                    unsafe = unsafe2;
                                    i20 = i25;
                                    i13 = i13;
                                    i24 = iZza5;
                                    int i612 = i26;
                                    zzijVar2 = zzijVar3;
                                    i18 = i612 == true ? 1 : 0;
                                }
                                break;
                            case 16:
                                zzijVar3 = zzijVar;
                                if (i53 == 0) {
                                    int iZzd3 = zzig.zzd(bArr2, iZza, zzijVar3);
                                    iZza5 = iZza5;
                                    unsafe6.putLong(t11, j11, zziw.zza(zzijVar3.zzb));
                                    i12 = i12;
                                    zzijVar6 = zzijVar3;
                                    i47 = i56 == true ? 1 : 0;
                                    unsafe6 = unsafe6;
                                    i45 = -1;
                                    i46 = i52;
                                    i49 = i23;
                                    i48 = i22 | i58;
                                    iZza4 = iZzd3;
                                } else {
                                    unsafe2 = unsafe6;
                                    iZza5 = iZza5;
                                    i25 = i52;
                                    i26 = i56 == true ? 1 : 0;
                                    i19 = -1;
                                    i21 = iZza;
                                    unsafe = unsafe2;
                                    i20 = i25;
                                    i13 = i13;
                                    i24 = iZza5;
                                    int i613 = i26;
                                    zzijVar2 = zzijVar3;
                                    i18 = i613 == true ? 1 : 0;
                                }
                                break;
                            case 17:
                                if (i53 != 3) {
                                    unsafe2 = unsafe6;
                                    i25 = i52;
                                    i26 = i56 == true ? 1 : 0;
                                    i19 = -1;
                                    zzijVar3 = zzijVar;
                                    i21 = iZza;
                                    unsafe = unsafe2;
                                    i20 = i25;
                                    i13 = i13;
                                    i24 = iZza5;
                                    int i614 = i26;
                                    zzijVar2 = zzijVar3;
                                    i18 = i614 == true ? 1 : 0;
                                } else {
                                    Object objZza2 = zzlgVar2.zza((Object) t12, iZza5);
                                    int iZza6 = zzig.zza(objZza2, zzlgVar2.zze(iZza5), bArr, iZza, i12, (i52 << 3) | 4, zzijVar);
                                    zzlgVar2.zza(t12, iZza5, objZza2);
                                    i48 = i22 | i58;
                                    iZza4 = iZza6;
                                    iZza5 = iZza5;
                                    i46 = i52;
                                    i47 = i56 == true ? 1 : 0;
                                    i49 = i23;
                                    i45 = -1;
                                }
                                zzijVar6 = zzijVar;
                                break;
                            default:
                                unsafe2 = unsafe6;
                                i25 = i52;
                                i26 = i56 == true ? 1 : 0;
                                i19 = -1;
                                zzijVar3 = zzijVar;
                                i21 = iZza;
                                unsafe = unsafe2;
                                i20 = i25;
                                i13 = i13;
                                i24 = iZza5;
                                int i615 = i26;
                                zzijVar2 = zzijVar3;
                                i18 = i615 == true ? 1 : 0;
                                break;
                        }
                    } else {
                        zzij zzijVar7 = zzijVar6;
                        unsafe = unsafe6;
                        int i71 = i56 == true ? 1 : 0;
                        i19 = -1;
                        int i72 = i12;
                        if (i55 != 27) {
                            i22 = i48;
                            i23 = i49;
                            if (i55 <= 49) {
                                long j12 = i54;
                                Unsafe unsafe7 = zzb;
                                zzkc zzkcVar = (zzkc) unsafe7.getObject(t12, j11);
                                if (!zzkcVar.zzc()) {
                                    zzkc zzkcVarZza = zzkcVar.zza(zzkcVar.size() << 1);
                                    unsafe7.putObject(t12, j11, zzkcVarZza);
                                    zzkcVar = zzkcVarZza;
                                }
                                switch (i55) {
                                    case 18:
                                    case 35:
                                        i72 = i72;
                                        i30 = iZza;
                                        i31 = iZza5;
                                        i32 = i71 == true ? 1 : 0;
                                        unsafe3 = unsafe;
                                        zzijVar7 = zzijVar7;
                                        if (i53 == 2) {
                                            zzje zzjeVar = (zzje) zzkcVar;
                                            iZza4 = zzig.zzc(bArr2, i30, zzijVar7);
                                            int i73 = zzijVar7.zza;
                                            int i74 = iZza4 + i73;
                                            if (i74 > bArr2.length) {
                                                throw zzkb.zzi();
                                            }
                                            zzjeVar.zzc(zzjeVar.size() + (i73 / 8));
                                            while (iZza4 < i74) {
                                                zzjeVar.zza(zzig.zza(bArr2, iZza4));
                                                iZza4 += 8;
                                            }
                                            if (iZza4 != i74) {
                                                throw zzkb.zzi();
                                            }
                                        } else if (i53 == 1) {
                                            zzje zzjeVar2 = (zzje) zzkcVar;
                                            zzjeVar2.zza(zzig.zza(bArr2, i30));
                                            iZza4 = i30 + 8;
                                            while (iZza4 < i72) {
                                                int iZzc3 = zzig.zzc(bArr2, iZza4, zzijVar7);
                                                if (i32 == zzijVar7.zza) {
                                                    zzjeVar2.zza(zzig.zza(bArr2, iZzc3));
                                                    iZza4 = iZzc3 + 8;
                                                }
                                            }
                                        } else {
                                            iZza4 = i30;
                                        }
                                        if (iZza4 == i30) {
                                            t12 = t11;
                                            i13 = i13;
                                            unsafe = unsafe3;
                                            i18 = i32;
                                            i20 = i52;
                                            i24 = i31;
                                            zzijVar2 = zzijVar7;
                                            i21 = iZza4;
                                        } else {
                                            t12 = t11;
                                            i12 = i72;
                                            zzijVar6 = zzijVar7;
                                            i47 = i32;
                                            i45 = -1;
                                            i48 = i22;
                                            i49 = i23;
                                            iZza5 = i31;
                                            unsafe6 = unsafe3;
                                            i46 = i52;
                                        }
                                        break;
                                    case 19:
                                    case 36:
                                        i72 = i72;
                                        i30 = iZza;
                                        i31 = iZza5;
                                        i32 = i71 == true ? 1 : 0;
                                        unsafe3 = unsafe;
                                        zzijVar7 = zzijVar7;
                                        if (i53 == 2) {
                                            zzjs zzjsVar = (zzjs) zzkcVar;
                                            iZza4 = zzig.zzc(bArr2, i30, zzijVar7);
                                            int i75 = zzijVar7.zza;
                                            int i76 = iZza4 + i75;
                                            if (i76 > bArr2.length) {
                                                throw zzkb.zzi();
                                            }
                                            zzjsVar.zzc(zzjsVar.size() + (i75 / 4));
                                            while (iZza4 < i76) {
                                                zzjsVar.zza(zzig.zzb(bArr2, iZza4));
                                                iZza4 += 4;
                                            }
                                            if (iZza4 != i76) {
                                                throw zzkb.zzi();
                                            }
                                        } else if (i53 == 5) {
                                            zzjs zzjsVar2 = (zzjs) zzkcVar;
                                            zzjsVar2.zza(zzig.zzb(bArr2, i30));
                                            iZza4 = i30 + 4;
                                            while (iZza4 < i72) {
                                                int iZzc4 = zzig.zzc(bArr2, iZza4, zzijVar7);
                                                if (i32 == zzijVar7.zza) {
                                                    zzjsVar2.zza(zzig.zzb(bArr2, iZzc4));
                                                    iZza4 = iZzc4 + 4;
                                                }
                                            }
                                        } else {
                                            iZza4 = i30;
                                        }
                                        if (iZza4 == i30) {
                                            t12 = t11;
                                            i13 = i13;
                                            unsafe = unsafe3;
                                            i18 = i32;
                                            i20 = i52;
                                            i24 = i31;
                                            zzijVar2 = zzijVar7;
                                            i21 = iZza4;
                                        } else {
                                            t12 = t11;
                                            i12 = i72;
                                            zzijVar6 = zzijVar7;
                                            i47 = i32;
                                            i45 = -1;
                                            i48 = i22;
                                            i49 = i23;
                                            iZza5 = i31;
                                            unsafe6 = unsafe3;
                                            i46 = i52;
                                        }
                                        break;
                                    case 20:
                                    case 21:
                                    case 37:
                                    case 38:
                                        i72 = i72;
                                        i30 = iZza;
                                        i31 = iZza5;
                                        i32 = i71 == true ? 1 : 0;
                                        unsafe3 = unsafe;
                                        zzijVar7 = zzijVar7;
                                        if (i53 == 2) {
                                            zzkn zzknVar = (zzkn) zzkcVar;
                                            iZza4 = zzig.zzc(bArr2, i30, zzijVar7);
                                            int i77 = zzijVar7.zza + iZza4;
                                            while (iZza4 < i77) {
                                                iZza4 = zzig.zzd(bArr2, iZza4, zzijVar7);
                                                zzknVar.zza(zzijVar7.zzb);
                                            }
                                            if (iZza4 != i77) {
                                                throw zzkb.zzi();
                                            }
                                        } else if (i53 == 0) {
                                            zzkn zzknVar2 = (zzkn) zzkcVar;
                                            iZza4 = zzig.zzd(bArr2, i30, zzijVar7);
                                            zzknVar2.zza(zzijVar7.zzb);
                                            while (iZza4 < i72) {
                                                int iZzc5 = zzig.zzc(bArr2, iZza4, zzijVar7);
                                                if (i32 == zzijVar7.zza) {
                                                    iZza4 = zzig.zzd(bArr2, iZzc5, zzijVar7);
                                                    zzknVar2.zza(zzijVar7.zzb);
                                                }
                                            }
                                        } else {
                                            iZza4 = i30;
                                        }
                                        if (iZza4 == i30) {
                                            t12 = t11;
                                            i13 = i13;
                                            unsafe = unsafe3;
                                            i18 = i32;
                                            i20 = i52;
                                            i24 = i31;
                                            zzijVar2 = zzijVar7;
                                            i21 = iZza4;
                                        } else {
                                            t12 = t11;
                                            i12 = i72;
                                            zzijVar6 = zzijVar7;
                                            i47 = i32;
                                            i45 = -1;
                                            i48 = i22;
                                            i49 = i23;
                                            iZza5 = i31;
                                            unsafe6 = unsafe3;
                                            i46 = i52;
                                        }
                                        break;
                                    case 22:
                                    case NOTIFICATION_REDIRECT_VALUE:
                                    case 39:
                                    case 43:
                                        zzijVar5 = zzijVar7;
                                        i33 = i72;
                                        i30 = iZza;
                                        i34 = iZza5;
                                        i35 = i71 == true ? 1 : 0;
                                        unsafe4 = unsafe;
                                        c11 = 65535;
                                        if (i53 == 2) {
                                            iZza2 = zzig.zza(bArr2, i30, (zzkc<?>) zzkcVar, zzijVar5);
                                            i32 = i35;
                                            zzijVar7 = zzijVar5;
                                            i72 = i33;
                                            iZza4 = iZza2;
                                            unsafe3 = unsafe4;
                                            i31 = i34;
                                        } else if (i53 == 0) {
                                            i32 = i35 == true ? 1 : 0;
                                            zzijVar7 = zzijVar5;
                                            unsafe3 = unsafe4;
                                            i72 = i33;
                                            iZza4 = zzig.zza(i35 == true ? 1 : 0, bArr, i30, i12, (zzkc<?>) zzkcVar, zzijVar);
                                            i31 = i34;
                                        } else {
                                            i32 = i35;
                                            zzijVar7 = zzijVar5;
                                            unsafe3 = unsafe4;
                                            i72 = i33;
                                            i31 = i34;
                                            iZza4 = i30;
                                        }
                                        if (iZza4 == i30) {
                                            t12 = t11;
                                            i13 = i13;
                                            unsafe = unsafe3;
                                            i18 = i32;
                                            i20 = i52;
                                            i24 = i31;
                                            zzijVar2 = zzijVar7;
                                            i21 = iZza4;
                                        } else {
                                            t12 = t11;
                                            i12 = i72;
                                            zzijVar6 = zzijVar7;
                                            i47 = i32;
                                            i45 = -1;
                                            i48 = i22;
                                            i49 = i23;
                                            iZza5 = i31;
                                            unsafe6 = unsafe3;
                                            i46 = i52;
                                        }
                                        break;
                                    case 23:
                                    case 32:
                                    case 40:
                                    case 46:
                                        zzijVar5 = zzijVar7;
                                        i33 = i72;
                                        i30 = iZza;
                                        i34 = iZza5;
                                        i35 = i71 == true ? 1 : 0;
                                        unsafe4 = unsafe;
                                        c11 = 65535;
                                        if (i53 != 2) {
                                            if (i53 == 1) {
                                                zzkn zzknVar3 = (zzkn) zzkcVar;
                                                zzknVar3.zza(zzig.zzd(bArr2, i30));
                                                i36 = i30 + 8;
                                                while (i36 < i33) {
                                                    int iZzc6 = zzig.zzc(bArr2, i36, zzijVar5);
                                                    if (i35 != zzijVar5.zza) {
                                                        i32 = i35;
                                                        unsafe3 = unsafe4;
                                                        i72 = i33;
                                                        i31 = i34;
                                                        iZza4 = i36;
                                                        zzijVar7 = zzijVar5;
                                                        if (iZza4 == i30) {
                                                            t12 = t11;
                                                            i13 = i13;
                                                            unsafe = unsafe3;
                                                            i18 = i32;
                                                            i20 = i52;
                                                            i24 = i31;
                                                            zzijVar2 = zzijVar7;
                                                            i21 = iZza4;
                                                        } else {
                                                            t12 = t11;
                                                            i12 = i72;
                                                            zzijVar6 = zzijVar7;
                                                            i47 = i32;
                                                            i45 = -1;
                                                            i48 = i22;
                                                            i49 = i23;
                                                            iZza5 = i31;
                                                            unsafe6 = unsafe3;
                                                            i46 = i52;
                                                        }
                                                    } else {
                                                        zzknVar3.zza(zzig.zzd(bArr2, iZzc6));
                                                        i36 = iZzc6 + 8;
                                                    }
                                                    break;
                                                }
                                                i32 = i35;
                                                unsafe3 = unsafe4;
                                                i72 = i33;
                                                i31 = i34;
                                                iZza4 = i36;
                                                zzijVar7 = zzijVar5;
                                                if (iZza4 == i30) {
                                                    t12 = t11;
                                                    i13 = i13;
                                                    unsafe = unsafe3;
                                                    i18 = i32;
                                                    i20 = i52;
                                                    i24 = i31;
                                                    zzijVar2 = zzijVar7;
                                                    i21 = iZza4;
                                                } else {
                                                    t12 = t11;
                                                    i12 = i72;
                                                    zzijVar6 = zzijVar7;
                                                    i47 = i32;
                                                    i45 = -1;
                                                    i48 = i22;
                                                    i49 = i23;
                                                    iZza5 = i31;
                                                    unsafe6 = unsafe3;
                                                    i46 = i52;
                                                }
                                            }
                                            i32 = i35;
                                            zzijVar7 = zzijVar5;
                                            unsafe3 = unsafe4;
                                            i72 = i33;
                                            i31 = i34;
                                            iZza4 = i30;
                                            if (iZza4 == i30) {
                                                t12 = t11;
                                                i13 = i13;
                                                unsafe = unsafe3;
                                                i18 = i32;
                                                i20 = i52;
                                                i24 = i31;
                                                zzijVar2 = zzijVar7;
                                                i21 = iZza4;
                                            } else {
                                                t12 = t11;
                                                i12 = i72;
                                                zzijVar6 = zzijVar7;
                                                i47 = i32;
                                                i45 = -1;
                                                i48 = i22;
                                                i49 = i23;
                                                iZza5 = i31;
                                                unsafe6 = unsafe3;
                                                i46 = i52;
                                            }
                                            break;
                                        } else {
                                            zzkn zzknVar4 = (zzkn) zzkcVar;
                                            iZza2 = zzig.zzc(bArr2, i30, zzijVar5);
                                            int i78 = zzijVar5.zza;
                                            int i79 = iZza2 + i78;
                                            if (i79 > bArr2.length) {
                                                throw zzkb.zzi();
                                            }
                                            zzknVar4.zzd(zzknVar4.size() + (i78 / 8));
                                            while (iZza2 < i79) {
                                                zzknVar4.zza(zzig.zzd(bArr2, iZza2));
                                                iZza2 += 8;
                                            }
                                            if (iZza2 != i79) {
                                                throw zzkb.zzi();
                                            }
                                            i32 = i35;
                                            zzijVar7 = zzijVar5;
                                            i72 = i33;
                                            iZza4 = iZza2;
                                            unsafe3 = unsafe4;
                                            i31 = i34;
                                            if (iZza4 == i30) {
                                                t12 = t11;
                                                i13 = i13;
                                                unsafe = unsafe3;
                                                i18 = i32;
                                                i20 = i52;
                                                i24 = i31;
                                                zzijVar2 = zzijVar7;
                                                i21 = iZza4;
                                            } else {
                                                t12 = t11;
                                                i12 = i72;
                                                zzijVar6 = zzijVar7;
                                                i47 = i32;
                                                i45 = -1;
                                                i48 = i22;
                                                i49 = i23;
                                                iZza5 = i31;
                                                unsafe6 = unsafe3;
                                                i46 = i52;
                                            }
                                        }
                                        break;
                                    case 24:
                                    case TEMPLATE_HTML_SIZE_VALUE:
                                    case 41:
                                    case 45:
                                        zzijVar5 = zzijVar7;
                                        i33 = i72;
                                        i30 = iZza;
                                        i34 = iZza5;
                                        i35 = i71 == true ? 1 : 0;
                                        unsafe4 = unsafe;
                                        c11 = 65535;
                                        if (i53 != 2) {
                                            if (i53 == 5) {
                                                zzjw zzjwVar = (zzjw) zzkcVar;
                                                zzjwVar.zzd(zzig.zzc(bArr2, i30));
                                                i36 = i30 + 4;
                                                while (i36 < i33) {
                                                    int iZzc7 = zzig.zzc(bArr2, i36, zzijVar5);
                                                    if (i35 != zzijVar5.zza) {
                                                        i32 = i35;
                                                        unsafe3 = unsafe4;
                                                        i72 = i33;
                                                        i31 = i34;
                                                        iZza4 = i36;
                                                        zzijVar7 = zzijVar5;
                                                        if (iZza4 == i30) {
                                                            t12 = t11;
                                                            i13 = i13;
                                                            unsafe = unsafe3;
                                                            i18 = i32;
                                                            i20 = i52;
                                                            i24 = i31;
                                                            zzijVar2 = zzijVar7;
                                                            i21 = iZza4;
                                                        } else {
                                                            t12 = t11;
                                                            i12 = i72;
                                                            zzijVar6 = zzijVar7;
                                                            i47 = i32;
                                                            i45 = -1;
                                                            i48 = i22;
                                                            i49 = i23;
                                                            iZza5 = i31;
                                                            unsafe6 = unsafe3;
                                                            i46 = i52;
                                                        }
                                                    } else {
                                                        zzjwVar.zzd(zzig.zzc(bArr2, iZzc7));
                                                        i36 = iZzc7 + 4;
                                                    }
                                                    break;
                                                }
                                                i32 = i35;
                                                unsafe3 = unsafe4;
                                                i72 = i33;
                                                i31 = i34;
                                                iZza4 = i36;
                                                zzijVar7 = zzijVar5;
                                                if (iZza4 == i30) {
                                                    t12 = t11;
                                                    i13 = i13;
                                                    unsafe = unsafe3;
                                                    i18 = i32;
                                                    i20 = i52;
                                                    i24 = i31;
                                                    zzijVar2 = zzijVar7;
                                                    i21 = iZza4;
                                                } else {
                                                    t12 = t11;
                                                    i12 = i72;
                                                    zzijVar6 = zzijVar7;
                                                    i47 = i32;
                                                    i45 = -1;
                                                    i48 = i22;
                                                    i49 = i23;
                                                    iZza5 = i31;
                                                    unsafe6 = unsafe3;
                                                    i46 = i52;
                                                }
                                            }
                                            i32 = i35;
                                            zzijVar7 = zzijVar5;
                                            unsafe3 = unsafe4;
                                            i72 = i33;
                                            i31 = i34;
                                            iZza4 = i30;
                                            if (iZza4 == i30) {
                                                t12 = t11;
                                                i13 = i13;
                                                unsafe = unsafe3;
                                                i18 = i32;
                                                i20 = i52;
                                                i24 = i31;
                                                zzijVar2 = zzijVar7;
                                                i21 = iZza4;
                                            } else {
                                                t12 = t11;
                                                i12 = i72;
                                                zzijVar6 = zzijVar7;
                                                i47 = i32;
                                                i45 = -1;
                                                i48 = i22;
                                                i49 = i23;
                                                iZza5 = i31;
                                                unsafe6 = unsafe3;
                                                i46 = i52;
                                            }
                                            break;
                                        } else {
                                            zzjw zzjwVar2 = (zzjw) zzkcVar;
                                            iZza2 = zzig.zzc(bArr2, i30, zzijVar5);
                                            int i80 = zzijVar5.zza;
                                            int i81 = iZza2 + i80;
                                            if (i81 > bArr2.length) {
                                                throw zzkb.zzi();
                                            }
                                            zzjwVar2.zze(zzjwVar2.size() + (i80 / 4));
                                            while (iZza2 < i81) {
                                                zzjwVar2.zzd(zzig.zzc(bArr2, iZza2));
                                                iZza2 += 4;
                                            }
                                            if (iZza2 != i81) {
                                                throw zzkb.zzi();
                                            }
                                            i32 = i35;
                                            zzijVar7 = zzijVar5;
                                            i72 = i33;
                                            iZza4 = iZza2;
                                            unsafe3 = unsafe4;
                                            i31 = i34;
                                            if (iZza4 == i30) {
                                                t12 = t11;
                                                i13 = i13;
                                                unsafe = unsafe3;
                                                i18 = i32;
                                                i20 = i52;
                                                i24 = i31;
                                                zzijVar2 = zzijVar7;
                                                i21 = iZza4;
                                            } else {
                                                t12 = t11;
                                                i12 = i72;
                                                zzijVar6 = zzijVar7;
                                                i47 = i32;
                                                i45 = -1;
                                                i48 = i22;
                                                i49 = i23;
                                                iZza5 = i31;
                                                unsafe6 = unsafe3;
                                                i46 = i52;
                                            }
                                        }
                                        break;
                                    case 25:
                                    case 42:
                                        zzijVar5 = zzijVar7;
                                        i33 = i72;
                                        i30 = iZza;
                                        i34 = iZza5;
                                        i35 = i71 == true ? 1 : 0;
                                        unsafe4 = unsafe;
                                        c11 = 65535;
                                        if (i53 != 2) {
                                            if (i53 == 0) {
                                                zzii zziiVar = (zzii) zzkcVar;
                                                iZza2 = zzig.zzd(bArr2, i30, zzijVar5);
                                                zziiVar.zza(zzijVar5.zzb != 0);
                                                while (iZza2 < i33) {
                                                    int iZzc8 = zzig.zzc(bArr2, iZza2, zzijVar5);
                                                    if (i35 == zzijVar5.zza) {
                                                        iZza2 = zzig.zzd(bArr2, iZzc8, zzijVar5);
                                                        zziiVar.zza(zzijVar5.zzb != 0);
                                                    }
                                                }
                                            }
                                            i32 = i35;
                                            zzijVar7 = zzijVar5;
                                            unsafe3 = unsafe4;
                                            i72 = i33;
                                            i31 = i34;
                                            iZza4 = i30;
                                            if (iZza4 == i30) {
                                                t12 = t11;
                                                i13 = i13;
                                                unsafe = unsafe3;
                                                i18 = i32;
                                                i20 = i52;
                                                i24 = i31;
                                                zzijVar2 = zzijVar7;
                                                i21 = iZza4;
                                            } else {
                                                t12 = t11;
                                                i12 = i72;
                                                zzijVar6 = zzijVar7;
                                                i47 = i32;
                                                i45 = -1;
                                                i48 = i22;
                                                i49 = i23;
                                                iZza5 = i31;
                                                unsafe6 = unsafe3;
                                                i46 = i52;
                                            }
                                        } else {
                                            zzii zziiVar2 = (zzii) zzkcVar;
                                            iZza2 = zzig.zzc(bArr2, i30, zzijVar5);
                                            int i82 = zzijVar5.zza + iZza2;
                                            while (iZza2 < i82) {
                                                iZza2 = zzig.zzd(bArr2, iZza2, zzijVar5);
                                                zziiVar2.zza(zzijVar5.zzb != 0);
                                            }
                                            if (iZza2 != i82) {
                                                throw zzkb.zzi();
                                            }
                                        }
                                        i32 = i35;
                                        zzijVar7 = zzijVar5;
                                        i72 = i33;
                                        iZza4 = iZza2;
                                        unsafe3 = unsafe4;
                                        i31 = i34;
                                        if (iZza4 == i30) {
                                            t12 = t11;
                                            i13 = i13;
                                            unsafe = unsafe3;
                                            i18 = i32;
                                            i20 = i52;
                                            i24 = i31;
                                            zzijVar2 = zzijVar7;
                                            i21 = iZza4;
                                        } else {
                                            t12 = t11;
                                            i12 = i72;
                                            zzijVar6 = zzijVar7;
                                            i47 = i32;
                                            i45 = -1;
                                            i48 = i22;
                                            i49 = i23;
                                            iZza5 = i31;
                                            unsafe6 = unsafe3;
                                            i46 = i52;
                                        }
                                        break;
                                    case 26:
                                        zzijVar5 = zzijVar7;
                                        i33 = i72;
                                        i30 = iZza;
                                        i34 = iZza5;
                                        i35 = i71 == true ? 1 : 0;
                                        unsafe4 = unsafe;
                                        c11 = 65535;
                                        if (i53 == 2) {
                                            if ((j12 & 536870912) == 0) {
                                                iZza2 = zzig.zzc(bArr2, i30, zzijVar5);
                                                int i83 = zzijVar5.zza;
                                                if (i83 < 0) {
                                                    throw zzkb.zzf();
                                                }
                                                if (i83 == 0) {
                                                    objArr = "";
                                                    zzkcVar.add(objArr);
                                                } else {
                                                    objArr = "";
                                                    zzkcVar.add(new String(bArr2, iZza2, i83, zzjv.zza));
                                                    iZza2 += i83;
                                                }
                                                while (iZza2 < i33) {
                                                    int iZzc9 = zzig.zzc(bArr2, iZza2, zzijVar5);
                                                    if (i35 == zzijVar5.zza) {
                                                        iZza2 = zzig.zzc(bArr2, iZzc9, zzijVar5);
                                                        int i84 = zzijVar5.zza;
                                                        if (i84 < 0) {
                                                            throw zzkb.zzf();
                                                        }
                                                        if (i84 == 0) {
                                                            zzkcVar.add(objArr);
                                                        } else {
                                                            zzkcVar.add(new String(bArr2, iZza2, i84, zzjv.zza));
                                                            iZza2 += i84;
                                                        }
                                                    }
                                                }
                                            } else {
                                                iZza2 = zzig.zzc(bArr2, i30, zzijVar5);
                                                int i85 = zzijVar5.zza;
                                                if (i85 < 0) {
                                                    throw zzkb.zzf();
                                                }
                                                if (i85 == 0) {
                                                    zzkcVar.add("");
                                                } else {
                                                    int i86 = iZza2 + i85;
                                                    if (!zzmp.zzc(bArr2, iZza2, i86)) {
                                                        throw zzkb.zzd();
                                                    }
                                                    zzkcVar.add(new String(bArr2, iZza2, i85, zzjv.zza));
                                                    iZza2 = i86;
                                                }
                                                while (iZza2 < i33) {
                                                    int iZzc10 = zzig.zzc(bArr2, iZza2, zzijVar5);
                                                    if (i35 == zzijVar5.zza) {
                                                        iZza2 = zzig.zzc(bArr2, iZzc10, zzijVar5);
                                                        int i87 = zzijVar5.zza;
                                                        if (i87 < 0) {
                                                            throw zzkb.zzf();
                                                        }
                                                        if (i87 == 0) {
                                                            zzkcVar.add("");
                                                        } else {
                                                            int i88 = iZza2 + i87;
                                                            if (!zzmp.zzc(bArr2, iZza2, i88)) {
                                                                throw zzkb.zzd();
                                                            }
                                                            zzkcVar.add(new String(bArr2, iZza2, i87, zzjv.zza));
                                                            iZza2 = i88;
                                                        }
                                                    }
                                                }
                                            }
                                            i32 = i35;
                                            zzijVar7 = zzijVar5;
                                            i72 = i33;
                                            iZza4 = iZza2;
                                            unsafe3 = unsafe4;
                                            i31 = i34;
                                            if (iZza4 == i30) {
                                                t12 = t11;
                                                i13 = i13;
                                                unsafe = unsafe3;
                                                i18 = i32;
                                                i20 = i52;
                                                i24 = i31;
                                                zzijVar2 = zzijVar7;
                                                i21 = iZza4;
                                            } else {
                                                t12 = t11;
                                                i12 = i72;
                                                zzijVar6 = zzijVar7;
                                                i47 = i32;
                                                i45 = -1;
                                                i48 = i22;
                                                i49 = i23;
                                                iZza5 = i31;
                                                unsafe6 = unsafe3;
                                                i46 = i52;
                                            }
                                        }
                                        i32 = i35;
                                        zzijVar7 = zzijVar5;
                                        unsafe3 = unsafe4;
                                        i72 = i33;
                                        i31 = i34;
                                        iZza4 = i30;
                                        if (iZza4 == i30) {
                                            t12 = t11;
                                            i13 = i13;
                                            unsafe = unsafe3;
                                            i18 = i32;
                                            i20 = i52;
                                            i24 = i31;
                                            zzijVar2 = zzijVar7;
                                            i21 = iZza4;
                                        } else {
                                            t12 = t11;
                                            i12 = i72;
                                            zzijVar6 = zzijVar7;
                                            i47 = i32;
                                            i45 = -1;
                                            i48 = i22;
                                            i49 = i23;
                                            iZza5 = i31;
                                            unsafe6 = unsafe3;
                                            i46 = i52;
                                        }
                                        break;
                                    case 27:
                                        i72 = i72;
                                        i30 = iZza;
                                        i34 = iZza5;
                                        i32 = i71 == true ? 1 : 0;
                                        unsafe = unsafe;
                                        c12 = 65535;
                                        zzijVar7 = zzijVar7;
                                        if (i53 == 2) {
                                            zzlu zzluVarZze = zzlgVar2.zze(i34);
                                            c11 = 65535;
                                            i33 = i72;
                                            unsafe4 = unsafe;
                                            zzijVar5 = zzijVar7;
                                            i35 = i32 == true ? 1 : 0;
                                            iZza2 = zzig.zzb(zzluVarZze, i32 == true ? 1 : 0, bArr, i30, i12, zzkcVar, zzijVar);
                                            i32 = i35;
                                            zzijVar7 = zzijVar5;
                                            i72 = i33;
                                            iZza4 = iZza2;
                                            unsafe3 = unsafe4;
                                            i31 = i34;
                                            if (iZza4 == i30) {
                                                t12 = t11;
                                                i13 = i13;
                                                unsafe = unsafe3;
                                                i18 = i32;
                                                i20 = i52;
                                                i24 = i31;
                                                zzijVar2 = zzijVar7;
                                                i21 = iZza4;
                                            } else {
                                                t12 = t11;
                                                i12 = i72;
                                                zzijVar6 = zzijVar7;
                                                i47 = i32;
                                                i45 = -1;
                                                i48 = i22;
                                                i49 = i23;
                                                iZza5 = i31;
                                                unsafe6 = unsafe3;
                                                i46 = i52;
                                            }
                                        }
                                        i31 = i34;
                                        unsafe3 = unsafe;
                                        iZza4 = i30;
                                        if (iZza4 == i30) {
                                            t12 = t11;
                                            i13 = i13;
                                            unsafe = unsafe3;
                                            i18 = i32;
                                            i20 = i52;
                                            i24 = i31;
                                            zzijVar2 = zzijVar7;
                                            i21 = iZza4;
                                        } else {
                                            t12 = t11;
                                            i12 = i72;
                                            zzijVar6 = zzijVar7;
                                            i47 = i32;
                                            i45 = -1;
                                            i48 = i22;
                                            i49 = i23;
                                            iZza5 = i31;
                                            unsafe6 = unsafe3;
                                            i46 = i52;
                                        }
                                        break;
                                    case 28:
                                        i72 = i72;
                                        i30 = iZza;
                                        i34 = iZza5;
                                        i32 = i71 == true ? 1 : 0;
                                        unsafe = unsafe;
                                        c12 = 65535;
                                        zzijVar7 = zzijVar7;
                                        if (i53 == 2) {
                                            iZza4 = zzig.zzc(bArr2, i30, zzijVar7);
                                            int i89 = zzijVar7.zza;
                                            if (i89 < 0) {
                                                throw zzkb.zzf();
                                            }
                                            if (i89 > bArr2.length - iZza4) {
                                                throw zzkb.zzi();
                                            }
                                            if (i89 == 0) {
                                                zzkcVar.add(zzik.zza);
                                            } else {
                                                zzkcVar.add(zzik.zza(bArr2, iZza4, i89));
                                                iZza4 += i89;
                                            }
                                            while (iZza4 < i72) {
                                                int iZzc11 = zzig.zzc(bArr2, iZza4, zzijVar7);
                                                if (i32 != zzijVar7.zza) {
                                                    i31 = i34;
                                                    unsafe3 = unsafe;
                                                    if (iZza4 == i30) {
                                                        t12 = t11;
                                                        i13 = i13;
                                                        unsafe = unsafe3;
                                                        i18 = i32;
                                                        i20 = i52;
                                                        i24 = i31;
                                                        zzijVar2 = zzijVar7;
                                                        i21 = iZza4;
                                                    } else {
                                                        t12 = t11;
                                                        i12 = i72;
                                                        zzijVar6 = zzijVar7;
                                                        i47 = i32;
                                                        i45 = -1;
                                                        i48 = i22;
                                                        i49 = i23;
                                                        iZza5 = i31;
                                                        unsafe6 = unsafe3;
                                                        i46 = i52;
                                                    }
                                                    break;
                                                } else {
                                                    iZza4 = zzig.zzc(bArr2, iZzc11, zzijVar7);
                                                    int i90 = zzijVar7.zza;
                                                    if (i90 < 0) {
                                                        throw zzkb.zzf();
                                                    }
                                                    if (i90 > bArr2.length - iZza4) {
                                                        throw zzkb.zzi();
                                                    }
                                                    if (i90 == 0) {
                                                        zzkcVar.add(zzik.zza);
                                                    } else {
                                                        zzkcVar.add(zzik.zza(bArr2, iZza4, i90));
                                                        iZza4 += i90;
                                                    }
                                                }
                                            }
                                            i31 = i34;
                                            unsafe3 = unsafe;
                                            if (iZza4 == i30) {
                                                t12 = t11;
                                                i13 = i13;
                                                unsafe = unsafe3;
                                                i18 = i32;
                                                i20 = i52;
                                                i24 = i31;
                                                zzijVar2 = zzijVar7;
                                                i21 = iZza4;
                                            } else {
                                                t12 = t11;
                                                i12 = i72;
                                                zzijVar6 = zzijVar7;
                                                i47 = i32;
                                                i45 = -1;
                                                i48 = i22;
                                                i49 = i23;
                                                iZza5 = i31;
                                                unsafe6 = unsafe3;
                                                i46 = i52;
                                            }
                                        }
                                        i31 = i34;
                                        unsafe3 = unsafe;
                                        iZza4 = i30;
                                        if (iZza4 == i30) {
                                            t12 = t11;
                                            i13 = i13;
                                            unsafe = unsafe3;
                                            i18 = i32;
                                            i20 = i52;
                                            i24 = i31;
                                            zzijVar2 = zzijVar7;
                                            i21 = iZza4;
                                        } else {
                                            t12 = t11;
                                            i12 = i72;
                                            zzijVar6 = zzijVar7;
                                            i47 = i32;
                                            i45 = -1;
                                            i48 = i22;
                                            i49 = i23;
                                            iZza5 = i31;
                                            unsafe6 = unsafe3;
                                            i46 = i52;
                                        }
                                        break;
                                    case 30:
                                    case 44:
                                        i30 = iZza;
                                        i32 = i71 == true ? 1 : 0;
                                        c12 = 65535;
                                        if (i53 == 2) {
                                            iZza3 = zzig.zza(bArr2, i30, (zzkc<?>) zzkcVar, zzijVar7);
                                        } else if (i53 != 0) {
                                            i30 = i30;
                                            i31 = iZza5;
                                            unsafe3 = unsafe;
                                            iZza4 = i30;
                                            if (iZza4 == i30) {
                                                t12 = t11;
                                                i13 = i13;
                                                unsafe = unsafe3;
                                                i18 = i32;
                                                i20 = i52;
                                                i24 = i31;
                                                zzijVar2 = zzijVar7;
                                                i21 = iZza4;
                                            } else {
                                                t12 = t11;
                                                i12 = i72;
                                                zzijVar6 = zzijVar7;
                                                i47 = i32;
                                                i45 = -1;
                                                i48 = i22;
                                                i49 = i23;
                                                iZza5 = i31;
                                                unsafe6 = unsafe3;
                                                i46 = i52;
                                            }
                                        } else {
                                            iZza3 = zzig.zza(i32 == true ? 1 : 0, bArr, i30, i12, (zzkc<?>) zzkcVar, zzijVar);
                                        }
                                        zzlw.zza(t11, i52, zzkcVar, zzlgVar2.zzd((int) r4), null, zzlgVar2.zzp);
                                        i31 = iZza5;
                                        iZza4 = iZza3;
                                        unsafe3 = unsafe;
                                        if (iZza4 == i30) {
                                            t12 = t11;
                                            i13 = i13;
                                            unsafe = unsafe3;
                                            i18 = i32;
                                            i20 = i52;
                                            i24 = i31;
                                            zzijVar2 = zzijVar7;
                                            i21 = iZza4;
                                        } else {
                                            t12 = t11;
                                            i12 = i72;
                                            zzijVar6 = zzijVar7;
                                            i47 = i32;
                                            i45 = -1;
                                            i48 = i22;
                                            i49 = i23;
                                            iZza5 = i31;
                                            unsafe6 = unsafe3;
                                            i46 = i52;
                                        }
                                        break;
                                    case 33:
                                    case 47:
                                        i37 = iZza;
                                        i38 = iZza5;
                                        i32 = i71 == true ? 1 : 0;
                                        c13 = 65535;
                                        if (i53 == 2) {
                                            zzjw zzjwVar3 = (zzjw) zzkcVar;
                                            iZzc = zzig.zzc(bArr2, i37, zzijVar7);
                                            int i91 = zzijVar7.zza + iZzc;
                                            while (iZzc < i91) {
                                                iZzc = zzig.zzc(bArr2, iZzc, zzijVar7);
                                                zzjwVar3.zzd(zziw.zza(zzijVar7.zza));
                                            }
                                            if (iZzc != i91) {
                                                throw zzkb.zzi();
                                            }
                                        } else if (i53 != 0) {
                                            i31 = i38;
                                            i30 = i37;
                                            unsafe3 = unsafe;
                                            iZza4 = i30;
                                            if (iZza4 == i30) {
                                                t12 = t11;
                                                i13 = i13;
                                                unsafe = unsafe3;
                                                i18 = i32;
                                                i20 = i52;
                                                i24 = i31;
                                                zzijVar2 = zzijVar7;
                                                i21 = iZza4;
                                            } else {
                                                t12 = t11;
                                                i12 = i72;
                                                zzijVar6 = zzijVar7;
                                                i47 = i32;
                                                i45 = -1;
                                                i48 = i22;
                                                i49 = i23;
                                                iZza5 = i31;
                                                unsafe6 = unsafe3;
                                                i46 = i52;
                                            }
                                            break;
                                        } else {
                                            zzjw zzjwVar4 = (zzjw) zzkcVar;
                                            iZzc = zzig.zzc(bArr2, i37, zzijVar7);
                                            zzjwVar4.zzd(zziw.zza(zzijVar7.zza));
                                            while (iZzc < i72) {
                                                int iZzc12 = zzig.zzc(bArr2, iZzc, zzijVar7);
                                                if (i32 == zzijVar7.zza) {
                                                    iZzc = zzig.zzc(bArr2, iZzc12, zzijVar7);
                                                    zzjwVar4.zzd(zziw.zza(zzijVar7.zza));
                                                }
                                            }
                                        }
                                        iZza4 = iZzc;
                                        i31 = i38;
                                        i30 = i37;
                                        unsafe3 = unsafe;
                                        if (iZza4 == i30) {
                                            t12 = t11;
                                            i13 = i13;
                                            unsafe = unsafe3;
                                            i18 = i32;
                                            i20 = i52;
                                            i24 = i31;
                                            zzijVar2 = zzijVar7;
                                            i21 = iZza4;
                                        } else {
                                            t12 = t11;
                                            i12 = i72;
                                            zzijVar6 = zzijVar7;
                                            i47 = i32;
                                            i45 = -1;
                                            i48 = i22;
                                            i49 = i23;
                                            iZza5 = i31;
                                            unsafe6 = unsafe3;
                                            i46 = i52;
                                        }
                                        break;
                                    case 34:
                                    case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                                        i37 = iZza;
                                        i38 = iZza5;
                                        c13 = 65535;
                                        if (i53 == 2) {
                                            zzkn zzknVar5 = (zzkn) zzkcVar;
                                            iZzc2 = zzig.zzc(bArr2, i37, zzijVar7);
                                            int i92 = zzijVar7.zza + iZzc2;
                                            while (iZzc2 < i92) {
                                                iZzc2 = zzig.zzd(bArr2, iZzc2, zzijVar7);
                                                zzknVar5.zza(zziw.zza(zzijVar7.zzb));
                                            }
                                            if (iZzc2 != i92) {
                                                throw zzkb.zzi();
                                            }
                                            iZza4 = iZzc2;
                                            i31 = i38;
                                            i30 = i37;
                                            i32 = i71 == true ? 1 : 0;
                                            unsafe3 = unsafe;
                                            if (iZza4 == i30) {
                                                t12 = t11;
                                                i13 = i13;
                                                unsafe = unsafe3;
                                                i18 = i32;
                                                i20 = i52;
                                                i24 = i31;
                                                zzijVar2 = zzijVar7;
                                                i21 = iZza4;
                                            } else {
                                                t12 = t11;
                                                i12 = i72;
                                                zzijVar6 = zzijVar7;
                                                i47 = i32;
                                                i45 = -1;
                                                i48 = i22;
                                                i49 = i23;
                                                iZza5 = i31;
                                                unsafe6 = unsafe3;
                                                i46 = i52;
                                            }
                                        } else if (i53 == 0) {
                                            zzkn zzknVar6 = (zzkn) zzkcVar;
                                            iZzc = zzig.zzd(bArr2, i37, zzijVar7);
                                            zzknVar6.zza(zziw.zza(zzijVar7.zzb));
                                            while (true) {
                                                if (iZzc < i72) {
                                                    int iZzc13 = zzig.zzc(bArr2, iZzc, zzijVar7);
                                                    i32 = i71;
                                                    if (i32 == zzijVar7.zza) {
                                                        iZzc = zzig.zzd(bArr2, iZzc13, zzijVar7);
                                                        zzknVar6.zza(zziw.zza(zzijVar7.zzb));
                                                        i71 = i32 == true ? 1 : 0;
                                                    }
                                                } else {
                                                    i32 = i71;
                                                }
                                            }
                                            iZza4 = iZzc;
                                            i31 = i38;
                                            i30 = i37;
                                            unsafe3 = unsafe;
                                            if (iZza4 == i30) {
                                                t12 = t11;
                                                i13 = i13;
                                                unsafe = unsafe3;
                                                i18 = i32;
                                                i20 = i52;
                                                i24 = i31;
                                                zzijVar2 = zzijVar7;
                                                i21 = iZza4;
                                            } else {
                                                t12 = t11;
                                                i12 = i72;
                                                zzijVar6 = zzijVar7;
                                                i47 = i32;
                                                i45 = -1;
                                                i48 = i22;
                                                i49 = i23;
                                                iZza5 = i31;
                                                unsafe6 = unsafe3;
                                                i46 = i52;
                                            }
                                        } else {
                                            i31 = i38;
                                            i30 = i37;
                                            i32 = i71 == true ? 1 : 0;
                                            unsafe3 = unsafe;
                                            iZza4 = i30;
                                            if (iZza4 == i30) {
                                                t12 = t11;
                                                i13 = i13;
                                                unsafe = unsafe3;
                                                i18 = i32;
                                                i20 = i52;
                                                i24 = i31;
                                                zzijVar2 = zzijVar7;
                                                i21 = iZza4;
                                            } else {
                                                t12 = t11;
                                                i12 = i72;
                                                zzijVar6 = zzijVar7;
                                                i47 = i32;
                                                i45 = -1;
                                                i48 = i22;
                                                i49 = i23;
                                                iZza5 = i31;
                                                unsafe6 = unsafe3;
                                                i46 = i52;
                                            }
                                        }
                                        break;
                                    case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                                        if (i53 == 3) {
                                            i37 = iZza;
                                            i38 = iZza5;
                                            c13 = 65535;
                                            iZzc2 = zzig.zza(zzlgVar2.zze(iZza5), i71 == true ? 1 : 0, bArr, iZza, i12, (zzkc<?>) zzkcVar, zzijVar);
                                            iZza4 = iZzc2;
                                            i31 = i38;
                                            i30 = i37;
                                            i32 = i71 == true ? 1 : 0;
                                            unsafe3 = unsafe;
                                            if (iZza4 == i30) {
                                                t12 = t11;
                                                i13 = i13;
                                                unsafe = unsafe3;
                                                i18 = i32;
                                                i20 = i52;
                                                i24 = i31;
                                                zzijVar2 = zzijVar7;
                                                i21 = iZza4;
                                            } else {
                                                t12 = t11;
                                                i12 = i72;
                                                zzijVar6 = zzijVar7;
                                                i47 = i32;
                                                i45 = -1;
                                                i48 = i22;
                                                i49 = i23;
                                                iZza5 = i31;
                                                unsafe6 = unsafe3;
                                                i46 = i52;
                                            }
                                            break;
                                        }
                                    default:
                                        i72 = i72;
                                        i30 = iZza;
                                        i31 = iZza5;
                                        i32 = i71 == true ? 1 : 0;
                                        unsafe3 = unsafe;
                                        zzijVar7 = zzijVar7;
                                        iZza4 = i30;
                                        if (iZza4 == i30) {
                                            t12 = t11;
                                            i13 = i13;
                                            unsafe = unsafe3;
                                            i18 = i32;
                                            i20 = i52;
                                            i24 = i31;
                                            zzijVar2 = zzijVar7;
                                            i21 = iZza4;
                                        } else {
                                            t12 = t11;
                                            i12 = i72;
                                            zzijVar6 = zzijVar7;
                                            i47 = i32;
                                            i45 = -1;
                                            i48 = i22;
                                            i49 = i23;
                                            iZza5 = i31;
                                            unsafe6 = unsafe3;
                                            i46 = i52;
                                        }
                                        break;
                                }
                            } else {
                                int i93 = iZza;
                                int i94 = iZza5;
                                int i95 = i71 == true ? 1 : 0;
                                zzijVar4 = zzijVar7;
                                if (i55 != 50) {
                                    unsafe = unsafe;
                                    t12 = t11;
                                    Unsafe unsafe8 = zzb;
                                    long j13 = iArr[i94 + 2] & 1048575;
                                    switch (i55) {
                                        case AD_REWARD_USER_VALUE:
                                            i13 = i13;
                                            i18 = i95 == true ? 1 : 0;
                                            zzijVar2 = zzijVar4;
                                            i20 = i52;
                                            i24 = i94;
                                            if (i53 == 1) {
                                                unsafe8.putObject(t12, j11, Double.valueOf(zzig.zza(bArr2, i93)));
                                                i41 = i93 + 8;
                                                unsafe8.putInt(t12, j13, i20);
                                                iZza4 = i41;
                                            } else {
                                                iZza4 = i93;
                                            }
                                            if (iZza4 == i93) {
                                                i21 = iZza4;
                                            } else {
                                                int i96 = i20;
                                                Object[] objArr2 = i18 == true ? 1 : 0;
                                                bArr2 = bArr;
                                                i12 = i12;
                                                zzijVar6 = zzijVar;
                                                i46 = i96;
                                                i45 = -1;
                                                iZza5 = i24;
                                                i48 = i22;
                                                i49 = i23;
                                                unsafe6 = unsafe;
                                                i47 = objArr2 == true ? 1 : 0;
                                                zzlgVar2 = this;
                                            }
                                            break;
                                        case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                                            i13 = i13;
                                            i18 = i95 == true ? 1 : 0;
                                            zzijVar2 = zzijVar4;
                                            i20 = i52;
                                            i24 = i94;
                                            if (i53 == 5) {
                                                unsafe8.putObject(t12, j11, Float.valueOf(zzig.zzb(bArr2, i93)));
                                                i41 = i93 + 4;
                                                unsafe8.putInt(t12, j13, i20);
                                                iZza4 = i41;
                                            } else {
                                                iZza4 = i93;
                                            }
                                            if (iZza4 == i93) {
                                                i21 = iZza4;
                                            } else {
                                                int i97 = i20;
                                                Object[] objArr3 = i18 == true ? 1 : 0;
                                                bArr2 = bArr;
                                                i12 = i12;
                                                zzijVar6 = zzijVar;
                                                i46 = i97;
                                                i45 = -1;
                                                iZza5 = i24;
                                                i48 = i22;
                                                i49 = i23;
                                                unsafe6 = unsafe;
                                                i47 = objArr3 == true ? 1 : 0;
                                                zzlgVar2 = this;
                                            }
                                            break;
                                        case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                                        case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                                            i13 = i13;
                                            i18 = i95 == true ? 1 : 0;
                                            zzijVar2 = zzijVar4;
                                            i20 = i52;
                                            i24 = i94;
                                            if (i53 == 0) {
                                                iZzd = zzig.zzd(bArr2, i93, zzijVar2);
                                                unsafe8.putObject(t12, j11, Long.valueOf(zzijVar2.zzb));
                                                unsafe8.putInt(t12, j13, i20);
                                                iZza4 = iZzd;
                                            } else {
                                                iZza4 = i93;
                                            }
                                            if (iZza4 == i93) {
                                                i21 = iZza4;
                                            } else {
                                                int i98 = i20;
                                                Object[] objArr4 = i18 == true ? 1 : 0;
                                                bArr2 = bArr;
                                                i12 = i12;
                                                zzijVar6 = zzijVar;
                                                i46 = i98;
                                                i45 = -1;
                                                iZza5 = i24;
                                                i48 = i22;
                                                i49 = i23;
                                                unsafe6 = unsafe;
                                                i47 = objArr4 == true ? 1 : 0;
                                                zzlgVar2 = this;
                                            }
                                            break;
                                        case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                                        case 62:
                                            i13 = i13;
                                            i18 = i95 == true ? 1 : 0;
                                            zzijVar2 = zzijVar4;
                                            i20 = i52;
                                            i24 = i94;
                                            if (i53 == 0) {
                                                iZzd = zzig.zzc(bArr2, i93, zzijVar2);
                                                unsafe8.putObject(t12, j11, Integer.valueOf(zzijVar2.zza));
                                                unsafe8.putInt(t12, j13, i20);
                                                iZza4 = iZzd;
                                            } else {
                                                iZza4 = i93;
                                            }
                                            if (iZza4 == i93) {
                                                i21 = iZza4;
                                            } else {
                                                int i99 = i20;
                                                Object[] objArr5 = i18 == true ? 1 : 0;
                                                bArr2 = bArr;
                                                i12 = i12;
                                                zzijVar6 = zzijVar;
                                                i46 = i99;
                                                i45 = -1;
                                                iZza5 = i24;
                                                i48 = i22;
                                                i49 = i23;
                                                unsafe6 = unsafe;
                                                i47 = objArr5 == true ? 1 : 0;
                                                zzlgVar2 = this;
                                            }
                                            break;
                                        case AD_VISIBILITY_VALUE:
                                        case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                                            i13 = i13;
                                            i18 = i95 == true ? 1 : 0;
                                            zzijVar2 = zzijVar4;
                                            i20 = i52;
                                            i24 = i94;
                                            if (i53 == 1) {
                                                unsafe8.putObject(t12, j11, Long.valueOf(zzig.zzd(bArr2, i93)));
                                                i41 = i93 + 8;
                                                unsafe8.putInt(t12, j13, i20);
                                                iZza4 = i41;
                                            } else {
                                                iZza4 = i93;
                                            }
                                            if (iZza4 == i93) {
                                                i21 = iZza4;
                                            } else {
                                                int i910 = i20;
                                                Object[] objArr6 = i18 == true ? 1 : 0;
                                                bArr2 = bArr;
                                                i12 = i12;
                                                zzijVar6 = zzijVar;
                                                i46 = i910;
                                                i45 = -1;
                                                iZza5 = i24;
                                                i48 = i22;
                                                i49 = i23;
                                                unsafe6 = unsafe;
                                                i47 = objArr6 == true ? 1 : 0;
                                                zzlgVar2 = this;
                                            }
                                            break;
                                        case 57:
                                        case 64:
                                            i13 = i13;
                                            i18 = i95 == true ? 1 : 0;
                                            zzijVar2 = zzijVar4;
                                            i20 = i52;
                                            i24 = i94;
                                            if (i53 == 5) {
                                                unsafe8.putObject(t12, j11, Integer.valueOf(zzig.zzc(bArr2, i93)));
                                                i41 = i93 + 4;
                                                unsafe8.putInt(t12, j13, i20);
                                                iZza4 = i41;
                                            } else {
                                                iZza4 = i93;
                                            }
                                            if (iZza4 == i93) {
                                                i21 = iZza4;
                                            } else {
                                                int i911 = i20;
                                                Object[] objArr7 = i18 == true ? 1 : 0;
                                                bArr2 = bArr;
                                                i12 = i12;
                                                zzijVar6 = zzijVar;
                                                i46 = i911;
                                                i45 = -1;
                                                iZza5 = i24;
                                                i48 = i22;
                                                i49 = i23;
                                                unsafe6 = unsafe;
                                                i47 = objArr7 == true ? 1 : 0;
                                                zzlgVar2 = this;
                                            }
                                            break;
                                        case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                                            i13 = i13;
                                            i18 = i95 == true ? 1 : 0;
                                            zzijVar2 = zzijVar4;
                                            i20 = i52;
                                            i24 = i94;
                                            if (i53 == 0) {
                                                iZzd = zzig.zzd(bArr2, i93, zzijVar2);
                                                unsafe8.putObject(t12, j11, Boolean.valueOf(zzijVar2.zzb != 0));
                                                unsafe8.putInt(t12, j13, i20);
                                                iZza4 = iZzd;
                                            } else {
                                                iZza4 = i93;
                                            }
                                            if (iZza4 == i93) {
                                                i21 = iZza4;
                                            } else {
                                                int i912 = i20;
                                                Object[] objArr8 = i18 == true ? 1 : 0;
                                                bArr2 = bArr;
                                                i12 = i12;
                                                zzijVar6 = zzijVar;
                                                i46 = i912;
                                                i45 = -1;
                                                iZza5 = i24;
                                                i48 = i22;
                                                i49 = i23;
                                                unsafe6 = unsafe;
                                                i47 = objArr8 == true ? 1 : 0;
                                                zzlgVar2 = this;
                                            }
                                            break;
                                        case 59:
                                            i13 = i13;
                                            i18 = i95 == true ? 1 : 0;
                                            i20 = i52;
                                            i24 = i94;
                                            zzijVar2 = zzijVar4;
                                            if (i53 == 2) {
                                                iZzd = zzig.zzc(bArr2, i93, zzijVar2);
                                                int i100 = zzijVar2.zza;
                                                if (i100 == 0) {
                                                    unsafe8.putObject(t12, j11, "");
                                                } else {
                                                    if ((536870912 & i54) != 0 && !zzmp.zzc(bArr2, iZzd, iZzd + i100)) {
                                                        throw zzkb.zzd();
                                                    }
                                                    unsafe8.putObject(t12, j11, new String(bArr2, iZzd, i100, zzjv.zza));
                                                    iZzd += i100;
                                                }
                                                unsafe8.putInt(t12, j13, i20);
                                                iZza4 = iZzd;
                                            } else {
                                                iZza4 = i93;
                                            }
                                            if (iZza4 == i93) {
                                                i21 = iZza4;
                                            } else {
                                                int i913 = i20;
                                                Object[] objArr9 = i18 == true ? 1 : 0;
                                                bArr2 = bArr;
                                                i12 = i12;
                                                zzijVar6 = zzijVar;
                                                i46 = i913;
                                                i45 = -1;
                                                iZza5 = i24;
                                                i48 = i22;
                                                i49 = i23;
                                                unsafe6 = unsafe;
                                                i47 = objArr9 == true ? 1 : 0;
                                                zzlgVar2 = this;
                                            }
                                            break;
                                        case 60:
                                            i13 = i13;
                                            i42 = i94;
                                            i43 = i52;
                                            i18 = i95 == true ? 1 : 0;
                                            zzijVar2 = zzijVar4;
                                            if (i53 == 2) {
                                                Object objZza3 = zza(t12, i43, i42);
                                                iZza4 = zzig.zza(objZza3, zze(i42), bArr, i93, i12, zzijVar);
                                                zza(t12, i43, i42, objZza3);
                                                i20 = i43;
                                                i24 = i42;
                                            } else {
                                                i24 = i42;
                                                i20 = i43;
                                                iZza4 = i93;
                                            }
                                            if (iZza4 == i93) {
                                                i21 = iZza4;
                                            } else {
                                                int i914 = i20;
                                                Object[] objArr10 = i18 == true ? 1 : 0;
                                                bArr2 = bArr;
                                                i12 = i12;
                                                zzijVar6 = zzijVar;
                                                i46 = i914;
                                                i45 = -1;
                                                iZza5 = i24;
                                                i48 = i22;
                                                i49 = i23;
                                                unsafe6 = unsafe;
                                                i47 = objArr10 == true ? 1 : 0;
                                                zzlgVar2 = this;
                                            }
                                            break;
                                        case 61:
                                            i13 = i13;
                                            i43 = i52;
                                            i18 = i95 == true ? 1 : 0;
                                            i42 = i94;
                                            zzijVar2 = zzijVar4;
                                            if (i53 == 2) {
                                                int iZza7 = zzig.zza(bArr2, i93, zzijVar2);
                                                unsafe8.putObject(t12, j11, zzijVar2.zzc);
                                                unsafe8.putInt(t12, j13, i43);
                                                iZza4 = iZza7;
                                                i24 = i42;
                                                i20 = i43;
                                            } else {
                                                i24 = i42;
                                                i20 = i43;
                                                iZza4 = i93;
                                            }
                                            if (iZza4 == i93) {
                                                i21 = iZza4;
                                            } else {
                                                int i915 = i20;
                                                Object[] objArr11 = i18 == true ? 1 : 0;
                                                bArr2 = bArr;
                                                i12 = i12;
                                                zzijVar6 = zzijVar;
                                                i46 = i915;
                                                i45 = -1;
                                                iZza5 = i24;
                                                i48 = i22;
                                                i49 = i23;
                                                unsafe6 = unsafe;
                                                i47 = objArr11 == true ? 1 : 0;
                                                zzlgVar2 = this;
                                            }
                                            break;
                                        case 63:
                                            i13 = i13;
                                            i44 = i94;
                                            i43 = i52;
                                            i18 = i95 == true ? 1 : 0;
                                            zzijVar2 = zzijVar4;
                                            if (i53 == 0) {
                                                int iZzc14 = zzig.zzc(bArr2, i93, zzijVar2);
                                                int i101 = zzijVar2.zza;
                                                zzjx zzjxVarZzd2 = zzd(i44);
                                                if (zzjxVarZzd2 == null || zzjxVarZzd2.zza(i101)) {
                                                    unsafe8.putObject(t12, j11, Integer.valueOf(i101));
                                                    unsafe8.putInt(t12, j13, i43);
                                                } else {
                                                    zzc(t11).zza(i18 == true ? 1 : 0, Long.valueOf(i101));
                                                }
                                                iZza4 = iZzc14;
                                                i20 = i43;
                                                i24 = i44;
                                            } else {
                                                i20 = i43;
                                                i24 = i44;
                                                iZza4 = i93;
                                            }
                                            if (iZza4 == i93) {
                                                i21 = iZza4;
                                            } else {
                                                int i916 = i20;
                                                Object[] objArr12 = i18 == true ? 1 : 0;
                                                bArr2 = bArr;
                                                i12 = i12;
                                                zzijVar6 = zzijVar;
                                                i46 = i916;
                                                i45 = -1;
                                                iZza5 = i24;
                                                i48 = i22;
                                                i49 = i23;
                                                unsafe6 = unsafe;
                                                i47 = objArr12 == true ? 1 : 0;
                                                zzlgVar2 = this;
                                            }
                                            break;
                                        case 66:
                                            i13 = i13;
                                            i44 = i94;
                                            i43 = i52;
                                            i18 = i95 == true ? 1 : 0;
                                            zzijVar2 = zzijVar4;
                                            if (i53 == 0) {
                                                int iZzc15 = zzig.zzc(bArr2, i93, zzijVar2);
                                                unsafe8.putObject(t12, j11, Integer.valueOf(zziw.zza(zzijVar2.zza)));
                                                unsafe8.putInt(t12, j13, i43);
                                                iZza4 = iZzc15;
                                                i20 = i43;
                                                i24 = i44;
                                                if (iZza4 == i93) {
                                                    i21 = iZza4;
                                                } else {
                                                    int i917 = i20;
                                                    Object[] objArr13 = i18 == true ? 1 : 0;
                                                    bArr2 = bArr;
                                                    i12 = i12;
                                                    zzijVar6 = zzijVar;
                                                    i46 = i917;
                                                    i45 = -1;
                                                    iZza5 = i24;
                                                    i48 = i22;
                                                    i49 = i23;
                                                    unsafe6 = unsafe;
                                                    i47 = objArr13 == true ? 1 : 0;
                                                    zzlgVar2 = this;
                                                }
                                            }
                                            i20 = i43;
                                            i24 = i44;
                                            iZza4 = i93;
                                            if (iZza4 == i93) {
                                                i21 = iZza4;
                                            } else {
                                                int i918 = i20;
                                                Object[] objArr14 = i18 == true ? 1 : 0;
                                                bArr2 = bArr;
                                                i12 = i12;
                                                zzijVar6 = zzijVar;
                                                i46 = i918;
                                                i45 = -1;
                                                iZza5 = i24;
                                                i48 = i22;
                                                i49 = i23;
                                                unsafe6 = unsafe;
                                                i47 = objArr14 == true ? 1 : 0;
                                                zzlgVar2 = this;
                                            }
                                            break;
                                        case 67:
                                            i13 = i13;
                                            i43 = i52;
                                            i18 = i95 == true ? 1 : 0;
                                            zzijVar2 = zzijVar4;
                                            i42 = i94;
                                            if (i53 == 0) {
                                                int iZzd4 = zzig.zzd(bArr2, i93, zzijVar2);
                                                i44 = i42;
                                                unsafe8.putObject(t12, j11, Long.valueOf(zziw.zza(zzijVar2.zzb)));
                                                unsafe8.putInt(t12, j13, i43);
                                                iZza4 = iZzd4;
                                                i20 = i43;
                                                i24 = i44;
                                                if (iZza4 == i93) {
                                                    i21 = iZza4;
                                                } else {
                                                    int i919 = i20;
                                                    Object[] objArr15 = i18 == true ? 1 : 0;
                                                    bArr2 = bArr;
                                                    i12 = i12;
                                                    zzijVar6 = zzijVar;
                                                    i46 = i919;
                                                    i45 = -1;
                                                    iZza5 = i24;
                                                    i48 = i22;
                                                    i49 = i23;
                                                    unsafe6 = unsafe;
                                                    i47 = objArr15 == true ? 1 : 0;
                                                    zzlgVar2 = this;
                                                }
                                            }
                                            i24 = i42;
                                            i20 = i43;
                                            iZza4 = i93;
                                            if (iZza4 == i93) {
                                                i21 = iZza4;
                                            } else {
                                                int i9110 = i20;
                                                Object[] objArr16 = i18 == true ? 1 : 0;
                                                bArr2 = bArr;
                                                i12 = i12;
                                                zzijVar6 = zzijVar;
                                                i46 = i9110;
                                                i45 = -1;
                                                iZza5 = i24;
                                                i48 = i22;
                                                i49 = i23;
                                                unsafe6 = unsafe;
                                                i47 = objArr16 == true ? 1 : 0;
                                                zzlgVar2 = this;
                                            }
                                            break;
                                        case 68:
                                            if (i53 == 3) {
                                                Object objZza4 = zza(t12, i52, i94);
                                                int iZza8 = zzig.zza(objZza4, zze(i94), bArr, i93, i12, ((i95 == true ? 1 : 0) & (-8)) | 4, zzijVar);
                                                zza(t12, i52, i94, objZza4);
                                                i13 = i13;
                                                zzijVar2 = zzijVar;
                                                i24 = i94;
                                                i18 = i95 == true ? 1 : 0;
                                                i20 = i52;
                                                iZza4 = iZza8;
                                            } else {
                                                i13 = i13;
                                                i20 = i52;
                                                i18 = i95 == true ? 1 : 0;
                                                i24 = i94;
                                                zzijVar2 = zzijVar;
                                                iZza4 = i93;
                                            }
                                            if (iZza4 == i93) {
                                                i21 = iZza4;
                                            } else {
                                                int i9111 = i20;
                                                Object[] objArr17 = i18 == true ? 1 : 0;
                                                bArr2 = bArr;
                                                i12 = i12;
                                                zzijVar6 = zzijVar;
                                                i46 = i9111;
                                                i45 = -1;
                                                iZza5 = i24;
                                                i48 = i22;
                                                i49 = i23;
                                                unsafe6 = unsafe;
                                                i47 = objArr17 == true ? 1 : 0;
                                                zzlgVar2 = this;
                                            }
                                            break;
                                        default:
                                            i13 = i13;
                                            i20 = i52;
                                            i18 = i95 == true ? 1 : 0;
                                            i24 = i94;
                                            zzijVar2 = zzijVar4;
                                            iZza4 = i93;
                                            if (iZza4 == i93) {
                                                i21 = iZza4;
                                            } else {
                                                int i9112 = i20;
                                                Object[] objArr18 = i18 == true ? 1 : 0;
                                                bArr2 = bArr;
                                                i12 = i12;
                                                zzijVar6 = zzijVar;
                                                i46 = i9112;
                                                i45 = -1;
                                                iZza5 = i24;
                                                i48 = i22;
                                                i49 = i23;
                                                unsafe6 = unsafe;
                                                i47 = objArr18 == true ? 1 : 0;
                                                zzlgVar2 = this;
                                            }
                                            break;
                                    }
                                } else if (i53 == 2) {
                                    Unsafe unsafe9 = zzb;
                                    Object objZzf = zzlgVar2.zzf(i94);
                                    t12 = t11;
                                    Object object = unsafe9.getObject(t12, j11);
                                    if (zzlgVar2.zzr.zzf(object)) {
                                        Object objZzb = zzlgVar2.zzr.zzb(objZzf);
                                        zzlgVar2.zzr.zza(objZzb, object);
                                        unsafe9.putObject(t12, j11, objZzb);
                                        object = objZzb;
                                    }
                                    zzkt<?, ?> zzktVarZza = zzlgVar2.zzr.zza(objZzf);
                                    Map<?, ?> mapZze = zzlgVar2.zzr.zze(object);
                                    int iZzc16 = zzig.zzc(bArr2, i93, zzijVar4);
                                    int i102 = zzijVar4.zza;
                                    if (i102 < 0 || i102 > i72 - iZzc16) {
                                        throw zzkb.zzi();
                                    }
                                    int i103 = iZzc16 + i102;
                                    Object obj = zzktVarZza.zzb;
                                    Object obj2 = zzktVarZza.zzd;
                                    Object obj3 = obj;
                                    while (iZzc16 < i103) {
                                        int iZza9 = iZzc16 + 1;
                                        int i104 = bArr2[iZzc16];
                                        if (i104 < 0) {
                                            iZza9 = zzig.zza(i104, bArr2, iZza9, zzijVar4);
                                            i104 = zzijVar4.zza;
                                        }
                                        Unsafe unsafe10 = unsafe;
                                        int i105 = i104 >>> 3;
                                        int i106 = i94;
                                        int i107 = i104 & 7;
                                        obj2 = obj2;
                                        if (i105 != 1) {
                                            if (i105 != 2) {
                                                obj3 = obj3;
                                                i39 = i95;
                                                i40 = i106;
                                                unsafe5 = unsafe10;
                                                iZzc16 = zzig.zza(i104, bArr2, iZza9, i72, zzijVar4);
                                            } else if (i107 == zzktVarZza.zzc.zza()) {
                                                i39 = i95;
                                                unsafe5 = unsafe10;
                                                i40 = i106;
                                                obj3 = obj3;
                                                iZzc16 = zza(bArr, iZza9, i12, zzktVarZza.zzc, zzktVarZza.zzd.getClass(), zzijVar);
                                                obj2 = zzijVar4.zzc;
                                            } else {
                                                i39 = i95;
                                                i40 = i106;
                                                unsafe5 = unsafe10;
                                            }
                                            obj3 = obj3;
                                            i94 = i40;
                                            i95 = i39;
                                            unsafe = unsafe5;
                                        } else {
                                            i39 = i95;
                                            i40 = i106;
                                            unsafe5 = unsafe10;
                                            if (i107 == zzktVarZza.zza.zza()) {
                                                iZzc16 = zza(bArr, iZza9, i12, zzktVarZza.zza, (Class<?>) null, zzijVar);
                                                obj3 = zzijVar4.zzc;
                                                obj2 = obj2;
                                            }
                                            i94 = i40;
                                            i95 = i39;
                                            unsafe = unsafe5;
                                        }
                                        iZzc16 = zzig.zza(i104, bArr2, iZza9, i72, zzijVar4);
                                        obj3 = obj3;
                                        i94 = i40;
                                        i95 = i39;
                                        unsafe = unsafe5;
                                    }
                                    unsafe = unsafe;
                                    Object obj4 = obj3;
                                    i71 = i95;
                                    i28 = i94;
                                    if (iZzc16 != i103) {
                                        throw zzkb.zzg();
                                    }
                                    mapZze.put(obj4, obj2);
                                    if (i103 == i93) {
                                        i21 = i103;
                                        i20 = i52;
                                        i18 = i71;
                                        i24 = i28;
                                        zzijVar2 = zzijVar4;
                                    } else {
                                        zzlgVar2 = this;
                                        iZza4 = i103;
                                        zzijVar6 = zzijVar4;
                                        iZza5 = i28;
                                        i12 = i72;
                                        i45 = -1;
                                        i46 = i52;
                                        i47 = i71 == true ? 1 : 0;
                                        i48 = i22;
                                        i49 = i23;
                                        unsafe6 = unsafe;
                                    }
                                } else {
                                    i71 = i95 == true ? 1 : 0;
                                    i29 = i93;
                                    t12 = t11;
                                    i28 = i94;
                                }
                            }
                        } else if (i53 == 2) {
                            zzkc zzkcVarZza2 = (zzkc) unsafe.getObject(t12, j11);
                            if (!zzkcVarZza2.zzc()) {
                                int size = zzkcVarZza2.size();
                                zzkcVarZza2 = zzkcVarZza2.zza(size == 0 ? 10 : size << 1);
                                unsafe.putObject(t12, j11, zzkcVarZza2);
                            }
                            zzijVar6 = zzijVar7;
                            iZza4 = zzig.zzb(zzlgVar2.zze(iZza5), i71 == true ? 1 : 0, bArr, iZza, i12, zzkcVarZza2, zzijVar);
                            iZza5 = iZza5;
                            i46 = i52;
                            i47 = i71 == true ? 1 : 0;
                            i48 = i48;
                            i49 = i49;
                            i12 = i72;
                            unsafe6 = unsafe;
                            i45 = i19;
                        } else {
                            i22 = i48;
                            i23 = i49;
                            i28 = iZza5;
                            i29 = iZza;
                            zzijVar4 = zzijVar7;
                        }
                        i21 = i29;
                        i20 = i52;
                        i18 = i71;
                        i24 = i28;
                        zzijVar2 = zzijVar4;
                    }
                }
                if (i18 == i13 && i13 != 0) {
                    i15 = i12;
                    i17 = i21;
                    i47 = i18;
                    i14 = i13;
                    i48 = i22;
                    i49 = i23;
                    i16 = 1048575;
                    zzlgVar = this;
                } else if (!this.zzh || zzijVar2.zzd == zzjg.zza) {
                    int i108 = i18;
                    int i109 = i20;
                    zzijVar6 = zzijVar;
                    iZza4 = zzig.zza(i108 == true ? 1 : 0, bArr, i21, i12, zzc(t11), zzijVar6);
                    bArr2 = bArr;
                    i12 = i12;
                    i45 = i19;
                    iZza5 = i24;
                    i48 = i22;
                    i49 = i23;
                    unsafe6 = unsafe;
                    i47 = i108 == true ? 1 : 0;
                    zzlgVar2 = this;
                    i46 = i109;
                } else {
                    int i110 = i18;
                    iZza4 = zzig.zza(i18, bArr, i21, i12, t11, this.zzg, this.zzp, zzijVar);
                    bArr2 = bArr;
                    i46 = i20;
                    i47 = i110 == true ? 1 : 0;
                    i45 = i19;
                    iZza5 = i24;
                    i48 = i22;
                    i49 = i23;
                    unsafe6 = unsafe;
                    zzlgVar2 = this;
                    zzijVar6 = zzijVar;
                }
            } else {
                i14 = i13;
                unsafe = unsafe6;
                i15 = i12;
                zzlgVar = zzlgVar2;
                i16 = 1048575;
                i17 = iZza4;
            }
        }
        if (i49 != i16) {
            unsafe.putInt(t12, i49, i48);
        }
        zzmj zzmjVar = null;
        for (int i111 = zzlgVar.zzl; i111 < zzlgVar.zzm; i111++) {
            zzmjVar = (zzmj) zza(t11, zzlgVar.zzk[i111], zzmjVar, (zzmk<UT, zzmj>) zzlgVar.zzp, t11);
        }
        if (zzmjVar != null) {
            zzlgVar.zzp.zzb(t12, zzmjVar);
        }
        if (i14 == 0) {
            if (i17 != i15) {
                throw zzkb.zzg();
            }
        } else if (i17 > i15 || i47 != i14) {
            throw zzkb.zzg();
        }
        return i17;
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final T zza() {
        return (T) this.zzn.zza(this.zzg);
    }

    /* JADX WARN: Code duplicated, block: B:168:0x0630 A[Catch: all -> 0x00cb, TryCatch #7 {all -> 0x00cb, blocks: (B:49:0x00c5, B:54:0x00d3, B:166:0x062b, B:168:0x0630, B:169:0x0635, B:65:0x00ff, B:67:0x0114, B:68:0x0125, B:69:0x0136, B:70:0x0147, B:71:0x0158, B:73:0x0162, B:76:0x0169, B:77:0x016e, B:78:0x017b, B:79:0x018c, B:80:0x019a, B:81:0x01ac, B:82:0x01b4, B:83:0x01c6, B:84:0x01d8, B:85:0x01ea, B:86:0x01fc, B:87:0x020e, B:88:0x0220, B:89:0x0232, B:90:0x0244, B:92:0x0254, B:96:0x0275, B:93:0x025e, B:95:0x0266, B:97:0x0286, B:98:0x0298, B:99:0x02a6, B:100:0x02b4, B:101:0x02c2), top: B:194:0x00c5 }] */
    /* JADX WARN: Code duplicated, block: B:174:0x0641 A[LOOP:2: B:172:0x063d->B:174:0x0641, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:176:0x0655  */
    /* JADX WARN: Code duplicated, block: B:183:0x0665 A[LOOP:3: B:181:0x0661->B:183:0x0665, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:185:0x0679  */
    /* JADX WARN: Code duplicated, block: B:212:0x063b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:292:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzlu
    public final void zza(T t11, zzlr zzlrVar, zzjg zzjgVar) throws Throwable {
        zzmk zzmkVar;
        T t12;
        int i11;
        zzmk zzmkVar2;
        T t13;
        Object obj;
        zzji<?> zzjiVar;
        zzjg zzjgVar2;
        Object obj2;
        int i12;
        T t14 = t11;
        zzjg zzjgVar3 = zzjgVar;
        zzjgVar.getClass();
        zzf(t11);
        zzmk zzmkVar3 = this.zzp;
        zzji<?> zzjiVar2 = this.zzq;
        Object objZza = null;
        Object obj3 = null;
        while (true) {
            try {
                int iZzc = zzlrVar.zzc();
                int iZza = zza(iZzc);
                if (iZza >= 0) {
                    zzmkVar = zzmkVar3;
                    t12 = t14;
                    try {
                        int iZzc2 = zzc(iZza);
                        switch ((267386880 & iZzc2) >>> 20) {
                            case 0:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzml.zza(t12, iZzc2 & 1048575, zzlrVar.zza());
                                zzb((Object) t12, iZza);
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 1:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzml.zza((Object) t12, iZzc2 & 1048575, zzlrVar.zzb());
                                zzb((Object) t12, iZza);
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 2:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzml.zza((Object) t12, iZzc2 & 1048575, zzlrVar.zzl());
                                zzb((Object) t12, iZza);
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 3:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzml.zza((Object) t12, iZzc2 & 1048575, zzlrVar.zzo());
                                zzb((Object) t12, iZza);
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 4:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzml.zza((Object) t12, iZzc2 & 1048575, zzlrVar.zzg());
                                zzb((Object) t12, iZza);
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 5:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzml.zza((Object) t12, iZzc2 & 1048575, zzlrVar.zzk());
                                zzb((Object) t12, iZza);
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 6:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzml.zza((Object) t12, iZzc2 & 1048575, zzlrVar.zzf());
                                zzb((Object) t12, iZza);
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 7:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzml.zzc(t12, iZzc2 & 1048575, zzlrVar.zzs());
                                zzb((Object) t12, iZza);
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 8:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zza((Object) t12, iZzc2, zzlrVar);
                                zzb((Object) t12, iZza);
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 9:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzlc zzlcVar = (zzlc) zza((Object) t12, iZza);
                                zzlrVar.zzb(zzlcVar, (zzlu<zzlc>) zze(iZza), zzjgVar2);
                                zza(t12, iZza, zzlcVar);
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 10:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzml.zza(t12, iZzc2 & 1048575, zzlrVar.zzp());
                                zzb((Object) t12, iZza);
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 11:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzml.zza((Object) t12, iZzc2 & 1048575, zzlrVar.zzj());
                                zzb((Object) t12, iZza);
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 12:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                int iZze = zzlrVar.zze();
                                zzjx zzjxVarZzd = zzd(iZza);
                                if (zzjxVarZzd != null && !zzjxVarZzd.zza(iZze)) {
                                    objZza = zzlw.zza(t12, iZzc, iZze, obj, zzmkVar);
                                    zzmkVar3 = zzmkVar;
                                    zzjiVar2 = zzjiVar;
                                    zzjgVar3 = zzjgVar2;
                                    t14 = t12;
                                }
                                zzml.zza((Object) t12, iZzc2 & 1048575, iZze);
                                zzb((Object) t12, iZza);
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 13:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzml.zza((Object) t12, iZzc2 & 1048575, zzlrVar.zzh());
                                zzb((Object) t12, iZza);
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 14:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzml.zza((Object) t12, iZzc2 & 1048575, zzlrVar.zzm());
                                zzb((Object) t12, iZza);
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 15:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzml.zza((Object) t12, iZzc2 & 1048575, zzlrVar.zzi());
                                zzb((Object) t12, iZza);
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 16:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzml.zza((Object) t12, iZzc2 & 1048575, zzlrVar.zzn());
                                zzb((Object) t12, iZza);
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 17:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzlc zzlcVar2 = (zzlc) zza((Object) t12, iZza);
                                zzlrVar.zza(zzlcVar2, (zzlu<zzlc>) zze(iZza), zzjgVar2);
                                zza(t12, iZza, zzlcVar2);
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 18:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzlrVar.zzc(this.zzo.zza(t12, iZzc2 & 1048575));
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 19:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzlrVar.zzg(this.zzo.zza(t12, iZzc2 & 1048575));
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 20:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzlrVar.zzi(this.zzo.zza(t12, iZzc2 & 1048575));
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 21:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzlrVar.zzq(this.zzo.zza(t12, iZzc2 & 1048575));
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 22:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzlrVar.zzh(this.zzo.zza(t12, iZzc2 & 1048575));
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 23:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzlrVar.zzf(this.zzo.zza(t12, iZzc2 & 1048575));
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 24:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzlrVar.zze(this.zzo.zza(t12, iZzc2 & 1048575));
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 25:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzlrVar.zza(this.zzo.zza(t12, iZzc2 & 1048575));
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 26:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                if (zzg(iZzc2)) {
                                    zzlrVar.zzo(this.zzo.zza(t12, iZzc2 & 1048575));
                                } else {
                                    zzlrVar.zzn(this.zzo.zza(t12, iZzc2 & 1048575));
                                }
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 27:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzlrVar.zzb((List) this.zzo.zza(t12, iZzc2 & 1048575), (zzlu) zze(iZza), zzjgVar2);
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 28:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzlrVar.zzb(this.zzo.zza(t12, iZzc2 & 1048575));
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case NOTIFICATION_REDIRECT_VALUE:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzlrVar.zzp(this.zzo.zza(t12, iZzc2 & 1048575));
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 30:
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                List<Integer> listZza = this.zzo.zza(t12, iZzc2 & 1048575);
                                zzlrVar.zzd(listZza);
                                objZza = zzlw.zza(t11, iZzc, listZza, zzd(iZza), objZza, zzmkVar);
                                zzmkVar3 = zzmkVar;
                                zzjiVar2 = zzjiVar;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                break;
                            case TEMPLATE_HTML_SIZE_VALUE:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzlrVar.zzj(this.zzo.zza(t12, iZzc2 & 1048575));
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 32:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzlrVar.zzk(this.zzo.zza(t12, iZzc2 & 1048575));
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 33:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzlrVar.zzl(this.zzo.zza(t12, iZzc2 & 1048575));
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 34:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzlrVar.zzm(this.zzo.zza(t12, iZzc2 & 1048575));
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 35:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzlrVar.zzc(this.zzo.zza(t12, iZzc2 & 1048575));
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 36:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzlrVar.zzg(this.zzo.zza(t12, iZzc2 & 1048575));
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 37:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzlrVar.zzi(this.zzo.zza(t12, iZzc2 & 1048575));
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 38:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzlrVar.zzq(this.zzo.zza(t12, iZzc2 & 1048575));
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 39:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzlrVar.zzh(this.zzo.zza(t12, iZzc2 & 1048575));
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 40:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzlrVar.zzf(this.zzo.zza(t12, iZzc2 & 1048575));
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 41:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzlrVar.zze(this.zzo.zza(t12, iZzc2 & 1048575));
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 42:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzlrVar.zza(this.zzo.zza(t12, iZzc2 & 1048575));
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 43:
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzlrVar.zzp(this.zzo.zza(t12, iZzc2 & 1048575));
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 44:
                                List<Integer> listZza2 = this.zzo.zza(t12, iZzc2 & 1048575);
                                zzlrVar.zzd(listZza2);
                                obj2 = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                try {
                                    objZza = zzlw.zza(t11, iZzc, listZza2, zzd(iZza), obj2, zzmkVar);
                                } catch (zzke unused) {
                                    objZza = obj2;
                                    zzmkVar.zza(zzlrVar);
                                    if (objZza == null) {
                                        objZza = zzmkVar.zzc(t12);
                                    }
                                    if (!zzmkVar.zza(objZza, zzlrVar, 0)) {
                                        for (i12 = this.zzl; i12 < this.zzm; i12++) {
                                            objZza = zza(t11, this.zzk[i12], objZza, (zzmk<UT, Object>) zzmkVar, t11);
                                        }
                                        if (objZza != null) {
                                            zzmkVar.zzb(t12, objZza);
                                            return;
                                        }
                                        return;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    objZza = obj2;
                                    for (i11 = this.zzl; i11 < this.zzm; i11++) {
                                        objZza = zza(t11, this.zzk[i11], objZza, (zzmk<UT, Object>) zzmkVar, t11);
                                    }
                                    if (objZza != null) {
                                        zzmkVar.zzb(t12, objZza);
                                    }
                                    throw th;
                                }
                                zzmkVar3 = zzmkVar;
                                zzjiVar2 = zzjiVar;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                break;
                            case 45:
                                zzlrVar.zzj(this.zzo.zza(t12, iZzc2 & 1048575));
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 46:
                                zzlrVar.zzk(this.zzo.zza(t12, iZzc2 & 1048575));
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 47:
                                zzlrVar.zzl(this.zzo.zza(t12, iZzc2 & 1048575));
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                                zzlrVar.zzm(this.zzo.zza(t12, iZzc2 & 1048575));
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                                zzlrVar.zza((List) this.zzo.zza(t12, iZzc2 & 1048575), (zzlu) zze(iZza), zzjgVar3);
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 50:
                                Object objZzf = zzf(iZza);
                                long jZzc = zzc(iZza) & 1048575;
                                Object objZze = zzml.zze(t12, jZzc);
                                if (objZze == null) {
                                    objZze = this.zzr.zzb(objZzf);
                                    zzml.zza(t12, jZzc, objZze);
                                } else if (this.zzr.zzf(objZze)) {
                                    Object objZzb = this.zzr.zzb(objZzf);
                                    this.zzr.zza(objZzb, objZze);
                                    zzml.zza(t12, jZzc, objZzb);
                                    objZze = objZzb;
                                }
                                zzlrVar.zza(this.zzr.zze(objZze), this.zzr.zza(objZzf), zzjgVar3);
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case AD_REWARD_USER_VALUE:
                                zzml.zza(t12, iZzc2 & 1048575, Double.valueOf(zzlrVar.zza()));
                                zzb(t12, iZzc, iZza);
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                                zzml.zza(t12, iZzc2 & 1048575, Float.valueOf(zzlrVar.zzb()));
                                zzb(t12, iZzc, iZza);
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                                zzml.zza(t12, iZzc2 & 1048575, Long.valueOf(zzlrVar.zzl()));
                                zzb(t12, iZzc, iZza);
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                                zzml.zza(t12, iZzc2 & 1048575, Long.valueOf(zzlrVar.zzo()));
                                zzb(t12, iZzc, iZza);
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                                zzml.zza(t12, iZzc2 & 1048575, Integer.valueOf(zzlrVar.zzg()));
                                zzb(t12, iZzc, iZza);
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case AD_VISIBILITY_VALUE:
                                zzml.zza(t12, iZzc2 & 1048575, Long.valueOf(zzlrVar.zzk()));
                                zzb(t12, iZzc, iZza);
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 57:
                                zzml.zza(t12, iZzc2 & 1048575, Integer.valueOf(zzlrVar.zzf()));
                                zzb(t12, iZzc, iZza);
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                                zzml.zza(t12, iZzc2 & 1048575, Boolean.valueOf(zzlrVar.zzs()));
                                zzb(t12, iZzc, iZza);
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 59:
                                zza((Object) t12, iZzc2, zzlrVar);
                                zzb(t12, iZzc, iZza);
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 60:
                                zzlc zzlcVar3 = (zzlc) zza(t12, iZzc, iZza);
                                zzlrVar.zzb(zzlcVar3, (zzlu<zzlc>) zze(iZza), zzjgVar3);
                                zza(t12, iZzc, iZza, zzlcVar3);
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 61:
                                zzml.zza(t12, iZzc2 & 1048575, zzlrVar.zzp());
                                zzb(t12, iZzc, iZza);
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 62:
                                zzml.zza(t12, iZzc2 & 1048575, Integer.valueOf(zzlrVar.zzj()));
                                zzb(t12, iZzc, iZza);
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 63:
                                int iZze2 = zzlrVar.zze();
                                zzjx zzjxVarZzd2 = zzd(iZza);
                                if (zzjxVarZzd2 == null || zzjxVarZzd2.zza(iZze2)) {
                                    zzml.zza(t12, iZzc2 & 1048575, Integer.valueOf(iZze2));
                                    zzb(t12, iZzc, iZza);
                                    obj = objZza;
                                    zzjiVar = zzjiVar2;
                                    zzjgVar2 = zzjgVar3;
                                    zzjiVar2 = zzjiVar;
                                    objZza = obj;
                                    zzjgVar3 = zzjgVar2;
                                } else {
                                    objZza = zzlw.zza(t12, iZzc, iZze2, objZza, zzmkVar);
                                }
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 64:
                                zzml.zza(t12, iZzc2 & 1048575, Integer.valueOf(zzlrVar.zzh()));
                                zzb(t12, iZzc, iZza);
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                                zzml.zza(t12, iZzc2 & 1048575, Long.valueOf(zzlrVar.zzm()));
                                zzb(t12, iZzc, iZza);
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 66:
                                zzml.zza(t12, iZzc2 & 1048575, Integer.valueOf(zzlrVar.zzi()));
                                zzb(t12, iZzc, iZza);
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 67:
                                zzml.zza(t12, iZzc2 & 1048575, Long.valueOf(zzlrVar.zzn()));
                                zzb(t12, iZzc, iZza);
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            case 68:
                                zzlc zzlcVar4 = (zzlc) zza(t12, iZzc, iZza);
                                zzlrVar.zza(zzlcVar4, (zzlu<zzlc>) zze(iZza), zzjgVar3);
                                zza(t12, iZzc, iZza, zzlcVar4);
                                obj = objZza;
                                zzjiVar = zzjiVar2;
                                zzjgVar2 = zzjgVar3;
                                zzjiVar2 = zzjiVar;
                                objZza = obj;
                                zzjgVar3 = zzjgVar2;
                                t14 = t12;
                                zzmkVar3 = zzmkVar;
                                break;
                            default:
                                if (objZza == null) {
                                    try {
                                        try {
                                            objZza = zzmkVar.zzc(t12);
                                        } catch (zzke unused2) {
                                            obj2 = objZza;
                                            zzjiVar = zzjiVar2;
                                            zzjgVar2 = zzjgVar3;
                                            objZza = obj2;
                                            zzmkVar.zza(zzlrVar);
                                            if (objZza == null) {
                                                objZza = zzmkVar.zzc(t12);
                                            }
                                            if (!zzmkVar.zza(objZza, zzlrVar, 0)) {
                                                while (i12 < this.zzm) {
                                                    objZza = zza(t11, this.zzk[i12], objZza, (zzmk<UT, Object>) zzmkVar, t11);
                                                }
                                                if (objZza != null) {
                                                    zzmkVar.zzb(t12, objZza);
                                                    return;
                                                }
                                                return;
                                            }
                                            zzmkVar3 = zzmkVar;
                                            zzjiVar2 = zzjiVar;
                                            zzjgVar3 = zzjgVar2;
                                            t14 = t12;
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        while (i11 < this.zzm) {
                                            objZza = zza(t11, this.zzk[i11], objZza, (zzmk<UT, Object>) zzmkVar, t11);
                                        }
                                        if (objZza != null) {
                                            zzmkVar.zzb(t12, objZza);
                                        }
                                        throw th;
                                    }
                                }
                                try {
                                    if (!zzmkVar.zza(objZza, zzlrVar, 0)) {
                                        for (int i13 = this.zzl; i13 < this.zzm; i13++) {
                                            objZza = zza(t11, this.zzk[i13], objZza, (zzmk<UT, Object>) zzmkVar, t11);
                                        }
                                        if (objZza != null) {
                                            zzmkVar.zzb(t12, objZza);
                                            return;
                                        }
                                        return;
                                    }
                                    t14 = t12;
                                    zzmkVar3 = zzmkVar;
                                } catch (zzke unused3) {
                                    zzjiVar = zzjiVar2;
                                    zzjgVar2 = zzjgVar3;
                                    zzmkVar.zza(zzlrVar);
                                    if (objZza == null) {
                                        objZza = zzmkVar.zzc(t12);
                                    }
                                    if (!zzmkVar.zza(objZza, zzlrVar, 0)) {
                                        while (i12 < this.zzm) {
                                            objZza = zza(t11, this.zzk[i12], objZza, (zzmk<UT, Object>) zzmkVar, t11);
                                        }
                                        if (objZza != null) {
                                            zzmkVar.zzb(t12, objZza);
                                            return;
                                        }
                                        return;
                                    }
                                    zzmkVar3 = zzmkVar;
                                    zzjiVar2 = zzjiVar;
                                    zzjgVar3 = zzjgVar2;
                                    t14 = t12;
                                }
                                break;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        while (i11 < this.zzm) {
                            objZza = zza(t11, this.zzk[i11], objZza, (zzmk<UT, Object>) zzmkVar, t11);
                        }
                        if (objZza != null) {
                            zzmkVar.zzb(t12, objZza);
                        }
                        throw th;
                    }
                } else {
                    if (iZzc == Integer.MAX_VALUE) {
                        for (int i14 = this.zzl; i14 < this.zzm; i14++) {
                            objZza = zza(t11, this.zzk[i14], objZza, (zzmk<UT, Object>) zzmkVar3, t11);
                        }
                        if (objZza != null) {
                            zzmkVar3.zzb(t14, objZza);
                            return;
                        }
                        return;
                    }
                    try {
                        Object objZza2 = !this.zzh ? null : zzjiVar2.zza(zzjgVar3, this.zzg, iZzc);
                        if (objZza2 != null) {
                            Object objZzb2 = obj3 == null ? zzjiVar2.zzb(t14) : obj3;
                            zzmkVar2 = zzmkVar3;
                            t13 = t14;
                            try {
                                objZza = zzjiVar2.zza(t11, zzlrVar, objZza2, zzjgVar, objZzb2, objZza, zzmkVar2);
                                obj3 = objZzb2;
                            } catch (Throwable th5) {
                                th = th5;
                                t12 = t13;
                                zzmkVar = zzmkVar2;
                                while (i11 < this.zzm) {
                                    objZza = zza(t11, this.zzk[i11], objZza, (zzmk<UT, Object>) zzmkVar, t11);
                                }
                                if (objZza != null) {
                                    zzmkVar.zzb(t12, objZza);
                                }
                                throw th;
                            }
                        } else {
                            zzmkVar2 = zzmkVar3;
                            t13 = t14;
                            zzmkVar2.zza(zzlrVar);
                            if (objZza == null) {
                                objZza = zzmkVar2.zzc(t13);
                            }
                            if (!zzmkVar2.zza(objZza, zzlrVar, 0)) {
                                int i15 = this.zzl;
                                while (i15 < this.zzm) {
                                    zzmk zzmkVar4 = zzmkVar2;
                                    objZza = zza(t11, this.zzk[i15], objZza, (zzmk<UT, Object>) zzmkVar4, t11);
                                    i15++;
                                    t13 = t13;
                                    zzmkVar2 = zzmkVar4;
                                }
                                T t15 = t13;
                                zzmk zzmkVar5 = zzmkVar2;
                                if (objZza != null) {
                                    zzmkVar5.zzb(t15, objZza);
                                    return;
                                }
                                return;
                            }
                        }
                        t14 = t13;
                        zzmkVar3 = zzmkVar2;
                    } catch (Throwable th6) {
                        th = th6;
                        zzmkVar = zzmkVar3;
                        t12 = t14;
                    }
                }
            } catch (Throwable th7) {
                th = th7;
                zzmkVar = zzmkVar3;
                t12 = t14;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:176:0x054a  */
    /* JADX WARN: Code duplicated, block: B:9:0x0036  */
    @Override // com.google.android.gms.internal.measurement.zzlu
    public final void zza(T t11, zznb zznbVar) throws IOException {
        Map.Entry<?, ?> entry;
        Iterator it;
        int i11;
        int i12;
        int i13;
        boolean z10;
        int i14;
        Unsafe unsafe;
        boolean z11;
        Iterator itZzc;
        Map.Entry<?, ?> entry2;
        zznb zznbVar2 = zznbVar;
        int i15 = 267386880;
        int i16 = 1048575;
        if (zznbVar.zza() == 2) {
            zza(this.zzp, t11, zznbVar2);
            if (this.zzh) {
                zzjm<T> zzjmVarZza = this.zzq.zza(t11);
                if (zzjmVarZza.zza.isEmpty()) {
                    itZzc = null;
                    entry2 = null;
                } else {
                    itZzc = zzjmVarZza.zzc();
                    entry2 = (Map.Entry) itZzc.next();
                }
            } else {
                itZzc = null;
                entry2 = null;
            }
            for (int length = this.zzc.length - 3; length >= 0; length -= 3) {
                int iZzc = zzc(length);
                int i17 = this.zzc[length];
                while (entry2 != null && this.zzq.zza(entry2) > i17) {
                    this.zzq.zza(zznbVar2, entry2);
                    entry2 = itZzc.hasNext() ? (Map.Entry) itZzc.next() : null;
                }
                switch ((iZzc & 267386880) >>> 20) {
                    case 0:
                        if (zzc((Object) t11, length)) {
                            zznbVar2.zza(i17, zzml.zza(t11, iZzc & 1048575));
                        }
                        break;
                    case 1:
                        if (zzc((Object) t11, length)) {
                            zznbVar2.zza(i17, zzml.zzb(t11, iZzc & 1048575));
                        }
                        break;
                    case 2:
                        if (zzc((Object) t11, length)) {
                            zznbVar2.zzb(i17, zzml.zzd(t11, iZzc & 1048575));
                        }
                        break;
                    case 3:
                        if (zzc((Object) t11, length)) {
                            zznbVar2.zze(i17, zzml.zzd(t11, iZzc & 1048575));
                        }
                        break;
                    case 4:
                        if (zzc((Object) t11, length)) {
                            zznbVar2.zzc(i17, zzml.zzc(t11, iZzc & 1048575));
                        }
                        break;
                    case 5:
                        if (zzc((Object) t11, length)) {
                            zznbVar2.zza(i17, zzml.zzd(t11, iZzc & 1048575));
                        }
                        break;
                    case 6:
                        if (zzc((Object) t11, length)) {
                            zznbVar2.zzb(i17, zzml.zzc(t11, iZzc & 1048575));
                        }
                        break;
                    case 7:
                        if (zzc((Object) t11, length)) {
                            zznbVar2.zza(i17, zzml.zzh(t11, iZzc & 1048575));
                        }
                        break;
                    case 8:
                        if (zzc((Object) t11, length)) {
                            zza(i17, zzml.zze(t11, iZzc & 1048575), zznbVar2);
                        }
                        break;
                    case 9:
                        if (zzc((Object) t11, length)) {
                            zznbVar2.zzb(i17, zzml.zze(t11, iZzc & 1048575), zze(length));
                        }
                        break;
                    case 10:
                        if (zzc((Object) t11, length)) {
                            zznbVar2.zza(i17, (zzik) zzml.zze(t11, iZzc & 1048575));
                        }
                        break;
                    case 11:
                        if (zzc((Object) t11, length)) {
                            zznbVar2.zzf(i17, zzml.zzc(t11, iZzc & 1048575));
                        }
                        break;
                    case 12:
                        if (zzc((Object) t11, length)) {
                            zznbVar2.zza(i17, zzml.zzc(t11, iZzc & 1048575));
                        }
                        break;
                    case 13:
                        if (zzc((Object) t11, length)) {
                            zznbVar2.zzd(i17, zzml.zzc(t11, iZzc & 1048575));
                        }
                        break;
                    case 14:
                        if (zzc((Object) t11, length)) {
                            zznbVar2.zzc(i17, zzml.zzd(t11, iZzc & 1048575));
                        }
                        break;
                    case 15:
                        if (zzc((Object) t11, length)) {
                            zznbVar2.zze(i17, zzml.zzc(t11, iZzc & 1048575));
                        }
                        break;
                    case 16:
                        if (zzc((Object) t11, length)) {
                            zznbVar2.zzd(i17, zzml.zzd(t11, iZzc & 1048575));
                        }
                        break;
                    case 17:
                        if (zzc((Object) t11, length)) {
                            zznbVar2.zza(i17, zzml.zze(t11, iZzc & 1048575), zze(length));
                        }
                        break;
                    case 18:
                        zzlw.zzb(this.zzc[length], (List<Double>) zzml.zze(t11, iZzc & 1048575), zznbVar2, false);
                        break;
                    case 19:
                        zzlw.zzf(this.zzc[length], (List) zzml.zze(t11, iZzc & 1048575), zznbVar2, false);
                        break;
                    case 20:
                        zzlw.zzh(this.zzc[length], (List) zzml.zze(t11, iZzc & 1048575), zznbVar2, false);
                        break;
                    case 21:
                        zzlw.zzn(this.zzc[length], (List) zzml.zze(t11, iZzc & 1048575), zznbVar2, false);
                        break;
                    case 22:
                        zzlw.zzg(this.zzc[length], (List) zzml.zze(t11, iZzc & 1048575), zznbVar2, false);
                        break;
                    case 23:
                        zzlw.zze(this.zzc[length], (List) zzml.zze(t11, iZzc & 1048575), zznbVar2, false);
                        break;
                    case 24:
                        zzlw.zzd(this.zzc[length], (List) zzml.zze(t11, iZzc & 1048575), zznbVar2, false);
                        break;
                    case 25:
                        zzlw.zza(this.zzc[length], (List<Boolean>) zzml.zze(t11, iZzc & 1048575), zznbVar2, false);
                        break;
                    case 26:
                        zzlw.zzb(this.zzc[length], (List<String>) zzml.zze(t11, iZzc & 1048575), zznbVar2);
                        break;
                    case 27:
                        zzlw.zzb(this.zzc[length], (List<?>) zzml.zze(t11, iZzc & 1048575), zznbVar2, (zzlu<?>) zze(length));
                        break;
                    case 28:
                        zzlw.zza(this.zzc[length], (List<zzik>) zzml.zze(t11, iZzc & 1048575), zznbVar2);
                        break;
                    case NOTIFICATION_REDIRECT_VALUE:
                        zzlw.zzm(this.zzc[length], (List) zzml.zze(t11, iZzc & 1048575), zznbVar2, false);
                        break;
                    case 30:
                        zzlw.zzc(this.zzc[length], (List) zzml.zze(t11, iZzc & 1048575), zznbVar2, false);
                        break;
                    case TEMPLATE_HTML_SIZE_VALUE:
                        zzlw.zzi(this.zzc[length], (List) zzml.zze(t11, iZzc & 1048575), zznbVar2, false);
                        break;
                    case 32:
                        zzlw.zzj(this.zzc[length], (List) zzml.zze(t11, iZzc & 1048575), zznbVar2, false);
                        break;
                    case 33:
                        zzlw.zzk(this.zzc[length], (List) zzml.zze(t11, iZzc & 1048575), zznbVar2, false);
                        break;
                    case 34:
                        zzlw.zzl(this.zzc[length], (List) zzml.zze(t11, iZzc & 1048575), zznbVar2, false);
                        break;
                    case 35:
                        zzlw.zzb(this.zzc[length], (List<Double>) zzml.zze(t11, iZzc & 1048575), zznbVar2, true);
                        break;
                    case 36:
                        zzlw.zzf(this.zzc[length], (List) zzml.zze(t11, iZzc & 1048575), zznbVar2, true);
                        break;
                    case 37:
                        zzlw.zzh(this.zzc[length], (List) zzml.zze(t11, iZzc & 1048575), zznbVar2, true);
                        break;
                    case 38:
                        zzlw.zzn(this.zzc[length], (List) zzml.zze(t11, iZzc & 1048575), zznbVar2, true);
                        break;
                    case 39:
                        zzlw.zzg(this.zzc[length], (List) zzml.zze(t11, iZzc & 1048575), zznbVar2, true);
                        break;
                    case 40:
                        zzlw.zze(this.zzc[length], (List) zzml.zze(t11, iZzc & 1048575), zznbVar2, true);
                        break;
                    case 41:
                        zzlw.zzd(this.zzc[length], (List) zzml.zze(t11, iZzc & 1048575), zznbVar2, true);
                        break;
                    case 42:
                        zzlw.zza(this.zzc[length], (List<Boolean>) zzml.zze(t11, iZzc & 1048575), zznbVar2, true);
                        break;
                    case 43:
                        zzlw.zzm(this.zzc[length], (List) zzml.zze(t11, iZzc & 1048575), zznbVar2, true);
                        break;
                    case 44:
                        zzlw.zzc(this.zzc[length], (List) zzml.zze(t11, iZzc & 1048575), zznbVar2, true);
                        break;
                    case 45:
                        zzlw.zzi(this.zzc[length], (List) zzml.zze(t11, iZzc & 1048575), zznbVar2, true);
                        break;
                    case 46:
                        zzlw.zzj(this.zzc[length], (List) zzml.zze(t11, iZzc & 1048575), zznbVar2, true);
                        break;
                    case 47:
                        zzlw.zzk(this.zzc[length], (List) zzml.zze(t11, iZzc & 1048575), zznbVar2, true);
                        break;
                    case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                        zzlw.zzl(this.zzc[length], (List) zzml.zze(t11, iZzc & 1048575), zznbVar2, true);
                        break;
                    case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                        zzlw.zza(this.zzc[length], (List<?>) zzml.zze(t11, iZzc & 1048575), zznbVar2, (zzlu<?>) zze(length));
                        break;
                    case 50:
                        zza(zznbVar2, i17, zzml.zze(t11, iZzc & 1048575), length);
                        break;
                    case AD_REWARD_USER_VALUE:
                        if (zzc(t11, i17, length)) {
                            zznbVar2.zza(i17, zza(t11, iZzc & 1048575));
                        }
                        break;
                    case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                        if (zzc(t11, i17, length)) {
                            zznbVar2.zza(i17, zzb(t11, iZzc & 1048575));
                        }
                        break;
                    case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                        if (zzc(t11, i17, length)) {
                            zznbVar2.zzb(i17, zzd(t11, iZzc & 1048575));
                        }
                        break;
                    case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                        if (zzc(t11, i17, length)) {
                            zznbVar2.zze(i17, zzd(t11, iZzc & 1048575));
                        }
                        break;
                    case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                        if (zzc(t11, i17, length)) {
                            zznbVar2.zzc(i17, zzc(t11, iZzc & 1048575));
                        }
                        break;
                    case AD_VISIBILITY_VALUE:
                        if (zzc(t11, i17, length)) {
                            zznbVar2.zza(i17, zzd(t11, iZzc & 1048575));
                        }
                        break;
                    case 57:
                        if (zzc(t11, i17, length)) {
                            zznbVar2.zzb(i17, zzc(t11, iZzc & 1048575));
                        }
                        break;
                    case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                        if (zzc(t11, i17, length)) {
                            zznbVar2.zza(i17, zze(t11, iZzc & 1048575));
                        }
                        break;
                    case 59:
                        if (zzc(t11, i17, length)) {
                            zza(i17, zzml.zze(t11, iZzc & 1048575), zznbVar2);
                        }
                        break;
                    case 60:
                        if (zzc(t11, i17, length)) {
                            zznbVar2.zzb(i17, zzml.zze(t11, iZzc & 1048575), zze(length));
                        }
                        break;
                    case 61:
                        if (zzc(t11, i17, length)) {
                            zznbVar2.zza(i17, (zzik) zzml.zze(t11, iZzc & 1048575));
                        }
                        break;
                    case 62:
                        if (zzc(t11, i17, length)) {
                            zznbVar2.zzf(i17, zzc(t11, iZzc & 1048575));
                        }
                        break;
                    case 63:
                        if (zzc(t11, i17, length)) {
                            zznbVar2.zza(i17, zzc(t11, iZzc & 1048575));
                        }
                        break;
                    case 64:
                        if (zzc(t11, i17, length)) {
                            zznbVar2.zzd(i17, zzc(t11, iZzc & 1048575));
                        }
                        break;
                    case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                        if (zzc(t11, i17, length)) {
                            zznbVar2.zzc(i17, zzd(t11, iZzc & 1048575));
                        }
                        break;
                    case 66:
                        if (zzc(t11, i17, length)) {
                            zznbVar2.zze(i17, zzc(t11, iZzc & 1048575));
                        }
                        break;
                    case 67:
                        if (zzc(t11, i17, length)) {
                            zznbVar2.zzd(i17, zzd(t11, iZzc & 1048575));
                        }
                        break;
                    case 68:
                        if (zzc(t11, i17, length)) {
                            zznbVar2.zza(i17, zzml.zze(t11, iZzc & 1048575), zze(length));
                        }
                        break;
                }
            }
            while (entry2 != null) {
                this.zzq.zza(zznbVar2, entry2);
                entry2 = itZzc.hasNext() ? (Map.Entry) itZzc.next() : null;
            }
            return;
        }
        if (this.zzh) {
            zzjm<T> zzjmVarZza2 = this.zzq.zza(t11);
            if (zzjmVarZza2.zza.isEmpty()) {
                entry = null;
                it = null;
            } else {
                Iterator itZzd = zzjmVarZza2.zzd();
                entry = (Map.Entry) itZzd.next();
                it = itZzd;
            }
        } else {
            entry = null;
            it = null;
        }
        int length2 = this.zzc.length;
        Unsafe unsafe2 = zzb;
        int i18 = 0;
        int i19 = 0;
        int i20 = 1048575;
        while (i19 < length2) {
            int iZzc2 = zzc(i19);
            int[] iArr = this.zzc;
            int i21 = iArr[i19];
            int i22 = (iZzc2 & i15) >>> 20;
            if (i22 <= 17) {
                int i23 = iArr[i19 + 2];
                int i24 = i23 & i16;
                if (i24 != i20) {
                    i18 = i24 == i16 ? 0 : unsafe2.getInt(t11, i24);
                    i20 = i24;
                } else {
                    it = it;
                }
                i12 = i18;
                i13 = 1 << (i23 >>> 20);
                i11 = i20;
            } else {
                it = it;
                i11 = i20;
                i12 = i18;
                i13 = 0;
            }
            while (entry != null && this.zzq.zza(entry) <= i21) {
                this.zzq.zza(zznbVar2, entry);
                entry = it.hasNext() ? (Map.Entry) it.next() : null;
            }
            long j11 = iZzc2 & 1048575;
            switch (i22) {
                case 0:
                    i11 = i11;
                    entry = entry;
                    length2 = length2;
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    if (zza(t11, i14, i11, i12, i13)) {
                        zznbVar2.zza(i21, zzml.zza(t11, j11));
                    }
                    break;
                case 1:
                    i11 = i11;
                    entry = entry;
                    length2 = length2;
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    if (zza(t11, i14, i11, i12, i13)) {
                        zznbVar2.zza(i21, zzml.zzb(t11, j11));
                    }
                    break;
                case 2:
                    i11 = i11;
                    entry = entry;
                    length2 = length2;
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    if (zza(t11, i14, i11, i12, i13)) {
                        zznbVar2.zzb(i21, unsafe.getLong(t11, j11));
                    }
                    break;
                case 3:
                    i11 = i11;
                    entry = entry;
                    length2 = length2;
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    if (zza(t11, i14, i11, i12, i13)) {
                        zznbVar2.zze(i21, unsafe.getLong(t11, j11));
                    }
                    break;
                case 4:
                    i11 = i11;
                    entry = entry;
                    length2 = length2;
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    if (zza(t11, i14, i11, i12, i13)) {
                        zznbVar2.zzc(i21, unsafe.getInt(t11, j11));
                    }
                    break;
                case 5:
                    i11 = i11;
                    entry = entry;
                    length2 = length2;
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    if (zza(t11, i14, i11, i12, i13)) {
                        zznbVar2.zza(i21, unsafe.getLong(t11, j11));
                    }
                    break;
                case 6:
                    i11 = i11;
                    entry = entry;
                    length2 = length2;
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    if (zza(t11, i14, i11, i12, i13)) {
                        zznbVar2.zzb(i21, unsafe.getInt(t11, j11));
                    }
                    break;
                case 7:
                    i11 = i11;
                    entry = entry;
                    length2 = length2;
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    if (zza(t11, i14, i11, i12, i13)) {
                        zznbVar2.zza(i21, zzml.zzh(t11, j11));
                    }
                    break;
                case 8:
                    i11 = i11;
                    entry = entry;
                    length2 = length2;
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    if (zza(t11, i14, i11, i12, i13)) {
                        zza(i21, unsafe.getObject(t11, j11), zznbVar2);
                    }
                    break;
                case 9:
                    i11 = i11;
                    entry = entry;
                    length2 = length2;
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    if (zza(t11, i14, i11, i12, i13)) {
                        zznbVar2.zzb(i21, unsafe.getObject(t11, j11), zze(i14));
                    }
                    break;
                case 10:
                    i11 = i11;
                    entry = entry;
                    length2 = length2;
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    if (zza(t11, i14, i11, i12, i13)) {
                        zznbVar2.zza(i21, (zzik) unsafe.getObject(t11, j11));
                    }
                    break;
                case 11:
                    i11 = i11;
                    entry = entry;
                    length2 = length2;
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    if (zza(t11, i14, i11, i12, i13)) {
                        zznbVar2.zzf(i21, unsafe.getInt(t11, j11));
                    }
                    break;
                case 12:
                    i11 = i11;
                    entry = entry;
                    length2 = length2;
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    if (zza(t11, i14, i11, i12, i13)) {
                        zznbVar2.zza(i21, unsafe.getInt(t11, j11));
                    }
                    break;
                case 13:
                    i11 = i11;
                    entry = entry;
                    length2 = length2;
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    if (zza(t11, i14, i11, i12, i13)) {
                        zznbVar2.zzd(i21, unsafe.getInt(t11, j11));
                    }
                    break;
                case 14:
                    i11 = i11;
                    entry = entry;
                    length2 = length2;
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    if (zza(t11, i14, i11, i12, i13)) {
                        zznbVar2.zzc(i21, unsafe.getLong(t11, j11));
                    }
                    break;
                case 15:
                    i11 = i11;
                    entry = entry;
                    length2 = length2;
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    if (zza(t11, i14, i11, i12, i13)) {
                        zznbVar2.zze(i21, unsafe.getInt(t11, j11));
                    }
                    break;
                case 16:
                    entry = entry;
                    length2 = length2;
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    i11 = i11;
                    if (zza(t11, i14, i11, i12, i13)) {
                        zznbVar2.zzd(i21, unsafe.getLong(t11, j11));
                    }
                    break;
                case 17:
                    z10 = false;
                    entry = entry;
                    i14 = i19;
                    length2 = length2;
                    unsafe = unsafe2;
                    if (zza(t11, i19, i11, i12, i13)) {
                        zznbVar2 = zznbVar;
                        zznbVar2.zza(i21, unsafe.getObject(t11, j11), zze(i14));
                    } else {
                        zznbVar2 = zznbVar;
                    }
                    i11 = i11;
                    break;
                case 18:
                    z11 = false;
                    zzlw.zzb(this.zzc[i19], (List<Double>) unsafe2.getObject(t11, j11), zznbVar2, false);
                    z10 = z11;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 19:
                    z11 = false;
                    zzlw.zzf(this.zzc[i19], (List) unsafe2.getObject(t11, j11), zznbVar2, false);
                    z10 = z11;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 20:
                    z11 = false;
                    zzlw.zzh(this.zzc[i19], (List) unsafe2.getObject(t11, j11), zznbVar2, false);
                    z10 = z11;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 21:
                    z11 = false;
                    zzlw.zzn(this.zzc[i19], (List) unsafe2.getObject(t11, j11), zznbVar2, false);
                    z10 = z11;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 22:
                    z11 = false;
                    zzlw.zzg(this.zzc[i19], (List) unsafe2.getObject(t11, j11), zznbVar2, false);
                    z10 = z11;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 23:
                    z11 = false;
                    zzlw.zze(this.zzc[i19], (List) unsafe2.getObject(t11, j11), zznbVar2, false);
                    z10 = z11;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 24:
                    z11 = false;
                    zzlw.zzd(this.zzc[i19], (List) unsafe2.getObject(t11, j11), zznbVar2, false);
                    z10 = z11;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 25:
                    z11 = false;
                    zzlw.zza(this.zzc[i19], (List<Boolean>) unsafe2.getObject(t11, j11), zznbVar2, false);
                    z10 = z11;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 26:
                    zzlw.zzb(this.zzc[i19], (List<String>) unsafe2.getObject(t11, j11), zznbVar2);
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 27:
                    zzlw.zzb(this.zzc[i19], (List<?>) unsafe2.getObject(t11, j11), zznbVar2, (zzlu<?>) zze(i19));
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 28:
                    zzlw.zza(this.zzc[i19], (List<zzik>) unsafe2.getObject(t11, j11), zznbVar2);
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case NOTIFICATION_REDIRECT_VALUE:
                    z11 = false;
                    zzlw.zzm(this.zzc[i19], (List) unsafe2.getObject(t11, j11), zznbVar2, false);
                    z10 = z11;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 30:
                    z11 = false;
                    zzlw.zzc(this.zzc[i19], (List) unsafe2.getObject(t11, j11), zznbVar2, false);
                    z10 = z11;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case TEMPLATE_HTML_SIZE_VALUE:
                    z11 = false;
                    zzlw.zzi(this.zzc[i19], (List) unsafe2.getObject(t11, j11), zznbVar2, false);
                    z10 = z11;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 32:
                    z11 = false;
                    zzlw.zzj(this.zzc[i19], (List) unsafe2.getObject(t11, j11), zznbVar2, false);
                    z10 = z11;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 33:
                    z11 = false;
                    zzlw.zzk(this.zzc[i19], (List) unsafe2.getObject(t11, j11), zznbVar2, false);
                    z10 = z11;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 34:
                    z11 = false;
                    zzlw.zzl(this.zzc[i19], (List) unsafe2.getObject(t11, j11), zznbVar2, false);
                    z10 = z11;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 35:
                    zzlw.zzb(this.zzc[i19], (List<Double>) unsafe2.getObject(t11, j11), zznbVar2, true);
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 36:
                    zzlw.zzf(this.zzc[i19], (List) unsafe2.getObject(t11, j11), zznbVar2, true);
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 37:
                    zzlw.zzh(this.zzc[i19], (List) unsafe2.getObject(t11, j11), zznbVar2, true);
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 38:
                    zzlw.zzn(this.zzc[i19], (List) unsafe2.getObject(t11, j11), zznbVar2, true);
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 39:
                    zzlw.zzg(this.zzc[i19], (List) unsafe2.getObject(t11, j11), zznbVar2, true);
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 40:
                    zzlw.zze(this.zzc[i19], (List) unsafe2.getObject(t11, j11), zznbVar2, true);
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 41:
                    zzlw.zzd(this.zzc[i19], (List) unsafe2.getObject(t11, j11), zznbVar2, true);
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 42:
                    zzlw.zza(this.zzc[i19], (List<Boolean>) unsafe2.getObject(t11, j11), zznbVar2, true);
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 43:
                    zzlw.zzm(this.zzc[i19], (List) unsafe2.getObject(t11, j11), zznbVar2, true);
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 44:
                    zzlw.zzc(this.zzc[i19], (List) unsafe2.getObject(t11, j11), zznbVar2, true);
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 45:
                    zzlw.zzi(this.zzc[i19], (List) unsafe2.getObject(t11, j11), zznbVar2, true);
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 46:
                    zzlw.zzj(this.zzc[i19], (List) unsafe2.getObject(t11, j11), zznbVar2, true);
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 47:
                    zzlw.zzk(this.zzc[i19], (List) unsafe2.getObject(t11, j11), zznbVar2, true);
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                    zzlw.zzl(this.zzc[i19], (List) unsafe2.getObject(t11, j11), zznbVar2, true);
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    zzlw.zza(this.zzc[i19], (List<?>) unsafe2.getObject(t11, j11), zznbVar2, (zzlu<?>) zze(i19));
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 50:
                    zza(zznbVar2, i21, unsafe2.getObject(t11, j11), i19);
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case AD_REWARD_USER_VALUE:
                    if (zzc(t11, i21, i19)) {
                        zznbVar2.zza(i21, zza(t11, j11));
                    }
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    if (zzc(t11, i21, i19)) {
                        zznbVar2.zza(i21, zzb(t11, j11));
                    }
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    if (zzc(t11, i21, i19)) {
                        zznbVar2.zzb(i21, zzd(t11, j11));
                    }
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    if (zzc(t11, i21, i19)) {
                        zznbVar2.zze(i21, zzd(t11, j11));
                    }
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    if (zzc(t11, i21, i19)) {
                        zznbVar2.zzc(i21, zzc(t11, j11));
                    }
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case AD_VISIBILITY_VALUE:
                    if (zzc(t11, i21, i19)) {
                        zznbVar2.zza(i21, zzd(t11, j11));
                    }
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 57:
                    if (zzc(t11, i21, i19)) {
                        zznbVar2.zzb(i21, zzc(t11, j11));
                    }
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    if (zzc(t11, i21, i19)) {
                        zznbVar2.zza(i21, zze(t11, j11));
                    }
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 59:
                    if (zzc(t11, i21, i19)) {
                        zza(i21, unsafe2.getObject(t11, j11), zznbVar2);
                    }
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 60:
                    if (zzc(t11, i21, i19)) {
                        zznbVar2.zzb(i21, unsafe2.getObject(t11, j11), zze(i19));
                    }
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 61:
                    if (zzc(t11, i21, i19)) {
                        zznbVar2.zza(i21, (zzik) unsafe2.getObject(t11, j11));
                    }
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 62:
                    if (zzc(t11, i21, i19)) {
                        zznbVar2.zzf(i21, zzc(t11, j11));
                    }
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 63:
                    if (zzc(t11, i21, i19)) {
                        zznbVar2.zza(i21, zzc(t11, j11));
                    }
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 64:
                    if (zzc(t11, i21, i19)) {
                        zznbVar2.zzd(i21, zzc(t11, j11));
                    }
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                    if (zzc(t11, i21, i19)) {
                        zznbVar2.zzc(i21, zzd(t11, j11));
                    }
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 66:
                    if (zzc(t11, i21, i19)) {
                        zznbVar2.zze(i21, zzc(t11, j11));
                    }
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 67:
                    if (zzc(t11, i21, i19)) {
                        zznbVar2.zzd(i21, zzd(t11, j11));
                    }
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                case 68:
                    if (zzc(t11, i21, i19)) {
                        zznbVar2.zza(i21, unsafe2.getObject(t11, j11), zze(i19));
                    }
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
                default:
                    z10 = false;
                    i14 = i19;
                    unsafe = unsafe2;
                    break;
            }
            i19 = i14 + 3;
            i18 = i12;
            unsafe2 = unsafe;
            i16 = 1048575;
            it = it;
            entry = entry;
            length2 = length2;
            i20 = i11;
            i15 = 267386880;
        }
        Iterator it2 = it;
        while (entry != null) {
            this.zzq.zza(zznbVar2, entry);
            entry = it2.hasNext() ? (Map.Entry) it2.next() : null;
        }
        zza(this.zzp, t11, zznbVar2);
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final void zza(T t11, T t12) {
        zzf(t11);
        t12.getClass();
        for (int i11 = 0; i11 < this.zzc.length; i11 += 3) {
            int iZzc = zzc(i11);
            long j11 = 1048575 & iZzc;
            int i12 = this.zzc[i11];
            switch ((iZzc & 267386880) >>> 20) {
                case 0:
                    if (zzc((Object) t12, i11)) {
                        zzml.zza(t11, j11, zzml.zza(t12, j11));
                        zzb((Object) t11, i11);
                    }
                    break;
                case 1:
                    if (zzc((Object) t12, i11)) {
                        zzml.zza((Object) t11, j11, zzml.zzb(t12, j11));
                        zzb((Object) t11, i11);
                    }
                    break;
                case 2:
                    if (zzc((Object) t12, i11)) {
                        zzml.zza((Object) t11, j11, zzml.zzd(t12, j11));
                        zzb((Object) t11, i11);
                    }
                    break;
                case 3:
                    if (zzc((Object) t12, i11)) {
                        zzml.zza((Object) t11, j11, zzml.zzd(t12, j11));
                        zzb((Object) t11, i11);
                    }
                    break;
                case 4:
                    if (zzc((Object) t12, i11)) {
                        zzml.zza((Object) t11, j11, zzml.zzc(t12, j11));
                        zzb((Object) t11, i11);
                    }
                    break;
                case 5:
                    if (zzc((Object) t12, i11)) {
                        zzml.zza((Object) t11, j11, zzml.zzd(t12, j11));
                        zzb((Object) t11, i11);
                    }
                    break;
                case 6:
                    if (zzc((Object) t12, i11)) {
                        zzml.zza((Object) t11, j11, zzml.zzc(t12, j11));
                        zzb((Object) t11, i11);
                    }
                    break;
                case 7:
                    if (zzc((Object) t12, i11)) {
                        zzml.zzc(t11, j11, zzml.zzh(t12, j11));
                        zzb((Object) t11, i11);
                    }
                    break;
                case 8:
                    if (zzc((Object) t12, i11)) {
                        zzml.zza(t11, j11, zzml.zze(t12, j11));
                        zzb((Object) t11, i11);
                    }
                    break;
                case 9:
                    zza(t11, t12, i11);
                    break;
                case 10:
                    if (zzc((Object) t12, i11)) {
                        zzml.zza(t11, j11, zzml.zze(t12, j11));
                        zzb((Object) t11, i11);
                    }
                    break;
                case 11:
                    if (zzc((Object) t12, i11)) {
                        zzml.zza((Object) t11, j11, zzml.zzc(t12, j11));
                        zzb((Object) t11, i11);
                    }
                    break;
                case 12:
                    if (zzc((Object) t12, i11)) {
                        zzml.zza((Object) t11, j11, zzml.zzc(t12, j11));
                        zzb((Object) t11, i11);
                    }
                    break;
                case 13:
                    if (zzc((Object) t12, i11)) {
                        zzml.zza((Object) t11, j11, zzml.zzc(t12, j11));
                        zzb((Object) t11, i11);
                    }
                    break;
                case 14:
                    if (zzc((Object) t12, i11)) {
                        zzml.zza((Object) t11, j11, zzml.zzd(t12, j11));
                        zzb((Object) t11, i11);
                    }
                    break;
                case 15:
                    if (zzc((Object) t12, i11)) {
                        zzml.zza((Object) t11, j11, zzml.zzc(t12, j11));
                        zzb((Object) t11, i11);
                    }
                    break;
                case 16:
                    if (zzc((Object) t12, i11)) {
                        zzml.zza((Object) t11, j11, zzml.zzd(t12, j11));
                        zzb((Object) t11, i11);
                    }
                    break;
                case 17:
                    zza(t11, t12, i11);
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
                    this.zzo.zza(t11, t12, j11);
                    break;
                case 50:
                    zzlw.zza(this.zzr, t11, t12, j11);
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
                    if (zzc(t12, i12, i11)) {
                        zzml.zza(t11, j11, zzml.zze(t12, j11));
                        zzb(t11, i12, i11);
                    }
                    break;
                case 60:
                    zzb(t11, t12, i11);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                case 66:
                case 67:
                    if (zzc(t12, i12, i11)) {
                        zzml.zza(t11, j11, zzml.zze(t12, j11));
                        zzb(t11, i12, i11);
                    }
                    break;
                case 68:
                    zzb(t11, t12, i11);
                    break;
            }
        }
        zzlw.zza(this.zzp, t11, t12);
        if (this.zzh) {
            zzlw.zza(this.zzq, t11, t12);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final void zza(T t11, byte[] bArr, int i11, int i12, zzij zzijVar) throws IOException {
        zza(t11, bArr, i11, i12, 0, zzijVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final int zzb(T t11) {
        int i11;
        int iZza;
        int length = this.zzc.length;
        int i12 = 0;
        for (int i13 = 0; i13 < length; i13 += 3) {
            int iZzc = zzc(i13);
            int i14 = this.zzc[i13];
            long j11 = 1048575 & iZzc;
            int iHashCode = 37;
            switch ((iZzc & 267386880) >>> 20) {
                case 0:
                    i11 = i12 * 53;
                    iZza = zzjv.zza(Double.doubleToLongBits(zzml.zza(t11, j11)));
                    i12 = i11 + iZza;
                    break;
                case 1:
                    i11 = i12 * 53;
                    iZza = Float.floatToIntBits(zzml.zzb(t11, j11));
                    i12 = i11 + iZza;
                    break;
                case 2:
                    i11 = i12 * 53;
                    iZza = zzjv.zza(zzml.zzd(t11, j11));
                    i12 = i11 + iZza;
                    break;
                case 3:
                    i11 = i12 * 53;
                    iZza = zzjv.zza(zzml.zzd(t11, j11));
                    i12 = i11 + iZza;
                    break;
                case 4:
                    i11 = i12 * 53;
                    iZza = zzml.zzc(t11, j11);
                    i12 = i11 + iZza;
                    break;
                case 5:
                    i11 = i12 * 53;
                    iZza = zzjv.zza(zzml.zzd(t11, j11));
                    i12 = i11 + iZza;
                    break;
                case 6:
                    i11 = i12 * 53;
                    iZza = zzml.zzc(t11, j11);
                    i12 = i11 + iZza;
                    break;
                case 7:
                    i11 = i12 * 53;
                    iZza = zzjv.zza(zzml.zzh(t11, j11));
                    i12 = i11 + iZza;
                    break;
                case 8:
                    i11 = i12 * 53;
                    iZza = ((String) zzml.zze(t11, j11)).hashCode();
                    i12 = i11 + iZza;
                    break;
                case 9:
                    Object objZze = zzml.zze(t11, j11);
                    if (objZze != null) {
                        iHashCode = objZze.hashCode();
                    }
                    i12 = (i12 * 53) + iHashCode;
                    break;
                case 10:
                    i11 = i12 * 53;
                    iZza = zzml.zze(t11, j11).hashCode();
                    i12 = i11 + iZza;
                    break;
                case 11:
                    i11 = i12 * 53;
                    iZza = zzml.zzc(t11, j11);
                    i12 = i11 + iZza;
                    break;
                case 12:
                    i11 = i12 * 53;
                    iZza = zzml.zzc(t11, j11);
                    i12 = i11 + iZza;
                    break;
                case 13:
                    i11 = i12 * 53;
                    iZza = zzml.zzc(t11, j11);
                    i12 = i11 + iZza;
                    break;
                case 14:
                    i11 = i12 * 53;
                    iZza = zzjv.zza(zzml.zzd(t11, j11));
                    i12 = i11 + iZza;
                    break;
                case 15:
                    i11 = i12 * 53;
                    iZza = zzml.zzc(t11, j11);
                    i12 = i11 + iZza;
                    break;
                case 16:
                    i11 = i12 * 53;
                    iZza = zzjv.zza(zzml.zzd(t11, j11));
                    i12 = i11 + iZza;
                    break;
                case 17:
                    Object objZze2 = zzml.zze(t11, j11);
                    if (objZze2 != null) {
                        iHashCode = objZze2.hashCode();
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
                    iZza = zzml.zze(t11, j11).hashCode();
                    i12 = i11 + iZza;
                    break;
                case 50:
                    i11 = i12 * 53;
                    iZza = zzml.zze(t11, j11).hashCode();
                    i12 = i11 + iZza;
                    break;
                case AD_REWARD_USER_VALUE:
                    if (zzc(t11, i14, i13)) {
                        i11 = i12 * 53;
                        iZza = zzjv.zza(Double.doubleToLongBits(zza(t11, j11)));
                        i12 = i11 + iZza;
                    }
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    if (zzc(t11, i14, i13)) {
                        i11 = i12 * 53;
                        iZza = Float.floatToIntBits(zzb(t11, j11));
                        i12 = i11 + iZza;
                    }
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    if (zzc(t11, i14, i13)) {
                        i11 = i12 * 53;
                        iZza = zzjv.zza(zzd(t11, j11));
                        i12 = i11 + iZza;
                    }
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    if (zzc(t11, i14, i13)) {
                        i11 = i12 * 53;
                        iZza = zzjv.zza(zzd(t11, j11));
                        i12 = i11 + iZza;
                    }
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    if (zzc(t11, i14, i13)) {
                        i11 = i12 * 53;
                        iZza = zzc(t11, j11);
                        i12 = i11 + iZza;
                    }
                    break;
                case AD_VISIBILITY_VALUE:
                    if (zzc(t11, i14, i13)) {
                        i11 = i12 * 53;
                        iZza = zzjv.zza(zzd(t11, j11));
                        i12 = i11 + iZza;
                    }
                    break;
                case 57:
                    if (zzc(t11, i14, i13)) {
                        i11 = i12 * 53;
                        iZza = zzc(t11, j11);
                        i12 = i11 + iZza;
                    }
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    if (zzc(t11, i14, i13)) {
                        i11 = i12 * 53;
                        iZza = zzjv.zza(zze(t11, j11));
                        i12 = i11 + iZza;
                    }
                    break;
                case 59:
                    if (zzc(t11, i14, i13)) {
                        i11 = i12 * 53;
                        iZza = ((String) zzml.zze(t11, j11)).hashCode();
                        i12 = i11 + iZza;
                    }
                    break;
                case 60:
                    if (zzc(t11, i14, i13)) {
                        i11 = i12 * 53;
                        iZza = zzml.zze(t11, j11).hashCode();
                        i12 = i11 + iZza;
                    }
                    break;
                case 61:
                    if (zzc(t11, i14, i13)) {
                        i11 = i12 * 53;
                        iZza = zzml.zze(t11, j11).hashCode();
                        i12 = i11 + iZza;
                    }
                    break;
                case 62:
                    if (zzc(t11, i14, i13)) {
                        i11 = i12 * 53;
                        iZza = zzc(t11, j11);
                        i12 = i11 + iZza;
                    }
                    break;
                case 63:
                    if (zzc(t11, i14, i13)) {
                        i11 = i12 * 53;
                        iZza = zzc(t11, j11);
                        i12 = i11 + iZza;
                    }
                    break;
                case 64:
                    if (zzc(t11, i14, i13)) {
                        i11 = i12 * 53;
                        iZza = zzc(t11, j11);
                        i12 = i11 + iZza;
                    }
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                    if (zzc(t11, i14, i13)) {
                        i11 = i12 * 53;
                        iZza = zzjv.zza(zzd(t11, j11));
                        i12 = i11 + iZza;
                    }
                    break;
                case 66:
                    if (zzc(t11, i14, i13)) {
                        i11 = i12 * 53;
                        iZza = zzc(t11, j11);
                        i12 = i11 + iZza;
                    }
                    break;
                case 67:
                    if (zzc(t11, i14, i13)) {
                        i11 = i12 * 53;
                        iZza = zzjv.zza(zzd(t11, j11));
                        i12 = i11 + iZza;
                    }
                    break;
                case 68:
                    if (zzc(t11, i14, i13)) {
                        i11 = i12 * 53;
                        iZza = zzml.zze(t11, j11).hashCode();
                        i12 = i11 + iZza;
                    }
                    break;
            }
        }
        int iHashCode2 = (i12 * 53) + this.zzp.zzd(t11).hashCode();
        return this.zzh ? (iHashCode2 * 53) + this.zzq.zza(t11).hashCode() : iHashCode2;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x003a  */
    @Override // com.google.android.gms.internal.measurement.zzlu
    public final boolean zzb(T t11, T t12) {
        int length = this.zzc.length;
        int i11 = 0;
        while (true) {
            boolean zZza = true;
            if (i11 >= length) {
                if (!this.zzp.zzd(t11).equals(this.zzp.zzd(t12))) {
                    return false;
                }
                if (this.zzh) {
                    return this.zzq.zza(t11).equals(this.zzq.zza(t12));
                }
                return true;
            }
            int iZzc = zzc(i11);
            long j11 = iZzc & 1048575;
            switch ((iZzc & 267386880) >>> 20) {
                case 0:
                    if (!zzc(t11, t12, i11) || Double.doubleToLongBits(zzml.zza(t11, j11)) != Double.doubleToLongBits(zzml.zza(t12, j11))) {
                        zZza = false;
                    }
                    break;
                case 1:
                    if (!zzc(t11, t12, i11) || Float.floatToIntBits(zzml.zzb(t11, j11)) != Float.floatToIntBits(zzml.zzb(t12, j11))) {
                        zZza = false;
                    }
                    break;
                case 2:
                    if (!zzc(t11, t12, i11) || zzml.zzd(t11, j11) != zzml.zzd(t12, j11)) {
                        zZza = false;
                    }
                    break;
                case 3:
                    if (!zzc(t11, t12, i11) || zzml.zzd(t11, j11) != zzml.zzd(t12, j11)) {
                        zZza = false;
                    }
                    break;
                case 4:
                    if (!zzc(t11, t12, i11) || zzml.zzc(t11, j11) != zzml.zzc(t12, j11)) {
                        zZza = false;
                    }
                    break;
                case 5:
                    if (!zzc(t11, t12, i11) || zzml.zzd(t11, j11) != zzml.zzd(t12, j11)) {
                        zZza = false;
                    }
                    break;
                case 6:
                    if (!zzc(t11, t12, i11) || zzml.zzc(t11, j11) != zzml.zzc(t12, j11)) {
                        zZza = false;
                    }
                    break;
                case 7:
                    if (!zzc(t11, t12, i11) || zzml.zzh(t11, j11) != zzml.zzh(t12, j11)) {
                        zZza = false;
                    }
                    break;
                case 8:
                    if (!zzc(t11, t12, i11) || !zzlw.zza(zzml.zze(t11, j11), zzml.zze(t12, j11))) {
                        zZza = false;
                    }
                    break;
                case 9:
                    if (!zzc(t11, t12, i11) || !zzlw.zza(zzml.zze(t11, j11), zzml.zze(t12, j11))) {
                        zZza = false;
                    }
                    break;
                case 10:
                    if (!zzc(t11, t12, i11) || !zzlw.zza(zzml.zze(t11, j11), zzml.zze(t12, j11))) {
                        zZza = false;
                    }
                    break;
                case 11:
                    if (!zzc(t11, t12, i11) || zzml.zzc(t11, j11) != zzml.zzc(t12, j11)) {
                        zZza = false;
                    }
                    break;
                case 12:
                    if (!zzc(t11, t12, i11) || zzml.zzc(t11, j11) != zzml.zzc(t12, j11)) {
                        zZza = false;
                    }
                    break;
                case 13:
                    if (!zzc(t11, t12, i11) || zzml.zzc(t11, j11) != zzml.zzc(t12, j11)) {
                        zZza = false;
                    }
                    break;
                case 14:
                    if (!zzc(t11, t12, i11) || zzml.zzd(t11, j11) != zzml.zzd(t12, j11)) {
                        zZza = false;
                    }
                    break;
                case 15:
                    if (!zzc(t11, t12, i11) || zzml.zzc(t11, j11) != zzml.zzc(t12, j11)) {
                        zZza = false;
                    }
                    break;
                case 16:
                    if (!zzc(t11, t12, i11) || zzml.zzd(t11, j11) != zzml.zzd(t12, j11)) {
                        zZza = false;
                    }
                    break;
                case 17:
                    if (!zzc(t11, t12, i11) || !zzlw.zza(zzml.zze(t11, j11), zzml.zze(t12, j11))) {
                        zZza = false;
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
                    zZza = zzlw.zza(zzml.zze(t11, j11), zzml.zze(t12, j11));
                    break;
                case 50:
                    zZza = zzlw.zza(zzml.zze(t11, j11), zzml.zze(t12, j11));
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
                    long jZzb = zzb(i11) & 1048575;
                    if (zzml.zzc(t11, jZzb) != zzml.zzc(t12, jZzb) || !zzlw.zza(zzml.zze(t11, j11), zzml.zze(t12, j11))) {
                        zZza = false;
                    }
                    break;
            }
            if (!zZza) {
                return false;
            }
            i11 += 3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x006d  */
    /* JADX WARN: Code duplicated, block: B:27:0x0073  */
    /* JADX WARN: Code duplicated, block: B:40:0x0080 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzlu
    public final void zzd(T t11) {
        if (zzg(t11)) {
            if (t11 instanceof zzjt) {
                zzjt zzjtVar = (zzjt) t11;
                zzjtVar.zzc(Integer.MAX_VALUE);
                zzjtVar.zza = 0;
                zzjtVar.zzcm();
            }
            int length = this.zzc.length;
            for (int i11 = 0; i11 < length; i11 += 3) {
                int iZzc = zzc(i11);
                long j11 = 1048575 & iZzc;
                int i12 = (iZzc & 267386880) >>> 20;
                if (i12 != 9) {
                    if (i12 != 60 && i12 != 68) {
                        switch (i12) {
                            case 17:
                                if (zzc((Object) t11, i11)) {
                                    zze(i11).zzd(zzb.getObject(t11, j11));
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
                                this.zzo.zzb(t11, j11);
                                break;
                            case 50:
                                Unsafe unsafe = zzb;
                                Object object = unsafe.getObject(t11, j11);
                                if (object != null) {
                                    unsafe.putObject(t11, j11, this.zzr.zzc(object));
                                }
                                break;
                        }
                    } else if (zzc(t11, this.zzc[i11], i11)) {
                        zze(i11).zzd(zzb.getObject(t11, j11));
                    }
                } else if (zzc((Object) t11, i11)) {
                    zze(i11).zzd(zzb.getObject(t11, j11));
                }
            }
            this.zzp.zzf(t11);
            if (this.zzh) {
                this.zzq.zzc(t11);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:51:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:54:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:57:0x00f7 A[LOOP:2: B:52:0x00e6->B:57:0x00f7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:74:0x00f6 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:81:0x0114 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23, types: [com.google.android.gms.internal.measurement.zzlu] */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v31 */
    /* JADX WARN: Type inference failed for: r1v8, types: [com.google.android.gms.internal.measurement.zzlu] */
    @Override // com.google.android.gms.internal.measurement.zzlu
    public final boolean zze(T t11) {
        int i11;
        int i12;
        List list;
        ?? Zze;
        int i13;
        int i14 = 1048575;
        int i15 = 0;
        int i16 = 0;
        while (i16 < this.zzl) {
            int i17 = this.zzk[i16];
            int i18 = this.zzc[i17];
            int iZzc = zzc(i17);
            int i19 = this.zzc[i17 + 2];
            int i20 = i19 & 1048575;
            int i21 = 1 << (i19 >>> 20);
            if (i20 != i14) {
                if (i20 != 1048575) {
                    i15 = zzb.getInt(t11, i20);
                }
                i12 = i15;
                i11 = i20;
            } else {
                i11 = i14;
                i12 = i15;
            }
            if ((268435456 & iZzc) != 0 && !zza(t11, i17, i11, i12, i21)) {
                return false;
            }
            int i22 = (267386880 & iZzc) >>> 20;
            if (i22 == 9 || i22 == 17) {
                if (zza(t11, i17, i11, i12, i21) && !zza((Object) t11, iZzc, zze(i17))) {
                    return false;
                }
            } else if (i22 == 27) {
                list = (List) zzml.zze(t11, iZzc & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    Zze = zze(i17);
                    for (i13 = 0; i13 < list.size(); i13++) {
                        if (!Zze.zze(list.get(i13))) {
                            return false;
                        }
                    }
                }
            } else if (i22 == 60 || i22 == 68) {
                if (zzc(t11, i18, i17) && !zza((Object) t11, iZzc, zze(i17))) {
                    return false;
                }
            } else if (i22 == 49) {
                list = (List) zzml.zze(t11, iZzc & 1048575);
                if (list.isEmpty()) {
                    Zze = zze(i17);
                    while (i13 < list.size()) {
                        if (!Zze.zze(list.get(i13))) {
                            return false;
                        }
                    }
                } else {
                    continue;
                }
            } else if (i22 != 50) {
                continue;
            } else {
                Map<?, ?> mapZzd = this.zzr.zzd(zzml.zze(t11, iZzc & 1048575));
                if (mapZzd.isEmpty()) {
                    continue;
                } else if (this.zzr.zza(zzf(i17)).zzc.zzb() == zzmz.MESSAGE) {
                    ?? Zza = 0;
                    for (Object obj : mapZzd.values()) {
                        if (Zza == 0) {
                            Zza = Zza;
                            Zza = zzlq.zza().zza((Class) obj.getClass());
                        }
                        Zza = Zza;
                        if (!Zza.zze(obj)) {
                            return false;
                        }
                    }
                } else {
                    continue;
                }
            }
            i16++;
            i14 = i11;
            i15 = i12;
        }
        return !this.zzh || this.zzq.zza(t11).zzg();
    }
}
