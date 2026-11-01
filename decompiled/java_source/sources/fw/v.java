package fw;

import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.transsion.usercenter.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class v implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f62946a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Button f62947b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Button f62948c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RadioButton f62949d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RadioButton f62950e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RadioGroup f62951f;

    private v(FrameLayout frameLayout, Button button, Button button2, RadioButton radioButton, RadioButton radioButton2, RadioGroup radioGroup) {
        this.f62946a = frameLayout;
        this.f62947b = button;
        this.f62948c = button2;
        this.f62949d = radioButton;
        this.f62950e = radioButton2;
        this.f62951f = radioGroup;
    }

    public static v a(View view) {
        int i11 = R$id.btnCancel;
        Button button = (Button) g4.b.a(view, i11);
        if (button != null) {
            i11 = R$id.btnOk;
            Button button2 = (Button) g4.b.a(view, i11);
            if (button2 != null) {
                i11 = R$id.radioButtonFpsClose;
                RadioButton radioButton = (RadioButton) g4.b.a(view, i11);
                if (radioButton != null) {
                    i11 = R$id.radioButtonFpsOpen;
                    RadioButton radioButton2 = (RadioButton) g4.b.a(view, i11);
                    if (radioButton2 != null) {
                        i11 = R$id.radioGroup;
                        RadioGroup radioGroup = (RadioGroup) g4.b.a(view, i11);
                        if (radioGroup != null) {
                            return new v((FrameLayout) view, button, button2, radioButton, radioButton2, radioGroup);
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
        return this.f62946a;
    }
}
