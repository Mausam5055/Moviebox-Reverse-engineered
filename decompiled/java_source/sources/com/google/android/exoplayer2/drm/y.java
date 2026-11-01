package com.google.android.exoplayer2.drm;

import android.media.DeniedByServerException;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.p0;

/* JADX INFO: loaded from: classes3.dex */
public abstract class y {

    private static final class a {
        public static boolean a(@Nullable Throwable th2) {
            return th2 instanceof DeniedByServerException;
        }

        public static boolean b(@Nullable Throwable th2) {
            return th2 instanceof NotProvisionedException;
        }
    }

    private static final class b {
        public static boolean a(@Nullable Throwable th2) {
            return th2 instanceof MediaDrm.MediaDrmStateException;
        }

        public static int b(Throwable th2) {
            return p0.V(p0.W(((MediaDrm.MediaDrmStateException) th2).getDiagnosticInfo()));
        }
    }

    private static final class c {
        public static boolean a(@Nullable Throwable th2) {
            return th2 instanceof MediaDrmResetException;
        }
    }

    public static int a(Exception exc, int i11) {
        int i12 = p0.f27626a;
        if (i12 >= 21 && b.a(exc)) {
            return b.b(exc);
        }
        if (i12 >= 23 && c.a(exc)) {
            return 6006;
        }
        if (i12 >= 18 && a.b(exc)) {
            return 6002;
        }
        if (i12 >= 18 && a.a(exc)) {
            return 6007;
        }
        if (exc instanceof UnsupportedDrmException) {
            return 6001;
        }
        if (exc instanceof DefaultDrmSessionManager.MissingSchemeDataException) {
            return 6003;
        }
        if (exc instanceof KeysExpiredException) {
            return 6008;
        }
        if (i11 == 1) {
            return 6006;
        }
        if (i11 == 2) {
            return 6004;
        }
        if (i11 == 3) {
            return 6002;
        }
        throw new IllegalArgumentException();
    }
}
