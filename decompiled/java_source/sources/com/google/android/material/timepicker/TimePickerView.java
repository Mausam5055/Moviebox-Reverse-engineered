package com.google.android.material.timepicker;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Checkable;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.chip.Chip;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
class TimePickerView extends ConstraintLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Chip f30101a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Chip f30102b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ClockHandView f30103c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ClockFaceView f30104d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final MaterialButtonToggleGroup f30105e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final View.OnClickListener f30106f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private e f30107g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private f f30108h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private d f30109i;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (TimePickerView.this.f30108h != null) {
                TimePickerView.this.f30108h.c(((Integer) view.getTag(R$id.selection_type)).intValue());
            }
        }
    }

    class b extends GestureDetector.SimpleOnGestureListener {
        b() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onDoubleTap(MotionEvent motionEvent) {
            d dVar = TimePickerView.this.f30109i;
            if (dVar == null) {
                return false;
            }
            dVar.l();
            return true;
        }
    }

    class c implements View.OnTouchListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ GestureDetector f30112a;

        c(GestureDetector gestureDetector) {
            this.f30112a = gestureDetector;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (((Checkable) view).isChecked()) {
                return this.f30112a.onTouchEvent(motionEvent);
            }
            return false;
        }
    }

    interface d {
        void l();
    }

    interface e {
        void b(int i11);
    }

    interface f {
        void c(int i11);
    }

    public TimePickerView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TimePickerView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f30106f = new a();
        LayoutInflater.from(context).inflate(R$layout.material_timepicker, this);
        this.f30104d = (ClockFaceView) findViewById(R$id.material_clock_face);
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) findViewById(R$id.material_clock_period_toggle);
        this.f30105e = materialButtonToggleGroup;
        materialButtonToggleGroup.addOnButtonCheckedListener(new MaterialButtonToggleGroup.c() { // from class: com.google.android.material.timepicker.m
            @Override // com.google.android.material.button.MaterialButtonToggleGroup.c
            public final void a(MaterialButtonToggleGroup materialButtonToggleGroup2, int i12, boolean z10) {
                this.f30154a.m(materialButtonToggleGroup2, i12, z10);
            }
        });
        this.f30101a = (Chip) findViewById(R$id.material_minute_tv);
        this.f30102b = (Chip) findViewById(R$id.material_hour_tv);
        this.f30103c = (ClockHandView) findViewById(R$id.material_clock_hand);
        z();
        x();
    }

    private void B(Chip chip, boolean z10) {
        chip.setChecked(z10);
        ViewCompat.setAccessibilityLiveRegion(chip, z10 ? 2 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m(MaterialButtonToggleGroup materialButtonToggleGroup, int i11, boolean z10) {
        e eVar;
        if (z10 && (eVar = this.f30107g) != null) {
            eVar.b(i11 == R$id.material_clock_period_pm_button ? 1 : 0);
        }
    }

    private void x() {
        this.f30101a.setTag(R$id.selection_type, 12);
        this.f30102b.setTag(R$id.selection_type, 10);
        this.f30101a.setOnClickListener(this.f30106f);
        this.f30102b.setOnClickListener(this.f30106f);
        this.f30101a.setAccessibilityClassName("android.view.View");
        this.f30102b.setAccessibilityClassName("android.view.View");
    }

    private void z() {
        c cVar = new c(new GestureDetector(getContext(), new b()));
        this.f30101a.setOnTouchListener(cVar);
        this.f30102b.setOnTouchListener(cVar);
    }

    public void A() {
        this.f30105e.setVisibility(0);
    }

    public void C(int i11, int i12, int i13) {
        this.f30105e.check(i11 == 1 ? R$id.material_clock_period_pm_button : R$id.material_clock_period_am_button);
        Locale locale = getResources().getConfiguration().locale;
        String str = String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i13));
        String str2 = String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(i12));
        if (!TextUtils.equals(this.f30101a.getText(), str)) {
            this.f30101a.setText(str);
        }
        if (TextUtils.equals(this.f30102b.getText(), str2)) {
            return;
        }
        this.f30102b.setText(str2);
    }

    public void k(ClockHandView.c cVar) {
        this.f30103c.b(cVar);
    }

    int l() {
        return this.f30104d.u();
    }

    public void n(int i11) {
        B(this.f30101a, i11 == 12);
        B(this.f30102b, i11 == 10);
    }

    public void o(boolean z10) {
        this.f30103c.n(z10);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i11) {
        super.onVisibilityChanged(view, i11);
        if (view == this && i11 == 0) {
            this.f30102b.sendAccessibilityEvent(8);
        }
    }

    void p(int i11) {
        this.f30104d.y(i11);
    }

    public void q(float f11, boolean z10) {
        this.f30103c.r(f11, z10);
    }

    public void r(AccessibilityDelegateCompat accessibilityDelegateCompat) {
        ViewCompat.setAccessibilityDelegate(this.f30101a, accessibilityDelegateCompat);
    }

    public void s(AccessibilityDelegateCompat accessibilityDelegateCompat) {
        ViewCompat.setAccessibilityDelegate(this.f30102b, accessibilityDelegateCompat);
    }

    public void t(ClockHandView.b bVar) {
        this.f30103c.u(bVar);
    }

    void u(d dVar) {
        this.f30109i = dVar;
    }

    void v(e eVar) {
        this.f30107g = eVar;
    }

    void w(f fVar) {
        this.f30108h = fVar;
    }

    public void y(String[] strArr, int i11) {
        this.f30104d.z(strArr, i11);
    }
}
