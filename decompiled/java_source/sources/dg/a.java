package dg;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class a implements b.InterfaceC0733b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f61351c = "HttpLogger";

    @Override // dg.b.InterfaceC0733b
    public void log(String message) {
        Intrinsics.h(message, "message");
        Intrinsics.q("log: ->> ", message);
    }
}
