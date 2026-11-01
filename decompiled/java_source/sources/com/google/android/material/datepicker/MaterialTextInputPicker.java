package com.google.android.material.datepicker;

import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class MaterialTextInputPicker<S> extends p {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f28838b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private DateSelector f28839c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private CalendarConstraints f28840d;

    class a extends o {
        a() {
        }

        @Override // com.google.android.material.datepicker.o
        public void a() {
            Iterator it = MaterialTextInputPicker.this.f28908a.iterator();
            while (it.hasNext()) {
                ((o) it.next()).a();
            }
        }

        @Override // com.google.android.material.datepicker.o
        public void b(Object obj) {
            Iterator it = MaterialTextInputPicker.this.f28908a.iterator();
            while (it.hasNext()) {
                ((o) it.next()).b(obj);
            }
        }
    }

    static MaterialTextInputPicker X(DateSelector dateSelector, int i11, CalendarConstraints calendarConstraints) {
        MaterialTextInputPicker materialTextInputPicker = new MaterialTextInputPicker();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i11);
        bundle.putParcelable("DATE_SELECTOR_KEY", dateSelector);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", calendarConstraints);
        materialTextInputPicker.setArguments(bundle);
        return materialTextInputPicker;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f28838b = bundle.getInt("THEME_RES_ID_KEY");
        this.f28839c = (DateSelector) bundle.getParcelable("DATE_SELECTOR_KEY");
        this.f28840d = (CalendarConstraints) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return this.f28839c.onCreateTextInputView(layoutInflater.cloneInContext(new ContextThemeWrapper(getContext(), this.f28838b)), viewGroup, bundle, this.f28840d, new a());
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("THEME_RES_ID_KEY", this.f28838b);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.f28839c);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.f28840d);
    }
}
