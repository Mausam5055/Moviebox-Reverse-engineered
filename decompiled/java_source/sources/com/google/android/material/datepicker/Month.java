package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;

/* JADX INFO: loaded from: classes4.dex */
final class Month implements Comparable<Month>, Parcelable {
    public static final Parcelable.Creator<Month> CREATOR = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f28842a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final int f28843b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f28844c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int f28845d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final long f28846e;

    @NonNull
    private final Calendar firstOfMonth;

    @Nullable
    private String longName;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Month createFromParcel(Parcel parcel) {
            return Month.b(parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Month[] newArray(int i11) {
            return new Month[i11];
        }
    }

    private Month(Calendar calendar) {
        calendar.set(5, 1);
        Calendar calendarF = x.f(calendar);
        this.firstOfMonth = calendarF;
        this.f28842a = calendarF.get(2);
        this.f28843b = calendarF.get(1);
        this.f28844c = calendarF.getMaximum(7);
        this.f28845d = calendarF.getActualMaximum(5);
        this.f28846e = calendarF.getTimeInMillis();
    }

    static Month b(int i11, int i12) {
        Calendar calendarS = x.s();
        calendarS.set(1, i11);
        calendarS.set(2, i12);
        return new Month(calendarS);
    }

    static Month d(long j11) {
        Calendar calendarS = x.s();
        calendarS.setTimeInMillis(j11);
        return new Month(calendarS);
    }

    static Month e() {
        return new Month(x.q());
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(Month month) {
        return this.firstOfMonth.compareTo(month.firstOfMonth);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Month)) {
            return false;
        }
        Month month = (Month) obj;
        return this.f28842a == month.f28842a && this.f28843b == month.f28843b;
    }

    int f(int i11) {
        int i12 = this.firstOfMonth.get(7);
        if (i11 <= 0) {
            i11 = this.firstOfMonth.getFirstDayOfWeek();
        }
        int i13 = i12 - i11;
        return i13 < 0 ? i13 + this.f28844c : i13;
    }

    long g(int i11) {
        Calendar calendarF = x.f(this.firstOfMonth);
        calendarF.set(5, i11);
        return calendarF.getTimeInMillis();
    }

    int h(long j11) {
        Calendar calendarF = x.f(this.firstOfMonth);
        calendarF.setTimeInMillis(j11);
        return calendarF.get(5);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f28842a), Integer.valueOf(this.f28843b)});
    }

    String i() {
        if (this.longName == null) {
            this.longName = j.l(this.firstOfMonth.getTimeInMillis());
        }
        return this.longName;
    }

    long j() {
        return this.firstOfMonth.getTimeInMillis();
    }

    Month k(int i11) {
        Calendar calendarF = x.f(this.firstOfMonth);
        calendarF.add(2, i11);
        return new Month(calendarF);
    }

    int l(Month month) {
        if (this.firstOfMonth instanceof GregorianCalendar) {
            return ((month.f28843b - this.f28843b) * 12) + (month.f28842a - this.f28842a);
        }
        throw new IllegalArgumentException("Only Gregorian calendars are supported.");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeInt(this.f28843b);
        parcel.writeInt(this.f28842a);
    }
}
