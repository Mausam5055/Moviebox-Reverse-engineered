package u1;

import android.text.Spannable;
import android.text.style.RelativeSizeSpan;

/* JADX INFO: loaded from: classes2.dex */
public abstract class g {
    public static void a(Spannable spannable, float f11, int i11, int i12, int i13) {
        for (RelativeSizeSpan relativeSizeSpan : (RelativeSizeSpan[]) spannable.getSpans(i11, i12, RelativeSizeSpan.class)) {
            if (spannable.getSpanStart(relativeSizeSpan) <= i11 && spannable.getSpanEnd(relativeSizeSpan) >= i12) {
                f11 *= relativeSizeSpan.getSizeChange();
            }
            c(spannable, relativeSizeSpan, i11, i12, i13);
        }
        spannable.setSpan(new RelativeSizeSpan(f11), i11, i12, i13);
    }

    public static void b(Spannable spannable, Object obj, int i11, int i12, int i13) {
        for (Object obj2 : spannable.getSpans(i11, i12, obj.getClass())) {
            c(spannable, obj2, i11, i12, i13);
        }
        spannable.setSpan(obj, i11, i12, i13);
    }

    private static void c(Spannable spannable, Object obj, int i11, int i12, int i13) {
        if (spannable.getSpanStart(obj) == i11 && spannable.getSpanEnd(obj) == i12 && spannable.getSpanFlags(obj) == i13) {
            spannable.removeSpan(obj);
        }
    }
}
