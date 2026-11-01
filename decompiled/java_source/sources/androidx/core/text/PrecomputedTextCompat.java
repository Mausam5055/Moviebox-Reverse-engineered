package androidx.core.text;

import android.os.Build;
import android.os.Trace;
import android.text.PrecomputedText;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes.dex */
public class PrecomputedTextCompat implements Spannable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Object f8220e = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Spannable f8221a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f8222b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int[] f8223c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final PrecomputedText f8224d;

    private static class PrecomputedTextFutureTask extends FutureTask<PrecomputedTextCompat> {

        private static class a implements Callable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private b f8225a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private CharSequence f8226b;

            a(b bVar, CharSequence charSequence) {
                this.f8225a = bVar;
                this.f8226b = charSequence;
            }

            @Override // java.util.concurrent.Callable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public PrecomputedTextCompat call() {
                return PrecomputedTextCompat.a(this.f8226b, this.f8225a);
            }
        }

        PrecomputedTextFutureTask(b bVar, CharSequence charSequence) {
            super(new a(bVar, charSequence));
        }
    }

    static class a {
        static Spannable a(PrecomputedText precomputedText) {
            return precomputedText;
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final TextPaint f8227a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final TextDirectionHeuristic f8228b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f8229c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f8230d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final PrecomputedText.Params f8231e;

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final TextPaint f8232a;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private int f8234c = 1;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f8235d = 1;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private TextDirectionHeuristic f8233b = TextDirectionHeuristics.FIRSTSTRONG_LTR;

            public a(TextPaint textPaint) {
                this.f8232a = textPaint;
            }

            public b a() {
                return new b(this.f8232a, this.f8233b, this.f8234c, this.f8235d);
            }

            public a b(int i11) {
                this.f8234c = i11;
                return this;
            }

            public a c(int i11) {
                this.f8235d = i11;
                return this;
            }

            public a d(TextDirectionHeuristic textDirectionHeuristic) {
                this.f8233b = textDirectionHeuristic;
                return this;
            }
        }

        public b(PrecomputedText.Params params) {
            this.f8227a = params.getTextPaint();
            this.f8228b = params.getTextDirection();
            this.f8229c = params.getBreakStrategy();
            this.f8230d = params.getHyphenationFrequency();
            this.f8231e = Build.VERSION.SDK_INT < 29 ? null : params;
        }

        b(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i11, int i12) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.f8231e = j.a(textPaint).setBreakStrategy(i11).setHyphenationFrequency(i12).setTextDirection(textDirectionHeuristic).build();
            } else {
                this.f8231e = null;
            }
            this.f8227a = textPaint;
            this.f8228b = textDirectionHeuristic;
            this.f8229c = i11;
            this.f8230d = i12;
        }

        public boolean a(b bVar) {
            int i11 = Build.VERSION.SDK_INT;
            if (this.f8229c != bVar.b() || this.f8230d != bVar.c() || this.f8227a.getTextSize() != bVar.e().getTextSize() || this.f8227a.getTextScaleX() != bVar.e().getTextScaleX() || this.f8227a.getTextSkewX() != bVar.e().getTextSkewX() || this.f8227a.getLetterSpacing() != bVar.e().getLetterSpacing() || !TextUtils.equals(this.f8227a.getFontFeatureSettings(), bVar.e().getFontFeatureSettings()) || this.f8227a.getFlags() != bVar.e().getFlags()) {
                return false;
            }
            if (i11 >= 24) {
                if (!this.f8227a.getTextLocales().equals(bVar.e().getTextLocales())) {
                    return false;
                }
            } else if (!this.f8227a.getTextLocale().equals(bVar.e().getTextLocale())) {
                return false;
            }
            if (this.f8227a.getTypeface() == null) {
                return bVar.e().getTypeface() == null;
            }
            return this.f8227a.getTypeface().equals(bVar.e().getTypeface());
        }

        public int b() {
            return this.f8229c;
        }

        public int c() {
            return this.f8230d;
        }

        public TextDirectionHeuristic d() {
            return this.f8228b;
        }

        public TextPaint e() {
            return this.f8227a;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return a(bVar) && this.f8228b == bVar.d();
        }

        public int hashCode() {
            return Build.VERSION.SDK_INT >= 24 ? androidx.core.util.d.b(Float.valueOf(this.f8227a.getTextSize()), Float.valueOf(this.f8227a.getTextScaleX()), Float.valueOf(this.f8227a.getTextSkewX()), Float.valueOf(this.f8227a.getLetterSpacing()), Integer.valueOf(this.f8227a.getFlags()), this.f8227a.getTextLocales(), this.f8227a.getTypeface(), Boolean.valueOf(this.f8227a.isElegantTextHeight()), this.f8228b, Integer.valueOf(this.f8229c), Integer.valueOf(this.f8230d)) : androidx.core.util.d.b(Float.valueOf(this.f8227a.getTextSize()), Float.valueOf(this.f8227a.getTextScaleX()), Float.valueOf(this.f8227a.getTextSkewX()), Float.valueOf(this.f8227a.getLetterSpacing()), Integer.valueOf(this.f8227a.getFlags()), this.f8227a.getTextLocale(), this.f8227a.getTypeface(), Boolean.valueOf(this.f8227a.isElegantTextHeight()), this.f8228b, Integer.valueOf(this.f8229c), Integer.valueOf(this.f8230d));
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("{");
            sb2.append("textSize=" + this.f8227a.getTextSize());
            sb2.append(", textScaleX=" + this.f8227a.getTextScaleX());
            sb2.append(", textSkewX=" + this.f8227a.getTextSkewX());
            int i11 = Build.VERSION.SDK_INT;
            sb2.append(", letterSpacing=" + this.f8227a.getLetterSpacing());
            sb2.append(", elegantTextHeight=" + this.f8227a.isElegantTextHeight());
            if (i11 >= 24) {
                sb2.append(", textLocale=" + this.f8227a.getTextLocales());
            } else {
                sb2.append(", textLocale=" + this.f8227a.getTextLocale());
            }
            sb2.append(", typeface=" + this.f8227a.getTypeface());
            if (i11 >= 26) {
                sb2.append(", variationSettings=" + this.f8227a.getFontVariationSettings());
            }
            sb2.append(", textDir=" + this.f8228b);
            sb2.append(", breakStrategy=" + this.f8229c);
            sb2.append(", hyphenationFrequency=" + this.f8230d);
            sb2.append("}");
            return sb2.toString();
        }
    }

    private PrecomputedTextCompat(PrecomputedText precomputedText, b bVar) {
        this.f8221a = a.a(precomputedText);
        this.f8222b = bVar;
        this.f8223c = null;
        this.f8224d = Build.VERSION.SDK_INT < 29 ? null : precomputedText;
    }

    private PrecomputedTextCompat(CharSequence charSequence, b bVar, int[] iArr) {
        this.f8221a = new SpannableString(charSequence);
        this.f8222b = bVar;
        this.f8223c = iArr;
        this.f8224d = null;
    }

    public static PrecomputedTextCompat a(CharSequence charSequence, b bVar) {
        PrecomputedText.Params params;
        androidx.core.util.i.g(charSequence);
        androidx.core.util.i.g(bVar);
        try {
            Trace.beginSection("PrecomputedText");
            if (Build.VERSION.SDK_INT >= 29 && (params = bVar.f8231e) != null) {
                return new PrecomputedTextCompat(PrecomputedText.create(charSequence, params), bVar);
            }
            ArrayList arrayList = new ArrayList();
            int length = charSequence.length();
            int i11 = 0;
            while (i11 < length) {
                int iIndexOf = TextUtils.indexOf(charSequence, '\n', i11, length);
                i11 = iIndexOf < 0 ? length : iIndexOf + 1;
                arrayList.add(Integer.valueOf(i11));
            }
            int[] iArr = new int[arrayList.size()];
            for (int i12 = 0; i12 < arrayList.size(); i12++) {
                iArr[i12] = ((Integer) arrayList.get(i12)).intValue();
            }
            StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), bVar.e(), Integer.MAX_VALUE).setBreakStrategy(bVar.b()).setHyphenationFrequency(bVar.c()).setTextDirection(bVar.d()).build();
            return new PrecomputedTextCompat(charSequence, bVar, iArr);
        } finally {
            Trace.endSection();
        }
    }

    public b b() {
        return this.f8222b;
    }

    public PrecomputedText c() {
        if (d.a(this.f8221a)) {
            return e.a(this.f8221a);
        }
        return null;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i11) {
        return this.f8221a.charAt(i11);
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        return this.f8221a.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        return this.f8221a.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        return this.f8221a.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public Object[] getSpans(int i11, int i12, Class cls) {
        return Build.VERSION.SDK_INT >= 29 ? this.f8224d.getSpans(i11, i12, cls) : this.f8221a.getSpans(i11, i12, cls);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.f8221a.length();
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i11, int i12, Class cls) {
        return this.f8221a.nextSpanTransition(i11, i12, cls);
    }

    @Override // android.text.Spannable
    public void removeSpan(Object obj) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be removed from PrecomputedText.");
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.f8224d.removeSpan(obj);
        } else {
            this.f8221a.removeSpan(obj);
        }
    }

    @Override // android.text.Spannable
    public void setSpan(Object obj, int i11, int i12, int i13) {
        if (obj instanceof MetricAffectingSpan) {
            throw new IllegalArgumentException("MetricAffectingSpan can not be set to PrecomputedText.");
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.f8224d.setSpan(obj, i11, i12, i13);
        } else {
            this.f8221a.setSpan(obj, i11, i12, i13);
        }
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i11, int i12) {
        return this.f8221a.subSequence(i11, i12);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.f8221a.toString();
    }
}
