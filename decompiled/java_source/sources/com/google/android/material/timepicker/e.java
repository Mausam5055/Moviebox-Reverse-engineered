package com.google.android.material.timepicker;

import android.text.InputFilter;
import android.text.Spanned;

/* JADX INFO: loaded from: classes4.dex */
class e implements InputFilter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f30117a;

    public e(int i11) {
        this.f30117a = i11;
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i11, int i12, Spanned spanned, int i13, int i14) {
        try {
            StringBuilder sb2 = new StringBuilder(spanned);
            sb2.replace(i13, i14, charSequence.subSequence(i11, i12).toString());
            if (Integer.parseInt(sb2.toString()) <= this.f30117a) {
                return null;
            }
            return "";
        } catch (NumberFormatException unused) {
            return "";
        }
    }
}
