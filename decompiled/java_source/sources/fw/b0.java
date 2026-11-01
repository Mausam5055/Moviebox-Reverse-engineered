package fw;

import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.transsion.usercenter.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class b0 implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f62584a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Button f62585b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Button f62586c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RadioButton f62587d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RadioButton f62588e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RadioGroup f62589f;

    private b0(FrameLayout frameLayout, Button button, Button button2, RadioButton radioButton, RadioButton radioButton2, RadioGroup radioGroup) {
        this.f62584a = frameLayout;
        this.f62585b = button;
        this.f62586c = button2;
        this.f62587d = radioButton;
        this.f62588e = radioButton2;
        this.f62589f = radioGroup;
    }

    public static b0 a(View view) {
        int i11 = R$id.btnCancel;
        Button button = (Button) g4.b.a(view, i11);
        if (button != null) {
            i11 = R$id.btnOk;
            Button button2 = (Button) g4.b.a(view, i11);
            if (button2 != null) {
                i11 = R$id.radioButtonDownload;
                RadioButton radioButton = (RadioButton) g4.b.a(view, i11);
                if (radioButton != null) {
                    i11 = R$id.radioButtonStream;
                    RadioButton radioButton2 = (RadioButton) g4.b.a(view, i11);
                    if (radioButton2 != null) {
                        i11 = R$id.radioGroup;
                        RadioGroup radioGroup = (RadioGroup) g4.b.a(view, i11);
                        if (radioGroup != null) {
                            return new b0((FrameLayout) view, button, button2, radioButton, radioButton2, radioGroup);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f62584a;
    }
}
