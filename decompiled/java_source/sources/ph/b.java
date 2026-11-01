package ph;

import android.graphics.Typeface;
import android.text.SpannableString;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;

/* JADX INFO: loaded from: classes4.dex */
public class b extends SpannableString {
    public b() {
        super("");
    }

    public b(CharSequence charSequence) {
        super(charSequence);
    }

    public b(CharSequence charSequence, int i11, int i12) {
        super(charSequence);
        d(i11);
        c(i12);
    }

    public b a(Object... objArr) {
        return b(0, length(), objArr);
    }

    public b b(int i11, int i12, Object... objArr) {
        if (i11 <= i12 && objArr != null && objArr.length != 0) {
            for (Object obj : objArr) {
                if (obj != null) {
                    super.setSpan(obj, i11, i12, 33);
                }
            }
        }
        return this;
    }

    public b c(int i11) {
        a(new ForegroundColorSpan(i11));
        return this;
    }

    public b d(int i11) {
        a(new AbsoluteSizeSpan(i11, true));
        return this;
    }

    public b e(Typeface typeface) {
        a(new a(typeface));
        return this;
    }
}
