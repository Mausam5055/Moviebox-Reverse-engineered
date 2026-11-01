package androidx.emoji2.text;

import android.os.Build;
import android.text.Editable;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class o extends SpannableStringBuilder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class f9136a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f9137b;

    private static class a implements TextWatcher, SpanWatcher {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Object f9138a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final AtomicInteger f9139b = new AtomicInteger(0);

        a(Object obj) {
            this.f9138a = obj;
        }

        private boolean b(Object obj) {
            return obj instanceof i;
        }

        final void a() {
            this.f9139b.incrementAndGet();
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            ((TextWatcher) this.f9138a).afterTextChanged(editable);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
            ((TextWatcher) this.f9138a).beforeTextChanged(charSequence, i11, i12, i13);
        }

        final void c() {
            this.f9139b.decrementAndGet();
        }

        @Override // android.text.SpanWatcher
        public void onSpanAdded(Spannable spannable, Object obj, int i11, int i12) {
            if (this.f9139b.get() <= 0 || !b(obj)) {
                ((SpanWatcher) this.f9138a).onSpanAdded(spannable, obj, i11, i12);
            }
        }

        /* JADX WARN: Code duplicated, block: B:14:0x001e A[PHI: r11
  0x001e: PHI (r11v1 int) = (r11v0 int), (r11v3 int) binds: [B:8:0x0013, B:12:0x0019] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // android.text.SpanWatcher
        public void onSpanChanged(Spannable spannable, Object obj, int i11, int i12, int i13, int i14) {
            int i15;
            int i16;
            if (this.f9139b.get() <= 0 || !b(obj)) {
                if (Build.VERSION.SDK_INT >= 28) {
                    i15 = i11;
                    i16 = i13;
                } else {
                    if (i11 > i12) {
                        i11 = 0;
                    }
                    if (i13 > i14) {
                        i15 = i11;
                        i16 = 0;
                    } else {
                        i15 = i11;
                        i16 = i13;
                    }
                }
                ((SpanWatcher) this.f9138a).onSpanChanged(spannable, obj, i15, i12, i16, i14);
            }
        }

        @Override // android.text.SpanWatcher
        public void onSpanRemoved(Spannable spannable, Object obj, int i11, int i12) {
            if (this.f9139b.get() <= 0 || !b(obj)) {
                ((SpanWatcher) this.f9138a).onSpanRemoved(spannable, obj, i11, i12);
            }
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
            ((TextWatcher) this.f9138a).onTextChanged(charSequence, i11, i12, i13);
        }
    }

    o(Class cls, CharSequence charSequence) {
        super(charSequence);
        this.f9137b = new ArrayList();
        androidx.core.util.i.h(cls, "watcherClass cannot be null");
        this.f9136a = cls;
    }

    o(Class cls, CharSequence charSequence, int i11, int i12) {
        super(charSequence, i11, i12);
        this.f9137b = new ArrayList();
        androidx.core.util.i.h(cls, "watcherClass cannot be null");
        this.f9136a = cls;
    }

    private void b() {
        for (int i11 = 0; i11 < this.f9137b.size(); i11++) {
            ((a) this.f9137b.get(i11)).a();
        }
    }

    public static o c(Class cls, CharSequence charSequence) {
        return new o(cls, charSequence);
    }

    private void e() {
        for (int i11 = 0; i11 < this.f9137b.size(); i11++) {
            ((a) this.f9137b.get(i11)).onTextChanged(this, 0, length(), length());
        }
    }

    private a f(Object obj) {
        for (int i11 = 0; i11 < this.f9137b.size(); i11++) {
            a aVar = (a) this.f9137b.get(i11);
            if (aVar.f9138a == obj) {
                return aVar;
            }
        }
        return null;
    }

    private boolean g(Class cls) {
        return this.f9136a == cls;
    }

    private boolean h(Object obj) {
        return obj != null && g(obj.getClass());
    }

    private void i() {
        for (int i11 = 0; i11 < this.f9137b.size(); i11++) {
            ((a) this.f9137b.get(i11)).c();
        }
    }

    public void a() {
        b();
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public SpannableStringBuilder append(char c11) {
        super.append(c11);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public SpannableStringBuilder append(CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public SpannableStringBuilder append(CharSequence charSequence, int i11, int i12) {
        super.append(charSequence, i11, i12);
        return this;
    }

    @Override // android.text.SpannableStringBuilder
    public SpannableStringBuilder append(CharSequence charSequence, Object obj, int i11) {
        super.append(charSequence, obj, i11);
        return this;
    }

    public void d() {
        i();
        e();
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public SpannableStringBuilder delete(int i11, int i12) {
        super.delete(i11, i12);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int getSpanEnd(Object obj) {
        a aVarF;
        if (h(obj) && (aVarF = f(obj)) != null) {
            obj = aVarF;
        }
        return super.getSpanEnd(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int getSpanFlags(Object obj) {
        a aVarF;
        if (h(obj) && (aVarF = f(obj)) != null) {
            obj = aVarF;
        }
        return super.getSpanFlags(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int getSpanStart(Object obj) {
        a aVarF;
        if (h(obj) && (aVarF = f(obj)) != null) {
            obj = aVarF;
        }
        return super.getSpanStart(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public Object[] getSpans(int i11, int i12, Class cls) {
        if (!g(cls)) {
            return super.getSpans(i11, i12, cls);
        }
        a[] aVarArr = (a[]) super.getSpans(i11, i12, a.class);
        Object[] objArr = (Object[]) Array.newInstance((Class<?>) cls, aVarArr.length);
        for (int i13 = 0; i13 < aVarArr.length; i13++) {
            objArr[i13] = aVarArr[i13].f9138a;
        }
        return objArr;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public SpannableStringBuilder insert(int i11, CharSequence charSequence) {
        super.insert(i11, charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public SpannableStringBuilder insert(int i11, CharSequence charSequence, int i12, int i13) {
        super.insert(i11, charSequence, i12, i13);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int nextSpanTransition(int i11, int i12, Class cls) {
        if (cls == null || g(cls)) {
            cls = a.class;
        }
        return super.nextSpanTransition(i11, i12, cls);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public void removeSpan(Object obj) {
        a aVarF;
        if (h(obj)) {
            aVarF = f(obj);
            if (aVarF != null) {
                obj = aVarF;
            }
        } else {
            aVarF = null;
        }
        super.removeSpan(obj);
        if (aVarF != null) {
            this.f9137b.remove(aVarF);
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public SpannableStringBuilder replace(int i11, int i12, CharSequence charSequence) {
        b();
        super.replace(i11, i12, charSequence);
        i();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public SpannableStringBuilder replace(int i11, int i12, CharSequence charSequence, int i13, int i14) {
        b();
        super.replace(i11, i12, charSequence, i13, i14);
        i();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public void setSpan(Object obj, int i11, int i12, int i13) {
        if (h(obj)) {
            a aVar = new a(obj);
            this.f9137b.add(aVar);
            obj = aVar;
        }
        super.setSpan(obj, i11, i12, i13);
    }

    @Override // android.text.SpannableStringBuilder, java.lang.CharSequence
    public CharSequence subSequence(int i11, int i12) {
        return new o(this.f9136a, this, i11, i12);
    }
}
