package androidx.media3.common;

import androidx.media3.common.util.a1;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class s {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f10199c = a1.C0(0);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f10200d = a1.C0(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f10201a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f10202b;

    public s(String str, String str2) {
        this.f10201a = a1.U0(str);
        this.f10202b = str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        s sVar = (s) obj;
        return Objects.equals(this.f10201a, sVar.f10201a) && Objects.equals(this.f10202b, sVar.f10202b);
    }

    public int hashCode() {
        int iHashCode = this.f10202b.hashCode() * 31;
        String str = this.f10201a;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }
}
