package androidx.work;

import android.app.Notification;

/* JADX INFO: loaded from: classes2.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f15489a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f15490b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Notification f15491c;

    public i(int i11, Notification notification, int i12) {
        this.f15489a = i11;
        this.f15491c = notification;
        this.f15490b = i12;
    }

    public int a() {
        return this.f15490b;
    }

    public Notification b() {
        return this.f15491c;
    }

    public int c() {
        return this.f15489a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i.class != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        if (this.f15489a == iVar.f15489a && this.f15490b == iVar.f15490b) {
            return this.f15491c.equals(iVar.f15491c);
        }
        return false;
    }

    public int hashCode() {
        return (((this.f15489a * 31) + this.f15490b) * 31) + this.f15491c.hashCode();
    }

    public String toString() {
        return "ForegroundInfo{mNotificationId=" + this.f15489a + ", mForegroundServiceType=" + this.f15490b + ", mNotification=" + this.f15491c + '}';
    }
}
