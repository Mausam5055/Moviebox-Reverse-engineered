package ph;

import android.graphics.Typeface;
import android.text.SpannableStringBuilder;

/* JADX INFO: loaded from: classes4.dex */
public class c extends SpannableStringBuilder {

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private b f72458a = new b();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private c f72459b = new c();

        private void a() {
            if (this.f72458a.length() != 0) {
                this.f72459b.append(this.f72458a);
            }
        }

        public c b() {
            a();
            return this.f72459b;
        }

        public a c(int i11) {
            this.f72458a.c(i11);
            return this;
        }

        public a d(int i11) {
            this.f72458a.d(i11);
            return this;
        }

        public a e(CharSequence charSequence) {
            a();
            this.f72458a = new b(charSequence);
            return this;
        }

        public a f(Typeface typeface) {
            this.f72458a.e(typeface);
            return this;
        }
    }

    public static a e() {
        return new a();
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public c append(char c11) {
        super.append(c11);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public c append(CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public c append(CharSequence charSequence, int i11, int i12) {
        super.append((CharSequence) new b(charSequence, i11, i12));
        return this;
    }

    @Override // android.text.SpannableStringBuilder
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public c append(CharSequence charSequence, Object obj, int i11) {
        super.append(charSequence, obj, i11);
        return this;
    }
}
