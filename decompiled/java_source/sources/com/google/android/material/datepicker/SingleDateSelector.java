package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.R$attr;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$string;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: loaded from: classes4.dex */
public class SingleDateSelector implements DateSelector<Long> {
    public static final Parcelable.Creator<SingleDateSelector> CREATOR = new b();

    @Nullable
    private CharSequence error;

    @Nullable
    private Long selectedItem;

    @Nullable
    private SimpleDateFormat textInputFormat;

    class a extends e {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final /* synthetic */ o f28855i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final /* synthetic */ TextInputLayout f28856j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints, o oVar, TextInputLayout textInputLayout2) {
            super(str, dateFormat, textInputLayout, calendarConstraints);
            this.f28855i = oVar;
            this.f28856j = textInputLayout2;
        }

        @Override // com.google.android.material.datepicker.e
        void f() {
            SingleDateSelector.this.error = this.f28856j.getError();
            this.f28855i.a();
        }

        @Override // com.google.android.material.datepicker.e
        void g(Long l11) {
            if (l11 == null) {
                SingleDateSelector.this.clearSelection();
            } else {
                SingleDateSelector.this.select(l11.longValue());
            }
            SingleDateSelector.this.error = null;
            this.f28855i.b(SingleDateSelector.this.getSelection());
        }
    }

    class b implements Parcelable.Creator {
        b() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public SingleDateSelector createFromParcel(Parcel parcel) {
            SingleDateSelector singleDateSelector = new SingleDateSelector();
            singleDateSelector.selectedItem = (Long) parcel.readValue(Long.class.getClassLoader());
            return singleDateSelector;
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public SingleDateSelector[] newArray(int i11) {
            return new SingleDateSelector[i11];
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSelection() {
        this.selectedItem = null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public int getDefaultThemeResId(Context context) {
        return xa.b.d(context, R$attr.materialCalendarTheme, MaterialDatePicker.class.getCanonicalName());
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public int getDefaultTitleResId() {
        return R$string.mtrl_picker_date_header_title;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @Nullable
    public String getError() {
        if (TextUtils.isEmpty(this.error)) {
            return null;
        }
        return this.error.toString();
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public Collection<Long> getSelectedDays() {
        ArrayList arrayList = new ArrayList();
        Long l11 = this.selectedItem;
        if (l11 != null) {
            arrayList.add(l11);
        }
        return arrayList;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public Collection<androidx.core.util.e> getSelectedRanges() {
        return new ArrayList();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.material.datepicker.DateSelector
    @Nullable
    public Long getSelection() {
        return this.selectedItem;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public String getSelectionContentDescription(@NonNull Context context) {
        Resources resources = context.getResources();
        Long l11 = this.selectedItem;
        return resources.getString(R$string.mtrl_picker_announce_current_selection, l11 == null ? resources.getString(R$string.mtrl_picker_announce_current_selection_none) : j.m(l11.longValue()));
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public String getSelectionDisplayString(@NonNull Context context) {
        Resources resources = context.getResources();
        Long l11 = this.selectedItem;
        if (l11 == null) {
            return resources.getString(R$string.mtrl_picker_date_header_unselected);
        }
        return resources.getString(R$string.mtrl_picker_date_header_selected, j.m(l11.longValue()));
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public boolean isSelectionComplete() {
        return this.selectedItem != null;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public View onCreateTextInputView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle, CalendarConstraints calendarConstraints, @NonNull o oVar) {
        View viewInflate = layoutInflater.inflate(R$layout.mtrl_picker_text_input_date, viewGroup, false);
        TextInputLayout textInputLayout = (TextInputLayout) viewInflate.findViewById(R$id.mtrl_picker_text_input_date);
        EditText editText = textInputLayout.getEditText();
        if (com.google.android.material.internal.k.b()) {
            editText.setInputType(17);
        }
        SimpleDateFormat simpleDateFormatG = this.textInputFormat;
        boolean z10 = simpleDateFormatG != null;
        if (!z10) {
            simpleDateFormatG = x.g();
        }
        SimpleDateFormat simpleDateFormat = simpleDateFormatG;
        String pattern = z10 ? simpleDateFormat.toPattern() : x.h(viewInflate.getResources(), simpleDateFormat);
        textInputLayout.setPlaceholderText(pattern);
        Long l11 = this.selectedItem;
        if (l11 != null) {
            editText.setText(simpleDateFormat.format(l11));
        }
        editText.addTextChangedListener(new a(pattern, simpleDateFormat, textInputLayout, calendarConstraints, oVar, textInputLayout));
        h.c(editText);
        return viewInflate;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public void select(long j11) {
        this.selectedItem = Long.valueOf(j11);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public void setSelection(@Nullable Long l11) {
        this.selectedItem = l11 == null ? null : Long.valueOf(x.a(l11.longValue()));
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public void setTextInputFormat(@Nullable SimpleDateFormat simpleDateFormat) {
        if (simpleDateFormat != null) {
            simpleDateFormat = (SimpleDateFormat) x.n(simpleDateFormat);
        }
        this.textInputFormat = simpleDateFormat;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i11) {
        parcel.writeValue(this.selectedItem);
    }
}
