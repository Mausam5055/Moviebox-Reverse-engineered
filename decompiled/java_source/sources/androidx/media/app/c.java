package androidx.media.app;

import android.app.PendingIntent;
import android.os.Build;
import android.support.v4.media.session.MediaSessionCompat;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import androidx.core.app.o;

/* JADX INFO: loaded from: classes.dex */
public class c extends NotificationCompat.p {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    MediaSessionCompat.Token f9769f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    CharSequence f9770g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f9771h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    PendingIntent f9772i;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int[] f9768e = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    boolean f9773j = false;

    @Override // androidx.core.app.NotificationCompat.p
    public void b(o oVar) {
        if (Build.VERSION.SDK_INT >= 34) {
            a.d(oVar.a(), a.b(b.a(a.a(), this.f9770g, this.f9771h, this.f9772i, Boolean.valueOf(this.f9773j)), this.f9768e, this.f9769f));
        } else {
            a.d(oVar.a(), a.b(a.a(), this.f9768e, this.f9769f));
        }
    }

    @Override // androidx.core.app.NotificationCompat.p
    public RemoteViews m(o oVar) {
        return null;
    }

    @Override // androidx.core.app.NotificationCompat.p
    public RemoteViews n(o oVar) {
        return null;
    }

    public c q(MediaSessionCompat.Token token) {
        this.f9769f = token;
        return this;
    }

    public c r(int... iArr) {
        this.f9768e = iArr;
        return this;
    }
}
