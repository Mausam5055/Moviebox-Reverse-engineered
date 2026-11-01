package com.google.android.material.datepicker;

import android.content.Context;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import com.google.android.material.R$string;
import com.google.android.material.internal.a0;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
abstract class e extends a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final TextInputLayout f28876a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f28877b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final DateFormat f28878c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final CalendarConstraints f28879d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f28880e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Runnable f28881f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Runnable f28882g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f28883h = 0;

    e(final String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints) {
        this.f28877b = str;
        this.f28878c = dateFormat;
        this.f28876a = textInputLayout;
        this.f28879d = calendarConstraints;
        this.f28880e = textInputLayout.getContext().getString(R$string.mtrl_picker_out_of_range);
        this.f28881f = new Runnable() { // from class: com.google.android.material.datepicker.c
            @Override // java.lang.Runnable
            public final void run() {
                this.f28872a.e(str);
            }
        };
    }

    private Runnable c(final long j11) {
        return new Runnable() { // from class: com.google.android.material.datepicker.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f28874a.d(j11);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(long j11) {
        this.f28876a.setError(String.format(this.f28880e, i(j.c(j11))));
        f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(String str) {
        TextInputLayout textInputLayout = this.f28876a;
        DateFormat dateFormat = this.f28878c;
        Context context = textInputLayout.getContext();
        textInputLayout.setError(context.getString(R$string.mtrl_picker_invalid_format) + "\n" + String.format(context.getString(R$string.mtrl_picker_invalid_format_use), i(str)) + "\n" + String.format(context.getString(R$string.mtrl_picker_invalid_format_example), i(dateFormat.format(new Date(x.q().getTimeInMillis())))));
        f();
    }

    private String i(String str) {
        return str.replace(' ', (char) 160);
    }

    @Override // com.google.android.material.internal.a0, android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        if (!Locale.getDefault().getLanguage().equals(Locale.KOREAN.getLanguage()) && editable.length() != 0 && editable.length() < this.f28877b.length() && editable.length() >= this.f28883h) {
            char cCharAt = this.f28877b.charAt(editable.length());
            if (Character.isLetterOrDigit(cCharAt)) {
                return;
            }
            editable.append(cCharAt);
        }
    }

    @Override // com.google.android.material.internal.a0, android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        this.f28883h = charSequence.length();
    }

    abstract void f();

    abstract void g(Long l11);

    public void h(View view, Runnable runnable) {
        view.post(runnable);
    }

    @Override // com.google.android.material.internal.a0, android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        this.f28876a.removeCallbacks(this.f28881f);
        this.f28876a.removeCallbacks(this.f28882g);
        this.f28876a.setError(null);
        g(null);
        if (TextUtils.isEmpty(charSequence) || charSequence.length() < this.f28877b.length()) {
            return;
        }
        try {
            Date date = this.f28878c.parse(charSequence.toString());
            this.f28876a.setError(null);
            long time = date.getTime();
            if (this.f28879d.getDateValidator().isValid(time) && this.f28879d.isWithinBounds(time)) {
                g(Long.valueOf(date.getTime()));
                return;
            }
            Runnable runnableC = c(time);
            this.f28882g = runnableC;
            h(this.f28876a, runnableC);
        } catch (ParseException unused) {
            h(this.f28876a, this.f28881f);
        }
    }
}
