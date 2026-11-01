package com.google.firebase.perf.util;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class Timer implements Parcelable {
    public static final Parcelable.Creator<Timer> CREATOR = new a();
    private long elapsedRealtimeMicros;
    private long wallClockMicros;

    /* JADX INFO: loaded from: classes4.dex */
    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Timer createFromParcel(Parcel parcel) {
            return new Timer(parcel, (a) null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Timer[] newArray(int i11) {
            return new Timer[i11];
        }
    }

    public Timer() {
        this(wallClockMicros(), elapsedRealtimeMicros());
    }

    public Timer(long j11) {
        this(j11, j11);
    }

    Timer(long j11, long j12) {
        this.wallClockMicros = j11;
        this.elapsedRealtimeMicros = j12;
    }

    private Timer(Parcel parcel) {
        this(parcel.readLong(), parcel.readLong());
    }

    /* synthetic */ Timer(Parcel parcel, a aVar) {
        this(parcel);
    }

    private static long elapsedRealtimeMicros() {
        return TimeUnit.NANOSECONDS.toMicros(SystemClock.elapsedRealtimeNanos());
    }

    public static Timer ofElapsedRealtime(long j11) {
        long micros = TimeUnit.MILLISECONDS.toMicros(j11);
        return new Timer(wallClockMicros() + (micros - elapsedRealtimeMicros()), micros);
    }

    private static long wallClockMicros() {
        return TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long getCurrentTimestampMicros() {
        return this.wallClockMicros + getDurationMicros();
    }

    public long getDurationMicros() {
        return getDurationMicros(new Timer());
    }

    public long getDurationMicros(@NonNull Timer timer) {
        return timer.elapsedRealtimeMicros - this.elapsedRealtimeMicros;
    }

    public long getMicros() {
        return this.wallClockMicros;
    }

    public void reset() {
        this.wallClockMicros = wallClockMicros();
        this.elapsedRealtimeMicros = elapsedRealtimeMicros();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i11) {
        parcel.writeLong(this.wallClockMicros);
        parcel.writeLong(this.elapsedRealtimeMicros);
    }
}
