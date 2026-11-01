package tj;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class c implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TextView f76268a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f76269b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Function0 f76270c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f76271d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f76272e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Function0 f76273f;

    public c(TextView textView) {
        Intrinsics.h(textView, "textView");
        this.f76268a = textView;
        this.f76269b = "http://schemas.android.com/apk/res/android";
    }

    public final void a(Context context, AttributeSet attributeSet, int i11) {
        Intrinsics.h(context, "context");
        if (attributeSet != null) {
            String attributeValue = attributeSet.getAttributeValue(this.f76269b, MimeTypes.BASE_TYPE_TEXT);
            if (attributeValue != null && attributeValue.length() >= 2) {
                String strSubstring = attributeValue.substring(1, attributeValue.length());
                Intrinsics.g(strSubstring, "substring(...)");
                this.f76271d = b.a(strSubstring);
            }
            String attributeValue2 = attributeSet.getAttributeValue(this.f76269b, "hint");
            if (attributeValue2 == null || attributeValue2.length() < 2) {
                return;
            }
            String strSubstring2 = attributeValue2.substring(1, attributeValue2.length());
            Intrinsics.g(strSubstring2, "substring(...)");
            this.f76272e = b.a(strSubstring2);
        }
    }

    public void b(int i11) {
        this.f76272e = i11;
        if (i11 != 0) {
            this.f76268a.setHint(i11);
        }
    }

    public void c(CharSequence charSequence) {
        this.f76272e = 0;
        this.f76268a.setHint(charSequence);
    }

    @Override // tj.a
    public void changeLocal() {
        try {
            if (this.f76271d != 0) {
                String string = this.f76268a.getContext().getString(this.f76271d);
                Intrinsics.g(string, "getString(...)");
                if (!Intrinsics.c(this.f76268a.getText().toString(), string)) {
                    this.f76268a.setText(this.f76271d);
                }
            }
            if (this.f76272e != 0) {
                String string2 = this.f76268a.getContext().getString(this.f76272e);
                Intrinsics.g(string2, "getString(...)");
                CharSequence hint = this.f76268a.getHint();
                if (!Intrinsics.c(hint != null ? hint.toString() : null, string2)) {
                    this.f76268a.setHint(this.f76272e);
                }
            }
            Function0 function0 = this.f76273f;
            if (function0 != null) {
                CharSequence charSequence = function0 != null ? (CharSequence) function0.invoke() : null;
                if (!Intrinsics.c(this.f76268a.getText().toString(), charSequence != null ? charSequence.toString() : null)) {
                    this.f76268a.setText(charSequence);
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        Function0 function1 = this.f76270c;
        if (function1 != null) {
            function1.invoke();
        }
    }

    public void d(Function0 listener) {
        Intrinsics.h(listener, "listener");
        this.f76270c = listener;
    }

    public void e(Function0 function0) {
        this.f76273f = function0;
        this.f76271d = 0;
        this.f76268a.setText(function0 != null ? (CharSequence) function0.invoke() : null);
    }

    public void f(int i11) {
        this.f76271d = i11;
        if (i11 != 0) {
            this.f76268a.setText(i11);
        }
    }

    public void g(CharSequence charSequence) {
        this.f76273f = null;
        this.f76271d = 0;
        this.f76268a.setText(charSequence);
    }
}
