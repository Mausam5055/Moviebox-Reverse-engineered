package com.google.android.libraries.places.internal;

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
final class zzavi<T> implements zzavt<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzawx.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzavf zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final int[] zzj;
    private final int zzk;
    private final int zzl;
    private final zzaut zzm;
    private final zzawn zzn;
    private final zzatg zzo;
    private final zzavl zzp;
    private final zzava zzq;

    private zzavi(int[] iArr, Object[] objArr, int i11, int i12, zzavf zzavfVar, int i13, boolean z10, int[] iArr2, int i14, int i15, zzavl zzavlVar, zzaut zzautVar, zzawn zzawnVar, zzatg zzatgVar, zzava zzavaVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i11;
        this.zzf = i12;
        this.zzi = zzavfVar instanceof zzatu;
        boolean z11 = false;
        if (zzatgVar != null && zzatgVar.zzi(zzavfVar)) {
            z11 = true;
        }
        this.zzh = z11;
        this.zzj = iArr2;
        this.zzk = i14;
        this.zzl = i15;
        this.zzp = zzavlVar;
        this.zzm = zzautVar;
        this.zzn = zzawnVar;
        this.zzo = zzatgVar;
        this.zzg = zzavfVar;
        this.zzq = zzavaVar;
    }

    private final void zzA(Object obj, Object obj2, int i11) {
        int i12 = this.zzc[i11];
        if (zzM(obj2, i12, i11)) {
            int iZzp = zzp(i11) & 1048575;
            Unsafe unsafe = zzb;
            long j11 = iZzp;
            Object object = unsafe.getObject(obj2, j11);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i11] + " is present but null: " + obj2.toString());
            }
            zzavt zzavtVarZzs = zzs(i11);
            if (!zzM(obj, i12, i11)) {
                if (zzL(object)) {
                    Object objZzc = zzavtVarZzs.zzc();
                    zzavtVarZzs.zze(objZzc, object);
                    unsafe.putObject(obj, j11, objZzc);
                } else {
                    unsafe.putObject(obj, j11, object);
                }
                zzD(obj, i12, i11);
                return;
            }
            Object object2 = unsafe.getObject(obj, j11);
            if (!zzL(object2)) {
                Object objZzc2 = zzavtVarZzs.zzc();
                zzavtVarZzs.zze(objZzc2, object2);
                unsafe.putObject(obj, j11, objZzc2);
                object2 = objZzc2;
            }
            zzavtVarZzs.zze(object2, object);
        }
    }

    private final void zzB(Object obj, int i11, zzavs zzavsVar) throws IOException {
        long j11 = i11 & 1048575;
        if (zzH(i11)) {
            zzawx.zzs(obj, j11, zzavsVar.zzs());
        } else if (this.zzi) {
            zzawx.zzs(obj, j11, zzavsVar.zzr());
        } else {
            zzawx.zzs(obj, j11, zzavsVar.zzp());
        }
    }

    private final void zzC(Object obj, int i11) {
        int iZzn = zzn(i11);
        long j11 = 1048575 & iZzn;
        if (j11 == 1048575) {
            return;
        }
        zzawx.zzq(obj, j11, (1 << (iZzn >>> 20)) | zzawx.zzc(obj, j11));
    }

    private final void zzD(Object obj, int i11, int i12) {
        zzawx.zzq(obj, zzn(i12) & 1048575, i11);
    }

    private final void zzE(Object obj, int i11, Object obj2) {
        zzb.putObject(obj, zzp(i11) & 1048575, obj2);
        zzC(obj, i11);
    }

    private final void zzF(Object obj, int i11, int i12, Object obj2) {
        zzb.putObject(obj, zzp(i12) & 1048575, obj2);
        zzD(obj, i11, i12);
    }

    private final boolean zzG(Object obj, Object obj2, int i11) {
        return zzI(obj, i11) == zzI(obj2, i11);
    }

    private static boolean zzH(int i11) {
        return (i11 & ASTNode.DISCARD) != 0;
    }

    private final boolean zzI(Object obj, int i11) {
        int iZzn = zzn(i11);
        long j11 = iZzn & 1048575;
        if (j11 != 1048575) {
            return (zzawx.zzc(obj, j11) & (1 << (iZzn >>> 20))) != 0;
        }
        int iZzp = zzp(i11);
        long j12 = iZzp & 1048575;
        switch (zzo(iZzp)) {
            case 0:
                return Double.doubleToRawLongBits(zzawx.zza(obj, j12)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzawx.zzb(obj, j12)) != 0;
            case 2:
                return zzawx.zzd(obj, j12) != 0;
            case 3:
                return zzawx.zzd(obj, j12) != 0;
            case 4:
                return zzawx.zzc(obj, j12) != 0;
            case 5:
                return zzawx.zzd(obj, j12) != 0;
            case 6:
                return zzawx.zzc(obj, j12) != 0;
            case 7:
                return zzawx.zzw(obj, j12);
            case 8:
                Object objZzf = zzawx.zzf(obj, j12);
                if (objZzf instanceof String) {
                    return !((String) objZzf).isEmpty();
                }
                if (objZzf instanceof zzask) {
                    return !zzask.zzb.equals(objZzf);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzawx.zzf(obj, j12) != null;
            case 10:
                return !zzask.zzb.equals(zzawx.zzf(obj, j12));
            case 11:
                return zzawx.zzc(obj, j12) != 0;
            case 12:
                return zzawx.zzc(obj, j12) != 0;
            case 13:
                return zzawx.zzc(obj, j12) != 0;
            case 14:
                return zzawx.zzd(obj, j12) != 0;
            case 15:
                return zzawx.zzc(obj, j12) != 0;
            case 16:
                return zzawx.zzd(obj, j12) != 0;
            case 17:
                return zzawx.zzf(obj, j12) != null;
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

    private static boolean zzK(Object obj, int i11, zzavt zzavtVar) {
        return zzavtVar.zzh(zzawx.zzf(obj, i11 & 1048575));
    }

    private static boolean zzL(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzatu) {
            return ((zzatu) obj).zzaH();
        }
        return true;
    }

    private final boolean zzM(Object obj, int i11, int i12) {
        return zzawx.zzc(obj, (long) (zzn(i12) & 1048575)) == i11;
    }

    private static boolean zzN(Object obj, long j11) {
        return ((Boolean) zzawx.zzf(obj, j11)).booleanValue();
    }

    private static final void zzO(int i11, Object obj, zzasy zzasyVar) throws IOException {
        if (obj instanceof String) {
            zzasyVar.zzG(i11, (String) obj);
        } else {
            zzasyVar.zzd(i11, (zzask) obj);
        }
    }

    /* JADX WARN: Code duplicated, block: B:125:0x0266  */
    /* JADX WARN: Code duplicated, block: B:127:0x026b  */
    /* JADX WARN: Code duplicated, block: B:130:0x0281  */
    /* JADX WARN: Code duplicated, block: B:131:0x0284  */
    static zzavi zzi(Class cls, zzavc zzavcVar, zzavl zzavlVar, zzaut zzautVar, zzawn zzawnVar, zzatg zzatgVar, zzava zzavaVar) {
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
        Field fieldZzx;
        char cCharAt9;
        int i30;
        int i31;
        int i32;
        int i33;
        int i34;
        Object obj;
        Field fieldZzx2;
        int i35;
        Object obj2;
        Field fieldZzx3;
        int i36;
        char cCharAt10;
        int i37;
        char cCharAt11;
        int i38;
        char cCharAt12;
        int i39;
        char cCharAt13;
        if (!(zzavcVar instanceof zzavr)) {
            throw null;
        }
        zzavr zzavrVar = (zzavr) zzavcVar;
        String strZzd = zzavrVar.zzd();
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
        Object[] objArrZze = zzavrVar.zze();
        Class<?> cls2 = zzavrVar.zza().getClass();
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
                iArr[i71] = i70;
                i71++;
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
                    int i91 = i70 / 3;
                    objArr[i91 + i91 + 1] = objArrZze[i12];
                } else {
                    if (i90 == 12) {
                        if (zzavrVar.zzc() == 1 || i83 != 0) {
                            i33 = i12 + 1;
                            int i92 = i70 / 3;
                            objArr[i92 + i92 + 1] = objArrZze[i12];
                        } else {
                            i83 = 0;
                        }
                    }
                    i34 = iCharAt12 + iCharAt12;
                    obj = objArrZze[i34];
                    if (obj instanceof Field) {
                        fieldZzx2 = (Field) obj;
                    } else {
                        fieldZzx2 = zzx(cls2, (String) obj);
                        objArrZze[i34] = fieldZzx2;
                    }
                    iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzx2);
                    i35 = i34 + 1;
                    obj2 = objArrZze[i35];
                    if (obj2 instanceof Field) {
                        fieldZzx3 = (Field) obj2;
                    } else {
                        fieldZzx3 = zzx(cls2, (String) obj2);
                        objArrZze[i35] = fieldZzx3;
                    }
                    zzavrVar = zzavrVar;
                    strZzd = strZzd;
                    i29 = i12;
                    i27 = i89;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzx3);
                    i28 = 0;
                }
                i12 = i33;
                i34 = iCharAt12 + iCharAt12;
                obj = objArrZze[i34];
                if (obj instanceof Field) {
                    fieldZzx2 = (Field) obj;
                } else {
                    fieldZzx2 = zzx(cls2, (String) obj);
                    objArrZze[i34] = fieldZzx2;
                }
                iObjectFieldOffset2 = (int) unsafe.objectFieldOffset(fieldZzx2);
                i35 = i34 + 1;
                obj2 = objArrZze[i35];
                if (obj2 instanceof Field) {
                    fieldZzx3 = (Field) obj2;
                } else {
                    fieldZzx3 = zzx(cls2, (String) obj2);
                    objArrZze[i35] = fieldZzx3;
                }
                zzavrVar = zzavrVar;
                strZzd = strZzd;
                i29 = i12;
                i27 = i89;
                iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzx3);
                i28 = 0;
            } else {
                int i93 = i12 + 1;
                Field fieldZzx4 = zzx(cls2, (String) objArrZze[i12]);
                if (i82 == 9 || i82 == 17) {
                    zzavrVar = zzavrVar;
                    int i94 = i70 / 3;
                    objArr[i94 + i94 + 1] = fieldZzx4.getType();
                } else {
                    if (i82 == 27) {
                        i30 = 1;
                        i31 = i12 + 2;
                    } else if (i82 == 49) {
                        i31 = i12 + 2;
                        i30 = 1;
                    } else if (i82 == 12 || i82 == 30 || i82 == 44) {
                        zzavrVar = zzavrVar;
                        if (zzavrVar.zzc() == 1 || i83 != 0) {
                            i31 = i12 + 2;
                            int i95 = i70 / 3;
                            objArr[i95 + i95 + 1] = objArrZze[i93];
                            i93 = i31;
                        } else {
                            i83 = 0;
                        }
                    } else {
                        if (i82 == 50) {
                            int i96 = i12 + 2;
                            int i97 = i72 + 1;
                            iArr[i72] = i70;
                            int i98 = i70 / 3;
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
                        zzavrVar = zzavrVar;
                    }
                    int i100 = i70 / 3;
                    objArr[i100 + i100 + i30] = objArrZze[i93];
                    i93 = i31;
                }
                int iObjectFieldOffset3 = (int) unsafe.objectFieldOffset(fieldZzx4);
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
                        fieldZzx = (Field) obj3;
                    } else {
                        fieldZzx = zzx(cls2, (String) obj3);
                        objArrZze[i104] = fieldZzx;
                    }
                    i28 = iCharAt13 % 32;
                    iObjectFieldOffset = (int) unsafe.objectFieldOffset(fieldZzx);
                }
                if (i82 >= 18 && i82 <= 49) {
                    iArr[i73] = iObjectFieldOffset3;
                    i73++;
                }
                i29 = i93;
                iObjectFieldOffset2 = iObjectFieldOffset3;
            }
            int i105 = i70 + 1;
            iArr2[i70] = iCharAt10;
            int i106 = i70 + 2;
            iArr2[i105] = iObjectFieldOffset2 | ((iCharAt11 & 256) != 0 ? ASTNode.DEOP : 0) | ((iCharAt11 & 512) != 0 ? ASTNode.DISCARD : 0) | (i83 != 0 ? Integer.MIN_VALUE : 0) | (i82 << 20);
            i70 += 3;
            iArr2[i106] = (i28 << 20) | iObjectFieldOffset;
            i12 = i29;
            i41 = i27;
            length = i84;
            zzavrVar = zzavrVar;
            strZzd = strZzd;
            i16 = i16;
            i13 = i13;
            c11 = 55296;
        }
        zzavr zzavrVar2 = zzavrVar;
        return new zzavi(iArr2, objArr, i13, i16, zzavrVar2.zza(), zzavrVar2.zzc(), false, iArr, i14, i68, zzavlVar, zzautVar, zzawnVar, zzatgVar, zzavaVar);
    }

    private static double zzk(Object obj, long j11) {
        return ((Double) zzawx.zzf(obj, j11)).doubleValue();
    }

    private static float zzl(Object obj, long j11) {
        return ((Float) zzawx.zzf(obj, j11)).floatValue();
    }

    private static int zzm(Object obj, long j11) {
        return ((Integer) zzawx.zzf(obj, j11)).intValue();
    }

    private final int zzn(int i11) {
        return this.zzc[i11 + 2];
    }

    private static int zzo(int i11) {
        return (i11 >>> 20) & 255;
    }

    private final int zzp(int i11) {
        return this.zzc[i11 + 1];
    }

    private static long zzq(Object obj, long j11) {
        return ((Long) zzawx.zzf(obj, j11)).longValue();
    }

    private final zzaty zzr(int i11) {
        int i12 = i11 / 3;
        return (zzaty) this.zzd[i12 + i12 + 1];
    }

    private final zzavt zzs(int i11) {
        Object[] objArr = this.zzd;
        int i12 = i11 / 3;
        int i13 = i12 + i12;
        zzavt zzavtVar = (zzavt) objArr[i13];
        if (zzavtVar != null) {
            return zzavtVar;
        }
        zzavt zzavtVarZzb = zzavp.zza().zzb((Class) objArr[i13 + 1]);
        this.zzd[i13] = zzavtVarZzb;
        return zzavtVarZzb;
    }

    private final Object zzt(Object obj, int i11, Object obj2, zzawn zzawnVar, Object obj3) {
        int i12 = this.zzc[i11];
        Object objZzf = zzawx.zzf(obj, zzp(i11) & 1048575);
        if (objZzf == null || zzr(i11) == null) {
            return obj2;
        }
        throw null;
    }

    private final Object zzu(int i11) {
        int i12 = i11 / 3;
        return this.zzd[i12 + i12];
    }

    private final Object zzv(Object obj, int i11) {
        zzavt zzavtVarZzs = zzs(i11);
        int iZzp = zzp(i11) & 1048575;
        if (!zzI(obj, i11)) {
            return zzavtVarZzs.zzc();
        }
        Object object = zzb.getObject(obj, iZzp);
        if (zzL(object)) {
            return object;
        }
        Object objZzc = zzavtVarZzs.zzc();
        if (object != null) {
            zzavtVarZzs.zze(objZzc, object);
        }
        return objZzc;
    }

    private final Object zzw(Object obj, int i11, int i12) {
        zzavt zzavtVarZzs = zzs(i12);
        if (!zzM(obj, i11, i12)) {
            return zzavtVarZzs.zzc();
        }
        Object object = zzb.getObject(obj, zzp(i12) & 1048575);
        if (zzL(object)) {
            return object;
        }
        Object objZzc = zzavtVarZzs.zzc();
        if (object != null) {
            zzavtVarZzs.zze(objZzc, object);
        }
        return objZzc;
    }

    private static Field zzx(Class cls, String str) {
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

    private static void zzy(Object obj) {
        if (!zzL(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
    }

    private final void zzz(Object obj, Object obj2, int i11) {
        if (zzI(obj2, i11)) {
            int iZzp = zzp(i11) & 1048575;
            Unsafe unsafe = zzb;
            long j11 = iZzp;
            Object object = unsafe.getObject(obj2, j11);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i11] + " is present but null: " + obj2.toString());
            }
            zzavt zzavtVarZzs = zzs(i11);
            if (!zzI(obj, i11)) {
                if (zzL(object)) {
                    Object objZzc = zzavtVarZzs.zzc();
                    zzavtVarZzs.zze(objZzc, object);
                    unsafe.putObject(obj, j11, objZzc);
                } else {
                    unsafe.putObject(obj, j11, object);
                }
                zzC(obj, i11);
                return;
            }
            Object object2 = unsafe.getObject(obj, j11);
            if (!zzL(object2)) {
                Object objZzc2 = zzavtVarZzs.zzc();
                zzavtVarZzs.zze(objZzc2, object2);
                unsafe.putObject(obj, j11, objZzc2);
                object2 = objZzc2;
            }
            zzavtVarZzs.zze(object2, object);
        }
    }

    /* JADX WARN: Code duplicated, block: B:143:0x038d  */
    /* JADX WARN: Code duplicated, block: B:180:0x0481  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v112, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v113, types: [com.google.android.libraries.places.internal.zzaun] */
    /* JADX WARN: Type inference failed for: r0v115, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v117, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v134 */
    /* JADX WARN: Type inference failed for: r0v182, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v253, types: [int] */
    /* JADX WARN: Type inference failed for: r0v262 */
    /* JADX WARN: Type inference failed for: r0v263 */
    /* JADX WARN: Type inference failed for: r0v264 */
    /* JADX WARN: Type inference failed for: r0v265 */
    /* JADX WARN: Type inference failed for: r0v266 */
    /* JADX WARN: Type inference failed for: r0v267 */
    /* JADX WARN: Type inference failed for: r0v268 */
    /* JADX WARN: Type inference failed for: r0v269 */
    /* JADX WARN: Type inference failed for: r0v270 */
    /* JADX WARN: Type inference failed for: r0v271 */
    /* JADX WARN: Type inference failed for: r0v272 */
    /* JADX WARN: Type inference failed for: r0v273 */
    /* JADX WARN: Type inference failed for: r0v274 */
    /* JADX WARN: Type inference failed for: r0v275 */
    /* JADX WARN: Type inference failed for: r0v276 */
    /* JADX WARN: Type inference failed for: r0v277 */
    /* JADX WARN: Type inference failed for: r13v4, types: [int] */
    /* JADX WARN: Type inference failed for: r13v5, types: [int] */
    /* JADX WARN: Type inference failed for: r13v6, types: [int] */
    /* JADX WARN: Type inference failed for: r13v7, types: [int] */
    /* JADX WARN: Type inference failed for: r13v9, types: [int] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v123, types: [int] */
    /* JADX WARN: Type inference failed for: r1v126, types: [int] */
    /* JADX WARN: Type inference failed for: r1v165 */
    /* JADX WARN: Type inference failed for: r1v168 */
    /* JADX WARN: Type inference failed for: r1v169 */
    /* JADX WARN: Type inference failed for: r1v170 */
    /* JADX WARN: Type inference failed for: r1v171 */
    /* JADX WARN: Type inference failed for: r1v172 */
    /* JADX WARN: Type inference failed for: r1v173 */
    /* JADX WARN: Type inference failed for: r1v174 */
    /* JADX WARN: Type inference failed for: r1v175 */
    /* JADX WARN: Type inference failed for: r1v83, types: [int] */
    /* JADX WARN: Type inference failed for: r1v85 */
    /* JADX WARN: Type inference failed for: r2v30, types: [int] */
    /* JADX WARN: Type inference failed for: r2v35, types: [int] */
    /* JADX WARN: Type inference failed for: r2v36 */
    /* JADX WARN: Type inference failed for: r2v40, types: [int] */
    /* JADX WARN: Type inference failed for: r2v44, types: [int] */
    /* JADX WARN: Type inference failed for: r2v52 */
    /* JADX WARN: Type inference failed for: r2v53, types: [int] */
    /* JADX WARN: Type inference failed for: r2v87 */
    /* JADX WARN: Type inference failed for: r2v88 */
    /* JADX WARN: Type inference failed for: r2v89 */
    /* JADX WARN: Type inference failed for: r2v90 */
    /* JADX WARN: Type inference failed for: r2v91 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v23, types: [int] */
    /* JADX WARN: Type inference failed for: r3v25 */
    /* JADX WARN: Type inference failed for: r3v26, types: [int] */
    /* JADX WARN: Type inference failed for: r3v31 */
    /* JADX WARN: Type inference failed for: r3v35, types: [int] */
    /* JADX WARN: Type inference failed for: r3v36 */
    /* JADX WARN: Type inference failed for: r3v42, types: [int] */
    /* JADX WARN: Type inference failed for: r3v47 */
    /* JADX WARN: Type inference failed for: r3v48 */
    /* JADX WARN: Type inference failed for: r3v49 */
    /* JADX WARN: Type inference failed for: r3v50 */
    /* JADX WARN: Type inference failed for: r3v51 */
    /* JADX WARN: Type inference failed for: r3v52 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r4v31, types: [int] */
    /* JADX WARN: Type inference failed for: r4v35 */
    /* JADX WARN: Type inference failed for: r4v36 */
    /* JADX WARN: Type inference failed for: r4v38, types: [int] */
    /* JADX WARN: Type inference failed for: r4v39 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v61 */
    /* JADX WARN: Type inference failed for: r4v62 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [int] */
    @Override // com.google.android.libraries.places.internal.zzavt
    public final int zza(Object obj) {
        int i11;
        ?? r16;
        ?? r11;
        int iZzB;
        int iZzB2;
        int iZzB3;
        int iZzC;
        int iZzB4;
        int iZzB5;
        int iZzd;
        int iZzB6;
        ?? Zzg;
        int size;
        int iZzB7;
        int iZzA;
        int iZzA2;
        ?? r12;
        int iZzz;
        ?? ZzB;
        ?? Zzh;
        int iZze;
        int iZzB8;
        int iZzB9;
        ?? r13;
        ?? r14;
        ?? r15;
        Unsafe unsafe = zzb;
        boolean z10 = false;
        int i12 = 1048575;
        ?? r17 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 1048575;
        while (i13 < this.zzc.length) {
            int iZzp = zzp(i13);
            int iZzo = zzo(iZzp);
            int[] iArr = this.zzc;
            int i16 = iArr[i13];
            int i17 = iArr[i13 + 2];
            int i18 = i17 & i12;
            if (iZzo <= 17) {
                if (i18 != i15) {
                    i15 = i18;
                    r15 = i18 == i12 ? z10 : unsafe.getInt(obj, i18);
                }
                i11 = i15;
                r16 = r15;
                r11 = 1 << (i17 >>> 20);
            } else {
                r15 = r17;
                i11 = i15;
                r16 = r17;
                r11 = z10;
            }
            int i19 = iZzp & i12;
            if (iZzo >= zzatl.zzJ.zza()) {
                zzatl.zzW.zza();
            }
            long j11 = i19;
            switch (iZzo) {
                case 0:
                    if (zzJ(obj, i13, i11, r16 == true ? 1 : 0, r11)) {
                        iZzB = zzasx.zzB(i16 << 3);
                        Zzh = iZzB + 8;
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 1:
                    if (zzJ(obj, i13, i11, r16 == true ? 1 : 0, r11)) {
                        iZzB2 = zzasx.zzB(i16 << 3);
                        Zzh = iZzB2 + 4;
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 2:
                    if (zzJ(obj, i13, i11, r16 == true ? 1 : 0, r11)) {
                        long j12 = unsafe.getLong(obj, j11);
                        iZzB3 = zzasx.zzB(i16 << 3);
                        iZzC = zzasx.zzC(j12);
                        Zzh = iZzB3 + iZzC;
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 3:
                    if (zzJ(obj, i13, i11, r16 == true ? 1 : 0, r11)) {
                        long j13 = unsafe.getLong(obj, j11);
                        iZzB3 = zzasx.zzB(i16 << 3);
                        iZzC = zzasx.zzC(j13);
                        Zzh = iZzB3 + iZzC;
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 4:
                    if (zzJ(obj, i13, i11, r16 == true ? 1 : 0, r11)) {
                        long j14 = unsafe.getInt(obj, j11);
                        iZzB3 = zzasx.zzB(i16 << 3);
                        iZzC = zzasx.zzC(j14);
                        Zzh = iZzB3 + iZzC;
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 5:
                    if (zzJ(obj, i13, i11, r16 == true ? 1 : 0, r11)) {
                        iZzB = zzasx.zzB(i16 << 3);
                        Zzh = iZzB + 8;
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 6:
                    if (zzJ(obj, i13, i11, r16 == true ? 1 : 0, r11)) {
                        iZzB2 = zzasx.zzB(i16 << 3);
                        Zzh = iZzB2 + 4;
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 7:
                    if (zzJ(obj, i13, i11, r16 == true ? 1 : 0, r11)) {
                        iZzB4 = zzasx.zzB(i16 << 3);
                        Zzh = iZzB4 + 1;
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 8:
                    if (zzJ(obj, i13, i11, r16 == true ? 1 : 0, r11)) {
                        int i20 = i16 << 3;
                        Object object = unsafe.getObject(obj, j11);
                        if (object instanceof zzask) {
                            iZzB5 = zzasx.zzB(i20);
                            iZzd = ((zzask) object).zzd();
                            iZzB6 = zzasx.zzB(iZzd);
                            Zzh = iZzB5 + iZzB6 + iZzd;
                            i14 += Zzh;
                        } else {
                            iZzB3 = zzasx.zzB(i20);
                            iZzC = zzasx.zzA((String) object);
                            Zzh = iZzB3 + iZzC;
                            i14 += Zzh;
                        }
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 9:
                    if (zzJ(obj, i13, i11, r16 == true ? 1 : 0, r11)) {
                        Zzh = zzavv.zzh(i16, unsafe.getObject(obj, j11), zzs(i13));
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 10:
                    if (zzJ(obj, i13, i11, r16 == true ? 1 : 0, r11)) {
                        zzask zzaskVar = (zzask) unsafe.getObject(obj, j11);
                        iZzB5 = zzasx.zzB(i16 << 3);
                        iZzd = zzaskVar.zzd();
                        iZzB6 = zzasx.zzB(iZzd);
                        Zzh = iZzB5 + iZzB6 + iZzd;
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 11:
                    if (zzJ(obj, i13, i11, r16 == true ? 1 : 0, r11)) {
                        int i21 = unsafe.getInt(obj, j11);
                        iZzB3 = zzasx.zzB(i16 << 3);
                        iZzC = zzasx.zzB(i21);
                        Zzh = iZzB3 + iZzC;
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 12:
                    if (zzJ(obj, i13, i11, r16 == true ? 1 : 0, r11)) {
                        long j15 = unsafe.getInt(obj, j11);
                        iZzB3 = zzasx.zzB(i16 << 3);
                        iZzC = zzasx.zzC(j15);
                        Zzh = iZzB3 + iZzC;
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 13:
                    if (zzJ(obj, i13, i11, r16 == true ? 1 : 0, r11)) {
                        iZzB2 = zzasx.zzB(i16 << 3);
                        Zzh = iZzB2 + 4;
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 14:
                    if (zzJ(obj, i13, i11, r16 == true ? 1 : 0, r11)) {
                        iZzB = zzasx.zzB(i16 << 3);
                        Zzh = iZzB + 8;
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 15:
                    if (zzJ(obj, i13, i11, r16 == true ? 1 : 0, r11)) {
                        int i22 = unsafe.getInt(obj, j11);
                        iZzB3 = zzasx.zzB(i16 << 3);
                        iZzC = zzasx.zzB((i22 >> 31) ^ (i22 + i22));
                        Zzh = iZzB3 + iZzC;
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 16:
                    if (zzJ(obj, i13, i11, r16 == true ? 1 : 0, r11)) {
                        long j16 = unsafe.getLong(obj, j11);
                        iZzB3 = zzasx.zzB(i16 << 3);
                        iZzC = zzasx.zzC((j16 >> 63) ^ (j16 + j16));
                        Zzh = iZzB3 + iZzC;
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 17:
                    if (zzJ(obj, i13, i11, r16 == true ? 1 : 0, r11)) {
                        Zzh = zzasx.zzy(i16, (zzavf) unsafe.getObject(obj, j11), zzs(i13));
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 18:
                    Zzh = zzavv.zzd(i16, (List) unsafe.getObject(obj, j11), z10);
                    i14 += Zzh;
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 19:
                    Zzh = zzavv.zzb(i16, (List) unsafe.getObject(obj, j11), z10);
                    i14 += Zzh;
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 20:
                    List list = (List) unsafe.getObject(obj, j11);
                    int i23 = zzavv.zza;
                    if (list.size() == 0) {
                        Zzg = z10;
                    } else {
                        Zzg = zzavv.zzg(list) + (list.size() * zzasx.zzB(i16 << 3));
                    }
                    i14 += Zzg;
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 21:
                    List list2 = (List) unsafe.getObject(obj, j11);
                    int i24 = zzavv.zza;
                    size = list2.size();
                    if (size == 0) {
                        Zzh = z10;
                    } else {
                        iZzB3 = zzavv.zzl(list2);
                        iZzB7 = zzasx.zzB(i16 << 3);
                        iZzC = size * iZzB7;
                        Zzh = iZzB3 + iZzC;
                    }
                    i14 += Zzh;
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 22:
                    List list3 = (List) unsafe.getObject(obj, j11);
                    int i25 = zzavv.zza;
                    size = list3.size();
                    if (size == 0) {
                        Zzh = z10;
                    } else {
                        iZzB3 = zzavv.zzf(list3);
                        iZzB7 = zzasx.zzB(i16 << 3);
                        iZzC = size * iZzB7;
                        Zzh = iZzB3 + iZzC;
                    }
                    i14 += Zzh;
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 23:
                    Zzh = zzavv.zzd(i16, (List) unsafe.getObject(obj, j11), z10);
                    i14 += Zzh;
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 24:
                    Zzh = zzavv.zzb(i16, (List) unsafe.getObject(obj, j11), z10);
                    i14 += Zzh;
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 25:
                    List list4 = (List) unsafe.getObject(obj, j11);
                    int i26 = zzavv.zza;
                    int size2 = list4.size();
                    if (size2 == 0) {
                        Zzh = z10;
                    } else {
                        Zzh = size2 * (zzasx.zzB(i16 << 3) + 1);
                    }
                    i14 += Zzh;
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 26:
                    ?? r18 = (List) unsafe.getObject(obj, j11);
                    int i27 = zzavv.zza;
                    int size3 = r18.size();
                    if (size3 == 0) {
                        Zzg = z10;
                    } else {
                        int iZzB10 = zzasx.zzB(i16 << 3) * size3;
                        if (r18 instanceof zzaun) {
                            ?? r19 = (zzaun) r18;
                            for (?? r20 = z10; r20 < size3; r20++) {
                                Object objZzf = r19.zzf(r20);
                                if (objZzf instanceof zzask) {
                                    Zzg = iZzB10;
                                    int iZzd2 = ((zzask) objZzf).zzd();
                                    iZzA2 = Zzg + zzasx.zzB(iZzd2) + iZzd2;
                                } else {
                                    Zzg = iZzB10;
                                    iZzA2 = Zzg + zzasx.zzA((String) objZzf);
                                }
                                Zzg = iZzA2;
                            }
                            Zzg = iZzB10;
                        } else {
                            for (?? r21 = z10; r21 < size3; r21++) {
                                Object obj2 = r18.get(r21);
                                if (obj2 instanceof zzask) {
                                    Zzg = iZzB10;
                                    int iZzd3 = ((zzask) obj2).zzd();
                                    iZzA = Zzg + zzasx.zzB(iZzd3) + iZzd3;
                                } else {
                                    Zzg = iZzB10;
                                    iZzA = Zzg + zzasx.zzA((String) obj2);
                                }
                                Zzg = iZzA;
                            }
                            Zzg = iZzB10;
                        }
                    }
                    i14 += Zzg;
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 27:
                    ?? r22 = (List) unsafe.getObject(obj, j11);
                    zzavt zzavtVarZzs = zzs(i13);
                    int i28 = zzavv.zza;
                    int size4 = r22.size();
                    if (size4 == 0) {
                        r12 = z10;
                    } else {
                        int iZzB11 = zzasx.zzB(i16 << 3) * size4;
                        for (?? r23 = z10; r23 < size4; r23++) {
                            Object obj3 = r22.get(r23);
                            if (obj3 instanceof zzaul) {
                                r12 = iZzB11;
                                int iZza = ((zzaul) obj3).zza();
                                iZzz = (r12 == true ? 1 : 0) + zzasx.zzB(iZza) + iZza;
                            } else {
                                r12 = iZzB11;
                                iZzz = (r12 == true ? 1 : 0) + zzasx.zzz((zzavf) obj3, zzavtVarZzs);
                            }
                            r12 = iZzz;
                        }
                        r12 = iZzB11;
                    }
                    i14 += r12;
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 28:
                    ?? r24 = (List) unsafe.getObject(obj, j11);
                    int i29 = zzavv.zza;
                    int size5 = r24.size();
                    if (size5 == 0) {
                        ZzB = z10;
                    } else {
                        ZzB = size5 * zzasx.zzB(i16 << 3);
                        for (?? r25 = z10; r25 < r24.size(); r25++) {
                            int iZzd4 = ((zzask) r24.get(r25)).zzd();
                            ZzB += zzasx.zzB(iZzd4) + iZzd4;
                        }
                    }
                    i14 += ZzB;
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case NOTIFICATION_REDIRECT_VALUE:
                    List list5 = (List) unsafe.getObject(obj, j11);
                    int i30 = zzavv.zza;
                    size = list5.size();
                    if (size == 0) {
                        Zzh = z10;
                    } else {
                        iZzB3 = zzavv.zzk(list5);
                        iZzB7 = zzasx.zzB(i16 << 3);
                        iZzC = size * iZzB7;
                        Zzh = iZzB3 + iZzC;
                    }
                    i14 += Zzh;
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 30:
                    List list6 = (List) unsafe.getObject(obj, j11);
                    int i31 = zzavv.zza;
                    size = list6.size();
                    if (size == 0) {
                        Zzh = z10;
                    } else {
                        iZzB3 = zzavv.zza(list6);
                        iZzB7 = zzasx.zzB(i16 << 3);
                        iZzC = size * iZzB7;
                        Zzh = iZzB3 + iZzC;
                    }
                    i14 += Zzh;
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case TEMPLATE_HTML_SIZE_VALUE:
                    Zzh = zzavv.zzb(i16, (List) unsafe.getObject(obj, j11), z10);
                    i14 += Zzh;
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 32:
                    Zzh = zzavv.zzd(i16, (List) unsafe.getObject(obj, j11), z10);
                    i14 += Zzh;
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 33:
                    List list7 = (List) unsafe.getObject(obj, j11);
                    int i32 = zzavv.zza;
                    size = list7.size();
                    if (size == 0) {
                        Zzh = z10;
                    } else {
                        iZzB3 = zzavv.zzi(list7);
                        iZzB7 = zzasx.zzB(i16 << 3);
                        iZzC = size * iZzB7;
                        Zzh = iZzB3 + iZzC;
                    }
                    i14 += Zzh;
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 34:
                    List list8 = (List) unsafe.getObject(obj, j11);
                    int i33 = zzavv.zza;
                    size = list8.size();
                    if (size == 0) {
                        Zzh = z10;
                    } else {
                        iZzB3 = zzavv.zzj(list8);
                        iZzB7 = zzasx.zzB(i16 << 3);
                        iZzC = size * iZzB7;
                        Zzh = iZzB3 + iZzC;
                    }
                    i14 += Zzh;
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 35:
                    iZze = zzavv.zze((List) unsafe.getObject(obj, j11));
                    if (iZze > 0) {
                        iZzB8 = zzasx.zzB(i16 << 3);
                        iZzB9 = zzasx.zzB(iZze);
                        ZzB = iZzB8 + iZzB9 + iZze;
                        i14 += ZzB;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 36:
                    iZze = zzavv.zzc((List) unsafe.getObject(obj, j11));
                    if (iZze > 0) {
                        iZzB8 = zzasx.zzB(i16 << 3);
                        iZzB9 = zzasx.zzB(iZze);
                        ZzB = iZzB8 + iZzB9 + iZze;
                        i14 += ZzB;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 37:
                    iZze = zzavv.zzg((List) unsafe.getObject(obj, j11));
                    if (iZze > 0) {
                        iZzB8 = zzasx.zzB(i16 << 3);
                        iZzB9 = zzasx.zzB(iZze);
                        ZzB = iZzB8 + iZzB9 + iZze;
                        i14 += ZzB;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 38:
                    iZze = zzavv.zzl((List) unsafe.getObject(obj, j11));
                    if (iZze > 0) {
                        iZzB8 = zzasx.zzB(i16 << 3);
                        iZzB9 = zzasx.zzB(iZze);
                        ZzB = iZzB8 + iZzB9 + iZze;
                        i14 += ZzB;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 39:
                    iZze = zzavv.zzf((List) unsafe.getObject(obj, j11));
                    if (iZze > 0) {
                        iZzB8 = zzasx.zzB(i16 << 3);
                        iZzB9 = zzasx.zzB(iZze);
                        ZzB = iZzB8 + iZzB9 + iZze;
                        i14 += ZzB;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 40:
                    iZze = zzavv.zze((List) unsafe.getObject(obj, j11));
                    if (iZze > 0) {
                        iZzB8 = zzasx.zzB(i16 << 3);
                        iZzB9 = zzasx.zzB(iZze);
                        ZzB = iZzB8 + iZzB9 + iZze;
                        i14 += ZzB;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 41:
                    iZze = zzavv.zzc((List) unsafe.getObject(obj, j11));
                    if (iZze > 0) {
                        iZzB8 = zzasx.zzB(i16 << 3);
                        iZzB9 = zzasx.zzB(iZze);
                        ZzB = iZzB8 + iZzB9 + iZze;
                        i14 += ZzB;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 42:
                    List list9 = (List) unsafe.getObject(obj, j11);
                    int i34 = zzavv.zza;
                    iZze = list9.size();
                    if (iZze > 0) {
                        iZzB8 = zzasx.zzB(i16 << 3);
                        iZzB9 = zzasx.zzB(iZze);
                        ZzB = iZzB8 + iZzB9 + iZze;
                        i14 += ZzB;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 43:
                    iZze = zzavv.zzk((List) unsafe.getObject(obj, j11));
                    if (iZze > 0) {
                        iZzB8 = zzasx.zzB(i16 << 3);
                        iZzB9 = zzasx.zzB(iZze);
                        ZzB = iZzB8 + iZzB9 + iZze;
                        i14 += ZzB;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 44:
                    iZze = zzavv.zza((List) unsafe.getObject(obj, j11));
                    if (iZze > 0) {
                        iZzB8 = zzasx.zzB(i16 << 3);
                        iZzB9 = zzasx.zzB(iZze);
                        ZzB = iZzB8 + iZzB9 + iZze;
                        i14 += ZzB;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 45:
                    iZze = zzavv.zzc((List) unsafe.getObject(obj, j11));
                    if (iZze > 0) {
                        iZzB8 = zzasx.zzB(i16 << 3);
                        iZzB9 = zzasx.zzB(iZze);
                        ZzB = iZzB8 + iZzB9 + iZze;
                        i14 += ZzB;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 46:
                    iZze = zzavv.zze((List) unsafe.getObject(obj, j11));
                    if (iZze > 0) {
                        iZzB8 = zzasx.zzB(i16 << 3);
                        iZzB9 = zzasx.zzB(iZze);
                        ZzB = iZzB8 + iZzB9 + iZze;
                        i14 += ZzB;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 47:
                    iZze = zzavv.zzi((List) unsafe.getObject(obj, j11));
                    if (iZze > 0) {
                        iZzB8 = zzasx.zzB(i16 << 3);
                        iZzB9 = zzasx.zzB(iZze);
                        ZzB = iZzB8 + iZzB9 + iZze;
                        i14 += ZzB;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                    iZze = zzavv.zzj((List) unsafe.getObject(obj, j11));
                    if (iZze > 0) {
                        iZzB8 = zzasx.zzB(i16 << 3);
                        iZzB9 = zzasx.zzB(iZze);
                        ZzB = iZzB8 + iZzB9 + iZze;
                        i14 += ZzB;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    ?? r26 = (List) unsafe.getObject(obj, j11);
                    zzavt zzavtVarZzs2 = zzs(i13);
                    int i35 = zzavv.zza;
                    int size6 = r26.size();
                    if (size6 == 0) {
                        r13 = z10;
                    } else {
                        boolean z11 = z10;
                        r13 = z11;
                        while (r14 < size6) {
                            r14 = z11;
                            int iZzy = zzasx.zzy(i16, (zzavf) r26.get(r14), zzavtVarZzs2);
                            r14++;
                            r13 = (r13 == true ? 1 : 0) + iZzy;
                        }
                        r14 = z11;
                    }
                    i14 += r13;
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 50:
                    zzauz zzauzVar = (zzauz) unsafe.getObject(obj, j11);
                    if (zzauzVar.isEmpty()) {
                        continue;
                    } else {
                        Iterator it = zzauzVar.entrySet().iterator();
                        if (it.hasNext()) {
                            Map.Entry entry = (Map.Entry) it.next();
                            entry.getKey();
                            entry.getValue();
                            throw null;
                        }
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                case AD_REWARD_USER_VALUE:
                    if (zzM(obj, i16, i13)) {
                        iZzB = zzasx.zzB(i16 << 3);
                        Zzh = iZzB + 8;
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    if (zzM(obj, i16, i13)) {
                        iZzB2 = zzasx.zzB(i16 << 3);
                        Zzh = iZzB2 + 4;
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    if (zzM(obj, i16, i13)) {
                        long jZzq = zzq(obj, j11);
                        iZzB3 = zzasx.zzB(i16 << 3);
                        iZzC = zzasx.zzC(jZzq);
                        Zzh = iZzB3 + iZzC;
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    if (zzM(obj, i16, i13)) {
                        long jZzq2 = zzq(obj, j11);
                        iZzB3 = zzasx.zzB(i16 << 3);
                        iZzC = zzasx.zzC(jZzq2);
                        Zzh = iZzB3 + iZzC;
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    if (zzM(obj, i16, i13)) {
                        long jZzm = zzm(obj, j11);
                        iZzB3 = zzasx.zzB(i16 << 3);
                        iZzC = zzasx.zzC(jZzm);
                        Zzh = iZzB3 + iZzC;
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case AD_VISIBILITY_VALUE:
                    if (zzM(obj, i16, i13)) {
                        iZzB = zzasx.zzB(i16 << 3);
                        Zzh = iZzB + 8;
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 57:
                    if (zzM(obj, i16, i13)) {
                        iZzB2 = zzasx.zzB(i16 << 3);
                        Zzh = iZzB2 + 4;
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    if (zzM(obj, i16, i13)) {
                        iZzB4 = zzasx.zzB(i16 << 3);
                        Zzh = iZzB4 + 1;
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 59:
                    if (zzM(obj, i16, i13)) {
                        int i36 = i16 << 3;
                        Object object2 = unsafe.getObject(obj, j11);
                        if (object2 instanceof zzask) {
                            iZzB5 = zzasx.zzB(i36);
                            iZzd = ((zzask) object2).zzd();
                            iZzB6 = zzasx.zzB(iZzd);
                            Zzh = iZzB5 + iZzB6 + iZzd;
                            i14 += Zzh;
                        } else {
                            iZzB3 = zzasx.zzB(i36);
                            iZzC = zzasx.zzA((String) object2);
                            Zzh = iZzB3 + iZzC;
                            i14 += Zzh;
                        }
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 60:
                    if (zzM(obj, i16, i13)) {
                        Zzh = zzavv.zzh(i16, unsafe.getObject(obj, j11), zzs(i13));
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 61:
                    if (zzM(obj, i16, i13)) {
                        zzask zzaskVar2 = (zzask) unsafe.getObject(obj, j11);
                        iZzB5 = zzasx.zzB(i16 << 3);
                        iZzd = zzaskVar2.zzd();
                        iZzB6 = zzasx.zzB(iZzd);
                        Zzh = iZzB5 + iZzB6 + iZzd;
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 62:
                    if (zzM(obj, i16, i13)) {
                        int iZzm = zzm(obj, j11);
                        iZzB3 = zzasx.zzB(i16 << 3);
                        iZzC = zzasx.zzB(iZzm);
                        Zzh = iZzB3 + iZzC;
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 63:
                    if (zzM(obj, i16, i13)) {
                        long jZzm2 = zzm(obj, j11);
                        iZzB3 = zzasx.zzB(i16 << 3);
                        iZzC = zzasx.zzC(jZzm2);
                        Zzh = iZzB3 + iZzC;
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 64:
                    if (zzM(obj, i16, i13)) {
                        iZzB2 = zzasx.zzB(i16 << 3);
                        Zzh = iZzB2 + 4;
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                    if (zzM(obj, i16, i13)) {
                        iZzB = zzasx.zzB(i16 << 3);
                        Zzh = iZzB + 8;
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 66:
                    if (zzM(obj, i16, i13)) {
                        int iZzm2 = zzm(obj, j11);
                        iZzB3 = zzasx.zzB(i16 << 3);
                        iZzC = zzasx.zzB((iZzm2 >> 31) ^ (iZzm2 + iZzm2));
                        Zzh = iZzB3 + iZzC;
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 67:
                    if (zzM(obj, i16, i13)) {
                        long jZzq3 = zzq(obj, j11);
                        iZzB3 = zzasx.zzB(i16 << 3);
                        iZzC = zzasx.zzC((jZzq3 >> 63) ^ (jZzq3 + jZzq3));
                        Zzh = iZzB3 + iZzC;
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                case 68:
                    if (zzM(obj, i16, i13)) {
                        Zzh = zzasx.zzy(i16, (zzavf) unsafe.getObject(obj, j11), zzs(i13));
                        i14 += Zzh;
                    }
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
                default:
                    i13 += 3;
                    i15 = i11;
                    r17 = r16;
                    z10 = false;
                    i12 = 1048575;
                    break;
            }
        }
        zzawn zzawnVar = this.zzn;
        int iZza2 = i14 + zzawnVar.zza(zzawnVar.zzd(obj));
        if (!this.zzh) {
            return iZza2;
        }
        zzatk zzatkVarZzb = this.zzo.zzb(obj);
        int iZzb = 0;
        for (int i37 = 0; i37 < zzatkVarZzb.zza.zzb(); i37++) {
            Map.Entry entryZzg = zzatkVarZzb.zza.zzg(i37);
            iZzb += zzatk.zzb((zzatj) entryZzg.getKey(), entryZzg.getValue());
        }
        for (Map.Entry entry2 : zzatkVarZzb.zza.zzc()) {
            iZzb += zzatk.zzb((zzatj) entry2.getKey(), entry2.getValue());
        }
        return iZza2 + iZzb;
    }

    @Override // com.google.android.libraries.places.internal.zzavt
    public final int zzb(Object obj) {
        int i11;
        long jDoubleToLongBits;
        int iFloatToIntBits;
        int i12;
        int i13 = 0;
        for (int i14 = 0; i14 < this.zzc.length; i14 += 3) {
            int iZzp = zzp(i14);
            int[] iArr = this.zzc;
            int i15 = 1048575 & iZzp;
            int iZzo = zzo(iZzp);
            int i16 = iArr[i14];
            long j11 = i15;
            int iHashCode = 37;
            switch (iZzo) {
                case 0:
                    i11 = i13 * 53;
                    jDoubleToLongBits = Double.doubleToLongBits(zzawx.zza(obj, j11));
                    byte[] bArr = zzaud.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 1:
                    i11 = i13 * 53;
                    iFloatToIntBits = Float.floatToIntBits(zzawx.zzb(obj, j11));
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 2:
                    i11 = i13 * 53;
                    jDoubleToLongBits = zzawx.zzd(obj, j11);
                    byte[] bArr2 = zzaud.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 3:
                    i11 = i13 * 53;
                    jDoubleToLongBits = zzawx.zzd(obj, j11);
                    byte[] bArr3 = zzaud.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 4:
                    i11 = i13 * 53;
                    iFloatToIntBits = zzawx.zzc(obj, j11);
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 5:
                    i11 = i13 * 53;
                    jDoubleToLongBits = zzawx.zzd(obj, j11);
                    byte[] bArr4 = zzaud.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 6:
                    i11 = i13 * 53;
                    iFloatToIntBits = zzawx.zzc(obj, j11);
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 7:
                    i11 = i13 * 53;
                    iFloatToIntBits = zzaud.zza(zzawx.zzw(obj, j11));
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 8:
                    i11 = i13 * 53;
                    iFloatToIntBits = ((String) zzawx.zzf(obj, j11)).hashCode();
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 9:
                    i12 = i13 * 53;
                    Object objZzf = zzawx.zzf(obj, j11);
                    if (objZzf != null) {
                        iHashCode = objZzf.hashCode();
                    }
                    i13 = i12 + iHashCode;
                    break;
                case 10:
                    i11 = i13 * 53;
                    iFloatToIntBits = zzawx.zzf(obj, j11).hashCode();
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 11:
                    i11 = i13 * 53;
                    iFloatToIntBits = zzawx.zzc(obj, j11);
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 12:
                    i11 = i13 * 53;
                    iFloatToIntBits = zzawx.zzc(obj, j11);
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 13:
                    i11 = i13 * 53;
                    iFloatToIntBits = zzawx.zzc(obj, j11);
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 14:
                    i11 = i13 * 53;
                    jDoubleToLongBits = zzawx.zzd(obj, j11);
                    byte[] bArr5 = zzaud.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 15:
                    i11 = i13 * 53;
                    iFloatToIntBits = zzawx.zzc(obj, j11);
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 16:
                    i11 = i13 * 53;
                    jDoubleToLongBits = zzawx.zzd(obj, j11);
                    byte[] bArr6 = zzaud.zzd;
                    iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 17:
                    i12 = i13 * 53;
                    Object objZzf2 = zzawx.zzf(obj, j11);
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
                    iFloatToIntBits = zzawx.zzf(obj, j11).hashCode();
                    i13 = i11 + iFloatToIntBits;
                    break;
                case 50:
                    i11 = i13 * 53;
                    iFloatToIntBits = zzawx.zzf(obj, j11).hashCode();
                    i13 = i11 + iFloatToIntBits;
                    break;
                case AD_REWARD_USER_VALUE:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        jDoubleToLongBits = Double.doubleToLongBits(zzk(obj, j11));
                        byte[] bArr7 = zzaud.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        iFloatToIntBits = Float.floatToIntBits(zzl(obj, j11));
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        jDoubleToLongBits = zzq(obj, j11);
                        byte[] bArr8 = zzaud.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        jDoubleToLongBits = zzq(obj, j11);
                        byte[] bArr9 = zzaud.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        iFloatToIntBits = zzm(obj, j11);
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case AD_VISIBILITY_VALUE:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        jDoubleToLongBits = zzq(obj, j11);
                        byte[] bArr10 = zzaud.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case 57:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        iFloatToIntBits = zzm(obj, j11);
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        iFloatToIntBits = zzaud.zza(zzN(obj, j11));
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case 59:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        iFloatToIntBits = ((String) zzawx.zzf(obj, j11)).hashCode();
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case 60:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        iFloatToIntBits = zzawx.zzf(obj, j11).hashCode();
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case 61:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        iFloatToIntBits = zzawx.zzf(obj, j11).hashCode();
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case 62:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        iFloatToIntBits = zzm(obj, j11);
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case 63:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        iFloatToIntBits = zzm(obj, j11);
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case 64:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        iFloatToIntBits = zzm(obj, j11);
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        jDoubleToLongBits = zzq(obj, j11);
                        byte[] bArr11 = zzaud.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case 66:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        iFloatToIntBits = zzm(obj, j11);
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case 67:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        jDoubleToLongBits = zzq(obj, j11);
                        byte[] bArr12 = zzaud.zzd;
                        iFloatToIntBits = (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
                case 68:
                    if (zzM(obj, i16, i14)) {
                        i11 = i13 * 53;
                        iFloatToIntBits = zzawx.zzf(obj, j11).hashCode();
                        i13 = i11 + iFloatToIntBits;
                    }
                    break;
            }
        }
        int iHashCode2 = (i13 * 53) + this.zzn.zzd(obj).hashCode();
        return this.zzh ? (iHashCode2 * 53) + this.zzo.zzb(obj).zza.hashCode() : iHashCode2;
    }

    @Override // com.google.android.libraries.places.internal.zzavt
    public final Object zzc() {
        return ((zzatu) this.zzg).zzat();
    }

    /* JADX WARN: Code duplicated, block: B:26:0x006d  */
    /* JADX WARN: Code duplicated, block: B:28:0x0073  */
    /* JADX WARN: Code duplicated, block: B:41:0x0080 A[SYNTHETIC] */
    @Override // com.google.android.libraries.places.internal.zzavt
    public final void zzd(Object obj) {
        if (zzL(obj)) {
            if (obj instanceof zzatu) {
                zzatu zzatuVar = (zzatu) obj;
                zzatuVar.zzaF(Integer.MAX_VALUE);
                zzatuVar.zza = 0;
                zzatuVar.zzaD();
            }
            int[] iArr = this.zzc;
            for (int i11 = 0; i11 < iArr.length; i11 += 3) {
                int iZzp = zzp(i11);
                int i12 = 1048575 & iZzp;
                int iZzo = zzo(iZzp);
                long j11 = i12;
                if (iZzo != 9) {
                    if (iZzo != 60 && iZzo != 68) {
                        switch (iZzo) {
                            case 17:
                                if (zzI(obj, i11)) {
                                    zzs(i11).zzd(zzb.getObject(obj, j11));
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
                                this.zzm.zzb(obj, j11);
                                break;
                            case 50:
                                Unsafe unsafe = zzb;
                                Object object = unsafe.getObject(obj, j11);
                                if (object != null) {
                                    ((zzauz) object).zzc();
                                    unsafe.putObject(obj, j11, object);
                                }
                                break;
                        }
                    } else if (zzM(obj, this.zzc[i11], i11)) {
                        zzs(i11).zzd(zzb.getObject(obj, j11));
                    }
                } else if (zzI(obj, i11)) {
                    zzs(i11).zzd(zzb.getObject(obj, j11));
                }
            }
            this.zzn.zzm(obj);
            if (this.zzh) {
                this.zzo.zzf(obj);
            }
        }
    }

    @Override // com.google.android.libraries.places.internal.zzavt
    public final void zze(Object obj, Object obj2) {
        zzy(obj);
        obj2.getClass();
        for (int i11 = 0; i11 < this.zzc.length; i11 += 3) {
            int iZzp = zzp(i11);
            int i12 = 1048575 & iZzp;
            int[] iArr = this.zzc;
            int iZzo = zzo(iZzp);
            int i13 = iArr[i11];
            long j11 = i12;
            switch (iZzo) {
                case 0:
                    if (zzI(obj2, i11)) {
                        zzawx.zzo(obj, j11, zzawx.zza(obj2, j11));
                        zzC(obj, i11);
                    }
                    break;
                case 1:
                    if (zzI(obj2, i11)) {
                        zzawx.zzp(obj, j11, zzawx.zzb(obj2, j11));
                        zzC(obj, i11);
                    }
                    break;
                case 2:
                    if (zzI(obj2, i11)) {
                        zzawx.zzr(obj, j11, zzawx.zzd(obj2, j11));
                        zzC(obj, i11);
                    }
                    break;
                case 3:
                    if (zzI(obj2, i11)) {
                        zzawx.zzr(obj, j11, zzawx.zzd(obj2, j11));
                        zzC(obj, i11);
                    }
                    break;
                case 4:
                    if (zzI(obj2, i11)) {
                        zzawx.zzq(obj, j11, zzawx.zzc(obj2, j11));
                        zzC(obj, i11);
                    }
                    break;
                case 5:
                    if (zzI(obj2, i11)) {
                        zzawx.zzr(obj, j11, zzawx.zzd(obj2, j11));
                        zzC(obj, i11);
                    }
                    break;
                case 6:
                    if (zzI(obj2, i11)) {
                        zzawx.zzq(obj, j11, zzawx.zzc(obj2, j11));
                        zzC(obj, i11);
                    }
                    break;
                case 7:
                    if (zzI(obj2, i11)) {
                        zzawx.zzm(obj, j11, zzawx.zzw(obj2, j11));
                        zzC(obj, i11);
                    }
                    break;
                case 8:
                    if (zzI(obj2, i11)) {
                        zzawx.zzs(obj, j11, zzawx.zzf(obj2, j11));
                        zzC(obj, i11);
                    }
                    break;
                case 9:
                    zzz(obj, obj2, i11);
                    break;
                case 10:
                    if (zzI(obj2, i11)) {
                        zzawx.zzs(obj, j11, zzawx.zzf(obj2, j11));
                        zzC(obj, i11);
                    }
                    break;
                case 11:
                    if (zzI(obj2, i11)) {
                        zzawx.zzq(obj, j11, zzawx.zzc(obj2, j11));
                        zzC(obj, i11);
                    }
                    break;
                case 12:
                    if (zzI(obj2, i11)) {
                        zzawx.zzq(obj, j11, zzawx.zzc(obj2, j11));
                        zzC(obj, i11);
                    }
                    break;
                case 13:
                    if (zzI(obj2, i11)) {
                        zzawx.zzq(obj, j11, zzawx.zzc(obj2, j11));
                        zzC(obj, i11);
                    }
                    break;
                case 14:
                    if (zzI(obj2, i11)) {
                        zzawx.zzr(obj, j11, zzawx.zzd(obj2, j11));
                        zzC(obj, i11);
                    }
                    break;
                case 15:
                    if (zzI(obj2, i11)) {
                        zzawx.zzq(obj, j11, zzawx.zzc(obj2, j11));
                        zzC(obj, i11);
                    }
                    break;
                case 16:
                    if (zzI(obj2, i11)) {
                        zzawx.zzr(obj, j11, zzawx.zzd(obj2, j11));
                        zzC(obj, i11);
                    }
                    break;
                case 17:
                    zzz(obj, obj2, i11);
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
                    this.zzm.zzc(obj, obj2, j11);
                    break;
                case 50:
                    int i14 = zzavv.zza;
                    zzawx.zzs(obj, j11, zzava.zza(zzawx.zzf(obj, j11), zzawx.zzf(obj2, j11)));
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
                        zzawx.zzs(obj, j11, zzawx.zzf(obj2, j11));
                        zzD(obj, i13, i11);
                    }
                    break;
                case 60:
                    zzA(obj, obj2, i11);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                case 66:
                case 67:
                    if (zzM(obj2, i13, i11)) {
                        zzawx.zzs(obj, j11, zzawx.zzf(obj2, j11));
                        zzD(obj, i13, i11);
                    }
                    break;
                case 68:
                    zzA(obj, obj2, i11);
                    break;
            }
        }
        zzavv.zzr(this.zzn, obj, obj2);
        if (this.zzh) {
            zzavv.zzq(this.zzo, obj, obj2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:181:0x0619 A[Catch: all -> 0x0643, TryCatch #1 {all -> 0x0643, blocks: (B:117:0x02fc, B:179:0x0614, B:181:0x0619, B:182:0x061e, B:122:0x0309, B:124:0x031a, B:125:0x0329, B:126:0x0338, B:127:0x0347, B:128:0x0356, B:129:0x0365, B:130:0x0374, B:131:0x0383, B:132:0x0392, B:133:0x03a2, B:134:0x03b2, B:135:0x03c2, B:136:0x03d2, B:137:0x03ee, B:138:0x03fe, B:139:0x040e, B:142:0x0425, B:144:0x042b, B:145:0x043b, B:146:0x044b, B:147:0x045b, B:148:0x046b, B:149:0x047b, B:150:0x048b, B:151:0x049b, B:152:0x04ab, B:153:0x04bb, B:154:0x04cb, B:155:0x04e0, B:156:0x04f1, B:157:0x0502, B:158:0x0513, B:159:0x0524, B:161:0x0531, B:164:0x0538, B:165:0x0542, B:166:0x054c, B:167:0x055d, B:168:0x056e, B:169:0x0583, B:170:0x058e, B:171:0x059f, B:172:0x05b0, B:173:0x05c0, B:174:0x05d0, B:175:0x05e0, B:176:0x05f0, B:177:0x0600), top: B:203:0x02fc }] */
    /* JADX WARN: Code duplicated, block: B:187:0x062b A[LOOP:3: B:185:0x0627->B:187:0x062b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:189:0x063f  */
    /* JADX WARN: Code duplicated, block: B:196:0x064c A[LOOP:2: B:194:0x0648->B:196:0x064c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:198:0x0660  */
    /* JADX WARN: Code duplicated, block: B:296:0x0624 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:310:? A[RETURN, SYNTHETIC] */
    @Override // com.google.android.libraries.places.internal.zzavt
    public final void zzf(Object obj, zzavs zzavsVar, zzatf zzatfVar) throws Throwable {
        Object obj2;
        int i11;
        int i12;
        zzawn zzawnVar;
        Object obj3;
        zzatf zzatfVar2;
        int i13;
        zzatf zzatfVar3;
        zzatf zzatfVar4;
        Object obj4 = obj;
        zzatf zzatfVar5 = zzatfVar;
        zzatfVar.getClass();
        zzy(obj);
        zzawn zzawnVar2 = this.zzn;
        zzatg zzatgVar = this.zzo;
        Object objZzt = null;
        zzatk zzatkVar = null;
        while (true) {
            try {
                int iZzc = zzavsVar.zzc();
                if (iZzc < this.zze || iZzc > this.zzf) {
                    i12 = -1;
                } else {
                    int length = (this.zzc.length / 3) - 1;
                    int i14 = 0;
                    while (true) {
                        if (i14 > length) {
                            i12 = -1;
                        } else {
                            int i15 = (length + i14) >>> 1;
                            int i16 = i15 * 3;
                            int i17 = this.zzc[i16];
                            if (iZzc == i17) {
                                i12 = i16;
                            } else if (iZzc < i17) {
                                length = i15 - 1;
                            } else {
                                i14 = i15 + 1;
                            }
                        }
                    }
                }
                if (i12 >= 0) {
                    zzawnVar2 = zzawnVar2;
                    obj2 = obj4;
                    try {
                        int iZzp = zzp(i12);
                        try {
                            switch (zzo(iZzp)) {
                                case 0:
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzawx.zzo(obj2, iZzp & 1048575, zzavsVar.zza());
                                    zzC(obj2, i12);
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 1:
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzawx.zzp(obj2, iZzp & 1048575, zzavsVar.zzb());
                                    zzC(obj2, i12);
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 2:
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzawx.zzr(obj2, iZzp & 1048575, zzavsVar.zzl());
                                    zzC(obj2, i12);
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 3:
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzawx.zzr(obj2, iZzp & 1048575, zzavsVar.zzo());
                                    zzC(obj2, i12);
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 4:
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzawx.zzq(obj2, iZzp & 1048575, zzavsVar.zzg());
                                    zzC(obj2, i12);
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 5:
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzawx.zzr(obj2, iZzp & 1048575, zzavsVar.zzk());
                                    zzC(obj2, i12);
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 6:
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzawx.zzq(obj2, iZzp & 1048575, zzavsVar.zzf());
                                    zzC(obj2, i12);
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 7:
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzawx.zzm(obj2, iZzp & 1048575, zzavsVar.zzN());
                                    zzC(obj2, i12);
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 8:
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzB(obj2, iZzp, zzavsVar);
                                    zzC(obj2, i12);
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 9:
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzavf zzavfVar = (zzavf) zzv(obj2, i12);
                                    zzavsVar.zzu(zzavfVar, zzs(i12), zzatfVar2);
                                    zzE(obj2, i12, zzavfVar);
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 10:
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzawx.zzs(obj2, iZzp & 1048575, zzavsVar.zzp());
                                    zzC(obj2, i12);
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 11:
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzawx.zzq(obj2, iZzp & 1048575, zzavsVar.zzj());
                                    zzC(obj2, i12);
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 12:
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    int iZze = zzavsVar.zze();
                                    zzaty zzatyVarZzr = zzr(i12);
                                    if (zzatyVarZzr == null || zzatyVarZzr.zza(iZze)) {
                                        zzawx.zzq(obj2, iZzp & 1048575, iZze);
                                        zzC(obj2, i12);
                                        zzatfVar5 = zzatfVar2;
                                        objZzt = objZzt;
                                        zzatgVar = zzatgVar;
                                    } else {
                                        zzatfVar5 = zzatfVar2;
                                        zzawnVar2 = zzawnVar2;
                                        zzatgVar = zzatgVar;
                                        objZzt = zzavv.zzp(obj2, iZzc, iZze, objZzt, zzawnVar2);
                                    }
                                    obj4 = obj2;
                                    break;
                                case 13:
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzawx.zzq(obj2, iZzp & 1048575, zzavsVar.zzh());
                                    zzC(obj2, i12);
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 14:
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzawx.zzr(obj2, iZzp & 1048575, zzavsVar.zzm());
                                    zzC(obj2, i12);
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 15:
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzawx.zzq(obj2, iZzp & 1048575, zzavsVar.zzi());
                                    zzC(obj2, i12);
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 16:
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzawx.zzr(obj2, iZzp & 1048575, zzavsVar.zzn());
                                    zzC(obj2, i12);
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 17:
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzavf zzavfVar2 = (zzavf) zzv(obj2, i12);
                                    zzavsVar.zzt(zzavfVar2, zzs(i12), zzatfVar2);
                                    zzE(obj2, i12, zzavfVar2);
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 18:
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzavsVar.zzx(this.zzm.zza(obj2, iZzp & 1048575));
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 19:
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzavsVar.zzB(this.zzm.zza(obj2, iZzp & 1048575));
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 20:
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzavsVar.zzE(this.zzm.zza(obj2, iZzp & 1048575));
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 21:
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzavsVar.zzM(this.zzm.zza(obj2, iZzp & 1048575));
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 22:
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzavsVar.zzD(this.zzm.zza(obj2, iZzp & 1048575));
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 23:
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzavsVar.zzA(this.zzm.zza(obj2, iZzp & 1048575));
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 24:
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzavsVar.zzz(this.zzm.zza(obj2, iZzp & 1048575));
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 25:
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzavsVar.zzv(this.zzm.zza(obj2, iZzp & 1048575));
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 26:
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    try {
                                        if (zzH(iZzp)) {
                                            ((zzasr) zzavsVar).zzK(this.zzm.zza(obj2, iZzp & 1048575), true);
                                        } else {
                                            ((zzasr) zzavsVar).zzK(this.zzm.zza(obj2, iZzp & 1048575), false);
                                        }
                                    } catch (zzaue unused) {
                                        zzawnVar2.zzq(zzavsVar);
                                        if (objZzt == null) {
                                            objZzt = zzawnVar2.zzc(obj2);
                                        }
                                        if (!zzawnVar2.zzp(objZzt, zzavsVar)) {
                                            objZzt = objZzt;
                                            for (i13 = this.zzk; i13 < this.zzl; i13++) {
                                                objZzt = zzt(obj, this.zzj[i13], objZzt, zzawnVar2, obj);
                                            }
                                            if (objZzt != null) {
                                                zzawnVar2.zzn(obj2, objZzt);
                                            }
                                        }
                                    }
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 27:
                                    zzatfVar3 = zzatfVar5;
                                    zzavsVar.zzF(this.zzm.zza(obj2, iZzp & 1048575), zzs(i12), zzatfVar3);
                                    zzatfVar2 = zzatfVar3;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 28:
                                    zzatfVar3 = zzatfVar5;
                                    zzavsVar.zzw(this.zzm.zza(obj2, iZzp & 1048575));
                                    zzatfVar2 = zzatfVar3;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case NOTIFICATION_REDIRECT_VALUE:
                                    zzatfVar3 = zzatfVar5;
                                    zzavsVar.zzL(this.zzm.zza(obj2, iZzp & 1048575));
                                    zzatfVar2 = zzatfVar3;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 30:
                                    zzatgVar = zzatgVar;
                                    zzatfVar4 = zzatfVar5;
                                    List listZza = this.zzm.zza(obj2, iZzp & 1048575);
                                    zzavsVar.zzy(listZza);
                                    objZzt = zzavv.zzo(obj, iZzc, listZza, zzr(i12), objZzt, zzawnVar2);
                                    zzatfVar5 = zzatfVar4;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case TEMPLATE_HTML_SIZE_VALUE:
                                    zzatfVar3 = zzatfVar5;
                                    zzavsVar.zzG(this.zzm.zza(obj2, iZzp & 1048575));
                                    zzatfVar2 = zzatfVar3;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 32:
                                    zzatfVar3 = zzatfVar5;
                                    zzavsVar.zzH(this.zzm.zza(obj2, iZzp & 1048575));
                                    zzatfVar2 = zzatfVar3;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 33:
                                    zzatfVar3 = zzatfVar5;
                                    zzavsVar.zzI(this.zzm.zza(obj2, iZzp & 1048575));
                                    zzatfVar2 = zzatfVar3;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 34:
                                    zzatfVar3 = zzatfVar5;
                                    zzavsVar.zzJ(this.zzm.zza(obj2, iZzp & 1048575));
                                    zzatfVar2 = zzatfVar3;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 35:
                                    zzatfVar3 = zzatfVar5;
                                    zzavsVar.zzx(this.zzm.zza(obj2, iZzp & 1048575));
                                    zzatfVar2 = zzatfVar3;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 36:
                                    zzatfVar3 = zzatfVar5;
                                    zzavsVar.zzB(this.zzm.zza(obj2, iZzp & 1048575));
                                    zzatfVar2 = zzatfVar3;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 37:
                                    zzatfVar3 = zzatfVar5;
                                    zzavsVar.zzE(this.zzm.zza(obj2, iZzp & 1048575));
                                    zzatfVar2 = zzatfVar3;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 38:
                                    zzatfVar3 = zzatfVar5;
                                    zzavsVar.zzM(this.zzm.zza(obj2, iZzp & 1048575));
                                    zzatfVar2 = zzatfVar3;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 39:
                                    zzatfVar3 = zzatfVar5;
                                    zzavsVar.zzD(this.zzm.zza(obj2, iZzp & 1048575));
                                    zzatfVar2 = zzatfVar3;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 40:
                                    zzatfVar3 = zzatfVar5;
                                    zzavsVar.zzA(this.zzm.zza(obj2, iZzp & 1048575));
                                    zzatfVar2 = zzatfVar3;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 41:
                                    zzatfVar3 = zzatfVar5;
                                    zzavsVar.zzz(this.zzm.zza(obj2, iZzp & 1048575));
                                    zzatfVar2 = zzatfVar3;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 42:
                                    zzatfVar3 = zzatfVar5;
                                    zzavsVar.zzv(this.zzm.zza(obj2, iZzp & 1048575));
                                    zzatfVar2 = zzatfVar3;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 43:
                                    zzatfVar3 = zzatfVar5;
                                    zzavsVar.zzL(this.zzm.zza(obj2, iZzp & 1048575));
                                    zzatfVar2 = zzatfVar3;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 44:
                                    List listZza2 = this.zzm.zza(obj2, iZzp & 1048575);
                                    zzavsVar.zzy(listZza2);
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar4 = zzatfVar5;
                                    try {
                                        try {
                                            objZzt = zzavv.zzo(obj, iZzc, listZza2, zzr(i12), objZzt, zzawnVar2);
                                            zzatfVar5 = zzatfVar4;
                                        } catch (Throwable th2) {
                                            th = th2;
                                        }
                                    } catch (zzaue unused2) {
                                        zzatfVar2 = zzatfVar4;
                                        zzawnVar2.zzq(zzavsVar);
                                        if (objZzt == null) {
                                            objZzt = zzawnVar2.zzc(obj2);
                                        }
                                        if (!zzawnVar2.zzp(objZzt, zzavsVar)) {
                                            objZzt = objZzt;
                                            while (i13 < this.zzl) {
                                                objZzt = zzt(obj, this.zzj[i13], objZzt, zzawnVar2, obj);
                                            }
                                            if (objZzt != null) {
                                                zzawnVar2.zzn(obj2, objZzt);
                                            }
                                        }
                                        zzatfVar5 = zzatfVar2;
                                        objZzt = objZzt;
                                    }
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 45:
                                    zzavsVar.zzG(this.zzm.zza(obj2, iZzp & 1048575));
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 46:
                                    zzavsVar.zzH(this.zzm.zza(obj2, iZzp & 1048575));
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 47:
                                    zzavsVar.zzI(this.zzm.zza(obj2, iZzp & 1048575));
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                                    zzavsVar.zzJ(this.zzm.zza(obj2, iZzp & 1048575));
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                                    zzavsVar.zzC(this.zzm.zza(obj2, iZzp & 1048575), zzs(i12), zzatfVar5);
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 50:
                                    Object objZzu = zzu(i12);
                                    long jZzp = zzp(i12) & 1048575;
                                    Object objZzf = zzawx.zzf(obj2, jZzp);
                                    if (objZzf == null) {
                                        objZzf = zzauz.zza().zzb();
                                        zzawx.zzs(obj2, jZzp, objZzf);
                                    } else if (!((zzauz) objZzf).zze()) {
                                        Object objZzb = zzauz.zza().zzb();
                                        zzava.zza(objZzb, objZzf);
                                        zzawx.zzs(obj2, jZzp, objZzb);
                                        objZzf = objZzb;
                                    }
                                    throw null;
                                case AD_REWARD_USER_VALUE:
                                    zzawx.zzs(obj2, iZzp & 1048575, Double.valueOf(zzavsVar.zza()));
                                    zzD(obj2, iZzc, i12);
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                                    zzawx.zzs(obj2, iZzp & 1048575, Float.valueOf(zzavsVar.zzb()));
                                    zzD(obj2, iZzc, i12);
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                                    zzawx.zzs(obj2, iZzp & 1048575, Long.valueOf(zzavsVar.zzl()));
                                    zzD(obj2, iZzc, i12);
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                                    zzawx.zzs(obj2, iZzp & 1048575, Long.valueOf(zzavsVar.zzo()));
                                    zzD(obj2, iZzc, i12);
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                                    zzawx.zzs(obj2, iZzp & 1048575, Integer.valueOf(zzavsVar.zzg()));
                                    zzD(obj2, iZzc, i12);
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case AD_VISIBILITY_VALUE:
                                    zzawx.zzs(obj2, iZzp & 1048575, Long.valueOf(zzavsVar.zzk()));
                                    zzD(obj2, iZzc, i12);
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 57:
                                    zzawx.zzs(obj2, iZzp & 1048575, Integer.valueOf(zzavsVar.zzf()));
                                    zzD(obj2, iZzc, i12);
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                                    zzawx.zzs(obj2, iZzp & 1048575, Boolean.valueOf(zzavsVar.zzN()));
                                    zzD(obj2, iZzc, i12);
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 59:
                                    zzB(obj2, iZzp, zzavsVar);
                                    zzD(obj2, iZzc, i12);
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 60:
                                    zzavf zzavfVar3 = (zzavf) zzw(obj2, iZzc, i12);
                                    zzavsVar.zzu(zzavfVar3, zzs(i12), zzatfVar5);
                                    zzF(obj2, iZzc, i12, zzavfVar3);
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 61:
                                    zzawx.zzs(obj2, iZzp & 1048575, zzavsVar.zzp());
                                    zzD(obj2, iZzc, i12);
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 62:
                                    zzawx.zzs(obj2, iZzp & 1048575, Integer.valueOf(zzavsVar.zzj()));
                                    zzD(obj2, iZzc, i12);
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 63:
                                    int iZze2 = zzavsVar.zze();
                                    zzaty zzatyVarZzr2 = zzr(i12);
                                    if (zzatyVarZzr2 != null && !zzatyVarZzr2.zza(iZze2)) {
                                        objZzt = zzavv.zzp(obj2, iZzc, iZze2, objZzt, zzawnVar2);
                                        obj4 = obj2;
                                        zzawnVar2 = zzawnVar2;
                                    }
                                    zzawx.zzs(obj2, iZzp & 1048575, Integer.valueOf(iZze2));
                                    zzD(obj2, iZzc, i12);
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 64:
                                    zzawx.zzs(obj2, iZzp & 1048575, Integer.valueOf(zzavsVar.zzh()));
                                    zzD(obj2, iZzc, i12);
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                                    zzawx.zzs(obj2, iZzp & 1048575, Long.valueOf(zzavsVar.zzm()));
                                    zzD(obj2, iZzc, i12);
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 66:
                                    zzawx.zzs(obj2, iZzp & 1048575, Integer.valueOf(zzavsVar.zzi()));
                                    zzD(obj2, iZzc, i12);
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 67:
                                    zzawx.zzs(obj2, iZzp & 1048575, Long.valueOf(zzavsVar.zzn()));
                                    zzD(obj2, iZzc, i12);
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                case 68:
                                    zzavf zzavfVar4 = (zzavf) zzw(obj2, iZzc, i12);
                                    zzavsVar.zzt(zzavfVar4, zzs(i12), zzatfVar5);
                                    zzF(obj2, iZzc, i12, zzavfVar4);
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    zzatfVar2 = zzatfVar5;
                                    zzatfVar5 = zzatfVar2;
                                    objZzt = objZzt;
                                    zzatgVar = zzatgVar;
                                    obj4 = obj2;
                                    break;
                                default:
                                    if (objZzt == null) {
                                        objZzt = zzawnVar2.zzc(obj2);
                                    }
                                    try {
                                        if (!zzawnVar2.zzp(objZzt, zzavsVar)) {
                                            for (int i18 = this.zzk; i18 < this.zzl; i18++) {
                                                objZzt = zzt(obj, this.zzj[i18], objZzt, zzawnVar2, obj);
                                            }
                                        }
                                        obj4 = obj2;
                                        zzawnVar2 = zzawnVar2;
                                    } catch (Throwable th3) {
                                        th = th3;
                                    }
                                    break;
                            }
                        } catch (zzaue unused3) {
                            objZzt = objZzt;
                            zzatgVar = zzatgVar;
                            zzatfVar2 = zzatfVar5;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        objZzt = objZzt;
                    }
                } else if (iZzc == Integer.MAX_VALUE) {
                    for (int i19 = this.zzk; i19 < this.zzl; i19++) {
                        objZzt = zzt(obj, this.zzj[i19], objZzt, zzawnVar2, obj);
                    }
                    zzawnVar2 = zzawnVar2;
                    obj2 = obj4;
                } else {
                    try {
                        Object objZzd = !this.zzh ? null : zzatgVar.zzd(zzatfVar5, this.zzg, iZzc);
                        if (objZzd != null) {
                            zzatk zzatkVarZzc = zzatkVar == null ? zzatgVar.zzc(obj4) : zzatkVar;
                            zzawnVar = zzawnVar2;
                            obj3 = obj4;
                            try {
                                objZzt = zzatgVar.zze(obj, zzavsVar, objZzd, zzatfVar, zzatkVarZzc, objZzt, zzawnVar);
                                zzatkVar = zzatkVarZzc;
                            } catch (Throwable th5) {
                                th = th5;
                                obj2 = obj3;
                                zzawnVar2 = zzawnVar;
                                objZzt = objZzt;
                                objZzt = objZzt;
                                for (i11 = this.zzk; i11 < this.zzl; i11++) {
                                    objZzt = zzt(obj, this.zzj[i11], objZzt, zzawnVar2, obj);
                                }
                                if (objZzt != null) {
                                    zzawnVar2.zzn(obj2, objZzt);
                                }
                                throw th;
                            }
                        } else {
                            zzawnVar = zzawnVar2;
                            obj3 = obj4;
                            zzawnVar.zzq(zzavsVar);
                            if (objZzt == null) {
                                objZzt = zzawnVar.zzc(obj3);
                            }
                            try {
                                if (!zzawnVar.zzp(objZzt, zzavsVar)) {
                                    int i20 = this.zzk;
                                    while (i20 < this.zzl) {
                                        zzawn zzawnVar3 = zzawnVar;
                                        objZzt = zzt(obj, this.zzj[i20], objZzt, zzawnVar3, obj);
                                        i20++;
                                        obj3 = obj3;
                                        zzawnVar = zzawnVar3;
                                    }
                                    obj2 = obj3;
                                    zzawnVar2 = zzawnVar;
                                }
                            } catch (Throwable th6) {
                                th = th6;
                                obj2 = obj3;
                                zzawnVar2 = zzawnVar;
                            }
                        }
                        obj4 = obj3;
                        zzawnVar2 = zzawnVar;
                    } catch (Throwable th7) {
                        th = th7;
                        zzawnVar2 = zzawnVar2;
                        obj2 = obj4;
                    }
                }
            } catch (Throwable th8) {
                th = th8;
                objZzt = objZzt;
                zzawnVar2 = zzawnVar2;
                obj2 = obj4;
            }
            objZzt = objZzt;
            while (i11 < this.zzl) {
                objZzt = zzt(obj, this.zzj[i11], objZzt, zzawnVar2, obj);
            }
            if (objZzt != null) {
                zzawnVar2.zzn(obj2, objZzt);
            }
            throw th;
        }
        if (objZzt != null) {
            zzawnVar2.zzn(obj2, objZzt);
        }
    }

    @Override // com.google.android.libraries.places.internal.zzavt
    public final boolean zzg(Object obj, Object obj2) {
        boolean zZzt;
        for (int i11 = 0; i11 < this.zzc.length; i11 += 3) {
            int iZzp = zzp(i11);
            long j11 = iZzp & 1048575;
            switch (zzo(iZzp)) {
                case 0:
                    if (!zzG(obj, obj2, i11) || Double.doubleToLongBits(zzawx.zza(obj, j11)) != Double.doubleToLongBits(zzawx.zza(obj2, j11))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 1:
                    if (!zzG(obj, obj2, i11) || Float.floatToIntBits(zzawx.zzb(obj, j11)) != Float.floatToIntBits(zzawx.zzb(obj2, j11))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 2:
                    if (!zzG(obj, obj2, i11) || zzawx.zzd(obj, j11) != zzawx.zzd(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 3:
                    if (!zzG(obj, obj2, i11) || zzawx.zzd(obj, j11) != zzawx.zzd(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 4:
                    if (!zzG(obj, obj2, i11) || zzawx.zzc(obj, j11) != zzawx.zzc(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 5:
                    if (!zzG(obj, obj2, i11) || zzawx.zzd(obj, j11) != zzawx.zzd(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 6:
                    if (!zzG(obj, obj2, i11) || zzawx.zzc(obj, j11) != zzawx.zzc(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 7:
                    if (!zzG(obj, obj2, i11) || zzawx.zzw(obj, j11) != zzawx.zzw(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 8:
                    if (!zzG(obj, obj2, i11) || !zzavv.zzt(zzawx.zzf(obj, j11), zzawx.zzf(obj2, j11))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 9:
                    if (!zzG(obj, obj2, i11) || !zzavv.zzt(zzawx.zzf(obj, j11), zzawx.zzf(obj2, j11))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 10:
                    if (!zzG(obj, obj2, i11) || !zzavv.zzt(zzawx.zzf(obj, j11), zzawx.zzf(obj2, j11))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 11:
                    if (!zzG(obj, obj2, i11) || zzawx.zzc(obj, j11) != zzawx.zzc(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 12:
                    if (!zzG(obj, obj2, i11) || zzawx.zzc(obj, j11) != zzawx.zzc(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 13:
                    if (!zzG(obj, obj2, i11) || zzawx.zzc(obj, j11) != zzawx.zzc(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 14:
                    if (!zzG(obj, obj2, i11) || zzawx.zzd(obj, j11) != zzawx.zzd(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 15:
                    if (!zzG(obj, obj2, i11) || zzawx.zzc(obj, j11) != zzawx.zzc(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 16:
                    if (!zzG(obj, obj2, i11) || zzawx.zzd(obj, j11) != zzawx.zzd(obj2, j11)) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                case 17:
                    if (!zzG(obj, obj2, i11) || !zzavv.zzt(zzawx.zzf(obj, j11), zzawx.zzf(obj2, j11))) {
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
                    zZzt = zzavv.zzt(zzawx.zzf(obj, j11), zzawx.zzf(obj2, j11));
                    break;
                case 50:
                    zZzt = zzavv.zzt(zzawx.zzf(obj, j11), zzawx.zzf(obj2, j11));
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
                    long jZzn = zzn(i11) & 1048575;
                    if (zzawx.zzc(obj, jZzn) != zzawx.zzc(obj2, jZzn) || !zzavv.zzt(zzawx.zzf(obj, j11), zzawx.zzf(obj2, j11))) {
                        return false;
                    }
                    continue;
                    break;
                    break;
                default:
                    continue;
                    break;
            }
            if (!zZzt) {
                return false;
            }
        }
        if (!this.zzn.zzd(obj).equals(this.zzn.zzd(obj2))) {
            return false;
        }
        if (this.zzh) {
            return this.zzo.zzb(obj).equals(this.zzo.zzb(obj2));
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x009b  */
    /* JADX WARN: Code duplicated, block: B:44:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:50:0x00c0 A[LOOP:1: B:45:0x00af->B:50:0x00c0, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:67:0x00bf A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:71:0x00dd A[SYNTHETIC] */
    @Override // com.google.android.libraries.places.internal.zzavt
    public final boolean zzh(Object obj) {
        int i11;
        int i12;
        List list;
        zzavt zzavtVarZzs;
        int i13;
        int i14 = 0;
        int i15 = 0;
        int i16 = 1048575;
        while (i15 < this.zzk) {
            int[] iArr = this.zzj;
            int[] iArr2 = this.zzc;
            int i17 = iArr[i15];
            int i18 = iArr2[i17];
            int iZzp = zzp(i17);
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
            if ((268435456 & iZzp) != 0 && !zzJ(obj, i17, i11, i12, i21)) {
                return false;
            }
            int iZzo = zzo(iZzp);
            if (iZzo == 9 || iZzo == 17) {
                if (zzJ(obj, i17, i11, i12, i21) && !zzK(obj, iZzp, zzs(i17))) {
                    return false;
                }
            } else if (iZzo == 27) {
                list = (List) zzawx.zzf(obj, iZzp & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzavtVarZzs = zzs(i17);
                    for (i13 = 0; i13 < list.size(); i13++) {
                        if (!zzavtVarZzs.zzh(list.get(i13))) {
                            return false;
                        }
                    }
                }
            } else if (iZzo == 60 || iZzo == 68) {
                if (zzM(obj, i18, i17) && !zzK(obj, iZzp, zzs(i17))) {
                    return false;
                }
            } else if (iZzo == 49) {
                list = (List) zzawx.zzf(obj, iZzp & 1048575);
                if (list.isEmpty()) {
                    zzavtVarZzs = zzs(i17);
                    while (i13 < list.size()) {
                        if (!zzavtVarZzs.zzh(list.get(i13))) {
                            return false;
                        }
                    }
                } else {
                    continue;
                }
            } else if (iZzo == 50 && !((zzauz) zzawx.zzf(obj, iZzp & 1048575)).isEmpty()) {
                throw null;
            }
            i15++;
            i16 = i11;
            i14 = i12;
        }
        return !this.zzh || this.zzo.zzb(obj).zzj();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:7:0x0024  */
    @Override // com.google.android.libraries.places.internal.zzavt
    public final void zzj(Object obj, zzasy zzasyVar) throws IOException {
        Map.Entry entry;
        Iterator it;
        int i11;
        int i12;
        int i13;
        int i14;
        boolean z10;
        boolean z11;
        boolean z12;
        if (this.zzh) {
            zzatk zzatkVarZzb = this.zzo.zzb(obj);
            if (zzatkVarZzb.zza.isEmpty()) {
                entry = null;
                it = null;
            } else {
                Iterator itZzf = zzatkVarZzb.zzf();
                entry = (Map.Entry) itZzf.next();
                it = itZzf;
            }
        } else {
            entry = null;
            it = null;
        }
        int[] iArr = this.zzc;
        Unsafe unsafe = zzb;
        int i15 = 1048575;
        int i16 = 1048575;
        int i17 = 0;
        int i18 = 0;
        while (i18 < iArr.length) {
            int iZzp = zzp(i18);
            int[] iArr2 = this.zzc;
            int iZzo = zzo(iZzp);
            int i19 = iArr2[i18];
            if (iZzo <= 17) {
                int i20 = iArr2[i18 + 2];
                int i21 = i20 & i15;
                if (i21 != i16) {
                    i17 = i21 == i15 ? 0 : unsafe.getInt(obj, i21);
                    i16 = i21;
                } else {
                    iZzo = iZzo;
                }
                i11 = i16;
                i12 = i17;
                i13 = 1 << (i20 >>> 20);
            } else {
                iZzo = iZzo;
                i11 = i16;
                i12 = i17;
                i13 = 0;
            }
            while (entry != null && this.zzo.zza(entry) <= i19) {
                this.zzo.zzj(zzasyVar, entry);
                entry = it.hasNext() ? (Map.Entry) it.next() : null;
            }
            long j11 = iZzp & 1048575;
            switch (iZzo) {
                case 0:
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    if (zzJ(obj, i14, i11, i12, i13)) {
                        zzasyVar.zzf(i19, zzawx.zza(obj, j11));
                    }
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 1:
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    if (zzJ(obj, i14, i11, i12, i13)) {
                        zzasyVar.zzo(i19, zzawx.zzb(obj, j11));
                    }
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 2:
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    if (zzJ(obj, i14, i11, i12, i13)) {
                        zzasyVar.zzt(i19, unsafe.getLong(obj, j11));
                    }
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 3:
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    if (zzJ(obj, i14, i11, i12, i13)) {
                        zzasyVar.zzK(i19, unsafe.getLong(obj, j11));
                    }
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 4:
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    if (zzJ(obj, i14, i11, i12, i13)) {
                        zzasyVar.zzr(i19, unsafe.getInt(obj, j11));
                    }
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 5:
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    if (zzJ(obj, i14, i11, i12, i13)) {
                        zzasyVar.zzm(i19, unsafe.getLong(obj, j11));
                    }
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 6:
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    if (zzJ(obj, i14, i11, i12, i13)) {
                        zzasyVar.zzk(i19, unsafe.getInt(obj, j11));
                    }
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 7:
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    if (zzJ(obj, i14, i11, i12, i13)) {
                        zzasyVar.zzb(i19, zzawx.zzw(obj, j11));
                    }
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 8:
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    if (zzJ(obj, i14, i11, i12, i13)) {
                        zzO(i19, unsafe.getObject(obj, j11), zzasyVar);
                    }
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 9:
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    if (zzJ(obj, i14, i11, i12, i13)) {
                        zzasyVar.zzv(i19, unsafe.getObject(obj, j11), zzs(i14));
                    }
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 10:
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    if (zzJ(obj, i14, i11, i12, i13)) {
                        zzasyVar.zzd(i19, (zzask) unsafe.getObject(obj, j11));
                    }
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 11:
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    if (zzJ(obj, i14, i11, i12, i13)) {
                        zzasyVar.zzI(i19, unsafe.getInt(obj, j11));
                    }
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 12:
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    if (zzJ(obj, i14, i11, i12, i13)) {
                        zzasyVar.zzi(i19, unsafe.getInt(obj, j11));
                    }
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 13:
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    if (zzJ(obj, i14, i11, i12, i13)) {
                        zzasyVar.zzx(i19, unsafe.getInt(obj, j11));
                    }
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 14:
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    if (zzJ(obj, i14, i11, i12, i13)) {
                        zzasyVar.zzz(i19, unsafe.getLong(obj, j11));
                    }
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 15:
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    if (zzJ(obj, i14, i11, i12, i13)) {
                        zzasyVar.zzB(i19, unsafe.getInt(obj, j11));
                    }
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 16:
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    if (zzJ(obj, i14, i11, i12, i13)) {
                        zzasyVar.zzD(i19, unsafe.getLong(obj, j11));
                    }
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 17:
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    if (zzJ(obj, i18, i11, i12, i13)) {
                        zzasyVar.zzq(i19, unsafe.getObject(obj, j11), zzs(i14));
                    }
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 18:
                    z10 = false;
                    zzavv.zzv(this.zzc[i18], (List) unsafe.getObject(obj, j11), zzasyVar, false);
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 19:
                    z10 = false;
                    zzavv.zzz(this.zzc[i18], (List) unsafe.getObject(obj, j11), zzasyVar, false);
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 20:
                    z10 = false;
                    zzavv.zzB(this.zzc[i18], (List) unsafe.getObject(obj, j11), zzasyVar, false);
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 21:
                    z10 = false;
                    zzavv.zzH(this.zzc[i18], (List) unsafe.getObject(obj, j11), zzasyVar, false);
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 22:
                    z10 = false;
                    zzavv.zzA(this.zzc[i18], (List) unsafe.getObject(obj, j11), zzasyVar, false);
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 23:
                    z10 = false;
                    zzavv.zzy(this.zzc[i18], (List) unsafe.getObject(obj, j11), zzasyVar, false);
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 24:
                    z10 = false;
                    zzavv.zzx(this.zzc[i18], (List) unsafe.getObject(obj, j11), zzasyVar, false);
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 25:
                    z10 = false;
                    zzavv.zzu(this.zzc[i18], (List) unsafe.getObject(obj, j11), zzasyVar, false);
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 26:
                    int i22 = this.zzc[i18];
                    List list = (List) unsafe.getObject(obj, j11);
                    int i23 = zzavv.zza;
                    if (list != null && !list.isEmpty()) {
                        zzasyVar.zzH(i22, list);
                    }
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 27:
                    int i24 = this.zzc[i18];
                    List list2 = (List) unsafe.getObject(obj, j11);
                    zzavt zzavtVarZzs = zzs(i18);
                    int i25 = zzavv.zza;
                    if (list2 != null && !list2.isEmpty()) {
                        for (int i26 = 0; i26 < list2.size(); i26++) {
                            zzasyVar.zzv(i24, list2.get(i26), zzavtVarZzs);
                        }
                    }
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 28:
                    int i27 = this.zzc[i18];
                    List list3 = (List) unsafe.getObject(obj, j11);
                    int i28 = zzavv.zza;
                    if (list3 != null && !list3.isEmpty()) {
                        zzasyVar.zze(i27, list3);
                    }
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case NOTIFICATION_REDIRECT_VALUE:
                    z11 = false;
                    zzavv.zzG(this.zzc[i18], (List) unsafe.getObject(obj, j11), zzasyVar, false);
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 30:
                    z11 = false;
                    zzavv.zzw(this.zzc[i18], (List) unsafe.getObject(obj, j11), zzasyVar, false);
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case TEMPLATE_HTML_SIZE_VALUE:
                    z11 = false;
                    zzavv.zzC(this.zzc[i18], (List) unsafe.getObject(obj, j11), zzasyVar, false);
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 32:
                    z11 = false;
                    zzavv.zzD(this.zzc[i18], (List) unsafe.getObject(obj, j11), zzasyVar, false);
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 33:
                    z11 = false;
                    zzavv.zzE(this.zzc[i18], (List) unsafe.getObject(obj, j11), zzasyVar, false);
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 34:
                    z11 = false;
                    zzavv.zzF(this.zzc[i18], (List) unsafe.getObject(obj, j11), zzasyVar, false);
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 35:
                    z12 = true;
                    zzavv.zzv(this.zzc[i18], (List) unsafe.getObject(obj, j11), zzasyVar, true);
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 36:
                    z12 = true;
                    zzavv.zzz(this.zzc[i18], (List) unsafe.getObject(obj, j11), zzasyVar, true);
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 37:
                    z12 = true;
                    zzavv.zzB(this.zzc[i18], (List) unsafe.getObject(obj, j11), zzasyVar, true);
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 38:
                    z12 = true;
                    zzavv.zzH(this.zzc[i18], (List) unsafe.getObject(obj, j11), zzasyVar, true);
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 39:
                    z12 = true;
                    zzavv.zzA(this.zzc[i18], (List) unsafe.getObject(obj, j11), zzasyVar, true);
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 40:
                    z12 = true;
                    zzavv.zzy(this.zzc[i18], (List) unsafe.getObject(obj, j11), zzasyVar, true);
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 41:
                    z12 = true;
                    zzavv.zzx(this.zzc[i18], (List) unsafe.getObject(obj, j11), zzasyVar, true);
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 42:
                    z12 = true;
                    zzavv.zzu(this.zzc[i18], (List) unsafe.getObject(obj, j11), zzasyVar, true);
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 43:
                    z12 = true;
                    zzavv.zzG(this.zzc[i18], (List) unsafe.getObject(obj, j11), zzasyVar, true);
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 44:
                    z12 = true;
                    zzavv.zzw(this.zzc[i18], (List) unsafe.getObject(obj, j11), zzasyVar, true);
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 45:
                    z12 = true;
                    zzavv.zzC(this.zzc[i18], (List) unsafe.getObject(obj, j11), zzasyVar, true);
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 46:
                    z12 = true;
                    zzavv.zzD(this.zzc[i18], (List) unsafe.getObject(obj, j11), zzasyVar, true);
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 47:
                    z12 = true;
                    zzavv.zzE(this.zzc[i18], (List) unsafe.getObject(obj, j11), zzasyVar, true);
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                    z12 = true;
                    zzavv.zzF(this.zzc[i18], (List) unsafe.getObject(obj, j11), zzasyVar, true);
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                    int i29 = this.zzc[i18];
                    List list4 = (List) unsafe.getObject(obj, j11);
                    zzavt zzavtVarZzs2 = zzs(i18);
                    int i30 = zzavv.zza;
                    if (list4 != null && !list4.isEmpty()) {
                        for (int i31 = 0; i31 < list4.size(); i31++) {
                            zzasyVar.zzq(i29, list4.get(i31), zzavtVarZzs2);
                        }
                    }
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 50:
                    if (unsafe.getObject(obj, j11) != null) {
                        throw null;
                    }
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case AD_REWARD_USER_VALUE:
                    if (zzM(obj, i19, i18)) {
                        zzasyVar.zzf(i19, zzk(obj, j11));
                    }
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case AD_REQUIRED_DOWNLOAD_DURATION_MS_VALUE:
                    if (zzM(obj, i19, i18)) {
                        zzasyVar.zzo(i19, zzl(obj, j11));
                    }
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case AD_OPTIONAL_DOWNLOAD_DURATION_MS_VALUE:
                    if (zzM(obj, i19, i18)) {
                        zzasyVar.zzt(i19, zzq(obj, j11));
                    }
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case AD_BACKGROUND_BEFORE_IMPRESSION_VALUE:
                    if (zzM(obj, i19, i18)) {
                        zzasyVar.zzK(i19, zzq(obj, j11));
                    }
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case AD_CLOSED_BEFORE_IMPRESSION_VALUE:
                    if (zzM(obj, i19, i18)) {
                        zzasyVar.zzr(i19, zzm(obj, j11));
                    }
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case AD_VISIBILITY_VALUE:
                    if (zzM(obj, i19, i18)) {
                        zzasyVar.zzm(i19, zzq(obj, j11));
                    }
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 57:
                    if (zzM(obj, i19, i18)) {
                        zzasyVar.zzk(i19, zzm(obj, j11));
                    }
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case INIT_TO_FAIL_CALLBACK_DURATION_MS_VALUE:
                    if (zzM(obj, i19, i18)) {
                        zzasyVar.zzb(i19, zzN(obj, j11));
                    }
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 59:
                    if (zzM(obj, i19, i18)) {
                        zzO(i19, unsafe.getObject(obj, j11), zzasyVar);
                    }
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 60:
                    if (zzM(obj, i19, i18)) {
                        zzasyVar.zzv(i19, unsafe.getObject(obj, j11), zzs(i18));
                    }
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 61:
                    if (zzM(obj, i19, i18)) {
                        zzasyVar.zzd(i19, (zzask) unsafe.getObject(obj, j11));
                    }
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 62:
                    if (zzM(obj, i19, i18)) {
                        zzasyVar.zzI(i19, zzm(obj, j11));
                    }
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 63:
                    if (zzM(obj, i19, i18)) {
                        zzasyVar.zzi(i19, zzm(obj, j11));
                    }
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 64:
                    if (zzM(obj, i19, i18)) {
                        zzasyVar.zzx(i19, zzm(obj, j11));
                    }
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH /* 65 */:
                    if (zzM(obj, i19, i18)) {
                        zzasyVar.zzz(i19, zzq(obj, j11));
                    }
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 66:
                    if (zzM(obj, i19, i18)) {
                        zzasyVar.zzB(i19, zzm(obj, j11));
                    }
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 67:
                    if (zzM(obj, i19, i18)) {
                        zzasyVar.zzD(i19, zzq(obj, j11));
                    }
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                case 68:
                    if (zzM(obj, i19, i18)) {
                        zzasyVar.zzq(i19, unsafe.getObject(obj, j11), zzs(i18));
                    }
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
                default:
                    i14 = i18;
                    i18 = i14 + 3;
                    i16 = i11;
                    i17 = i12;
                    i15 = 1048575;
                    it = it;
                    iArr = iArr;
                    entry = entry;
                    break;
            }
        }
        Iterator it2 = it;
        while (entry != null) {
            this.zzo.zzj(zzasyVar, entry);
            entry = it2.hasNext() ? (Map.Entry) it2.next() : null;
        }
        zzawn zzawnVar = this.zzn;
        zzawnVar.zzs(zzawnVar.zzd(obj), zzasyVar);
    }
}
