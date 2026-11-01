package androidx.compose.ui.platform;

import android.text.Annotation;
import android.text.SpannableString;
import android.text.Spanned;
import androidx.compose.ui.text.AnnotatedString;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class k {
    public static final AnnotatedString a(CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        if (!(charSequence instanceof Spanned)) {
            return new AnnotatedString(charSequence.toString(), null, null, 6, null);
        }
        Spanned spanned = (Spanned) charSequence;
        int i11 = 0;
        Annotation[] annotationArr = (Annotation[]) spanned.getSpans(0, charSequence.length(), Annotation.class);
        ArrayList arrayList = new ArrayList();
        int iB0 = ArraysKt.b0(annotationArr);
        if (iB0 >= 0) {
            while (true) {
                Annotation annotation = annotationArr[i11];
                if (Intrinsics.c(annotation.getKey(), "androidx.compose.text.SpanStyle")) {
                    arrayList.add(new AnnotatedString.c(new r0(annotation.getValue()).k(), spanned.getSpanStart(annotation), spanned.getSpanEnd(annotation)));
                }
                if (i11 == iB0) {
                    break;
                }
                i11++;
            }
        }
        return new AnnotatedString(charSequence.toString(), arrayList, null, 4, null);
    }

    public static final CharSequence b(AnnotatedString annotatedString) {
        if (annotatedString.g().isEmpty()) {
            return annotatedString.i();
        }
        SpannableString spannableString = new SpannableString(annotatedString.i());
        w0 w0Var = new w0();
        List listG = annotatedString.g();
        int size = listG.size();
        for (int i11 = 0; i11 < size; i11++) {
            AnnotatedString.c cVar = (AnnotatedString.c) listG.get(i11);
            androidx.compose.ui.text.x xVar = (androidx.compose.ui.text.x) cVar.a();
            int iB = cVar.b();
            int iC = cVar.c();
            w0Var.q();
            w0Var.e(xVar);
            spannableString.setSpan(new Annotation("androidx.compose.text.SpanStyle", w0Var.p()), iB, iC, 33);
        }
        return spannableString;
    }
}
