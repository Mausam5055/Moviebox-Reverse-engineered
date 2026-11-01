package com.google.android.gms.internal.play_billing;

import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
final class zzaq extends zzai {
    static final zzai zza = new zzaq(null, new Object[0], 0);
    final transient Object[] zzb;
    private final transient Object zzc;
    private final transient int zzd;

    private zzaq(Object obj, Object[] objArr, int i11) {
        this.zzc = obj;
        this.zzb = objArr;
        this.zzd = i11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v34 */
    /* JADX WARN: Type inference failed for: r2v35 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r5v4, types: [int[]] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r6v4 */
    static zzaq zzf(int i11, Object[] objArr, zzah zzahVar) {
        int iHighestOneBit;
        short[] sArr;
        ?? r11;
        ?? r12;
        int i12 = i11;
        Object[] objArrCopyOf = objArr;
        if (i12 == 0) {
            return (zzaq) zza;
        }
        zzag zzagVar = null;
        ?? r13 = 0;
        zzag zzagVar2 = null;
        zzag zzagVar3 = null;
        if (i12 == 1) {
            Object obj = objArrCopyOf[0];
            obj.getClass();
            Object obj2 = objArrCopyOf[1];
            obj2.getClass();
            zzaa.zza(obj, obj2);
            return new zzaq(null, objArrCopyOf, 1);
        }
        zzx.zzb(i12, objArrCopyOf.length >> 1, "index");
        char c11 = 2;
        int iMax = Math.max(i12, 2);
        if (iMax < 751619276) {
            iHighestOneBit = Integer.highestOneBit(iMax - 1);
            do {
                iHighestOneBit += iHighestOneBit;
            } while (((double) iHighestOneBit) * 0.7d < iMax);
        } else {
            iHighestOneBit = 1073741824;
            if (iMax >= 1073741824) {
                throw new IllegalArgumentException("collection too large");
            }
        }
        if (i12 == 1) {
            Object obj3 = objArrCopyOf[0];
            obj3.getClass();
            Object obj4 = objArrCopyOf[1];
            obj4.getClass();
            zzaa.zza(obj3, obj4);
            i12 = 1;
        } else {
            int i13 = iHighestOneBit - 1;
            byte b11 = -1;
            if (iHighestOneBit <= 128) {
                byte[] bArr = new byte[iHighestOneBit];
                Arrays.fill(bArr, (byte) -1);
                int i14 = 0;
                for (int i15 = 0; i15 < i12; i15++) {
                    int i16 = i14 + i14;
                    int i17 = i15 + i15;
                    Object obj5 = objArrCopyOf[i17];
                    obj5.getClass();
                    Object obj6 = objArrCopyOf[i17 ^ 1];
                    obj6.getClass();
                    zzaa.zza(obj5, obj6);
                    int iZza = zzab.zza(obj5.hashCode());
                    while (true) {
                        int i18 = iZza & i13;
                        int i19 = bArr[i18] & 255;
                        if (i19 == 255) {
                            bArr[i18] = (byte) i16;
                            if (i14 < i15) {
                                objArrCopyOf[i16] = obj5;
                                objArrCopyOf[i16 ^ 1] = obj6;
                            }
                            i14++;
                            break;
                        }
                        if (obj5.equals(objArrCopyOf[i19 == true ? 1 : 0])) {
                            int i20 = ~i19;
                            Object obj7 = objArrCopyOf[i20 == true ? 1 : 0];
                            obj7.getClass();
                            zzag zzagVar4 = new zzag(obj5, obj6, obj7);
                            objArrCopyOf[i20 == true ? 1 : 0] = obj6;
                            zzagVar2 = zzagVar4;
                            break;
                        }
                        iZza = i18 + 1;
                    }
                }
                if (i14 == i12) {
                    r12 = bArr;
                    c11 = 2;
                    r13 = r12;
                } else {
                    r13 = new Object[]{bArr, Integer.valueOf(i14), zzagVar2};
                    c11 = 2;
                }
            } else if (iHighestOneBit <= 32768) {
                sArr = new short[iHighestOneBit];
                Arrays.fill(sArr, (short) -1);
                int i21 = 0;
                for (int i22 = 0; i22 < i12; i22++) {
                    int i23 = i21 + i21;
                    int i24 = i22 + i22;
                    Object obj8 = objArrCopyOf[i24];
                    obj8.getClass();
                    Object obj9 = objArrCopyOf[i24 ^ 1];
                    obj9.getClass();
                    zzaa.zza(obj8, obj9);
                    int iZza2 = zzab.zza(obj8.hashCode());
                    while (true) {
                        int i25 = iZza2 & i13;
                        char c12 = (char) sArr[i25];
                        if (c12 == 65535) {
                            sArr[i25] = (short) i23;
                            if (i21 < i22) {
                                objArrCopyOf[i23] = obj8;
                                objArrCopyOf[i23 ^ 1] = obj9;
                            }
                            i21++;
                            break;
                        }
                        if (obj8.equals(objArrCopyOf[c12])) {
                            int i26 = c12 ^ 1;
                            Object obj10 = objArrCopyOf[i26 == true ? 1 : 0];
                            obj10.getClass();
                            zzag zzagVar5 = new zzag(obj8, obj9, obj10);
                            objArrCopyOf[i26 == true ? 1 : 0] = obj9;
                            zzagVar3 = zzagVar5;
                            break;
                        }
                        iZza2 = i25 + 1;
                    }
                }
                if (i21 != i12) {
                    c11 = 2;
                    r11 = new Object[]{sArr, Integer.valueOf(i21), zzagVar3};
                    r13 = r11;
                }
                r12 = sArr;
                c11 = 2;
                r13 = r12;
            } else {
                sArr = new int[iHighestOneBit];
                Arrays.fill((int[]) sArr, -1);
                int i27 = 0;
                int i28 = 0;
                while (i27 < i12) {
                    int i29 = i28 + i28;
                    int i30 = i27 + i27;
                    Object obj11 = objArrCopyOf[i30];
                    obj11.getClass();
                    Object obj12 = objArrCopyOf[i30 ^ 1];
                    obj12.getClass();
                    zzaa.zza(obj11, obj12);
                    int iZza3 = zzab.zza(obj11.hashCode());
                    while (true) {
                        int i31 = iZza3 & i13;
                        ?? r15 = sArr[i31];
                        if (r15 == b11) {
                            sArr[i31] = i29;
                            if (i28 < i27) {
                                objArrCopyOf[i29] = obj11;
                                objArrCopyOf[i29 ^ 1] = obj12;
                            }
                            i28++;
                            break;
                        }
                        if (obj11.equals(objArrCopyOf[r15])) {
                            int i32 = r15 ^ 1;
                            Object obj13 = objArrCopyOf[i32 == true ? 1 : 0];
                            obj13.getClass();
                            zzag zzagVar6 = new zzag(obj11, obj12, obj13);
                            objArrCopyOf[i32 == true ? 1 : 0] = obj12;
                            zzagVar = zzagVar6;
                            break;
                        }
                        iZza3 = i31 + 1;
                        b11 = -1;
                    }
                    i27++;
                    b11 = -1;
                }
                if (i28 != i12) {
                    c11 = 2;
                    r11 = new Object[]{sArr, Integer.valueOf(i28), zzagVar};
                    r13 = r11;
                }
                r12 = sArr;
                c11 = 2;
                r13 = r12;
            }
        }
        boolean z10 = r13 instanceof Object[];
        ?? r14 = r13;
        if (z10) {
            Object[] objArr2 = (Object[]) r13;
            zzahVar.zzc = (zzag) objArr2[c11];
            Object obj14 = objArr2[0];
            int iIntValue = ((Integer) objArr2[1]).intValue();
            objArrCopyOf = Arrays.copyOf(objArrCopyOf, iIntValue + iIntValue);
            r14 = obj14;
            i12 = iIntValue;
        }
        return new zzaq(r14, objArrCopyOf, i12);
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0003  */
    @Override // com.google.android.gms.internal.play_billing.zzai, java.util.Map
    public final Object get(Object obj) {
        Object obj2;
        if (obj == null) {
            obj2 = null;
        } else {
            int i11 = this.zzd;
            Object[] objArr = this.zzb;
            if (i11 == 1) {
                Object obj3 = objArr[0];
                obj3.getClass();
                if (obj3.equals(obj)) {
                    obj2 = objArr[1];
                    obj2.getClass();
                } else {
                    obj2 = null;
                }
            } else {
                Object obj4 = this.zzc;
                if (obj4 == null) {
                    obj2 = null;
                } else if (obj4 instanceof byte[]) {
                    byte[] bArr = (byte[]) obj4;
                    int length = bArr.length - 1;
                    int iZza = zzab.zza(obj.hashCode());
                    while (true) {
                        int i12 = iZza & length;
                        int i13 = bArr[i12] & 255;
                        if (i13 == 255) {
                            break;
                        }
                        if (obj.equals(objArr[i13])) {
                            obj2 = objArr[i13 ^ 1];
                        } else {
                            iZza = i12 + 1;
                        }
                    }
                    obj2 = null;
                } else if (obj4 instanceof short[]) {
                    short[] sArr = (short[]) obj4;
                    int length2 = sArr.length - 1;
                    int iZza2 = zzab.zza(obj.hashCode());
                    while (true) {
                        int i14 = iZza2 & length2;
                        char c11 = (char) sArr[i14];
                        if (c11 == 65535) {
                            break;
                        }
                        if (obj.equals(objArr[c11])) {
                            obj2 = objArr[c11 ^ 1];
                        } else {
                            iZza2 = i14 + 1;
                        }
                    }
                    obj2 = null;
                } else {
                    int[] iArr = (int[]) obj4;
                    int length3 = iArr.length - 1;
                    int iZza3 = zzab.zza(obj.hashCode());
                    while (true) {
                        int i15 = iZza3 & length3;
                        int i16 = iArr[i15];
                        if (i16 == -1) {
                            break;
                        }
                        if (obj.equals(objArr[i16])) {
                            obj2 = objArr[i16 ^ 1];
                        } else {
                            iZza3 = i15 + 1;
                        }
                    }
                    obj2 = null;
                }
            }
        }
        if (obj2 == null) {
            return null;
        }
        return obj2;
    }

    @Override // java.util.Map
    public final int size() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.play_billing.zzai
    final zzac zza() {
        return new zzap(this.zzb, 1, this.zzd);
    }

    @Override // com.google.android.gms.internal.play_billing.zzai
    final zzaj zzc() {
        return new zzan(this, this.zzb, 0, this.zzd);
    }

    @Override // com.google.android.gms.internal.play_billing.zzai
    final zzaj zzd() {
        return new zzao(this, new zzap(this.zzb, 0, this.zzd));
    }
}
