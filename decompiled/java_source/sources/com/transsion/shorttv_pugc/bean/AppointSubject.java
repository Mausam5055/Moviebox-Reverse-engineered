package com.transsion.shorttv_pugc.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000b\u0010\t\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0005¨\u0006\u0012"}, d2 = {"Lcom/transsion/shorttv_pugc/bean/AppointSubject;", "Lcom/transsion/shorttv_pugc/bean/Subject;", "appointmentDate", "", "<init>", "(Ljava/lang/String;)V", "getAppointmentDate", "()Ljava/lang/String;", "setAppointmentDate", "component1", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class AppointSubject extends Subject {
    private String appointmentDate;

    public AppointSubject(String str) {
        super(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, false, null, -1, 4194303, null);
        this.appointmentDate = str;
    }

    public static /* synthetic */ AppointSubject copy$default(AppointSubject appointSubject, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = appointSubject.appointmentDate;
        }
        return appointSubject.copy(str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAppointmentDate() {
        return this.appointmentDate;
    }

    public final AppointSubject copy(String appointmentDate) {
        return new AppointSubject(appointmentDate);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof AppointSubject) && Intrinsics.c(this.appointmentDate, ((AppointSubject) other).appointmentDate);
    }

    public final String getAppointmentDate() {
        return this.appointmentDate;
    }

    public int hashCode() {
        String str = this.appointmentDate;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final void setAppointmentDate(String str) {
        this.appointmentDate = str;
    }

    public String toString() {
        return "AppointSubject(appointmentDate=" + this.appointmentDate + ")";
    }
}
