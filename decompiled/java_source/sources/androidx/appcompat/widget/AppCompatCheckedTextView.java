package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R$attr;
import androidx.core.view.TintableBackgroundView;

/* JADX INFO: loaded from: classes.dex */
public class AppCompatCheckedTextView extends CheckedTextView implements TintableBackgroundView, androidx.core.widget.p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f1682a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f1683b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AppCompatTextHelper f1684c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private h f1685d;

    public AppCompatCheckedTextView(@NonNull Context context) {
        this(context, null);
    }

    public AppCompatCheckedTextView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.checkedTextViewStyle);
    }

    public AppCompatCheckedTextView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i11) {
        super(g0.b(context), attributeSet, i11);
        f0.a(this, getContext());
        AppCompatTextHelper appCompatTextHelper = new AppCompatTextHelper(this);
        this.f1684c = appCompatTextHelper;
        appCompatTextHelper.m(attributeSet, i11);
        appCompatTextHelper.b();
        c cVar = new c(this);
        this.f1683b = cVar;
        cVar.e(attributeSet, i11);
        d dVar = new d(this);
        this.f1682a = dVar;
        dVar.d(attributeSet, i11);
        getEmojiTextViewHelper().c(attributeSet, i11);
    }

    @NonNull
    private h getEmojiTextViewHelper() {
        if (this.f1685d == null) {
            this.f1685d = new h(this);
        }
        return this.f1685d;
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        AppCompatTextHelper appCompatTextHelper = this.f1684c;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.b();
        }
        c cVar = this.f1683b;
        if (cVar != null) {
            cVar.b();
        }
        d dVar = this.f1682a;
        if (dVar != null) {
            dVar.a();
        }
    }

    @Override // android.widget.TextView
    @Nullable
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return androidx.core.widget.m.s(super.getCustomSelectionActionModeCallback());
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    public ColorStateList getSupportBackgroundTintList() {
        c cVar = this.f1683b;
        if (cVar != null) {
            return cVar.c();
        }
        return null;
    }

    @Override // androidx.core.view.TintableBackgroundView
    @Nullable
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        c cVar = this.f1683b;
        if (cVar != null) {
            return cVar.d();
        }
        return null;
    }

    @Nullable
    public ColorStateList getSupportCheckMarkTintList() {
        d dVar = this.f1682a;
        if (dVar != null) {
            return dVar.b();
        }
        return null;
    }

    @Nullable
    public PorterDuff.Mode getSupportCheckMarkTintMode() {
        d dVar = this.f1682a;
        if (dVar != null) {
            return dVar.c();
        }
        return null;
    }

    @Nullable
    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f1684c.j();
    }

    @Nullable
    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f1684c.k();
    }

    public boolean isEmojiCompatEnabled() {
        return getEmojiTextViewHelper().b();
    }

    @Override // android.widget.TextView, android.view.View
    @Nullable
    public InputConnection onCreateInputConnection(@NonNull EditorInfo editorInfo) {
        return i.a(super.onCreateInputConnection(editorInfo), editorInfo, this);
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z10) {
        super.setAllCaps(z10);
        getEmojiTextViewHelper().d(z10);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(@Nullable Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        c cVar = this.f1683b;
        if (cVar != null) {
            cVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i11) {
        super.setBackgroundResource(i11);
        c cVar = this.f1683b;
        if (cVar != null) {
            cVar.g(i11);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i11) {
        setCheckMarkDrawable(g.a.b(getContext(), i11));
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(@Nullable Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
        d dVar = this.f1682a;
        if (dVar != null) {
            dVar.e();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        AppCompatTextHelper appCompatTextHelper = this.f1684c;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.p();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(@Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        AppCompatTextHelper appCompatTextHelper = this.f1684c;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.p();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(@Nullable ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.m.t(this, callback));
    }

    public void setEmojiCompatEnabled(boolean z10) {
        getEmojiTextViewHelper().e(z10);
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        c cVar = this.f1683b;
        if (cVar != null) {
            cVar.i(colorStateList);
        }
    }

    @Override // androidx.core.view.TintableBackgroundView
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        c cVar = this.f1683b;
        if (cVar != null) {
            cVar.j(mode);
        }
    }

    public void setSupportCheckMarkTintList(@Nullable ColorStateList colorStateList) {
        d dVar = this.f1682a;
        if (dVar != null) {
            dVar.f(colorStateList);
        }
    }

    public void setSupportCheckMarkTintMode(@Nullable PorterDuff.Mode mode) {
        d dVar = this.f1682a;
        if (dVar != null) {
            dVar.g(mode);
        }
    }

    @Override // androidx.core.widget.p
    public void setSupportCompoundDrawablesTintList(@Nullable ColorStateList colorStateList) {
        this.f1684c.w(colorStateList);
        this.f1684c.b();
    }

    @Override // androidx.core.widget.p
    public void setSupportCompoundDrawablesTintMode(@Nullable PorterDuff.Mode mode) {
        this.f1684c.x(mode);
        this.f1684c.b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(@NonNull Context context, int i11) {
        super.setTextAppearance(context, i11);
        AppCompatTextHelper appCompatTextHelper = this.f1684c;
        if (appCompatTextHelper != null) {
            appCompatTextHelper.q(context, i11);
        }
    }
}
