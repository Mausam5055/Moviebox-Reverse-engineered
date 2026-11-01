package oh;

import android.graphics.Bitmap;
import android.graphics.Color;
import androidx.core.view.ViewCompat;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a {
    /* JADX WARN: Code duplicated, block: B:29:0x008e  */
    public static final int a(Bitmap bitmap, int i11, int i12) {
        Object objM454constructorimpl;
        int iRgb;
        int iRed;
        int iGreen;
        int iBlue;
        Intrinsics.h(bitmap, "bitmap");
        try {
            Result.Companion companion = Result.INSTANCE;
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            if (width <= 0 || height <= 0 || i11 >= i12) {
                iRgb = -16777216;
            } else {
                int i13 = 0;
                IntProgression intProgressionS = RangesKt.s(RangesKt.t(RangesKt.f(i11, 0), RangesKt.i(i12, height)), 10);
                int first = intProgressionS.getFirst();
                int last = intProgressionS.getLast();
                int step = intProgressionS.getStep();
                if ((step <= 0 || first > last) && (step >= 0 || last > first)) {
                    iRed = 0;
                    iGreen = 0;
                    iBlue = 0;
                } else {
                    iRed = 0;
                    iGreen = 0;
                    iBlue = 0;
                    int i14 = 0;
                    while (true) {
                        IntProgression intProgressionS2 = RangesKt.s(RangesKt.t(0, width), 10);
                        int first2 = intProgressionS2.getFirst();
                        int last2 = intProgressionS2.getLast();
                        int step2 = intProgressionS2.getStep();
                        if ((step2 > 0 && first2 <= last2) || (step2 < 0 && last2 <= first2)) {
                            while (true) {
                                int pixel = bitmap.getPixel(first2, first);
                                iRed += Color.red(pixel);
                                iGreen += Color.green(pixel);
                                iBlue += Color.blue(pixel);
                                i14++;
                                if (first2 == last2) {
                                    break;
                                }
                                first2 += step2;
                            }
                        }
                        if (first == last) {
                            break;
                        }
                        first += step;
                    }
                    i13 = i14;
                }
                if (i13 == 0) {
                    iRgb = -16777216;
                } else {
                    iRgb = Color.rgb(iRed / i13, iGreen / i13, iBlue / i13);
                }
            }
            objM454constructorimpl = Result.m454constructorimpl(Integer.valueOf(iRgb));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        if (Result.m457exceptionOrNullimpl(objM454constructorimpl) != null) {
            objM454constructorimpl = Integer.valueOf(ViewCompat.MEASURED_STATE_MASK);
        }
        return ((Number) objM454constructorimpl).intValue();
    }

    public static /* synthetic */ int b(Bitmap bitmap, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i11 = 0;
        }
        if ((i13 & 4) != 0) {
            i12 = bitmap.getHeight();
        }
        return a(bitmap, i11, i12);
    }
}
