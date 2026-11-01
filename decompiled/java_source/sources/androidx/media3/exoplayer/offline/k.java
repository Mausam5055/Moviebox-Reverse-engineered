package androidx.media3.exoplayer.offline;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import androidx.core.app.NotificationCompat;
import androidx.media3.common.util.a1;
import androidx.media3.exoplayer.R$string;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final NotificationCompat.m f12423a;

    private static final class a {
        public static void a(NotificationCompat.m mVar) {
            mVar.w(1);
        }
    }

    public k(Context context, String str) {
        this.f12423a = new NotificationCompat.m(context.getApplicationContext(), str);
    }

    private Notification a(Context context, int i11, PendingIntent pendingIntent, String str, int i12, int i13, int i14, boolean z10, boolean z11, boolean z12) {
        this.f12423a.J(i11);
        this.f12423a.q(i12 == 0 ? null : context.getResources().getString(i12));
        this.f12423a.o(pendingIntent);
        this.f12423a.L(str != null ? new NotificationCompat.k().q(str) : null);
        this.f12423a.H(i13, i14, z10);
        this.f12423a.E(z11);
        this.f12423a.I(z12);
        if (a1.f10350a >= 31) {
            a.a(this.f12423a);
        }
        return this.f12423a.c();
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0028  */
    /* JADX WARN: Code duplicated, block: B:17:0x0032  */
    /* JADX WARN: Code duplicated, block: B:20:0x003e  */
    /* JADX WARN: Code duplicated, block: B:21:0x0040  */
    /* JADX WARN: Code duplicated, block: B:43:0x0071  */
    /* JADX WARN: Code duplicated, block: B:45:0x0075  */
    /* JADX WARN: Code duplicated, block: B:51:0x0084  */
    /* JADX WARN: Code duplicated, block: B:52:0x0089  */
    public Notification b(Context context, int i11, PendingIntent pendingIntent, String str, List list, int i12) {
        int i13;
        int i14;
        boolean z10;
        int i15;
        int i16;
        boolean z11;
        float fB;
        boolean z12;
        float f11 = 0.0f;
        boolean z13 = false;
        boolean z14 = false;
        boolean z15 = false;
        boolean z16 = false;
        boolean z17 = false;
        int i17 = 0;
        boolean z18 = true;
        for (int i18 = 0; i18 < list.size(); i18++) {
            c cVar = (c) list.get(i18);
            int i19 = cVar.f12414b;
            if (i19 == 0) {
                z15 = true;
            } else if (i19 == 2) {
                fB = cVar.b();
                if (fB != -1.0f) {
                    f11 += fB;
                    z18 = false;
                }
                if (cVar.a() > 0) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                z16 |= z12;
                i17++;
                z14 = true;
            } else if (i19 == 5) {
                z17 = true;
            } else if (i19 == 7) {
                fB = cVar.b();
                if (fB != -1.0f) {
                    f11 += fB;
                    z18 = false;
                }
                if (cVar.a() > 0) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                z16 |= z12;
                i17++;
                z14 = true;
            }
        }
        if (!z14) {
            if (!z15 || i12 == 0) {
                if (z17) {
                    i14 = R$string.exo_download_removing;
                } else {
                    i13 = 0;
                }
                z10 = true;
            } else {
                i13 = (i12 & 2) != 0 ? R$string.exo_download_paused_for_wifi : (i12 & 1) != 0 ? R$string.exo_download_paused_for_network : R$string.exo_download_paused;
                z10 = false;
            }
            if (z10) {
                if (z14) {
                    int i20 = (int) (f11 / i17);
                    if (z18 && z16) {
                        z13 = true;
                    }
                    i16 = i20;
                    z11 = z13;
                } else {
                    i16 = 0;
                    z11 = true;
                }
                i15 = 100;
            } else {
                i15 = 0;
                i16 = 0;
                z11 = false;
            }
            return a(context, i11, pendingIntent, str, i13, i15, i16, z11, true, false);
        }
        i14 = R$string.exo_download_downloading;
        i13 = i14;
        z10 = true;
        if (z10) {
            if (z14) {
                int i21 = (int) (f11 / i17);
                if (z18) {
                    z13 = true;
                }
                i16 = i21;
                z11 = z13;
            } else {
                i16 = 0;
                z11 = true;
            }
            i15 = 100;
        } else {
            i15 = 0;
            i16 = 0;
            z11 = false;
        }
        return a(context, i11, pendingIntent, str, i13, i15, i16, z11, true, false);
    }
}
