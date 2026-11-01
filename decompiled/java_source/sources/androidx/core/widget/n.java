package androidx.core.widget;

import android.content.ClipData;
import android.content.Context;
import android.text.Editable;
import android.text.Selection;
import android.text.Spanned;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import androidx.core.view.ContentInfoCompat;
import androidx.core.view.OnReceiveContentListener;

/* JADX INFO: loaded from: classes.dex */
public final class n implements OnReceiveContentListener {
    private static CharSequence a(Context context, ClipData.Item item, int i11) {
        if ((i11 & 1) == 0) {
            return item.coerceToStyledText(context);
        }
        CharSequence charSequenceCoerceToText = item.coerceToText(context);
        return charSequenceCoerceToText instanceof Spanned ? charSequenceCoerceToText.toString() : charSequenceCoerceToText;
    }

    private static void b(Editable editable, CharSequence charSequence) {
        int selectionStart = Selection.getSelectionStart(editable);
        int selectionEnd = Selection.getSelectionEnd(editable);
        int iMax = Math.max(0, Math.min(selectionStart, selectionEnd));
        int iMax2 = Math.max(0, Math.max(selectionStart, selectionEnd));
        Selection.setSelection(editable, iMax2);
        editable.replace(iMax, iMax2, charSequence);
    }

    @Override // androidx.core.view.OnReceiveContentListener
    public ContentInfoCompat onReceiveContent(View view, ContentInfoCompat contentInfoCompat) {
        if (Log.isLoggable("ReceiveContent", 3)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onReceive: ");
            sb2.append(contentInfoCompat);
        }
        if (contentInfoCompat.getSource() == 2) {
            return contentInfoCompat;
        }
        ClipData clip = contentInfoCompat.getClip();
        int flags = contentInfoCompat.getFlags();
        TextView textView = (TextView) view;
        Editable editable = (Editable) textView.getText();
        Context context = textView.getContext();
        boolean z10 = false;
        for (int i11 = 0; i11 < clip.getItemCount(); i11++) {
            CharSequence charSequenceA = a(context, clip.getItemAt(i11), flags);
            if (charSequenceA != null) {
                if (z10) {
                    editable.insert(Selection.getSelectionEnd(editable), "\n");
                    editable.insert(Selection.getSelectionEnd(editable), charSequenceA);
                } else {
                    b(editable, charSequenceA);
                    z10 = true;
                }
            }
        }
        return null;
    }
}
