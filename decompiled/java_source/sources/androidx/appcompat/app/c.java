package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.R$attr;

/* JADX INFO: loaded from: classes.dex */
public class c extends w implements DialogInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final AlertController f1117a;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AlertController.b f1118a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f1119b;

        public a(Context context) {
            this(context, c.g(context, 0));
        }

        public a(@NonNull Context context, int i11) {
            this.f1118a = new AlertController.b(new ContextThemeWrapper(context, c.g(context, i11)));
            this.f1119b = i11;
        }

        public a a(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.f1118a;
            bVar.f996w = listAdapter;
            bVar.f997x = onClickListener;
            return this;
        }

        public a b(View view) {
            this.f1118a.f980g = view;
            return this;
        }

        public a c(Drawable drawable) {
            this.f1118a.f977d = drawable;
            return this;
        }

        @NonNull
        public c create() {
            c cVar = new c(this.f1118a.f974a, this.f1119b);
            this.f1118a.a(cVar.f1117a);
            cVar.setCancelable(this.f1118a.f991r);
            if (this.f1118a.f991r) {
                cVar.setCanceledOnTouchOutside(true);
            }
            cVar.setOnCancelListener(this.f1118a.f992s);
            cVar.setOnDismissListener(this.f1118a.f993t);
            DialogInterface.OnKeyListener onKeyListener = this.f1118a.f994u;
            if (onKeyListener != null) {
                cVar.setOnKeyListener(onKeyListener);
            }
            return cVar;
        }

        public a d(CharSequence charSequence) {
            this.f1118a.f981h = charSequence;
            return this;
        }

        public a e(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.f1118a;
            bVar.f985l = charSequence;
            bVar.f987n = onClickListener;
            return this;
        }

        public a f(DialogInterface.OnKeyListener onKeyListener) {
            this.f1118a.f994u = onKeyListener;
            return this;
        }

        public a g(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.f1118a;
            bVar.f982i = charSequence;
            bVar.f984k = onClickListener;
            return this;
        }

        @NonNull
        public Context getContext() {
            return this.f1118a.f974a;
        }

        public a h(ListAdapter listAdapter, int i11, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.f1118a;
            bVar.f996w = listAdapter;
            bVar.f997x = onClickListener;
            bVar.I = i11;
            bVar.H = true;
            return this;
        }

        public a setNegativeButton(int i11, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.f1118a;
            bVar.f985l = bVar.f974a.getText(i11);
            this.f1118a.f987n = onClickListener;
            return this;
        }

        public a setPositiveButton(int i11, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.f1118a;
            bVar.f982i = bVar.f974a.getText(i11);
            this.f1118a.f984k = onClickListener;
            return this;
        }

        public a setTitle(@Nullable CharSequence charSequence) {
            this.f1118a.f979f = charSequence;
            return this;
        }

        public a setView(View view) {
            AlertController.b bVar = this.f1118a;
            bVar.f999z = view;
            bVar.f998y = 0;
            bVar.E = false;
            return this;
        }
    }

    protected c(Context context, int i11) {
        super(context, g(context, i11));
        this.f1117a = new AlertController(getContext(), this, getWindow());
    }

    static int g(Context context, int i11) {
        if (((i11 >>> 24) & 255) >= 1) {
            return i11;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R$attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    public ListView f() {
        return this.f1117a.d();
    }

    @Override // androidx.appcompat.app.w, androidx.activity.q, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f1117a.e();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i11, KeyEvent keyEvent) {
        if (this.f1117a.g(i11, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i11, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i11, KeyEvent keyEvent) {
        if (this.f1117a.h(i11, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i11, keyEvent);
    }

    @Override // androidx.appcompat.app.w, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.f1117a.q(charSequence);
    }
}
