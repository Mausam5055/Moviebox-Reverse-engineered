package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import androidx.loader.app.a;
import com.google.android.gms.common.api.GoogleApiClient;

/* JADX INFO: loaded from: classes3.dex */
final class zbw implements a.InterfaceC0084a {
    final /* synthetic */ SignInHubActivity zba;

    /* synthetic */ zbw(SignInHubActivity signInHubActivity, zbv zbvVar) {
        this.zba = signInHubActivity;
    }

    @Override // androidx.loader.app.a.InterfaceC0084a
    public final androidx.loader.content.a onCreateLoader(int i11, Bundle bundle) {
        return new zbc(this.zba, GoogleApiClient.getAllClients());
    }

    @Override // androidx.loader.app.a.InterfaceC0084a
    public final /* bridge */ /* synthetic */ void onLoadFinished(androidx.loader.content.a aVar, Object obj) {
        SignInHubActivity signInHubActivity = this.zba;
        signInHubActivity.setResult(signInHubActivity.zbe, signInHubActivity.zbf);
        this.zba.finish();
    }

    @Override // androidx.loader.app.a.InterfaceC0084a
    public final void onLoaderReset(androidx.loader.content.a aVar) {
    }
}
