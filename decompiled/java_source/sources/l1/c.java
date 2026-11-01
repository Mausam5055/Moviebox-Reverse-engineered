package l1;

import android.text.Editable;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.widget.TextView;
import androidx.emoji2.text.EmojiCompat;

/* JADX INFO: loaded from: classes2.dex */
final class c extends InputConnectionWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TextView f68456a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f68457b;

    public static class a {
        public boolean a(InputConnection inputConnection, Editable editable, int i11, int i12, boolean z10) {
            return EmojiCompat.f(inputConnection, editable, i11, i12, z10);
        }

        public void b(EditorInfo editorInfo) {
            if (EmojiCompat.i()) {
                EmojiCompat.c().v(editorInfo);
            }
        }
    }

    c(TextView textView, InputConnection inputConnection, EditorInfo editorInfo) {
        this(textView, inputConnection, editorInfo, new a());
    }

    c(TextView textView, InputConnection inputConnection, EditorInfo editorInfo, a aVar) {
        super(inputConnection, false);
        this.f68456a = textView;
        this.f68457b = aVar;
        aVar.b(editorInfo);
    }

    private Editable a() {
        return this.f68456a.getEditableText();
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public boolean deleteSurroundingText(int i11, int i12) {
        return this.f68457b.a(this, a(), i11, i12, false) || super.deleteSurroundingText(i11, i12);
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public boolean deleteSurroundingTextInCodePoints(int i11, int i12) {
        return this.f68457b.a(this, a(), i11, i12, true) || super.deleteSurroundingTextInCodePoints(i11, i12);
    }
}
