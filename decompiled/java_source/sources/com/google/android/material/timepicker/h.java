package com.google.android.material.timepicker;

import android.content.Context;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.google.android.material.R$string;

/* JADX INFO: loaded from: classes4.dex */
class h implements ClockHandView.c, TimePickerView.f, TimePickerView.e, ClockHandView.b, i {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String[] f30122f = {"12", "1", "2", "3", "4", "5", PrepareException.ERROR_NO_URL, "7", PrepareException.ERROR_MANIFEST_INFO, PrepareException.ERROR_MINI_APP_CLOSE, "10", PrepareException.ERROR_DOWNLOAD_PACKAGE_URL_EMPTY};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String[] f30123g = {"00", "1", "2", "3", "4", "5", PrepareException.ERROR_NO_URL, "7", PrepareException.ERROR_MANIFEST_INFO, PrepareException.ERROR_MINI_APP_CLOSE, "10", PrepareException.ERROR_DOWNLOAD_PACKAGE_URL_EMPTY, "12", PrepareException.ERROR_WARMUP_DOWNLOAD_EXCEPTION, "14", PrepareException.ERROR_FILE2VURL_MINIAPP_FILE_EXCEPTION, "16", "17", "18", "19", "20", ChainPoint.ROUTE_PAGE, "22", "23"};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String[] f30124h = {"00", "5", "10", PrepareException.ERROR_FILE2VURL_MINIAPP_FILE_EXCEPTION, "20", "25", "30", "35", "40", "45", "50", "55"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TimePickerView f30125a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TimeModel f30126b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f30127c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f30128d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f30129e = false;

    class a extends com.google.android.material.timepicker.b {
        a(Context context, int i11) {
            super(context, i11);
        }

        @Override // com.google.android.material.timepicker.b, androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(view.getResources().getString(h.this.f30126b.c(), String.valueOf(h.this.f30126b.d())));
        }
    }

    class b extends com.google.android.material.timepicker.b {
        b(Context context, int i11) {
            super(context, i11);
        }

        @Override // com.google.android.material.timepicker.b, androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(view.getResources().getString(R$string.material_minute_suffix, String.valueOf(h.this.f30126b.f30098c)));
        }
    }

    public h(TimePickerView timePickerView, TimeModel timeModel) {
        this.f30125a = timePickerView;
        this.f30126b = timeModel;
        h();
    }

    private String[] f() {
        return this.f30126b.f30096a == 1 ? f30123g : f30122f;
    }

    private int g() {
        return (this.f30126b.d() * 30) % 360;
    }

    private void i(int i11, int i12) {
        TimeModel timeModel = this.f30126b;
        if (timeModel.f30098c == i12 && timeModel.f30097b == i11) {
            return;
        }
        this.f30125a.performHapticFeedback(4);
    }

    private void k() {
        TimeModel timeModel = this.f30126b;
        int i11 = 1;
        if (timeModel.f30099d == 10 && timeModel.f30096a == 1 && timeModel.f30097b >= 12) {
            i11 = 2;
        }
        this.f30125a.p(i11);
    }

    private void l() {
        TimePickerView timePickerView = this.f30125a;
        TimeModel timeModel = this.f30126b;
        timePickerView.C(timeModel.f30100e, timeModel.d(), this.f30126b.f30098c);
    }

    private void m() {
        n(f30122f, TimeModel.NUMBER_FORMAT);
        n(f30124h, TimeModel.ZERO_LEADING_NUMBER_FORMAT);
    }

    private void n(String[] strArr, String str) {
        for (int i11 = 0; i11 < strArr.length; i11++) {
            strArr[i11] = TimeModel.b(this.f30125a.getResources(), strArr[i11], str);
        }
    }

    @Override // com.google.android.material.timepicker.ClockHandView.b
    public void a(float f11, boolean z10) {
        this.f30129e = true;
        TimeModel timeModel = this.f30126b;
        int i11 = timeModel.f30098c;
        int i12 = timeModel.f30097b;
        if (timeModel.f30099d == 10) {
            this.f30125a.q(this.f30128d, false);
            AccessibilityManager accessibilityManager = (AccessibilityManager) androidx.core.content.b.getSystemService(this.f30125a.getContext(), AccessibilityManager.class);
            if (accessibilityManager == null || !accessibilityManager.isTouchExplorationEnabled()) {
                j(12, true);
            }
        } else {
            int iRound = Math.round(f11);
            if (!z10) {
                this.f30126b.i(((iRound + 15) / 30) * 5);
                this.f30127c = this.f30126b.f30098c * 6;
            }
            this.f30125a.q(this.f30127c, z10);
        }
        this.f30129e = false;
        l();
        i(i12, i11);
    }

    @Override // com.google.android.material.timepicker.TimePickerView.e
    public void b(int i11) {
        this.f30126b.j(i11);
    }

    @Override // com.google.android.material.timepicker.TimePickerView.f
    public void c(int i11) {
        j(i11, true);
    }

    @Override // com.google.android.material.timepicker.ClockHandView.c
    public void d(float f11, boolean z10) {
        if (this.f30129e) {
            return;
        }
        TimeModel timeModel = this.f30126b;
        int i11 = timeModel.f30097b;
        int i12 = timeModel.f30098c;
        int iRound = Math.round(f11);
        TimeModel timeModel2 = this.f30126b;
        if (timeModel2.f30099d == 12) {
            timeModel2.i((iRound + 3) / 6);
            this.f30127c = (float) Math.floor(this.f30126b.f30098c * 6);
        } else {
            int i13 = (iRound + 15) / 30;
            if (timeModel2.f30096a == 1) {
                i13 %= 12;
                if (this.f30125a.l() == 2) {
                    i13 += 12;
                }
            }
            this.f30126b.h(i13);
            this.f30128d = g();
        }
        if (z10) {
            return;
        }
        l();
        i(i11, i12);
    }

    public void h() {
        if (this.f30126b.f30096a == 0) {
            this.f30125a.A();
        }
        this.f30125a.k(this);
        this.f30125a.w(this);
        this.f30125a.v(this);
        this.f30125a.t(this);
        m();
        invalidate();
    }

    @Override // com.google.android.material.timepicker.i
    public void hide() {
        this.f30125a.setVisibility(8);
    }

    @Override // com.google.android.material.timepicker.i
    public void invalidate() {
        this.f30128d = g();
        TimeModel timeModel = this.f30126b;
        this.f30127c = timeModel.f30098c * 6;
        j(timeModel.f30099d, false);
        l();
    }

    void j(int i11, boolean z10) {
        boolean z11 = i11 == 12;
        this.f30125a.o(z11);
        this.f30126b.f30099d = i11;
        this.f30125a.y(z11 ? f30124h : f(), z11 ? R$string.material_minute_suffix : this.f30126b.c());
        k();
        this.f30125a.q(z11 ? this.f30127c : this.f30128d, z10);
        this.f30125a.n(i11);
        this.f30125a.s(new a(this.f30125a.getContext(), R$string.material_hour_selection));
        this.f30125a.r(new b(this.f30125a.getContext(), R$string.material_minute_selection));
    }

    @Override // com.google.android.material.timepicker.i
    public void show() {
        this.f30125a.setVisibility(0);
    }
}
