package l1;

import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import androidx.core.util.i;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f68448a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f68449b = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f68450c = 0;

    /* JADX INFO: renamed from: l1.a$a, reason: collision with other inner class name */
    private static class C0821a extends b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final EditText f68451a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final g f68452b;

        C0821a(EditText editText, boolean z10) {
            this.f68451a = editText;
            g gVar = new g(editText, z10);
            this.f68452b = gVar;
            editText.addTextChangedListener(gVar);
            editText.setEditableFactory(l1.b.getInstance());
        }

        @Override // l1.a.b
        KeyListener a(KeyListener keyListener) {
            if (keyListener instanceof e) {
                return keyListener;
            }
            if (keyListener == null) {
                return null;
            }
            return keyListener instanceof NumberKeyListener ? keyListener : new e(keyListener);
        }

        @Override // l1.a.b
        boolean b() {
            return this.f68452b.b();
        }

        @Override // l1.a.b
        InputConnection c(InputConnection inputConnection, EditorInfo editorInfo) {
            return inputConnection instanceof c ? inputConnection : new c(this.f68451a, inputConnection, editorInfo);
        }

        @Override // l1.a.b
        void d(boolean z10) {
            this.f68452b.d(z10);
        }
    }

    static class b {
        b() {
        }

        abstract KeyListener a(KeyListener keyListener);

        abstract boolean b();

        abstract InputConnection c(InputConnection inputConnection, EditorInfo editorInfo);

        abstract void d(boolean z10);
    }

    public a(EditText editText, boolean z10) {
        i.h(editText, "editText cannot be null");
        this.f68448a = new C0821a(editText, z10);
    }

    public KeyListener a(KeyListener keyListener) {
        return this.f68448a.a(keyListener);
    }

    public boolean b() {
        return this.f68448a.b();
    }

    public InputConnection c(InputConnection inputConnection, EditorInfo editorInfo) {
        if (inputConnection == null) {
            return null;
        }
        return this.f68448a.c(inputConnection, editorInfo);
    }

    public void d(boolean z10) {
        this.f68448a.d(z10);
    }
}
