package androidx.compose.ui.text.input;

import android.view.inputmethod.ExtractedText;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class s {
    public static final ExtractedText a(TextFieldValue textFieldValue) {
        ExtractedText extractedText = new ExtractedText();
        extractedText.text = textFieldValue.f();
        extractedText.startOffset = 0;
        extractedText.partialEndOffset = textFieldValue.f().length();
        extractedText.partialStartOffset = -1;
        extractedText.selectionStart = androidx.compose.ui.text.b0.j(textFieldValue.e());
        extractedText.selectionEnd = androidx.compose.ui.text.b0.i(textFieldValue.e());
        extractedText.flags = !StringsKt.b0(textFieldValue.f(), '\n', false, 2, null) ? 1 : 0;
        return extractedText;
    }
}
