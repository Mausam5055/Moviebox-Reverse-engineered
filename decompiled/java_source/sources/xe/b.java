package xe;

import android.graphics.Bitmap;
import androidx.core.view.ViewCompat;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.WriterException;

/* JADX INFO: loaded from: classes5.dex */
public class b {
    public Bitmap a(id.b bVar) {
        int iN = bVar.n();
        int iK = bVar.k();
        int[] iArr = new int[iN * iK];
        for (int i11 = 0; i11 < iK; i11++) {
            int i12 = i11 * iN;
            for (int i13 = 0; i13 < iN; i13++) {
                iArr[i12 + i13] = bVar.g(i13, i11) ? ViewCompat.MEASURED_STATE_MASK : -1;
            }
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iN, iK, Bitmap.Config.ARGB_8888);
        bitmapCreateBitmap.setPixels(iArr, 0, iN, 0, 0, iN, iK);
        return bitmapCreateBitmap;
    }

    public id.b b(String str, BarcodeFormat barcodeFormat, int i11, int i12) throws WriterException {
        try {
            return new com.google.zxing.g().b(str, barcodeFormat, i11, i12);
        } catch (WriterException e11) {
            throw e11;
        } catch (Exception e12) {
            throw new WriterException(e12);
        }
    }
}
