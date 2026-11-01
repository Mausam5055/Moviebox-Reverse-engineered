package com.cloud.tmc.miniapp.prepare.steps.subpackage;

import android.content.Context;
import com.cloud.tmc.integration.model.AppModel;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.miniapp.prepare.controller.PrepareController;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.cloud.tmc.miniapp.prepare.steps.StepType;
import com.cloud.tmc.miniapp.prepare.steps.o000oOoO;
import com.cloud.tmc.miniapp.prepare.steps.o0OoOo0;
import com.cloud.tmc.miniapp.utils.OooOOO;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO implements o0OoOo0 {
    public final StepType OooO00o;
    public o0OoOo0 OooO0O0;

    public /* synthetic */ class OooO00o {
        public static final /* synthetic */ int[] OooO00o;

        static {
            int[] iArr = new int[StepType.values().length];
            try {
                iArr[StepType.OFFLINE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[StepType.LOAD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[StepType.START.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            OooO00o = iArr;
        }
    }

    public OooO(StepType stepType) {
        Intrinsics.h(stepType, "stepType");
        this.OooO00o = stepType;
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public void OooO00o(PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo) {
        Context startContext;
        AppModel appModel;
        if (prepareContext == null || (startContext = prepareContext.getStartContext()) == null || (appModel = prepareContext.getAppModel()) == null || !OooOOO.OooO00o(startContext, appModel)) {
            OooO00o(true);
        } else {
            OooO00o(false);
        }
    }

    public final void OooO00o(boolean z10) {
        if (this.OooO0O0 != null) {
            return;
        }
        int i11 = OooO00o.OooO00o[this.OooO00o.ordinal()];
        if (i11 == 1) {
            this.OooO0O0 = z10 ? new OooO0OO(null, null, 3) : new com.cloud.tmc.miniapp.prepare.steps.singlepackage.OooO00o();
        } else if (i11 == 2) {
            this.OooO0O0 = z10 ? new OooO0O0(null, null, 3) : new com.cloud.tmc.miniapp.prepare.steps.singlepackage.OooO0O0();
        } else {
            if (i11 != 3) {
                return;
            }
            this.OooO0O0 = z10 ? new OooO0o(null, null, 3) : new com.cloud.tmc.miniapp.prepare.steps.singlepackage.OooO0OO();
        }
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public boolean OooO00o() {
        o0OoOo0 o0oooo0 = this.OooO0O0;
        if (o0oooo0 != null) {
            return o0oooo0.OooO00o();
        }
        return false;
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public StepType OooO0O0() {
        return this.OooO00o;
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public void OooO0O0(PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo) throws PrepareException {
        o0OoOo0 o0oooo0 = this.OooO0O0;
        if (o0oooo0 != null) {
            o0oooo0.OooO0O0(prepareController, prepareContext, o000oooo);
        }
    }

    @Override // com.cloud.tmc.miniapp.prepare.steps.o0OoOo0
    public void finish() {
        o0OoOo0 o0oooo0 = this.OooO0O0;
        if (o0oooo0 != null) {
            o0oooo0.finish();
        }
    }
}
