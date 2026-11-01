package com.google.android.play.core.appupdate.internal;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a implements IInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final IBinder f30187a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f30188b = "com.google.android.play.core.appupdate.protocol.IAppUpdateService";

    protected a(IBinder iBinder, String str) {
        this.f30187a = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f30187a;
    }
}
