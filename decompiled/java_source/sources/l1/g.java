package l1;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextWatcher;
import android.widget.EditText;
import androidx.emoji2.text.EmojiCompat;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
final class g implements TextWatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final EditText f68469a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f68470b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private EmojiCompat.f f68471c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f68472d = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f68473e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f68474f = true;

    private static class a extends EmojiCompat.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Reference f68475a;

        a(EditText editText) {
            this.f68475a = new WeakReference(editText);
        }

        @Override // androidx.emoji2.text.EmojiCompat.f
        public void b() {
            super.b();
            g.c((EditText) this.f68475a.get(), 1);
        }
    }

    g(EditText editText, boolean z10) {
        this.f68469a = editText;
        this.f68470b = z10;
    }

    private EmojiCompat.f a() {
        if (this.f68471c == null) {
            this.f68471c = new a(this.f68469a);
        }
        return this.f68471c;
    }

    static void c(EditText editText, int i11) {
        if (i11 == 1 && editText != null && editText.isAttachedToWindow()) {
            Editable editableText = editText.getEditableText();
            int selectionStart = Selection.getSelectionStart(editableText);
            int selectionEnd = Selection.getSelectionEnd(editableText);
            EmojiCompat.c().p(editableText);
            d.b(editableText, selectionStart, selectionEnd);
        }
    }

    private boolean e() {
        return (this.f68474f && (this.f68470b || EmojiCompat.i())) ? false : true;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    public boolean b() {
        return this.f68474f;
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
    }

    public void d(boolean z10) {
        if (this.f68474f != z10) {
            if (this.f68471c != null) {
                EmojiCompat.c().u(this.f68471c);
            }
            this.f68474f = z10;
            if (z10) {
                c(this.f68469a, EmojiCompat.c().e());
            }
        }
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        if (this.f68469a.isInEditMode() || e() || i12 > i13 || !(charSequence instanceof Spannable)) {
            return;
        }
        int iE = EmojiCompat.c().e();
        if (iE != 0) {
            if (iE == 1) {
                EmojiCompat.c().s((Spannable) charSequence, i11, i11 + i13, this.f68472d, this.f68473e);
                return;
            } else if (iE != 3) {
                return;
            }
        }
        EmojiCompat.c().t(a());
    }
}
