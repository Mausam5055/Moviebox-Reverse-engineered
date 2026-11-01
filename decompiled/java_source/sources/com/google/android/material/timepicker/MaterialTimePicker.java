package com.google.android.material.timepicker;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.DialogFragment;
import com.google.android.material.R$attr;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$string;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import com.google.android.material.button.MaterialButton;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class MaterialTimePicker extends DialogFragment implements TimePickerView.d {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TimePickerView f30075e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ViewStub f30076f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private h f30077g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private l f30078h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private i f30079i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f30080j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f30081k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private CharSequence f30083m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private CharSequence f30085o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private CharSequence f30087q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private MaterialButton f30088r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Button f30089s;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private TimeModel f30091u;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set f30071a = new LinkedHashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set f30072b = new LinkedHashSet();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set f30073c = new LinkedHashSet();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Set f30074d = new LinkedHashSet();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f30082l = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f30084n = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f30086p = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f30090t = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f30092v = 0;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it = MaterialTimePicker.this.f30071a.iterator();
            while (it.hasNext()) {
                ((View.OnClickListener) it.next()).onClick(view);
            }
            MaterialTimePicker.this.dismiss();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it = MaterialTimePicker.this.f30072b.iterator();
            while (it.hasNext()) {
                ((View.OnClickListener) it.next()).onClick(view);
            }
            MaterialTimePicker.this.dismiss();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MaterialTimePicker materialTimePicker = MaterialTimePicker.this;
            materialTimePicker.f30090t = materialTimePicker.f30090t == 0 ? 1 : 0;
            MaterialTimePicker materialTimePicker2 = MaterialTimePicker.this;
            materialTimePicker2.k0(materialTimePicker2.f30088r);
        }
    }

    private Pair e0(int i11) {
        if (i11 == 0) {
            return new Pair(Integer.valueOf(this.f30080j), Integer.valueOf(R$string.material_timepicker_text_input_mode_description));
        }
        if (i11 == 1) {
            return new Pair(Integer.valueOf(this.f30081k), Integer.valueOf(R$string.material_timepicker_clock_mode_description));
        }
        throw new IllegalArgumentException("no icon for mode: " + i11);
    }

    private int f0() {
        int i11 = this.f30092v;
        if (i11 != 0) {
            return i11;
        }
        TypedValue typedValueA = xa.b.a(requireContext(), R$attr.materialTimePickerTheme);
        if (typedValueA == null) {
            return 0;
        }
        return typedValueA.data;
    }

    private i g0(int i11, TimePickerView timePickerView, ViewStub viewStub) {
        if (i11 != 0) {
            if (this.f30078h == null) {
                this.f30078h = new l((LinearLayout) viewStub.inflate(), this.f30091u);
            }
            this.f30078h.e();
            return this.f30078h;
        }
        h hVar = this.f30077g;
        if (hVar == null) {
            hVar = new h(timePickerView, this.f30091u);
        }
        this.f30077g = hVar;
        return hVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h0() {
        i iVar = this.f30079i;
        if (iVar instanceof l) {
            ((l) iVar).i();
        }
    }

    private void i0(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        TimeModel timeModel = (TimeModel) bundle.getParcelable("TIME_PICKER_TIME_MODEL");
        this.f30091u = timeModel;
        if (timeModel == null) {
            this.f30091u = new TimeModel();
        }
        this.f30090t = bundle.getInt("TIME_PICKER_INPUT_MODE", this.f30091u.f30096a != 1 ? 0 : 1);
        this.f30082l = bundle.getInt("TIME_PICKER_TITLE_RES", 0);
        this.f30083m = bundle.getCharSequence("TIME_PICKER_TITLE_TEXT");
        this.f30084n = bundle.getInt("TIME_PICKER_POSITIVE_BUTTON_TEXT_RES", 0);
        this.f30085o = bundle.getCharSequence("TIME_PICKER_POSITIVE_BUTTON_TEXT");
        this.f30086p = bundle.getInt("TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES", 0);
        this.f30087q = bundle.getCharSequence("TIME_PICKER_NEGATIVE_BUTTON_TEXT");
        this.f30092v = bundle.getInt("TIME_PICKER_OVERRIDE_THEME_RES_ID", 0);
    }

    private void j0() {
        Button button = this.f30089s;
        if (button != null) {
            button.setVisibility(isCancelable() ? 0 : 8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k0(MaterialButton materialButton) {
        if (materialButton == null || this.f30075e == null || this.f30076f == null) {
            return;
        }
        i iVar = this.f30079i;
        if (iVar != null) {
            iVar.hide();
        }
        i iVarG0 = g0(this.f30090t, this.f30075e, this.f30076f);
        this.f30079i = iVarG0;
        iVarG0.show();
        this.f30079i.invalidate();
        Pair pairE0 = e0(this.f30090t);
        materialButton.setIconResource(((Integer) pairE0.first).intValue());
        materialButton.setContentDescription(getResources().getString(((Integer) pairE0.second).intValue()));
        materialButton.sendAccessibilityEvent(4);
    }

    @Override // com.google.android.material.timepicker.TimePickerView.d
    public void l() {
        this.f30090t = 1;
        k0(this.f30088r);
        this.f30078h.i();
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator it = this.f30073c.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnCancelListener) it.next()).onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        i0(bundle);
    }

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = new Dialog(requireContext(), f0());
        Context context = dialog.getContext();
        ab.i iVar = new ab.i(context, null, R$attr.materialTimePickerStyle, R$style.Widget_MaterialComponents_TimePicker);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R$styleable.MaterialTimePicker, R$attr.materialTimePickerStyle, R$style.Widget_MaterialComponents_TimePicker);
        this.f30081k = typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialTimePicker_clockIcon, 0);
        this.f30080j = typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialTimePicker_keyboardIcon, 0);
        int color = typedArrayObtainStyledAttributes.getColor(R$styleable.MaterialTimePicker_backgroundTint, 0);
        typedArrayObtainStyledAttributes.recycle();
        iVar.S(context);
        iVar.d0(ColorStateList.valueOf(color));
        Window window = dialog.getWindow();
        window.setBackgroundDrawable(iVar);
        window.requestFeature(1);
        window.setLayout(-2, -2);
        iVar.c0(ViewCompat.getElevation(window.getDecorView()));
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        ViewGroup viewGroup2 = (ViewGroup) layoutInflater.inflate(R$layout.material_timepicker_dialog, viewGroup);
        TimePickerView timePickerView = (TimePickerView) viewGroup2.findViewById(R$id.material_timepicker_view);
        this.f30075e = timePickerView;
        timePickerView.u(this);
        this.f30076f = (ViewStub) viewGroup2.findViewById(R$id.material_textinput_timepicker);
        this.f30088r = (MaterialButton) viewGroup2.findViewById(R$id.material_timepicker_mode_button);
        TextView textView = (TextView) viewGroup2.findViewById(R$id.header_title);
        int i11 = this.f30082l;
        if (i11 != 0) {
            textView.setText(i11);
        } else if (!TextUtils.isEmpty(this.f30083m)) {
            textView.setText(this.f30083m);
        }
        k0(this.f30088r);
        Button button = (Button) viewGroup2.findViewById(R$id.material_timepicker_ok_button);
        button.setOnClickListener(new a());
        int i12 = this.f30084n;
        if (i12 != 0) {
            button.setText(i12);
        } else if (!TextUtils.isEmpty(this.f30085o)) {
            button.setText(this.f30085o);
        }
        Button button2 = (Button) viewGroup2.findViewById(R$id.material_timepicker_cancel_button);
        this.f30089s = button2;
        button2.setOnClickListener(new b());
        int i13 = this.f30086p;
        if (i13 != 0) {
            this.f30089s.setText(i13);
        } else if (!TextUtils.isEmpty(this.f30087q)) {
            this.f30089s.setText(this.f30087q);
        }
        j0();
        this.f30088r.setOnClickListener(new c());
        return viewGroup2;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f30079i = null;
        this.f30077g = null;
        this.f30078h = null;
        TimePickerView timePickerView = this.f30075e;
        if (timePickerView != null) {
            timePickerView.u(null);
            this.f30075e = null;
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator it = this.f30074d.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnDismissListener) it.next()).onDismiss(dialogInterface);
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("TIME_PICKER_TIME_MODEL", this.f30091u);
        bundle.putInt("TIME_PICKER_INPUT_MODE", this.f30090t);
        bundle.putInt("TIME_PICKER_TITLE_RES", this.f30082l);
        bundle.putCharSequence("TIME_PICKER_TITLE_TEXT", this.f30083m);
        bundle.putInt("TIME_PICKER_POSITIVE_BUTTON_TEXT_RES", this.f30084n);
        bundle.putCharSequence("TIME_PICKER_POSITIVE_BUTTON_TEXT", this.f30085o);
        bundle.putInt("TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES", this.f30086p);
        bundle.putCharSequence("TIME_PICKER_NEGATIVE_BUTTON_TEXT", this.f30087q);
        bundle.putInt("TIME_PICKER_OVERRIDE_THEME_RES_ID", this.f30092v);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (this.f30079i instanceof l) {
            view.postDelayed(new Runnable() { // from class: com.google.android.material.timepicker.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.f30116a.h0();
                }
            }, 100L);
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public void setCancelable(boolean z10) {
        super.setCancelable(z10);
        j0();
    }
}
