package j6;

import com.alibaba.sdk.android.oss.common.RequestParameters;

/* JADX INFO: loaded from: classes3.dex */
public abstract /* synthetic */ class a {
    public static /* synthetic */ String a(CharSequence charSequence, CharSequence[] charSequenceArr) {
        if (charSequence == null) {
            throw new NullPointerException(RequestParameters.DELIMITER);
        }
        StringBuilder sb2 = new StringBuilder();
        if (charSequenceArr.length > 0) {
            sb2.append(charSequenceArr[0]);
            for (int i11 = 1; i11 < charSequenceArr.length; i11++) {
                sb2.append(charSequence);
                sb2.append(charSequenceArr[i11]);
            }
        }
        return sb2.toString();
    }
}
