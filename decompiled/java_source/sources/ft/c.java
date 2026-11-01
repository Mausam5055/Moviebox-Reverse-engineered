package ft;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class c implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TextView f62461a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f62462b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Function0 f62463c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f62464d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f62465e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Function0 f62466f;

    public c(TextView textView) {
        Intrinsics.h(textView, "textView");
        this.f62461a = textView;
        this.f62462b = "http://schemas.android.com/apk/res/android";
    }

    public final void a(Context context, AttributeSet attributeSet, int i11) {
        Intrinsics.h(context, "context");
        if (attributeSet != null) {
            String attributeValue = attributeSet.getAttributeValue(this.f62462b, MimeTypes.BASE_TYPE_TEXT);
            if (attributeValue != null && attributeValue.length() >= 2) {
                String strSubstring = attributeValue.substring(1, attributeValue.length());
                Intrinsics.g(strSubstring, "substring(...)");
                this.f62464d = b.a(strSubstring);
            }
            String attributeValue2 = attributeSet.getAttributeValue(this.f62462b, "hint");
            if (attributeValue2 == null || attributeValue2.length() < 2) {
                return;
            }
            String strSubstring2 = attributeValue2.substring(1, attributeValue2.length());
            Intrinsics.g(strSubstring2, "substring(...)");
            this.f62465e = b.a(strSubstring2);
        }
    }

    public void b(int i11) {
        this.f62465e = i11;
        if (i11 != 0) {
            this.f62461a.setHint(i11);
        }
    }

    public void c(CharSequence charSequence) {
        this.f62465e = 0;
        this.f62461a.setHint(charSequence);
    }

    @Override // ft.a
    public void changeLocal() {
        try {
            int i11 = this.f62464d;
            if (i11 != 0) {
                this.f62461a.setText(i11);
            }
            int i12 = this.f62465e;
            if (i12 != 0) {
                this.f62461a.setHint(i12);
            }
            Function0 function0 = this.f62466f;
            if (function0 != null) {
                this.f62461a.setText(function0 != null ? (CharSequence) function0.invoke() : null);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        Function0 function1 = this.f62463c;
        if (function1 != null) {
            function1.invoke();
        }
    }

    public void d(Function0 listener) {
        Intrinsics.h(listener, "listener");
        this.f62463c = listener;
    }

    public void e(Function0 function0) {
        this.f62466f = function0;
        this.f62464d = 0;
        this.f62461a.setText(function0 != null ? (CharSequence) function0.invoke() : null);
    }

    public void f(int i11) {
        this.f62464d = i11;
        if (i11 != 0) {
            this.f62461a.setText(i11);
        }
    }

    public void g(CharSequence charSequence) {
        this.f62466f = null;
        this.f62464d = 0;
        this.f62461a.setText(charSequence);
    }
}
