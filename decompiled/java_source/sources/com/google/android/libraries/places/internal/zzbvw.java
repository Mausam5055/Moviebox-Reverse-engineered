package com.google.android.libraries.places.internal;

import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes4.dex */
@SourceDebugExtension
public final class zzbvw {
    private zzbvw() {
        throw null;
    }

    public /* synthetic */ zzbvw(DefaultConstructorMarker defaultConstructorMarker) {
    }

    public static final /* synthetic */ boolean zza(zzbvw zzbvwVar, zzbvz zzbvzVar) {
        ReentrantLock reentrantLock = zzbvz.zzd;
        reentrantLock.lock();
        reentrantLock.unlock();
        return false;
    }
}
