package l1;

import android.graphics.Rect;
import android.text.method.TransformationMethod;
import android.view.View;
import androidx.emoji2.text.EmojiCompat;

/* JADX INFO: loaded from: classes2.dex */
class h implements TransformationMethod {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TransformationMethod f68476a;

    h(TransformationMethod transformationMethod) {
        this.f68476a = transformationMethod;
    }

    public TransformationMethod a() {
        return this.f68476a;
    }

    @Override // android.text.method.TransformationMethod
    public CharSequence getTransformation(CharSequence charSequence, View view) {
        if (view.isInEditMode()) {
            return charSequence;
        }
        TransformationMethod transformationMethod = this.f68476a;
        if (transformationMethod != null) {
            charSequence = transformationMethod.getTransformation(charSequence, view);
        }
        return (charSequence == null || EmojiCompat.c().e() != 1) ? charSequence : EmojiCompat.c().p(charSequence);
    }

    @Override // android.text.method.TransformationMethod
    public void onFocusChanged(View view, CharSequence charSequence, boolean z10, int i11, Rect rect) {
        TransformationMethod transformationMethod = this.f68476a;
        if (transformationMethod != null) {
            transformationMethod.onFocusChanged(view, charSequence, z10, i11, rect);
        }
    }
}
