package com.cloud.tmc.miniapp.proxy;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.kernel.proxy.Proxiable;
import com.cloud.tmc.miniapp.prepare.controller.PrepareController;
import com.cloud.tmc.miniapp.prepare.steps.o000oOoO;

/* JADX INFO: loaded from: classes3.dex */
public interface IClientStarter extends Proxiable {
    Fragment createFragment(Context context, Bundle bundle);

    PrepareController createPrepareController(PrepareContext prepareContext, o000oOoO o000oooo);

    PrepareController createQuickModePrepareController(PrepareContext prepareContext, o000oOoO o000oooo);

    PrepareController createSubpackagePrepareController(PrepareContext prepareContext, o000oOoO o000oooo, int i11, String str);

    PrepareController createWarmupController(PrepareContext prepareContext, o000oOoO o000oooo);

    Class<? extends Activity> startClient(Context context, Intent intent, Bundle bundle);
}
