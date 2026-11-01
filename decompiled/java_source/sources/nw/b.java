package nw;

import android.app.Activity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.d0;
import androidx.p009lifecycle.t;
import androidx.p009lifecycle.u;
import com.blankj.utilcode.util.h;
import com.google.android.material.bottomsheet.c;
import com.tn.lib.widget.R$color;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.R$style;

/* JADX INFO: loaded from: classes7.dex */
public class b implements View.OnClickListener, t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Activity f70584a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f70585b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f70586c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f70587d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f70588e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private c f70589f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f70590g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f70591h;

    /* JADX INFO: loaded from: classes6.dex */
    public interface a {
        void onDialogSelect(int i11, String str);
    }

    public b(Activity activity, a aVar, String str) {
        this.f70584a = activity;
        this.f70588e = aVar;
        this.f70590g = str;
        a();
    }

    private void a() {
        View viewInflate = LayoutInflater.from(this.f70584a).inflate(R$layout.dialog_edit_gender, (ViewGroup) null);
        this.f70585b = (TextView) viewInflate.findViewById(R$id.tv_first);
        this.f70586c = (TextView) viewInflate.findViewById(R$id.tv_second);
        this.f70587d = (TextView) viewInflate.findViewById(R$id.tv_third);
        this.f70585b.setOnClickListener(this);
        this.f70586c.setOnClickListener(this);
        this.f70587d.setOnClickListener(this);
        c cVar = new c(this.f70584a, R$style.BottomDialog1);
        this.f70589f = cVar;
        cVar.getWindow().setWindowAnimations(R$style.bottom_dialog_animation);
        this.f70589f.setContentView(viewInflate);
    }

    public void b() {
        if (TextUtils.equals(this.f70590g, this.f70584a.getString(R$string.profile_female))) {
            this.f70585b.setTextColor(h.a(R$color.white));
            this.f70586c.setTextColor(h.a(R$color.text_03));
            this.f70587d.setTextColor(h.a(R$color.text_03));
        } else if (TextUtils.equals(this.f70590g, this.f70584a.getString(R$string.profile_male))) {
            this.f70586c.setTextColor(h.a(R$color.white));
            this.f70585b.setTextColor(h.a(R$color.text_03));
            this.f70587d.setTextColor(h.a(R$color.text_03));
        } else {
            this.f70587d.setTextColor(h.a(R$color.white));
            this.f70585b.setTextColor(h.a(R$color.text_03));
            this.f70586c.setTextColor(h.a(R$color.text_03));
        }
        this.f70585b.setText(R$string.profile_female);
        this.f70586c.setText(R$string.profile_male);
        this.f70587d.setText(R$string.profile_gender_other);
        this.f70589f.show();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id2 = view.getId();
        if (id2 == R$id.tv_first) {
            a aVar = this.f70588e;
            if (aVar != null) {
                aVar.onDialogSelect(0, this.f70585b.getText().toString());
                this.f70589f.dismiss();
                return;
            }
            return;
        }
        if (id2 != R$id.tv_second) {
            if (id2 == R$id.tv_third) {
                this.f70588e.onDialogSelect(2, this.f70587d.getText().toString());
                this.f70589f.dismiss();
                return;
            }
            return;
        }
        a aVar2 = this.f70588e;
        if (aVar2 != null) {
            aVar2.onDialogSelect(1, this.f70586c.getText().toString());
            this.f70589f.dismiss();
        }
    }

    @d0(Lifecycle.Event.ON_ANY)
    public void onLifecycleChanged(u uVar, Lifecycle.Event event) {
    }

    @d0(Lifecycle.Event.ON_PAUSE)
    public void onPause(u uVar) {
        this.f70591h = false;
    }

    @d0(Lifecycle.Event.ON_RESUME)
    public void onResume(u uVar) {
        this.f70591h = true;
    }
}
