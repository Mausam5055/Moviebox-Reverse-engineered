package fw;

import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.transsion.usercenter.R$id;

/* JADX INFO: loaded from: classes7.dex */
public final class s implements g4.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FrameLayout f62893a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Button f62894b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Button f62895c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RadioButton f62896d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RadioButton f62897e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RadioGroup f62898f;

    private s(FrameLayout frameLayout, Button button, Button button2, RadioButton radioButton, RadioButton radioButton2, RadioGroup radioGroup) {
        this.f62893a = frameLayout;
        this.f62894b = button;
        this.f62895c = button2;
        this.f62896d = radioButton;
        this.f62897e = radioButton2;
        this.f62898f = radioGroup;
    }

    public static s a(View view) {
        int i11 = R$id.btnCancel;
        Button button = (Button) g4.b.a(view, i11);
        if (button != null) {
            i11 = R$id.btnOk;
            Button button2 = (Button) g4.b.a(view, i11);
            if (button2 != null) {
                i11 = R$id.radioButtonGP;
                RadioButton radioButton = (RadioButton) g4.b.a(view, i11);
                if (radioButton != null) {
                    i11 = R$id.radioButtonPS;
                    RadioButton radioButton2 = (RadioButton) g4.b.a(view, i11);
                    if (radioButton2 != null) {
                        i11 = R$id.radioGroup;
                        RadioGroup radioGroup = (RadioGroup) g4.b.a(view, i11);
                        if (radioGroup != null) {
                            return new s((FrameLayout) view, button, button2, radioButton, radioButton2, radioGroup);
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
        return this.f62893a;
    }
}
