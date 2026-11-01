package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$id;
import com.google.android.material.R$layout;
import com.google.android.material.R$string;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: loaded from: classes4.dex */
public class RangeDateSelector implements DateSelector<androidx.core.util.e> {
    public static final Parcelable.Creator<RangeDateSelector> CREATOR = new c();

    @Nullable
    private CharSequence error;
    private String invalidRangeStartError;

    @Nullable
    private SimpleDateFormat textInputFormat;
    private final String invalidRangeEndError = " ";

    @Nullable
    private Long selectedStartItem = null;

    @Nullable
    private Long selectedEndItem = null;

    @Nullable
    private Long proposedTextStart = null;

    @Nullable
    private Long proposedTextEnd = null;

    class a extends e {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final /* synthetic */ TextInputLayout f28847i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final /* synthetic */ TextInputLayout f28848j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        final /* synthetic */ o f28849k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints, TextInputLayout textInputLayout2, TextInputLayout textInputLayout3, o oVar) {
            super(str, dateFormat, textInputLayout, calendarConstraints);
            this.f28847i = textInputLayout2;
            this.f28848j = textInputLayout3;
            this.f28849k = oVar;
        }

        @Override // com.google.android.material.datepicker.e
        void f() {
            RangeDateSelector.this.proposedTextStart = null;
            RangeDateSelector.this.updateIfValidTextProposal(this.f28847i, this.f28848j, this.f28849k);
        }

        @Override // com.google.android.material.datepicker.e
        void g(Long l11) {
            RangeDateSelector.this.proposedTextStart = l11;
            RangeDateSelector.this.updateIfValidTextProposal(this.f28847i, this.f28848j, this.f28849k);
        }
    }

    class b extends e {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final /* synthetic */ TextInputLayout f28851i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final /* synthetic */ TextInputLayout f28852j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        final /* synthetic */ o f28853k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints, TextInputLayout textInputLayout2, TextInputLayout textInputLayout3, o oVar) {
            super(str, dateFormat, textInputLayout, calendarConstraints);
            this.f28851i = textInputLayout2;
            this.f28852j = textInputLayout3;
            this.f28853k = oVar;
        }

        @Override // com.google.android.material.datepicker.e
        void f() {
            RangeDateSelector.this.proposedTextEnd = null;
            RangeDateSelector.this.updateIfValidTextProposal(this.f28851i, this.f28852j, this.f28853k);
        }

        @Override // com.google.android.material.datepicker.e
        void g(Long l11) {
            RangeDateSelector.this.proposedTextEnd = l11;
            RangeDateSelector.this.updateIfValidTextProposal(this.f28851i, this.f28852j, this.f28853k);
        }
    }

    class c implements Parcelable.Creator {
        c() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public RangeDateSelector createFromParcel(Parcel parcel) {
            RangeDateSelector rangeDateSelector = new RangeDateSelector();
            rangeDateSelector.selectedStartItem = (Long) parcel.readValue(Long.class.getClassLoader());
            rangeDateSelector.selectedEndItem = (Long) parcel.readValue(Long.class.getClassLoader());
            return rangeDateSelector;
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public RangeDateSelector[] newArray(int i11) {
            return new RangeDateSelector[i11];
        }
    }

    private void clearInvalidRange(@NonNull TextInputLayout textInputLayout, @NonNull TextInputLayout textInputLayout2) {
        if (textInputLayout.getError() != null && this.invalidRangeStartError.contentEquals(textInputLayout.getError())) {
            textInputLayout.setError(null);
        }
        if (textInputLayout2.getError() == null || !" ".contentEquals(textInputLayout2.getError())) {
            return;
        }
        textInputLayout2.setError(null);
    }

    private boolean isValidRange(long j11, long j12) {
        return j11 <= j12;
    }

    private void setInvalidRange(@NonNull TextInputLayout textInputLayout, @NonNull TextInputLayout textInputLayout2) {
        textInputLayout.setError(this.invalidRangeStartError);
        textInputLayout2.setError(" ");
    }

    private void updateError(@NonNull TextInputLayout textInputLayout, @NonNull TextInputLayout textInputLayout2) {
        if (!TextUtils.isEmpty(textInputLayout.getError())) {
            this.error = textInputLayout.getError();
        } else if (TextUtils.isEmpty(textInputLayout2.getError())) {
            this.error = null;
        } else {
            this.error = textInputLayout2.getError();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateIfValidTextProposal(@NonNull TextInputLayout textInputLayout, @NonNull TextInputLayout textInputLayout2, @NonNull o oVar) {
        Long l11 = this.proposedTextStart;
        if (l11 == null || this.proposedTextEnd == null) {
            clearInvalidRange(textInputLayout, textInputLayout2);
            oVar.a();
        } else if (isValidRange(l11.longValue(), this.proposedTextEnd.longValue())) {
            this.selectedStartItem = this.proposedTextStart;
            this.selectedEndItem = this.proposedTextEnd;
            oVar.b(getSelection());
        } else {
            setInvalidRange(textInputLayout, textInputLayout2);
            oVar.a();
        }
        updateError(textInputLayout, textInputLayout2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public int getDefaultThemeResId(@NonNull Context context) {
        Resources resources = context.getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        return xa.b.d(context, Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) > resources.getDimensionPixelSize(R$dimen.mtrl_calendar_maximum_default_fullscreen_minor_axis) ? R$attr.materialCalendarTheme : R$attr.materialCalendarFullscreenTheme, MaterialDatePicker.class.getCanonicalName());
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public int getDefaultTitleResId() {
        return R$string.mtrl_picker_range_header_title;
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
        Long l11 = this.selectedStartItem;
        if (l11 != null) {
            arrayList.add(l11);
        }
        Long l12 = this.selectedEndItem;
        if (l12 != null) {
            arrayList.add(l12);
        }
        return arrayList;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public Collection<androidx.core.util.e> getSelectedRanges() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new androidx.core.util.e(this.selectedStartItem, this.selectedEndItem));
        return arrayList;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public androidx.core.util.e getSelection() {
        return new androidx.core.util.e(this.selectedStartItem, this.selectedEndItem);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public String getSelectionContentDescription(@NonNull Context context) {
        Resources resources = context.getResources();
        androidx.core.util.e eVarA = j.a(this.selectedStartItem, this.selectedEndItem);
        Object obj = eVarA.f8267a;
        String string = obj == null ? resources.getString(R$string.mtrl_picker_announce_current_selection_none) : (String) obj;
        Object obj2 = eVarA.f8268b;
        return resources.getString(R$string.mtrl_picker_announce_current_range_selection, string, obj2 == null ? resources.getString(R$string.mtrl_picker_announce_current_selection_none) : (String) obj2);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    @NonNull
    public String getSelectionDisplayString(@NonNull Context context) {
        Resources resources = context.getResources();
        Long l11 = this.selectedStartItem;
        if (l11 == null && this.selectedEndItem == null) {
            return resources.getString(R$string.mtrl_picker_range_header_unselected);
        }
        Long l12 = this.selectedEndItem;
        if (l12 == null) {
            return resources.getString(R$string.mtrl_picker_range_header_only_start_selected, j.c(l11.longValue()));
        }
        if (l11 == null) {
            return resources.getString(R$string.mtrl_picker_range_header_only_end_selected, j.c(l12.longValue()));
        }
        androidx.core.util.e eVarA = j.a(l11, l12);
        return resources.getString(R$string.mtrl_picker_range_header_selected, eVarA.f8267a, eVarA.f8268b);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public boolean isSelectionComplete() {
        Long l11 = this.selectedStartItem;
        return (l11 == null || this.selectedEndItem == null || !isValidRange(l11.longValue(), this.selectedEndItem.longValue())) ? false : true;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public View onCreateTextInputView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle, CalendarConstraints calendarConstraints, @NonNull o oVar) {
        View viewInflate = layoutInflater.inflate(R$layout.mtrl_picker_text_input_date_range, viewGroup, false);
        TextInputLayout textInputLayout = (TextInputLayout) viewInflate.findViewById(R$id.mtrl_picker_text_input_range_start);
        TextInputLayout textInputLayout2 = (TextInputLayout) viewInflate.findViewById(R$id.mtrl_picker_text_input_range_end);
        EditText editText = textInputLayout.getEditText();
        EditText editText2 = textInputLayout2.getEditText();
        if (com.google.android.material.internal.k.b()) {
            editText.setInputType(17);
            editText2.setInputType(17);
        }
        this.invalidRangeStartError = viewInflate.getResources().getString(R$string.mtrl_picker_invalid_range);
        SimpleDateFormat simpleDateFormatG = this.textInputFormat;
        boolean z10 = simpleDateFormatG != null;
        if (!z10) {
            simpleDateFormatG = x.g();
        }
        SimpleDateFormat simpleDateFormat = simpleDateFormatG;
        Long l11 = this.selectedStartItem;
        if (l11 != null) {
            editText.setText(simpleDateFormat.format(l11));
            this.proposedTextStart = this.selectedStartItem;
        }
        Long l12 = this.selectedEndItem;
        if (l12 != null) {
            editText2.setText(simpleDateFormat.format(l12));
            this.proposedTextEnd = this.selectedEndItem;
        }
        String pattern = z10 ? simpleDateFormat.toPattern() : x.h(viewInflate.getResources(), simpleDateFormat);
        textInputLayout.setPlaceholderText(pattern);
        textInputLayout2.setPlaceholderText(pattern);
        editText.addTextChangedListener(new a(pattern, simpleDateFormat, textInputLayout, calendarConstraints, textInputLayout, textInputLayout2, oVar));
        editText2.addTextChangedListener(new b(pattern, simpleDateFormat, textInputLayout2, calendarConstraints, textInputLayout, textInputLayout2, oVar));
        h.c(editText, editText2);
        return viewInflate;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public void select(long j11) {
        Long l11 = this.selectedStartItem;
        if (l11 == null) {
            this.selectedStartItem = Long.valueOf(j11);
        } else if (this.selectedEndItem == null && isValidRange(l11.longValue(), j11)) {
            this.selectedEndItem = Long.valueOf(j11);
        } else {
            this.selectedEndItem = null;
            this.selectedStartItem = Long.valueOf(j11);
        }
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public void setSelection(@NonNull androidx.core.util.e eVar) {
        Object obj = eVar.f8267a;
        if (obj != null && eVar.f8268b != null) {
            androidx.core.util.i.a(isValidRange(((Long) obj).longValue(), ((Long) eVar.f8268b).longValue()));
        }
        Object obj2 = eVar.f8267a;
        this.selectedStartItem = obj2 == null ? null : Long.valueOf(x.a(((Long) obj2).longValue()));
        Object obj3 = eVar.f8268b;
        this.selectedEndItem = obj3 != null ? Long.valueOf(x.a(((Long) obj3).longValue())) : null;
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
        parcel.writeValue(this.selectedStartItem);
        parcel.writeValue(this.selectedEndItem);
    }
}
