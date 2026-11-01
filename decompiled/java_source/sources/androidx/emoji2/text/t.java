package androidx.emoji2.text;

import android.os.Build;
import android.text.Spannable;
import android.text.SpannableString;
import androidx.core.text.PrecomputedTextCompat;
import java.util.stream.IntStream;

/* JADX INFO: loaded from: classes.dex */
class t implements Spannable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f9146a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Spannable f9147b;

    private static class a {
        static IntStream a(CharSequence charSequence) {
            return charSequence.chars();
        }

        static IntStream b(CharSequence charSequence) {
            return charSequence.codePoints();
        }
    }

    static class b {
        b() {
        }

        boolean a(CharSequence charSequence) {
            return charSequence instanceof PrecomputedTextCompat;
        }
    }

    static class c extends b {
        c() {
        }

        @Override // androidx.emoji2.text.t.b
        boolean a(CharSequence charSequence) {
            return androidx.core.text.d.a(charSequence) || (charSequence instanceof PrecomputedTextCompat);
        }
    }

    t(Spannable spannable) {
        this.f9147b = spannable;
    }

    t(CharSequence charSequence) {
        this.f9147b = new SpannableString(charSequence);
    }

    private void a() {
        Spannable spannable = this.f9147b;
        if (!this.f9146a && c().a(spannable)) {
            this.f9147b = new SpannableString(spannable);
        }
        this.f9146a = true;
    }

    static b c() {
        return Build.VERSION.SDK_INT < 28 ? new b() : new c();
    }

    Spannable b() {
        return this.f9147b;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i11) {
        return this.f9147b.charAt(i11);
    }

    @Override // java.lang.CharSequence
    public IntStream chars() {
        return a.a(this.f9147b);
    }

    @Override // java.lang.CharSequence
    public IntStream codePoints() {
        return a.b(this.f9147b);
    }

    @Override // android.text.Spanned
    public int getSpanEnd(Object obj) {
        return this.f9147b.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public int getSpanFlags(Object obj) {
        return this.f9147b.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public int getSpanStart(Object obj) {
        return this.f9147b.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public Object[] getSpans(int i11, int i12, Class cls) {
        return this.f9147b.getSpans(i11, i12, cls);
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.f9147b.length();
    }

    @Override // android.text.Spanned
    public int nextSpanTransition(int i11, int i12, Class cls) {
        return this.f9147b.nextSpanTransition(i11, i12, cls);
    }

    @Override // android.text.Spannable
    public void removeSpan(Object obj) {
        a();
        this.f9147b.removeSpan(obj);
    }

    @Override // android.text.Spannable
    public void setSpan(Object obj, int i11, int i12, int i13) {
        a();
        this.f9147b.setSpan(obj, i11, i12, i13);
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i11, int i12) {
        return this.f9147b.subSequence(i11, i12);
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return this.f9147b.toString();
    }
}
