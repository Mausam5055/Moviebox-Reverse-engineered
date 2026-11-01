package y2;

import androidx.media3.common.r;
import androidx.media3.common.util.u;
import androidx.media3.common.v;
import androidx.media3.common.w;
import androidx.media3.common.x;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements x.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f78814a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f78815b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f78816c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f78817d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f78818e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f78819f;

    public b(int i11, String str, String str2, String str3, boolean z10, int i12) {
        androidx.media3.common.util.a.a(i12 == -1 || i12 > 0);
        this.f78814a = i11;
        this.f78815b = str;
        this.f78816c = str2;
        this.f78817d = str3;
        this.f78818e = z10;
        this.f78819f = i12;
    }

    public static b b(Map map) {
        boolean z10;
        int i11;
        String str;
        String str2;
        String str3;
        boolean zEquals;
        int i12;
        List list = (List) map.get("icy-br");
        boolean z11 = true;
        int i13 = -1;
        if (list != null) {
            String str4 = (String) list.get(0);
            try {
                i12 = Integer.parseInt(str4) * 1000;
                if (i12 > 0) {
                    z10 = true;
                } else {
                    try {
                        u.h("IcyHeaders", "Invalid bitrate: " + str4);
                        z10 = false;
                        i12 = -1;
                    } catch (NumberFormatException unused) {
                        u.h("IcyHeaders", "Invalid bitrate header: " + str4);
                        z10 = false;
                    }
                }
            } catch (NumberFormatException unused2) {
                i12 = -1;
            }
            i11 = i12;
        } else {
            z10 = false;
            i11 = -1;
        }
        List list2 = (List) map.get("icy-genre");
        if (list2 != null) {
            str = (String) list2.get(0);
            z10 = true;
        } else {
            str = null;
        }
        List list3 = (List) map.get("icy-name");
        if (list3 != null) {
            str2 = (String) list3.get(0);
            z10 = true;
        } else {
            str2 = null;
        }
        List list4 = (List) map.get("icy-url");
        if (list4 != null) {
            str3 = (String) list4.get(0);
            z10 = true;
        } else {
            str3 = null;
        }
        List list5 = (List) map.get("icy-pub");
        if (list5 != null) {
            zEquals = ((String) list5.get(0)).equals("1");
            z10 = true;
        } else {
            zEquals = false;
        }
        List list6 = (List) map.get("icy-metaint");
        if (list6 != null) {
            String str5 = (String) list6.get(0);
            try {
                int i14 = Integer.parseInt(str5);
                if (i14 > 0) {
                    i13 = i14;
                } else {
                    try {
                        u.h("IcyHeaders", "Invalid metadata interval: " + str5);
                        z11 = z10;
                    } catch (NumberFormatException unused3) {
                        i13 = i14;
                        u.h("IcyHeaders", "Invalid metadata interval: " + str5);
                    }
                }
                z10 = z11;
            } catch (NumberFormatException unused4) {
            }
        }
        if (z10) {
            return new b(i11, str, str2, str3, zEquals, i13);
        }
        return null;
    }

    @Override // androidx.media3.common.x.a
    public void a(v.b bVar) {
        String str = this.f78816c;
        if (str != null) {
            bVar.m0(str);
        }
        String str2 = this.f78815b;
        if (str2 != null) {
            bVar.c0(str2);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f78814a == bVar.f78814a && Objects.equals(this.f78815b, bVar.f78815b) && Objects.equals(this.f78816c, bVar.f78816c) && Objects.equals(this.f78817d, bVar.f78817d) && this.f78818e == bVar.f78818e && this.f78819f == bVar.f78819f;
    }

    @Override // androidx.media3.common.x.a
    public /* synthetic */ byte[] getWrappedMetadataBytes() {
        return w.a(this);
    }

    @Override // androidx.media3.common.x.a
    public /* synthetic */ r getWrappedMetadataFormat() {
        return w.b(this);
    }

    public int hashCode() {
        int i11 = (527 + this.f78814a) * 31;
        String str = this.f78815b;
        int iHashCode = (i11 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f78816c;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f78817d;
        return ((((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + (this.f78818e ? 1 : 0)) * 31) + this.f78819f;
    }

    public String toString() {
        return "IcyHeaders: name=\"" + this.f78816c + "\", genre=\"" + this.f78815b + "\", bitrate=" + this.f78814a + ", metadataInterval=" + this.f78819f;
    }
}
