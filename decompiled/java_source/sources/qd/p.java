package qd;

import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import com.google.zxing.ResultMetadataType;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public abstract class p implements com.google.zxing.i {
    /* JADX WARN: Code duplicated, block: B:35:0x006f  */
    private com.google.zxing.j d(com.google.zxing.b bVar, Map map) throws NotFoundException {
        Map map2;
        int i11;
        int i12;
        Map map3 = map;
        int iD = bVar.d();
        int iC = bVar.c();
        id.a aVar = new id.a(iD);
        int i13 = 0;
        int i14 = 1;
        boolean z10 = map3 != null && map3.containsKey(DecodeHintType.TRY_HARDER);
        int iMax = Math.max(1, iC >> (z10 ? 8 : 5));
        int i15 = z10 ? iC : 15;
        int i16 = iC / 2;
        int i17 = 0;
        while (i17 < i15) {
            int i18 = i17 + 1;
            int i19 = i18 / 2;
            if ((i17 & 1) != 0) {
                i19 = -i19;
            }
            int i20 = (i19 * iMax) + i16;
            if (i20 < 0 || i20 >= iC) {
                break;
            }
            try {
                aVar = bVar.b(i20, aVar);
                int i21 = i13;
                while (i21 < 2) {
                    if (i21 == i14) {
                        aVar.q();
                        if (map3 != null) {
                            DecodeHintType decodeHintType = DecodeHintType.NEED_RESULT_POINT_CALLBACK;
                            if (map3.containsKey(decodeHintType)) {
                                EnumMap enumMap = new EnumMap(DecodeHintType.class);
                                enumMap.putAll(map3);
                                enumMap.remove(decodeHintType);
                                map3 = enumMap;
                            }
                        }
                    }
                    try {
                        com.google.zxing.j jVarC = c(i20, aVar, map3);
                        if (i21 == i14) {
                            try {
                                jVarC.h(ResultMetadataType.ORIENTATION, 180);
                                com.google.zxing.k[] kVarArrE = jVarC.e();
                                if (kVarArrE != null) {
                                    map2 = map3;
                                    float f11 = iD;
                                    try {
                                        i11 = iD;
                                        try {
                                            kVarArrE[0] = new com.google.zxing.k((f11 - kVarArrE[i13].c()) - 1.0f, kVarArrE[i13].d());
                                            i12 = 1;
                                            try {
                                                kVarArrE[1] = new com.google.zxing.k((f11 - kVarArrE[1].c()) - 1.0f, kVarArrE[1].d());
                                            } catch (ReaderException unused) {
                                                continue;
                                                i21++;
                                                i14 = i12;
                                                map3 = map2;
                                                iD = i11;
                                                i13 = 0;
                                            }
                                        } catch (ReaderException unused2) {
                                            i12 = 1;
                                            i21++;
                                            i14 = i12;
                                            map3 = map2;
                                            iD = i11;
                                            i13 = 0;
                                        }
                                    } catch (ReaderException unused3) {
                                        i11 = iD;
                                        i12 = 1;
                                        i21++;
                                        i14 = i12;
                                        map3 = map2;
                                        iD = i11;
                                        i13 = 0;
                                    }
                                }
                            } catch (ReaderException unused4) {
                                map2 = map3;
                            }
                        }
                        return jVarC;
                    } catch (ReaderException unused5) {
                        map2 = map3;
                        i11 = iD;
                        i12 = i14;
                    }
                }
            } catch (NotFoundException unused6) {
            }
            i17 = i18;
            i14 = i14;
            iD = iD;
            i13 = 0;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    protected static float e(int[] iArr, int[] iArr2, float f11) {
        int length = iArr.length;
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < length; i13++) {
            i11 += iArr[i13];
            i12 += iArr2[i13];
        }
        if (i11 < i12) {
            return Float.POSITIVE_INFINITY;
        }
        float f12 = i11;
        float f13 = f12 / i12;
        float f14 = f11 * f13;
        float f15 = 0.0f;
        for (int i14 = 0; i14 < length; i14++) {
            int i15 = iArr[i14];
            float f16 = iArr2[i14] * f13;
            float f17 = i15;
            float f18 = f17 > f16 ? f17 - f16 : f16 - f17;
            if (f18 > f14) {
                return Float.POSITIVE_INFINITY;
            }
            f15 += f18;
        }
        return f15 / f12;
    }

    protected static void f(id.a aVar, int i11, int[] iArr) throws NotFoundException {
        int length = iArr.length;
        int i12 = 0;
        Arrays.fill(iArr, 0, length, 0);
        int iM = aVar.m();
        if (i11 >= iM) {
            throw NotFoundException.getNotFoundInstance();
        }
        boolean z10 = !aVar.i(i11);
        while (i11 < iM) {
            if (aVar.i(i11) != z10) {
                iArr[i12] = iArr[i12] + 1;
            } else {
                i12++;
                if (i12 == length) {
                    break;
                }
                iArr[i12] = 1;
                z10 = !z10;
            }
            i11++;
        }
        if (i12 != length) {
            if (i12 != length - 1 || i11 != iM) {
                throw NotFoundException.getNotFoundInstance();
            }
        }
    }

    protected static void g(id.a aVar, int i11, int[] iArr) throws NotFoundException {
        int length = iArr.length;
        boolean zI = aVar.i(i11);
        while (i11 > 0 && length >= 0) {
            i11--;
            if (aVar.i(i11) != zI) {
                length--;
                zI = !zI;
            }
        }
        if (length >= 0) {
            throw NotFoundException.getNotFoundInstance();
        }
        f(aVar, i11 + 1, iArr);
    }

    @Override // com.google.zxing.i
    public com.google.zxing.j a(com.google.zxing.b bVar, Map map) throws NotFoundException {
        try {
            return d(bVar, map);
        } catch (NotFoundException e11) {
            if (map == null || !map.containsKey(DecodeHintType.TRY_HARDER) || !bVar.e()) {
                throw e11;
            }
            com.google.zxing.b bVarF = bVar.f();
            com.google.zxing.j jVarD = d(bVarF, map);
            Map mapD = jVarD.d();
            int iIntValue = 270;
            if (mapD != null) {
                ResultMetadataType resultMetadataType = ResultMetadataType.ORIENTATION;
                if (mapD.containsKey(resultMetadataType)) {
                    iIntValue = (((Integer) mapD.get(resultMetadataType)).intValue() + 270) % 360;
                }
            }
            jVarD.h(ResultMetadataType.ORIENTATION, Integer.valueOf(iIntValue));
            com.google.zxing.k[] kVarArrE = jVarD.e();
            if (kVarArrE != null) {
                int iC = bVarF.c();
                for (int i11 = 0; i11 < kVarArrE.length; i11++) {
                    kVarArrE[i11] = new com.google.zxing.k((iC - kVarArrE[i11].d()) - 1.0f, kVarArrE[i11].c());
                }
            }
            return jVarD;
        }
    }

    @Override // com.google.zxing.i
    public com.google.zxing.j b(com.google.zxing.b bVar) {
        return a(bVar, null);
    }

    public abstract com.google.zxing.j c(int i11, id.a aVar, Map map);

    @Override // com.google.zxing.i
    public void reset() {
    }
}
