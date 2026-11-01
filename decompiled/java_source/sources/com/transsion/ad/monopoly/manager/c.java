package com.transsion.ad.monopoly.manager;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes5.dex */
public abstract class c implements oi.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AtomicBoolean f42159a = new AtomicBoolean(false);

    public final Object a(Continuation continuation) {
        if (this.f42159a.get()) {
            return Unit.f67061a;
        }
        this.f42159a.set(true);
        Object objB = b(continuation);
        return objB == IntrinsicsKt.f() ? objB : Unit.f67061a;
    }

    public abstract Object b(Continuation continuation);

    @Override // oi.b
    public String getClassTag() {
        return oi.b.a.a(this);
    }

    @Override // oi.b
    public String getLogTag() {
        return "ad_init";
    }

    @Override // oi.b
    public String getSceneId() {
        return "";
    }

    @Override // oi.b
    public void onLog(int i11, String str, String str2, boolean z10) {
        oi.b.a.b(this, i11, str, str2, z10);
    }
}
