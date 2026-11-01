package jg;

import android.content.Context;
import android.graphics.Typeface;
import com.tn.lib.widget.R$font;
import kotlin.jvm.internal.Intrinsics;
import y0.h;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {
    public static final Typeface a(Context context) {
        Intrinsics.h(context, "context");
        try {
            return Typeface.create(h.g(context, R$font.mulish_bold), 0);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final Typeface b(Context context) {
        Intrinsics.h(context, "context");
        try {
            return Typeface.create(h.g(context, R$font.mulish_extra_bold), 0);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final Typeface c(Context context) {
        Intrinsics.h(context, "context");
        try {
            return Typeface.create(h.g(context, R$font.mulish_semi_bold), 0);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final Typeface d(Context context) {
        Intrinsics.h(context, "context");
        try {
            return Typeface.create(h.g(context, R$font.mulish_regular), 0);
        } catch (Throwable unused) {
            return null;
        }
    }
}
