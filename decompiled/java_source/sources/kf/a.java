package kf;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;

/* JADX INFO: loaded from: classes5.dex */
public class a {
    public static int a(InputStream inputStream, InputStream inputStream2, File file) throws IOException {
        if (inputStream == null) {
            return 3;
        }
        if (file == null) {
            return 4;
        }
        if (inputStream2 == null) {
            return 2;
        }
        byte[] bArrA = b.a(inputStream);
        byte[] bArrA2 = b.a(inputStream2);
        byte[] bArrB = b(bArrA, bArrA.length, bArrA2, bArrA2.length, 0);
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            fileOutputStream.write(bArrB);
            return 1;
        } finally {
            fileOutputStream.close();
        }
    }

    public static byte[] b(byte[] bArr, int i11, byte[] bArr2, int i12, int i13) throws IOException {
        int i14;
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr2, 0, i12));
        dataInputStream.skip(8L);
        long j11 = dataInputStream.readLong();
        long j12 = dataInputStream.readLong();
        int i15 = (int) dataInputStream.readLong();
        dataInputStream.close();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr2, 0, i12);
        byteArrayInputStream.skip(32L);
        DataInputStream dataInputStream2 = new DataInputStream(new GZIPInputStream(byteArrayInputStream));
        ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(bArr2, 0, i12);
        byteArrayInputStream2.skip(j11 + 32);
        GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream2);
        ByteArrayInputStream byteArrayInputStream3 = new ByteArrayInputStream(bArr2, 0, i12);
        byteArrayInputStream3.skip(j12 + j11 + 32);
        GZIPInputStream gZIPInputStream2 = new GZIPInputStream(byteArrayInputStream3);
        byte[] bArr3 = new byte[i15];
        int[] iArr = new int[3];
        int i16 = 0;
        int i17 = 0;
        while (i16 < i15) {
            for (int i18 = 0; i18 <= 2; i18++) {
                iArr[i18] = dataInputStream2.readInt();
            }
            int i19 = iArr[0];
            if (i16 + i19 > i15) {
                throw new IOException("Corrupt by wrong patch file.");
            }
            if (!b.b(gZIPInputStream, bArr3, i16, i19)) {
                throw new IOException("Corrupt by wrong patch file.");
            }
            int i20 = 0;
            while (true) {
                i14 = iArr[0];
                if (i20 >= i14) {
                    break;
                }
                int i21 = i17 + i20;
                if (i21 >= 0 && i21 < i11) {
                    int i22 = i16 + i20;
                    bArr3[i22] = (byte) (bArr3[i22] + bArr[i21]);
                }
                i20++;
            }
            int i23 = i16 + i14;
            int i24 = i17 + i14;
            int i25 = iArr[1];
            if (i23 + i25 > i15) {
                throw new IOException("Corrupt by wrong patch file.");
            }
            if (!b.b(gZIPInputStream2, bArr3, i23, i25)) {
                throw new IOException("Corrupt by wrong patch file.");
            }
            i16 = i23 + iArr[1];
            i17 = i24 + iArr[2];
        }
        dataInputStream2.close();
        gZIPInputStream.close();
        gZIPInputStream2.close();
        return bArr3;
    }
}
