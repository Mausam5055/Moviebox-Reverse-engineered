package bs;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class c implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TextView f16918a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f16919b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Function0 f16920c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f16921d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f16922e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Function0 f16923f;

    public c(TextView textView) {
        Intrinsics.h(textView, "textView");
        this.f16918a = textView;
        this.f16919b = "http://schemas.android.com/apk/res/android";
    }

    public final void a(Context context, AttributeSet attributeSet, int i11) {
        Intrinsics.h(context, "context");
        if (attributeSet != null) {
            String attributeValue = attributeSet.getAttributeValue(this.f16919b, MimeTypes.BASE_TYPE_TEXT);
            if (attributeValue != null && attributeValue.length() >= 2) {
                String strSubstring = attributeValue.substring(1, attributeValue.length());
                Intrinsics.g(strSubstring, "substring(...)");
                this.f16921d = b.a(strSubstring);
            }
            String attributeValue2 = attributeSet.getAttributeValue(this.f16919b, "hint");
            if (attributeValue2 == null || attributeValue2.length() < 2) {
                return;
            }
            String strSubstring2 = attributeValue2.substring(1, attributeValue2.length());
            Intrinsics.g(strSubstring2, "substring(...)");
            this.f16922e = b.a(strSubstring2);
        }
    }

    public void b(int i11) {
        this.f16922e = i11;
        if (i11 != 0) {
            this.f16918a.setHint(i11);
        }
    }

    public void c(CharSequence charSequence) {
        this.f16922e = 0;
        this.f16918a.setHint(charSequence);
    }

    @Override // bs.a
    public void changeLocal() {
        try {
            int i11 = this.f16921d;
            if (i11 != 0) {
                this.f16918a.setText(i11);
            }
            int i12 = this.f16922e;
            if (i12 != 0) {
                this.f16918a.setHint(i12);
            }
            Function0 function0 = this.f16923f;
            if (function0 != null) {
                this.f16918a.setText(function0 != null ? (CharSequence) function0.invoke() : null);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        Function0 function1 = this.f16920c;
        if (function1 != null) {
            function1.invoke();
        }
    }

    public void d(Function0 listener) {
        Intrinsics.h(listener, "listener");
        this.f16920c = listener;
    }

    public void e(Function0 function0) {
        this.f16923f = function0;
        this.f16921d = 0;
        this.f16918a.setText(function0 != null ? (CharSequence) function0.invoke() : null);
    }

    public void f(int i11) {
        this.f16921d = i11;
        if (i11 != 0) {
            this.f16918a.setText(i11);
        }
    }

    public void g(CharSequence charSequence) {
        this.f16923f = null;
        this.f16921d = 0;
        this.f16918a.setText(charSequence);
    }
}
