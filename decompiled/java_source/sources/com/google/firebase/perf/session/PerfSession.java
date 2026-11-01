package com.google.firebase.perf.session;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.perf.util.Timer;
import com.google.firebase.perf.v1.SessionVerbosity;
import com.google.firebase.perf.v1.h;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class PerfSession implements Parcelable {
    public static final Parcelable.Creator<PerfSession> CREATOR = new a();
    private final Timer creationTime;
    private boolean isGaugeAndEventCollectionEnabled;
    private final String sessionId;

    /* JADX INFO: loaded from: classes4.dex */
    class a implements Parcelable.Creator {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PerfSession createFromParcel(Parcel parcel) {
            return new PerfSession(parcel, (a) null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public PerfSession[] newArray(int i11) {
            return new PerfSession[i11];
        }
    }

    private PerfSession(@NonNull Parcel parcel) {
        this.isGaugeAndEventCollectionEnabled = false;
        this.sessionId = parcel.readString();
        this.isGaugeAndEventCollectionEnabled = parcel.readByte() != 0;
        this.creationTime = (Timer) parcel.readParcelable(Timer.class.getClassLoader());
    }

    /* synthetic */ PerfSession(Parcel parcel, a aVar) {
        this(parcel);
    }

    public PerfSession(String str, com.google.firebase.perf.util.a aVar) {
        this.isGaugeAndEventCollectionEnabled = false;
        this.sessionId = str;
        this.creationTime = aVar.a();
    }

    @Nullable
    public static h[] buildAndSort(@NonNull List<PerfSession> list) {
        if (list.isEmpty()) {
            return null;
        }
        h[] hVarArr = new h[list.size()];
        h hVarBuild = list.get(0).build();
        boolean z10 = false;
        for (int i11 = 1; i11 < list.size(); i11++) {
            h hVarBuild2 = list.get(i11).build();
            if (z10 || !list.get(i11).isVerbose()) {
                hVarArr[i11] = hVarBuild2;
            } else {
                hVarArr[0] = hVarBuild2;
                hVarArr[i11] = hVarBuild;
                z10 = true;
            }
        }
        if (!z10) {
            hVarArr[0] = hVarBuild;
        }
        return hVarArr;
    }

    public static PerfSession createWithId(@NonNull String str) {
        PerfSession perfSession = new PerfSession(str.replace("-", ""), new com.google.firebase.perf.util.a());
        perfSession.setGaugeAndEventCollectionEnabled(shouldCollectGaugesAndEvents());
        return perfSession;
    }

    static boolean isVerbose(@NonNull h hVar) {
        Iterator it = hVar.n().iterator();
        while (it.hasNext()) {
            if (((SessionVerbosity) it.next()) == SessionVerbosity.GAUGES_AND_SYSTEM_EVENTS) {
                return true;
            }
        }
        return false;
    }

    public static boolean shouldCollectGaugesAndEvents() {
        com.google.firebase.perf.config.a aVarG = com.google.firebase.perf.config.a.g();
        return aVarG.K() && Math.random() < aVarG.D();
    }

    public h build() {
        h.c cVarI = h.o().i(this.sessionId);
        if (this.isGaugeAndEventCollectionEnabled) {
            cVarI.d(SessionVerbosity.GAUGES_AND_SYSTEM_EVENTS);
        }
        return (h) cVarI.build();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Timer getTimer() {
        return this.creationTime;
    }

    public boolean isGaugeAndEventCollectionEnabled() {
        return this.isGaugeAndEventCollectionEnabled;
    }

    public boolean isSessionRunningTooLong() {
        return TimeUnit.MICROSECONDS.toMinutes(this.creationTime.getDurationMicros()) > com.google.firebase.perf.config.a.g().A();
    }

    public boolean isVerbose() {
        return this.isGaugeAndEventCollectionEnabled;
    }

    public String sessionId() {
        return this.sessionId;
    }

    public void setGaugeAndEventCollectionEnabled(boolean z10) {
        this.isGaugeAndEventCollectionEnabled = z10;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i11) {
        parcel.writeString(this.sessionId);
        parcel.writeByte(this.isGaugeAndEventCollectionEnabled ? (byte) 1 : (byte) 0);
        parcel.writeParcelable(this.creationTime, 0);
    }
}
