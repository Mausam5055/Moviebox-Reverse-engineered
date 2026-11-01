package androidx.appcompat.app;

import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R$attr;
import androidx.core.view.KeyEventDispatcher;
import androidx.p009lifecycle.ViewTreeLifecycleOwner;
import androidx.p010savedstate.ViewTreeSavedStateRegistryOwner;

/* JADX INFO: loaded from: classes.dex */
public class w extends androidx.activity.q implements d {
    private f mDelegate;
    private final KeyEventDispatcher.Component mKeyDispatcher;

    public w(Context context, int i11) {
        super(context, d(context, i11));
        this.mKeyDispatcher = new KeyEventDispatcher.Component() { // from class: androidx.appcompat.app.v
            @Override // androidx.core.view.KeyEventDispatcher.Component
            public final boolean superDispatchKeyEvent(KeyEvent keyEvent) {
                return this.f1177a.superDispatchKeyEvent(keyEvent);
            }
        };
        f delegate = getDelegate();
        delegate.R(d(context, i11));
        delegate.B(null);
    }

    private static int d(Context context, int i11) {
        if (i11 != 0) {
            return i11;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R$attr.dialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    private void e() {
        ViewTreeLifecycleOwner.b(getWindow().getDecorView(), this);
        ViewTreeSavedStateRegistryOwner.b(getWindow().getDecorView(), this);
        androidx.activity.z.a(getWindow().getDecorView(), this);
    }

    @Override // androidx.activity.q, android.app.Dialog
    public void addContentView(@NonNull View view, ViewGroup.LayoutParams layoutParams) {
        getDelegate().e(view, layoutParams);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        getDelegate().C();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return KeyEventDispatcher.dispatchKeyEvent(this.mKeyDispatcher, getWindow().getDecorView(), this, keyEvent);
    }

    @Override // android.app.Dialog
    @Nullable
    public <T extends View> T findViewById(int i11) {
        return (T) getDelegate().m(i11);
    }

    @NonNull
    public f getDelegate() {
        if (this.mDelegate == null) {
            this.mDelegate = f.k(this, this);
        }
        return this.mDelegate;
    }

    public a getSupportActionBar() {
        return getDelegate().v();
    }

    @Override // android.app.Dialog
    public void invalidateOptionsMenu() {
        getDelegate().x();
    }

    @Override // androidx.activity.q, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        getDelegate().w();
        super.onCreate(bundle);
        getDelegate().B(bundle);
    }

    @Override // androidx.activity.q, android.app.Dialog
    protected void onStop() {
        super.onStop();
        getDelegate().H();
    }

    @Override // androidx.appcompat.app.d
    public void onSupportActionModeFinished(androidx.appcompat.view.b bVar) {
    }

    @Override // androidx.appcompat.app.d
    public void onSupportActionModeStarted(androidx.appcompat.view.b bVar) {
    }

    @Override // androidx.appcompat.app.d
    @Nullable
    public androidx.appcompat.view.b onWindowStartingSupportActionMode(androidx.appcompat.view.b.a aVar) {
        return null;
    }

    @Override // androidx.activity.q, android.app.Dialog
    public void setContentView(int i11) {
        e();
        getDelegate().L(i11);
    }

    @Override // androidx.activity.q, android.app.Dialog
    public void setContentView(@NonNull View view) {
        e();
        getDelegate().M(view);
    }

    @Override // androidx.activity.q, android.app.Dialog
    public void setContentView(@NonNull View view, ViewGroup.LayoutParams layoutParams) {
        e();
        getDelegate().N(view, layoutParams);
    }

    @Override // android.app.Dialog
    public void setTitle(int i11) {
        super.setTitle(i11);
        getDelegate().S(getContext().getString(i11));
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        getDelegate().S(charSequence);
    }

    boolean superDispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    public boolean supportRequestWindowFeature(int i11) {
        return getDelegate().K(i11);
    }
}
