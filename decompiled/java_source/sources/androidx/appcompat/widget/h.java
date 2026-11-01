package androidx.appcompat.widget;

import android.content.res.TypedArray;
import android.text.InputFilter;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.appcompat.R$styleable;

/* JADX INFO: loaded from: classes.dex */
class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TextView f2032a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final l1.f f2033b;

    h(TextView textView) {
        this.f2032a = textView;
        this.f2033b = new l1.f(textView, false);
    }

    InputFilter[] a(InputFilter[] inputFilterArr) {
        return this.f2033b.a(inputFilterArr);
    }

    public boolean b() {
        return this.f2033b.b();
    }

    void c(AttributeSet attributeSet, int i11) {
        TypedArray typedArrayObtainStyledAttributes = this.f2032a.getContext().obtainStyledAttributes(attributeSet, R$styleable.AppCompatTextView, i11, 0);
        try {
            boolean z10 = typedArrayObtainStyledAttributes.hasValue(R$styleable.AppCompatTextView_emojiCompatEnabled) ? typedArrayObtainStyledAttributes.getBoolean(R$styleable.AppCompatTextView_emojiCompatEnabled, true) : true;
            typedArrayObtainStyledAttributes.recycle();
            e(z10);
        } catch (Throwable th2) {
            typedArrayObtainStyledAttributes.recycle();
            throw th2;
        }
    }

    void d(boolean z10) {
        this.f2033b.c(z10);
    }

    void e(boolean z10) {
        this.f2033b.d(z10);
    }

    public TransformationMethod f(TransformationMethod transformationMethod) {
        return this.f2033b.e(transformationMethod);
    }
}
