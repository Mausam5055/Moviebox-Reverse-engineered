package io.reactivex.rxjava3.internal.util;

import io.reactivex.rxjava3.core.o;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.operators.SpscArrayQueue;

/* JADX INFO: loaded from: classes7.dex */
public abstract class i {
    public static boolean a(boolean z10, boolean z11, o oVar, boolean z12, io.reactivex.rxjava3.operators.g gVar, io.reactivex.rxjava3.disposables.c cVar, e eVar) {
        if (eVar.cancelled()) {
            gVar.clear();
            cVar.dispose();
            return true;
        }
        if (!z10) {
            return false;
        }
        if (z12) {
            if (!z11) {
                return false;
            }
            if (cVar != null) {
                cVar.dispose();
            }
            Throwable thError = eVar.error();
            if (thError != null) {
                oVar.onError(thError);
            } else {
                oVar.onComplete();
            }
            return true;
        }
        Throwable thError2 = eVar.error();
        if (thError2 != null) {
            gVar.clear();
            if (cVar != null) {
                cVar.dispose();
            }
            oVar.onError(thError2);
            return true;
        }
        if (!z11) {
            return false;
        }
        if (cVar != null) {
            cVar.dispose();
        }
        oVar.onComplete();
        return true;
    }

    public static boolean b(boolean z10, boolean z11, u10.c cVar, boolean z12, io.reactivex.rxjava3.operators.g gVar, h hVar) {
        if (hVar.cancelled()) {
            gVar.clear();
            return true;
        }
        if (!z10) {
            return false;
        }
        if (z12) {
            if (!z11) {
                return false;
            }
            Throwable thError = hVar.error();
            if (thError != null) {
                cVar.onError(thError);
            } else {
                cVar.onComplete();
            }
            return true;
        }
        Throwable thError2 = hVar.error();
        if (thError2 != null) {
            gVar.clear();
            cVar.onError(thError2);
            return true;
        }
        if (!z11) {
            return false;
        }
        cVar.onComplete();
        return true;
    }

    public static io.reactivex.rxjava3.operators.g c(int i11) {
        return i11 < 0 ? new io.reactivex.rxjava3.operators.h(-i11) : new SpscArrayQueue(i11);
    }

    public static void d(io.reactivex.rxjava3.operators.f fVar, o oVar, boolean z10, io.reactivex.rxjava3.disposables.c cVar, e eVar) {
        int iLeave = 1;
        while (!a(eVar.done(), fVar.isEmpty(), oVar, z10, fVar, cVar, eVar)) {
            while (true) {
                boolean zDone = eVar.done();
                Object objPoll = fVar.poll();
                boolean z11 = objPoll == null;
                if (a(zDone, z11, oVar, z10, fVar, cVar, eVar)) {
                    return;
                }
                if (z11) {
                    break;
                } else {
                    eVar.accept(oVar, objPoll);
                }
            }
            iLeave = eVar.leave(-iLeave);
            if (iLeave == 0) {
                return;
            }
        }
    }

    public static void e(io.reactivex.rxjava3.operators.f fVar, u10.c cVar, boolean z10, io.reactivex.rxjava3.disposables.c cVar2, h hVar) {
        int iLeave = 1;
        while (true) {
            boolean zDone = hVar.done();
            Object objPoll = fVar.poll();
            boolean z11 = objPoll == null;
            if (b(zDone, z11, cVar, z10, fVar, hVar)) {
                if (cVar2 != null) {
                    cVar2.dispose();
                    return;
                }
                return;
            } else if (z11) {
                iLeave = hVar.leave(-iLeave);
                if (iLeave == 0) {
                    return;
                }
            } else {
                long jRequested = hVar.requested();
                if (jRequested == 0) {
                    fVar.clear();
                    if (cVar2 != null) {
                        cVar2.dispose();
                    }
                    cVar.onError(MissingBackpressureException.createDefault());
                    return;
                }
                if (hVar.accept(cVar, objPoll) && jRequested != Long.MAX_VALUE) {
                    hVar.produced(1L);
                }
            }
        }
    }

    public static void f(u10.d dVar, int i11) {
        dVar.request(i11 < 0 ? Long.MAX_VALUE : i11);
    }
}
