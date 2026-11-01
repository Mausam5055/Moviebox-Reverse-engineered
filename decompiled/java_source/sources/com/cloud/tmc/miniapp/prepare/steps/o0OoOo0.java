package com.cloud.tmc.miniapp.prepare.steps;

import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.miniapp.prepare.controller.PrepareController;

/* JADX INFO: loaded from: classes3.dex */
public interface o0OoOo0 {
    void OooO00o(PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo);

    boolean OooO00o();

    StepType OooO0O0();

    void OooO0O0(PrepareController prepareController, PrepareContext prepareContext, o000oOoO o000oooo) throws PrepareException;

    void finish();
}
