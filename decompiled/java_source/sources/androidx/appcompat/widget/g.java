package androidx.appcompat.widget;

import android.content.res.TypedArray;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import androidx.appcompat.R$styleable;

/* JADX INFO: loaded from: classes.dex */
class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final EditText f2026a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final l1.a f2027b;

    g(EditText editText) {
        this.f2026a = editText;
        this.f2027b = new l1.a(editText, false);
    }

    KeyListener a(KeyListener keyListener) {
        return b(keyListener) ? this.f2027b.a(keyListener) : keyListener;
    }

    boolean b(KeyListener keyListener) {
        return !(keyListener instanceof NumberKeyListener);
    }

    boolean c() {
        return this.f2027b.b();
    }

    void d(AttributeSet attributeSet, int i11) {
        TypedArray typedArrayObtainStyledAttributes = this.f2026a.getContext().obtainStyledAttributes(attributeSet, R$styleable.AppCompatTextView, i11, 0);
        try {
            boolean z10 = typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTextView_emojiCompatEnabled) ? typedArrayObtainStyledAttributes.getBoolean(R$styleable.AppCompatTextView_emojiCompatEnabled, true) : true;
            typedArrayObtainStyledAttributes.recycle();
            f(z10);
        } catch (Throwable th2) {
            typedArrayObtainStyledAttributes.recycle();
            throw th2;
        }
    }

    InputConnection e(InputConnection inputConnection, EditorInfo editorInfo) {
        return this.f2027b.c(inputConnection, editorInfo);
    }

    void f(boolean z10) {
        this.f2027b.d(z10);
    }
}
