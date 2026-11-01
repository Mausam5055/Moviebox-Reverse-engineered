package com.transsion.rewardscenter.model;

import android.app.Application;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.u0;
import com.transsion.rewardscenterapi.ClaimReceiverRequest;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class ClaimRewardViewModel extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b0 f50952b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b0 f50953c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b0 f50954d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClaimRewardViewModel(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f50952b = new b0(Boolean.FALSE);
        this.f50953c = new b0();
        this.f50954d = new b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d(String str) {
        if (str.length() != 0) {
            kotlinx.coroutines.k.d(u0.a(this), null, null, new ClaimRewardViewModel$claim$1(str, this, null), 3, null);
        } else {
            this.f50952b.n(Boolean.FALSE);
            this.f50953c.n(new Pair(null, null));
        }
    }

    public final b0 e() {
        return this.f50954d;
    }

    public final b0 f() {
        return this.f50953c;
    }

    public final b0 g() {
        return this.f50952b;
    }

    public final void h(ClaimReceiverRequest requestBody) {
        Intrinsics.h(requestBody, "requestBody");
        kotlinx.coroutines.k.d(u0.a(this), null, null, new ClaimRewardViewModel$submitAndClaim$1(this, requestBody, null), 3, null);
    }
}
