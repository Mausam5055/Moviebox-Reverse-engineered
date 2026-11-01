package com.google.android.material.datepicker;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class CalendarConstraints implements Parcelable {
    public static final Parcelable.Creator<CalendarConstraints> CREATOR = new a();

    @NonNull
    private final Month end;
    private final int firstDayOfWeek;
    private final int monthSpan;

    @Nullable
    private Month openAt;

    @NonNull
    private final Month start;

    @NonNull
    private final DateValidator validator;
    private final int yearSpan;

    public interface DateValidator extends Parcelable {
        boolean isValid(long j11);
    }

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public CalendarConstraints createFromParcel(Parcel parcel) {
            return new CalendarConstraints((Month) parcel.readParcelable(Month.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), (DateValidator) parcel.readParcelable(DateValidator.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), parcel.readInt(), null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public CalendarConstraints[] newArray(int i11) {
            return new CalendarConstraints[i11];
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        static final long f28761f = x.a(Month.b(1900, 0).f28846e);

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        static final long f28762g = x.a(Month.b(2100, 11).f28846e);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f28763a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f28764b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Long f28765c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f28766d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private DateValidator f28767e;

        public b() {
            this.f28763a = f28761f;
            this.f28764b = f28762g;
            this.f28767e = DateValidatorPointForward.from(Long.MIN_VALUE);
        }

        b(CalendarConstraints calendarConstraints) {
            this.f28763a = f28761f;
            this.f28764b = f28762g;
            this.f28767e = DateValidatorPointForward.from(Long.MIN_VALUE);
            this.f28763a = calendarConstraints.start.f28846e;
            this.f28764b = calendarConstraints.end.f28846e;
            this.f28765c = Long.valueOf(calendarConstraints.openAt.f28846e);
            this.f28766d = calendarConstraints.firstDayOfWeek;
            this.f28767e = calendarConstraints.validator;
        }

        public CalendarConstraints a() {
            Bundle bundle = new Bundle();
            bundle.putParcelable("DEEP_COPY_VALIDATOR_KEY", this.f28767e);
            Month monthD = Month.d(this.f28763a);
            Month monthD2 = Month.d(this.f28764b);
            DateValidator dateValidator = (DateValidator) bundle.getParcelable("DEEP_COPY_VALIDATOR_KEY");
            Long l11 = this.f28765c;
            return new CalendarConstraints(monthD, monthD2, dateValidator, l11 == null ? null : Month.d(l11.longValue()), this.f28766d, null);
        }

        public b b(long j11) {
            this.f28765c = Long.valueOf(j11);
            return this;
        }
    }

    private CalendarConstraints(@NonNull Month month, @NonNull Month month2, @NonNull DateValidator dateValidator, @Nullable Month month3, int i11) {
        Objects.requireNonNull(month, "start cannot be null");
        Objects.requireNonNull(month2, "end cannot be null");
        Objects.requireNonNull(dateValidator, "validator cannot be null");
        this.start = month;
        this.end = month2;
        this.openAt = month3;
        this.firstDayOfWeek = i11;
        this.validator = dateValidator;
        if (month3 != null && month.compareTo(month3) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        }
        if (month3 != null && month3.compareTo(month2) > 0) {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
        if (i11 < 0 || i11 > x.s().getMaximum(7)) {
            throw new IllegalArgumentException("firstDayOfWeek is not valid");
        }
        this.monthSpan = month.l(month2) + 1;
        this.yearSpan = (month2.f28843b - month.f28843b) + 1;
    }

    /* synthetic */ CalendarConstraints(Month month, Month month2, DateValidator dateValidator, Month month3, int i11, a aVar) {
        this(month, month2, dateValidator, month3, i11);
    }

    Month clamp(Month month) {
        if (month.compareTo(this.start) < 0) {
            return this.start;
        }
        return month.compareTo(this.end) > 0 ? this.end : month;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CalendarConstraints)) {
            return false;
        }
        CalendarConstraints calendarConstraints = (CalendarConstraints) obj;
        return this.start.equals(calendarConstraints.start) && this.end.equals(calendarConstraints.end) && androidx.core.util.d.a(this.openAt, calendarConstraints.openAt) && this.firstDayOfWeek == calendarConstraints.firstDayOfWeek && this.validator.equals(calendarConstraints.validator);
    }

    public DateValidator getDateValidator() {
        return this.validator;
    }

    @NonNull
    Month getEnd() {
        return this.end;
    }

    public long getEndMs() {
        return this.end.f28846e;
    }

    int getFirstDayOfWeek() {
        return this.firstDayOfWeek;
    }

    int getMonthSpan() {
        return this.monthSpan;
    }

    @Nullable
    Month getOpenAt() {
        return this.openAt;
    }

    @Nullable
    public Long getOpenAtMs() {
        Month month = this.openAt;
        if (month == null) {
            return null;
        }
        return Long.valueOf(month.f28846e);
    }

    @NonNull
    Month getStart() {
        return this.start;
    }

    public long getStartMs() {
        return this.start.f28846e;
    }

    int getYearSpan() {
        return this.yearSpan;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.start, this.end, this.openAt, Integer.valueOf(this.firstDayOfWeek), this.validator});
    }

    boolean isWithinBounds(long j11) {
        if (this.start.g(1) <= j11) {
            Month month = this.end;
            if (j11 <= month.g(month.f28845d)) {
                return true;
            }
        }
        return false;
    }

    void setOpenAt(@Nullable Month month) {
        this.openAt = month;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeParcelable(this.start, 0);
        parcel.writeParcelable(this.end, 0);
        parcel.writeParcelable(this.openAt, 0);
        parcel.writeParcelable(this.validator, 0);
        parcel.writeInt(this.firstDayOfWeek);
    }
}
