package androidx.media3.exoplayer.hls;

import android.text.TextUtils;
import androidx.media3.common.v;
import androidx.media3.common.w;
import androidx.media3.common.x;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class s implements x.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f11988a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f11989b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f11990c;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f11991a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f11992b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f11993c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final String f11994d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f11995e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f11996f;

        public a(int i11, int i12, String str, String str2, String str3, String str4) {
            this.f11991a = i11;
            this.f11992b = i12;
            this.f11993c = str;
            this.f11994d = str2;
            this.f11995e = str3;
            this.f11996f = str4;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f11991a == aVar.f11991a && this.f11992b == aVar.f11992b && TextUtils.equals(this.f11993c, aVar.f11993c) && TextUtils.equals(this.f11994d, aVar.f11994d) && TextUtils.equals(this.f11995e, aVar.f11995e) && TextUtils.equals(this.f11996f, aVar.f11996f);
        }

        public int hashCode() {
            int i11 = ((this.f11991a * 31) + this.f11992b) * 31;
            String str = this.f11993c;
            int iHashCode = (i11 + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.f11994d;
            int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.f11995e;
            int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
            String str4 = this.f11996f;
            return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
        }
    }

    public s(String str, String str2, List list) {
        this.f11988a = str;
        this.f11989b = str2;
        this.f11990c = Collections.unmodifiableList(new ArrayList(list));
    }

    @Override // androidx.media3.common.x.a
    public /* synthetic */ void a(v.b bVar) {
        w.c(this, bVar);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || s.class != obj.getClass()) {
            return false;
        }
        s sVar = (s) obj;
        return TextUtils.equals(this.f11988a, sVar.f11988a) && TextUtils.equals(this.f11989b, sVar.f11989b) && this.f11990c.equals(sVar.f11990c);
    }

    @Override // androidx.media3.common.x.a
    public /* synthetic */ byte[] getWrappedMetadataBytes() {
        return w.a(this);
    }

    @Override // androidx.media3.common.x.a
    public /* synthetic */ androidx.media3.common.r getWrappedMetadataFormat() {
        return w.b(this);
    }

    public int hashCode() {
        String str = this.f11988a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f11989b;
        return ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.f11990c.hashCode();
    }

    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("HlsTrackMetadataEntry");
        if (this.f11988a != null) {
            str = " [" + this.f11988a + ", " + this.f11989b + "]";
        } else {
            str = "";
        }
        sb2.append(str);
        return sb2.toString();
    }
}
