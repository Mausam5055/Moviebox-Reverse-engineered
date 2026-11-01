package com.google.android.libraries.places.internal;

import java.util.logging.Logger;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
final /* synthetic */ class zzbwi {
    public static final /* synthetic */ int zza = 0;
    private static final Logger zzb = Logger.getLogger("okio.Okio");

    public static final boolean zza(AssertionError assertionError) {
        String message;
        Intrinsics.h(assertionError, "<this>");
        return (assertionError.getCause() == null || (message = assertionError.getMessage()) == null || !StringsKt.c0(message, "getsockname failed", false, 2, null)) ? false : true;
    }
}
