package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.chip.Chip;
import com.google.android.material.internal.a0;
import com.google.android.material.internal.f0;
import com.google.android.material.textfield.TextInputLayout;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
class ChipTextInputComboView extends FrameLayout implements Checkable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Chip f30026a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TextInputLayout f30027b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final EditText f30028c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextWatcher f30029d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f30030e;

    private class b extends a0 {
        private b() {
        }

        @Override // com.google.android.material.internal.a0, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (TextUtils.isEmpty(editable)) {
                ChipTextInputComboView.this.f30026a.setText(ChipTextInputComboView.this.d("00"));
                return;
            }
            String strD = ChipTextInputComboView.this.d(editable);
            Chip chip = ChipTextInputComboView.this.f30026a;
            if (TextUtils.isEmpty(strD)) {
                strD = ChipTextInputComboView.this.d("00");
            }
            chip.setText(strD);
        }
    }

    public ChipTextInputComboView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ChipTextInputComboView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        Chip chip = (Chip) layoutInflaterFrom.inflate(R$layout.material_time_chip, (ViewGroup) this, false);
        this.f30026a = chip;
        chip.setAccessibilityClassName("android.view.View");
        TextInputLayout textInputLayout = (TextInputLayout) layoutInflaterFrom.inflate(R$layout.material_time_input, (ViewGroup) this, false);
        this.f30027b = textInputLayout;
        EditText editText = textInputLayout.getEditText();
        this.f30028c = editText;
        editText.setVisibility(4);
        b bVar = new b();
        this.f30029d = bVar;
        editText.addTextChangedListener(bVar);
        h();
        addView(chip);
        addView(textInputLayout);
        this.f30030e = (TextView) findViewById(R$id.material_label);
        editText.setId(ViewCompat.generateViewId());
        ViewCompat.setLabelFor(this.f30030e, editText.getId());
        editText.setSaveEnabled(false);
        editText.setLongClickable(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String d(CharSequence charSequence) {
        return TimeModel.a(getResources(), charSequence);
    }

    private void h() {
        if (Build.VERSION.SDK_INT >= 24) {
            this.f30028c.setImeHintLocales(getContext().getResources().getConfiguration().getLocales());
        }
    }

    public void c(InputFilter inputFilter) {
        InputFilter[] filters = this.f30028c.getFilters();
        InputFilter[] inputFilterArr = (InputFilter[]) Arrays.copyOf(filters, filters.length + 1);
        inputFilterArr[filters.length] = inputFilter;
        this.f30028c.setFilters(inputFilterArr);
    }

    public TextInputLayout e() {
        return this.f30027b;
    }

    public void f(AccessibilityDelegateCompat accessibilityDelegateCompat) {
        ViewCompat.setAccessibilityDelegate(this.f30026a, accessibilityDelegateCompat);
    }

    public void g(CharSequence charSequence) {
        String strD = d(charSequence);
        this.f30026a.setText(strD);
        if (TextUtils.isEmpty(strD)) {
            return;
        }
        this.f30028c.removeTextChangedListener(this.f30029d);
        this.f30028c.setText(strD);
        this.f30028c.addTextChangedListener(this.f30029d);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f30026a.isChecked();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        h();
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z10) {
        this.f30026a.setChecked(z10);
        this.f30028c.setVisibility(z10 ? 0 : 4);
        this.f30026a.setVisibility(z10 ? 8 : 0);
        if (isChecked()) {
            f0.t(this.f30028c, false);
        }
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f30026a.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    public void setTag(int i11, Object obj) {
        this.f30026a.setTag(i11, obj);
    }

    @Override // android.widget.Checkable
    public void toggle() {
        this.f30026a.toggle();
    }
}
