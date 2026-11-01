package com.google.android.libraries.places.internal;

import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
final class zzbdn implements zzbce {
    private static final byte[] zza = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70};

    private zzbdn() {
        throw null;
    }

    /* synthetic */ zzbdn(zzbdm zzbdmVar) {
    }

    private static boolean zzc(byte b11) {
        return b11 < 32 || b11 >= 126 || b11 == 37;
    }

    @Override // com.google.android.libraries.places.internal.zzbce
    public final /* bridge */ /* synthetic */ Object zza(byte[] bArr) {
        int i11 = 0;
        while (true) {
            int length = bArr.length;
            if (i11 >= length) {
                return new String(bArr, 0);
            }
            byte b11 = bArr[i11];
            if (b11 < 32 || b11 >= 126 || (b11 == 37 && i11 + 2 < length)) {
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length);
                int i12 = 0;
                while (true) {
                    int length2 = bArr.length;
                    if (i12 >= length2) {
                        return new String(byteBufferAllocate.array(), 0, byteBufferAllocate.position(), zzmb.zzc);
                    }
                    int i13 = i12 + 1;
                    if (bArr[i12] == 37 && i12 + 2 < length2) {
                        try {
                            byteBufferAllocate.put((byte) Integer.parseInt(new String(bArr, i13, 2, zzmb.zza), 16));
                            i12 += 3;
                        } catch (NumberFormatException unused) {
                            byteBufferAllocate.put(bArr[i12]);
                            i12 = i13;
                        }
                    }
                    byteBufferAllocate.put(bArr[i12]);
                    i12 = i13;
                }
            } else {
                i11++;
            }
        }
    }

    @Override // com.google.android.libraries.places.internal.zzbce
    public final /* bridge */ /* synthetic */ byte[] zzb(Object obj) {
        byte[] bytes = ((String) obj).getBytes(zzmb.zzc);
        int i11 = 0;
        while (true) {
            int length = bytes.length;
            if (i11 >= length) {
                return bytes;
            }
            if (zzc(bytes[i11])) {
                byte[] bArr = new byte[((length - i11) * 3) + i11];
                if (i11 != 0) {
                    System.arraycopy(bytes, 0, bArr, 0, i11);
                }
                int i12 = i11;
                while (i11 < bytes.length) {
                    int i13 = i12 + 1;
                    byte b11 = bytes[i11];
                    if (zzc(b11)) {
                        bArr[i12] = 37;
                        byte[] bArr2 = zza;
                        bArr[i13] = bArr2[(b11 >> 4) & 15];
                        bArr[i12 + 2] = bArr2[b11 & 15];
                        i12 += 3;
                    } else {
                        bArr[i12] = b11;
                        i12 = i13;
                    }
                    i11++;
                }
                return Arrays.copyOf(bArr, i12);
            }
            i11++;
        }
    }
}
