package com.cloud.tmc.miniapp.utils.athena.strategy;

import android.content.Context;
import com.cloud.tmc.miniapp.utils.athena.strategy.steps.OooOO0;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO0O0 implements OooOO0.OooO00o {
    public final Context OooO00o;
    public final String OooO0O0;
    public final List<OooOO0> OooO0OO;
    public final int OooO0Oo;
    public final OooO00o OooO0o0;

    /* JADX WARN: Multi-variable type inference failed */
    public OooO0O0(Context context, String str, List<? extends OooOO0> steps, int i11, OooO00o athenaReportBean) {
        Intrinsics.h(steps, "steps");
        Intrinsics.h(athenaReportBean, "athenaReportBean");
        this.OooO00o = context;
        this.OooO0O0 = str;
        this.OooO0OO = steps;
        this.OooO0Oo = i11;
        this.OooO0o0 = athenaReportBean;
    }

    public OooO00o OooO00o(boolean z10) {
        if (this.OooO0Oo >= this.OooO0OO.size() || z10) {
            return this.OooO0o0;
        }
        return this.OooO0OO.get(this.OooO0Oo).OooO00o(new OooO0O0(this.OooO00o, this.OooO0O0, this.OooO0OO, this.OooO0Oo + 1, this.OooO0o0));
    }
}
