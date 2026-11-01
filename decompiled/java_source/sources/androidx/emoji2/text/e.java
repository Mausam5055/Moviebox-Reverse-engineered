package androidx.emoji2.text;

import android.text.TextPaint;

/* JADX INFO: loaded from: classes.dex */
class e implements EmojiCompat.e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ThreadLocal f9071b = new ThreadLocal();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TextPaint f9072a;

    e() {
        TextPaint textPaint = new TextPaint();
        this.f9072a = textPaint;
        textPaint.setTextSize(10.0f);
    }

    private static StringBuilder b() {
        ThreadLocal threadLocal = f9071b;
        if (threadLocal.get() == null) {
            threadLocal.set(new StringBuilder());
        }
        return (StringBuilder) threadLocal.get();
    }

    @Override // androidx.emoji2.text.EmojiCompat.e
    public boolean a(CharSequence charSequence, int i11, int i12, int i13) {
        StringBuilder sbB = b();
        sbB.setLength(0);
        while (i11 < i12) {
            sbB.append(charSequence.charAt(i11));
            i11++;
        }
        return z0.d.a(this.f9072a, sbB.toString());
    }
}
