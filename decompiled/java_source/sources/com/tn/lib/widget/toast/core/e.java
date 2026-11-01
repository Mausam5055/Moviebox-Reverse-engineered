package com.tn.lib.widget.toast.core;

import android.R;
import android.app.Application;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

/* JADX INFO: loaded from: classes4.dex */
public class e extends Toast implements vh.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f41471a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f41472b;

    public e(Application application) {
        super(application);
    }

    @Override // vh.a
    public boolean a() {
        return false;
    }

    @Override // vh.a
    public void b(View view) {
        setView(view);
    }

    @Override // vh.a
    public View c() {
        return this.f41471a;
    }

    public TextView d(View view) {
        if (!(view instanceof TextView)) {
            if (view.findViewById(R.id.message) instanceof TextView) {
                return (TextView) view.findViewById(R.id.message);
            }
            throw new IllegalArgumentException("You must include a TextView with an ID value of android.R.id.message");
        }
        if (view.getId() == -1) {
            view.setId(R.id.message);
        } else if (view.getId() != 16908299) {
            throw new IllegalArgumentException("You must set the ID value of TextView to android.R.id.message");
        }
        return (TextView) view;
    }

    @Override // android.widget.Toast, vh.a
    public void setText(CharSequence charSequence) {
        try {
            super.setText(charSequence);
        } catch (Exception unused) {
        }
        TextView textView = this.f41472b;
        if (textView == null) {
            return;
        }
        textView.setText(charSequence);
    }

    @Override // android.widget.Toast
    public void setView(View view) {
        try {
            super.setView(view);
        } catch (Exception unused) {
        }
        if (view == null) {
            this.f41472b = null;
        } else {
            this.f41471a = view;
            this.f41472b = d(view);
        }
    }
}
