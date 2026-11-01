package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.Resources;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R$id;
import com.google.android.material.R$string;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.internal.a0;
import com.google.android.material.internal.f0;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
class l implements TimePickerView.f, i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinearLayout f30137a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TimeModel f30138b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final TextWatcher f30139c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final TextWatcher f30140d = new b();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ChipTextInputComboView f30141e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ChipTextInputComboView f30142f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final j f30143g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final EditText f30144h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final EditText f30145i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private MaterialButtonToggleGroup f30146j;

    class a extends a0 {
        a() {
        }

        @Override // com.google.android.material.internal.a0, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            try {
                if (TextUtils.isEmpty(editable)) {
                    l.this.f30138b.i(0);
                } else {
                    l.this.f30138b.i(Integer.parseInt(editable.toString()));
                }
            } catch (NumberFormatException unused) {
            }
        }
    }

    class b extends a0 {
        b() {
        }

        @Override // com.google.android.material.internal.a0, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            try {
                if (TextUtils.isEmpty(editable)) {
                    l.this.f30138b.h(0);
                } else {
                    l.this.f30138b.h(Integer.parseInt(editable.toString()));
                }
            } catch (NumberFormatException unused) {
            }
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            l.this.c(((Integer) view.getTag(R$id.selection_type)).intValue());
        }
    }

    class d extends com.google.android.material.timepicker.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ TimeModel f30150b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(Context context, int i11, TimeModel timeModel) {
            super(context, i11);
            this.f30150b = timeModel;
        }

        @Override // com.google.android.material.timepicker.b, androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(view.getResources().getString(this.f30150b.c(), String.valueOf(this.f30150b.d())));
        }
    }

    class e extends com.google.android.material.timepicker.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ TimeModel f30152b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(Context context, int i11, TimeModel timeModel) {
            super(context, i11);
            this.f30152b = timeModel;
        }

        @Override // com.google.android.material.timepicker.b, androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(view.getResources().getString(R$string.material_minute_suffix, String.valueOf(this.f30152b.f30098c)));
        }
    }

    public l(LinearLayout linearLayout, TimeModel timeModel) {
        this.f30137a = linearLayout;
        this.f30138b = timeModel;
        Resources resources = linearLayout.getResources();
        ChipTextInputComboView chipTextInputComboView = (ChipTextInputComboView) linearLayout.findViewById(R$id.material_minute_text_input);
        this.f30141e = chipTextInputComboView;
        ChipTextInputComboView chipTextInputComboView2 = (ChipTextInputComboView) linearLayout.findViewById(R$id.material_hour_text_input);
        this.f30142f = chipTextInputComboView2;
        TextView textView = (TextView) chipTextInputComboView.findViewById(R$id.material_label);
        TextView textView2 = (TextView) chipTextInputComboView2.findViewById(R$id.material_label);
        textView.setText(resources.getString(R$string.material_timepicker_minute));
        textView2.setText(resources.getString(R$string.material_timepicker_hour));
        chipTextInputComboView.setTag(R$id.selection_type, 12);
        chipTextInputComboView2.setTag(R$id.selection_type, 10);
        if (timeModel.f30096a == 0) {
            k();
        }
        c cVar = new c();
        chipTextInputComboView2.setOnClickListener(cVar);
        chipTextInputComboView.setOnClickListener(cVar);
        chipTextInputComboView2.c(timeModel.e());
        chipTextInputComboView.c(timeModel.f());
        this.f30144h = chipTextInputComboView2.e().getEditText();
        this.f30145i = chipTextInputComboView.e().getEditText();
        this.f30143g = new j(chipTextInputComboView2, chipTextInputComboView, timeModel);
        chipTextInputComboView2.f(new d(linearLayout.getContext(), R$string.material_hour_selection, timeModel));
        chipTextInputComboView.f(new e(linearLayout.getContext(), R$string.material_minute_selection, timeModel));
        f();
    }

    private void d() {
        this.f30144h.addTextChangedListener(this.f30140d);
        this.f30145i.addTextChangedListener(this.f30139c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(MaterialButtonToggleGroup materialButtonToggleGroup, int i11, boolean z10) {
        if (z10) {
            this.f30138b.j(i11 == R$id.material_clock_period_pm_button ? 1 : 0);
        }
    }

    private void h() {
        this.f30144h.removeTextChangedListener(this.f30140d);
        this.f30145i.removeTextChangedListener(this.f30139c);
    }

    private void j(TimeModel timeModel) {
        h();
        Locale locale = this.f30137a.getResources().getConfiguration().locale;
        String str = String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(timeModel.f30098c));
        String str2 = String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(timeModel.d()));
        this.f30141e.g(str);
        this.f30142f.g(str2);
        d();
        l();
    }

    private void k() {
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) this.f30137a.findViewById(R$id.material_clock_period_toggle);
        this.f30146j = materialButtonToggleGroup;
        materialButtonToggleGroup.addOnButtonCheckedListener(new MaterialButtonToggleGroup.c() { // from class: com.google.android.material.timepicker.k
            @Override // com.google.android.material.button.MaterialButtonToggleGroup.c
            public final void a(MaterialButtonToggleGroup materialButtonToggleGroup2, int i11, boolean z10) {
                this.f30136a.g(materialButtonToggleGroup2, i11, z10);
            }
        });
        this.f30146j.setVisibility(0);
        l();
    }

    private void l() {
        MaterialButtonToggleGroup materialButtonToggleGroup = this.f30146j;
        if (materialButtonToggleGroup == null) {
            return;
        }
        materialButtonToggleGroup.check(this.f30138b.f30100e == 0 ? R$id.material_clock_period_am_button : R$id.material_clock_period_pm_button);
    }

    @Override // com.google.android.material.timepicker.TimePickerView.f
    public void c(int i11) {
        this.f30138b.f30099d = i11;
        this.f30141e.setChecked(i11 == 12);
        this.f30142f.setChecked(i11 == 10);
        l();
    }

    public void e() {
        this.f30141e.setChecked(false);
        this.f30142f.setChecked(false);
    }

    public void f() {
        d();
        j(this.f30138b);
        this.f30143g.a();
    }

    @Override // com.google.android.material.timepicker.i
    public void hide() {
        View focusedChild = this.f30137a.getFocusedChild();
        if (focusedChild != null) {
            f0.o(focusedChild, false);
        }
        this.f30137a.setVisibility(8);
    }

    public void i() {
        this.f30141e.setChecked(this.f30138b.f30099d == 12);
        this.f30142f.setChecked(this.f30138b.f30099d == 10);
    }

    @Override // com.google.android.material.timepicker.i
    public void invalidate() {
        j(this.f30138b);
    }

    @Override // com.google.android.material.timepicker.i
    public void show() {
        this.f30137a.setVisibility(0);
        c(this.f30138b.f30099d);
    }
}
