package l1;

import android.text.Editable;
import android.text.method.KeyListener;
import android.view.KeyEvent;
import android.view.View;
import androidx.emoji2.text.EmojiCompat;

/* JADX INFO: loaded from: classes2.dex */
final class e implements KeyListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final KeyListener f68462a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f68463b;

    public static class a {
        public boolean a(Editable editable, int i11, KeyEvent keyEvent) {
            return EmojiCompat.g(editable, i11, keyEvent);
        }
    }

    e(KeyListener keyListener) {
        this(keyListener, new a());
    }

    e(KeyListener keyListener, a aVar) {
        this.f68462a = keyListener;
        this.f68463b = aVar;
    }

    @Override // android.text.method.KeyListener
    public void clearMetaKeyState(View view, Editable editable, int i11) {
        this.f68462a.clearMetaKeyState(view, editable, i11);
    }

    @Override // android.text.method.KeyListener
    public int getInputType() {
        return this.f68462a.getInputType();
    }

    @Override // android.text.method.KeyListener
    public boolean onKeyDown(View view, Editable editable, int i11, KeyEvent keyEvent) {
        return this.f68463b.a(editable, i11, keyEvent) || this.f68462a.onKeyDown(view, editable, i11, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public boolean onKeyOther(View view, Editable editable, KeyEvent keyEvent) {
        return this.f68462a.onKeyOther(view, editable, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public boolean onKeyUp(View view, Editable editable, int i11, KeyEvent keyEvent) {
        return this.f68462a.onKeyUp(view, editable, i11, keyEvent);
    }
}
