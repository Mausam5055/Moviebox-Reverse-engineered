package com.google.android.material.textfield;

import android.content.Context;
import android.text.Editable;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.EditText;
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.internal.CheckableImageButton;

/* JADX INFO: loaded from: classes4.dex */
abstract class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final TextInputLayout f29976a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final r f29977b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Context f29978c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final CheckableImageButton f29979d;

    s(r rVar) {
        this.f29976a = rVar.f29946a;
        this.f29977b = rVar;
        this.f29978c = rVar.getContext();
        this.f29979d = rVar.t();
    }

    void a(Editable editable) {
    }

    void b(CharSequence charSequence, int i11, int i12, int i13) {
    }

    int c() {
        return 0;
    }

    int d() {
        return 0;
    }

    View.OnFocusChangeListener e() {
        return null;
    }

    View.OnClickListener f() {
        return null;
    }

    View.OnFocusChangeListener g() {
        return null;
    }

    AccessibilityManagerCompat.TouchExplorationStateChangeListener h() {
        return null;
    }

    boolean i(int i11) {
        return true;
    }

    boolean j() {
        return false;
    }

    boolean k() {
        return false;
    }

    boolean l() {
        return false;
    }

    boolean m() {
        return false;
    }

    void n(EditText editText) {
    }

    void o(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
    }

    void p(View view, AccessibilityEvent accessibilityEvent) {
    }

    void q(boolean z10) {
    }

    final void r() {
        this.f29977b.P(false);
    }

    void s() {
    }

    boolean t() {
        return false;
    }

    void u() {
    }
}
