package com.transsion.baseui.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.appcompat.widget.AppCompatEditText;
import com.transsion.baseui.R$mipmap;
import com.transsion.baseui.R$styleable;

/* JADX INFO: loaded from: classes5.dex */
public class EditTextWithClear extends AppCompatEditText implements View.OnFocusChangeListener, TextWatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Drawable f43546a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f43547b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f43548c;

    public interface a {
    }

    public EditTextWithClear(Context context) {
        this(context, null);
    }

    public EditTextWithClear(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.editTextStyle);
    }

    public EditTextWithClear(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        this.f43547b = true;
        this.f43548c = false;
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.EditTextWithClear);
        this.f43546a = typedArrayObtainStyledAttributes.getDrawable(R$styleable.EditTextWithClear_et_clear_ic);
        this.f43548c = typedArrayObtainStyledAttributes.getBoolean(R$styleable.EditTextWithClear_et_close_withoutfocus, false);
        if (this.f43546a == null) {
            this.f43546a = androidx.core.content.b.getDrawable(context, R$mipmap.ic_input_close);
        }
        Drawable drawable = this.f43546a;
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), this.f43546a.getIntrinsicHeight());
        setClearIconVisible(false);
        setOnFocusChangeListener(this);
        addTextChangedListener(this);
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
    }

    public void hideClear() {
        setClearIconVisible(false);
        this.f43547b = false;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // androidx.appcompat.widget.AppCompatEditText, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z10) {
        if (z10) {
            setClearIconVisible(getText().length() > 0);
        } else {
            setClearIconVisible(false);
        }
    }

    @Override // android.widget.TextView, android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i11, int i12, int i13) {
        setClearIconVisible(charSequence.length() > 0 && (hasFocus() || this.f43548c));
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (getCompoundDrawables()[2] != null && motionEvent.getAction() == 1) {
            double width = ((double) (getWidth() - getPaddingRight())) - (((double) this.f43546a.getIntrinsicWidth()) * 1.5d);
            double width2 = ((double) (getWidth() - getPaddingRight())) + (((double) this.f43546a.getIntrinsicWidth()) * 0.5d);
            if (motionEvent.getX() > width && motionEvent.getX() < width2) {
                setText("");
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setActionListener(a aVar) {
    }

    protected void setClearIconVisible(boolean z10) {
        setCompoundDrawables(getCompoundDrawables()[0], getCompoundDrawables()[1], (z10 && this.f43547b) ? this.f43546a : null, getCompoundDrawables()[3]);
    }

    public void showClear() {
        this.f43547b = true;
        setClearIconVisible(false);
    }
}
