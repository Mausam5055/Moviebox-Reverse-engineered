package io.reactivex.rxjava3.exceptions;

import io.reactivex.rxjava3.internal.util.ExceptionHelper;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a {
    public static RuntimeException a(Throwable th2) {
        throw ExceptionHelper.g(th2);
    }

    public static void b(Throwable th2) {
        if (th2 instanceof VirtualMachineError) {
            throw ((VirtualMachineError) th2);
        }
        if (th2 instanceof ThreadDeath) {
            throw ((ThreadDeath) th2);
        }
        if (th2 instanceof LinkageError) {
            throw ((LinkageError) th2);
        }
    }
}
