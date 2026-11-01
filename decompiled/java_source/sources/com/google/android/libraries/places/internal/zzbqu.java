package com.google.android.libraries.places.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbqu {
    private static final Logger zza = Logger.getLogger(zzbqu.class.getName());
    private static final byte[] zzb = "-bin".getBytes(zzmb.zza);

    private zzbqu() {
    }

    public static byte[][] zza(zzbcf zzbcfVar) {
        int length;
        int i11;
        byte[][] bArrZzd = zzbar.zzd(zzbcfVar);
        int i12 = 0;
        int i13 = 0;
        while (true) {
            length = bArrZzd.length;
            if (i12 >= length) {
                break;
            }
            byte[] bArr = bArrZzd[i12];
            byte[] bArr2 = bArrZzd[i12 + 1];
            if (zzc(bArr, zzb)) {
                i11 = i13 + 2;
                bArrZzd[i13] = bArr;
                bArrZzd[i13 + 1] = zzbar.zzb.zzk(bArr2, 0, bArr2.length).getBytes(zzmb.zza);
            } else {
                int length2 = bArr2.length;
                int i14 = 0;
                while (true) {
                    if (i14 >= length2) {
                        i11 = i13 + 2;
                        bArrZzd[i13] = bArr;
                        bArrZzd[i13 + 1] = bArr2;
                    } else {
                        byte b11 = bArr2[i14];
                        if (b11 < 32 || b11 > 126) {
                            String str = new String(bArr, zzmb.zza);
                            zza.logp(Level.WARNING, "io.grpc.internal.TransportFrameUtil", "toHttp2Headers", "Metadata key=" + str + ", value=" + Arrays.toString(bArr2) + " contains invalid ASCII characters");
                        } else {
                            i14++;
                        }
                    }
                    i12 += 2;
                }
            }
            i13 = i11;
            i12 += 2;
        }
        return i13 == length ? bArrZzd : (byte[][]) Arrays.copyOfRange(bArrZzd, 0, i13);
    }

    public static byte[][] zzb(byte[][] bArr) {
        int i11 = 0;
        while (i11 < bArr.length) {
            byte[] bArr2 = bArr[i11];
            int i12 = i11 + 1;
            byte[] bArr3 = bArr[i12];
            if (zzc(bArr2, zzb)) {
                for (byte b11 : bArr3) {
                    if (b11 == 44) {
                        ArrayList arrayList = new ArrayList(bArr.length + 10);
                        for (int i13 = 0; i13 < i11; i13++) {
                            arrayList.add(bArr[i13]);
                        }
                        while (i11 < bArr.length) {
                            byte[] bArr4 = bArr[i11];
                            byte[] bArr5 = bArr[i11 + 1];
                            if (zzc(bArr4, zzb)) {
                                int i14 = 0;
                                int i15 = 0;
                                while (true) {
                                    int length = bArr5.length;
                                    if (i14 <= length) {
                                        if (i14 == length || bArr5[i14] == 44) {
                                            byte[] bArrZzl = zzsi.zzj().zzl(new String(bArr5, i15, i14 - i15, zzmb.zza));
                                            arrayList.add(bArr4);
                                            arrayList.add(bArrZzl);
                                            i15 = i14 + 1;
                                        }
                                        i14++;
                                    }
                                }
                            } else {
                                arrayList.add(bArr4);
                                arrayList.add(bArr5);
                            }
                            i11 += 2;
                        }
                        return (byte[][]) arrayList.toArray(new byte[0][]);
                    }
                }
                bArr[i12] = zzsi.zzj().zzl(new String(bArr3, zzmb.zza));
            }
            i11 += 2;
        }
        return bArr;
    }

    private static boolean zzc(byte[] bArr, byte[] bArr2) {
        int length = bArr.length - bArr2.length;
        if (length < 0) {
            return false;
        }
        for (int i11 = length; i11 < bArr.length; i11++) {
            if (bArr[i11] != bArr2[i11 - length]) {
                return false;
            }
        }
        return true;
    }
}
