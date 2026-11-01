package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import androidx.core.content.b;
import com.transsion.baseui.widget.d;
import com.transsion.edcation.R$drawable;
import com.transsion.moviedetailapi.bean.Subject;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public static final String a(Subject subject) {
        if (subject == null) {
            return null;
        }
        Integer durationSeconds = subject.getDurationSeconds();
        return c(durationSeconds != null ? durationSeconds.intValue() : 0);
    }

    public static final SpannableStringBuilder b(Context context, Subject subject) {
        Intrinsics.h(context, "context");
        if (subject == null) {
            return null;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        Drawable drawable = b.getDrawable(context, R$drawable.ic_education_time);
        if (drawable != null) {
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        }
        Intrinsics.e(drawable);
        d dVar = new d(drawable, 2);
        spannableStringBuilder.append((CharSequence) " ");
        spannableStringBuilder.setSpan(dVar, spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 17);
        Integer durationSeconds = subject.getDurationSeconds();
        spannableStringBuilder.append((CharSequence) (c(durationSeconds != null ? durationSeconds.intValue() : 0) + " • "));
        Drawable drawable2 = b.getDrawable(context, R$drawable.ic_education_student);
        if (drawable2 != null) {
            drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), drawable2.getIntrinsicHeight());
        }
        Intrinsics.e(drawable2);
        d dVar2 = new d(drawable2, 2);
        spannableStringBuilder.append((CharSequence) " ");
        spannableStringBuilder.setSpan(dVar2, spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 17);
        spannableStringBuilder.append((CharSequence) (subject.getViewers() + " students"));
        return spannableStringBuilder;
    }

    private static final String c(int i11) {
        int i12 = (i11 / 60) / 60;
        int i13 = (i11 % 3600) / 60;
        if (i12 <= 0) {
            return i13 + "m";
        }
        return i12 + "h " + i13 + "m";
    }
}
