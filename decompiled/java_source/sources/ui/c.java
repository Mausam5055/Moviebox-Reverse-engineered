package ui;

import android.content.Context;
import android.graphics.Typeface;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import y0.h;

/* JADX INFO: loaded from: classes6.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f76759a = new c();

    private c() {
    }

    public final SpannableString a(String fullText, String colorText, int i11) {
        Intrinsics.h(fullText, "fullText");
        Intrinsics.h(colorText, "colorText");
        SpannableString spannableString = new SpannableString(fullText);
        int iO0 = StringsKt.o0(fullText, colorText, 0, false, 6, null);
        if (iO0 == -1) {
            return spannableString;
        }
        spannableString.setSpan(new ForegroundColorSpan(i11), iO0, colorText.length() + iO0, 33);
        return spannableString;
    }

    public final SpannableString b(String fullText, String gradientText, int i11, int i12) {
        Intrinsics.h(fullText, "fullText");
        Intrinsics.h(gradientText, "gradientText");
        SpannableString spannableString = new SpannableString(fullText);
        spannableString.setSpan(new ForegroundColorSpan(-1), 0, fullText.length(), 33);
        int iO0 = StringsKt.o0(fullText, gradientText, 0, false, 6, null);
        if (iO0 == -1) {
            return spannableString;
        }
        spannableString.setSpan(new b(i11, i12, gradientText), iO0, gradientText.length() + iO0, 33);
        return spannableString;
    }

    public final SpannableString c(Context context, String firstText, int i11, Integer num, String secondText, int i12, Integer num2) {
        Intrinsics.h(context, "context");
        Intrinsics.h(firstText, "firstText");
        Intrinsics.h(secondText, "secondText");
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        Typeface typefaceG = h.g(context, i11);
        if (typefaceG == null) {
            typefaceG = Typeface.DEFAULT;
        }
        spannableStringBuilder.append((CharSequence) firstText);
        Intrinsics.e(typefaceG);
        spannableStringBuilder.setSpan(new a(typefaceG), 0, firstText.length(), 33);
        if (num != null) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(num.intValue()), 0, firstText.length(), 33);
        }
        Typeface typefaceG2 = h.g(context, i12);
        if (typefaceG2 == null) {
            typefaceG2 = Typeface.DEFAULT;
        }
        int length = firstText.length();
        spannableStringBuilder.append((CharSequence) secondText);
        Intrinsics.e(typefaceG2);
        spannableStringBuilder.setSpan(new a(typefaceG2), length, secondText.length() + length, 33);
        if (num2 != null) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(num2.intValue()), length, secondText.length() + length, 33);
        }
        SpannableString spannableStringValueOf = SpannableString.valueOf(spannableStringBuilder);
        Intrinsics.g(spannableStringValueOf, "valueOf(...)");
        return spannableStringValueOf;
    }
}
