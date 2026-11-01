package com.transsion.publish.viewmodel;

import android.app.Application;
import androidx.p009lifecycle.b0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class d extends androidx.p009lifecycle.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Lazy f50774b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b0 f50775c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b0 f50776d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(Application application) {
        super(application);
        Intrinsics.h(application, "application");
        this.f50774b = LazyKt.b(new Function0() { // from class: com.transsion.publish.viewmodel.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return d.d();
            }
        });
        this.f50775c = new b0();
        this.f50776d = new b0(Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kp.b d() {
        return new kp.b();
    }
}
