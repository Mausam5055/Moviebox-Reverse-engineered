package l1;

import android.text.InputFilter;
import android.text.Selection;
import android.text.Spannable;
import android.text.Spanned;
import android.widget.TextView;
import androidx.emoji2.text.EmojiCompat;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
final class d implements InputFilter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TextView f68458a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private EmojiCompat.f f68459b;

    private static class a extends EmojiCompat.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Reference f68460a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Reference f68461b;

        a(TextView textView, d dVar) {
            this.f68460a = new WeakReference(textView);
            this.f68461b = new WeakReference(dVar);
        }

        private boolean c(TextView textView, InputFilter inputFilter) {
            InputFilter[] filters;
            if (inputFilter == null || textView == null || (filters = textView.getFilters()) == null) {
                return false;
            }
            for (InputFilter inputFilter2 : filters) {
                if (inputFilter2 == inputFilter) {
                    return true;
                }
            }
            return false;
        }

        @Override // androidx.emoji2.text.EmojiCompat.f
        public void b() {
            CharSequence text;
            CharSequence charSequenceP;
            super.b();
            TextView textView = (TextView) this.f68460a.get();
            if (c(textView, (InputFilter) this.f68461b.get()) && textView.isAttachedToWindow() && text != (charSequenceP = EmojiCompat.c().p((text = textView.getText())))) {
                int selectionStart = Selection.getSelectionStart(charSequenceP);
                int selectionEnd = Selection.getSelectionEnd(charSequenceP);
                textView.setText(charSequenceP);
                if (charSequenceP instanceof Spannable) {
                    d.b((Spannable) charSequenceP, selectionStart, selectionEnd);
                }
            }
        }
    }

    d(TextView textView) {
        this.f68458a = textView;
    }

    private EmojiCompat.f a() {
        if (this.f68459b == null) {
            this.f68459b = new a(this.f68458a, this);
        }
        return this.f68459b;
    }

    static void b(Spannable spannable, int i11, int i12) {
        if (i11 >= 0 && i12 >= 0) {
            Selection.setSelection(spannable, i11, i12);
        } else if (i11 >= 0) {
            Selection.setSelection(spannable, i11);
        } else if (i12 >= 0) {
            Selection.setSelection(spannable, i12);
        }
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i11, int i12, Spanned spanned, int i13, int i14) {
        if (this.f68458a.isInEditMode()) {
            return charSequence;
        }
        int iE = EmojiCompat.c().e();
        if (iE != 0) {
            if (iE == 1) {
                if ((i14 == 0 && i13 == 0 && spanned.length() == 0 && charSequence == this.f68458a.getText()) || charSequence == null) {
                    return charSequence;
                }
                if (i11 != 0 || i12 != charSequence.length()) {
                    charSequence = charSequence.subSequence(i11, i12);
                }
                return EmojiCompat.c().q(charSequence, 0, charSequence.length());
            }
            if (iE != 3) {
                return charSequence;
            }
        }
        EmojiCompat.c().t(a());
        return charSequence;
    }
}
