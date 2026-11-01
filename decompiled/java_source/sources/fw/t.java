package fw;

import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.transsion.usercenter.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class t implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f62903a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Button f62904b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Button f62905c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RadioButton f62906d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RadioButton f62907e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RadioButton f62908f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final RadioGroup f62909g;

    private t(LinearLayout linearLayout, Button button, Button button2, RadioButton radioButton, RadioButton radioButton2, RadioButton radioButton3, RadioGroup radioGroup) {
        this.f62903a = linearLayout;
        this.f62904b = button;
        this.f62905c = button2;
        this.f62906d = radioButton;
        this.f62907e = radioButton2;
        this.f62908f = radioButton3;
        this.f62909g = radioGroup;
    }

    public static t a(View view) {
        int i11 = R$id.btnCancel;
        Button button = (Button) g4.b.a(view, i11);
        if (button != null) {
            i11 = R$id.btnOk;
            Button button2 = (Button) g4.b.a(view, i11);
            if (button2 != null) {
                i11 = R$id.radioButtonReset;
                RadioButton radioButton = (RadioButton) g4.b.a(view, i11);
                if (radioButton != null) {
                    i11 = R$id.radioButtonSubject;
                    RadioButton radioButton2 = (RadioButton) g4.b.a(view, i11);
                    if (radioButton2 != null) {
                        i11 = R$id.radioButtonUGCVideo;
                        RadioButton radioButton3 = (RadioButton) g4.b.a(view, i11);
                        if (radioButton3 != null) {
                            i11 = R$id.radioGroup;
                            RadioGroup radioGroup = (RadioGroup) g4.b.a(view, i11);
                            if (radioGroup != null) {
                                return new t((LinearLayout) view, button, button2, radioButton, radioButton2, radioButton3, radioGroup);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i11)));
    }

    @Override // g4.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f62903a;
    }
}
