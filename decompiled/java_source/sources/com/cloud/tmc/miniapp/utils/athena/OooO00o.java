package com.cloud.tmc.miniapp.utils.athena;

import android.os.Bundle;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO00o {
    public int OooO00o;
    public String OooO0O0;
    public Bundle OooO0OO;

    public OooO00o(int i11, String event, Bundle data) {
        Intrinsics.h(event, "event");
        Intrinsics.h(data, "data");
        this.OooO00o = i11;
        this.OooO0O0 = event;
        this.OooO0OO = data;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OooO00o)) {
            return false;
        }
        OooO00o oooO00o = (OooO00o) obj;
        return this.OooO00o == oooO00o.OooO00o && Intrinsics.c(this.OooO0O0, oooO00o.OooO0O0) && Intrinsics.c(this.OooO0OO, oooO00o.OooO0OO);
    }

    public int hashCode() {
        return this.OooO0OO.hashCode() + ((this.OooO0O0.hashCode() + (this.OooO00o * 31)) * 31);
    }

    public String toString() {
        return "AthenaDataBean(athenaAppId=" + this.OooO00o + ", event=" + this.OooO0O0 + ", data=" + this.OooO0OO + ")";
    }
}
