package mk;

import com.transsion.ad.ps.model.RecommendInfo;
import com.transsion.bean.GameInfoType;
import com.transsion.commercialization.gameres.aha.c;
import kotlin.jvm.internal.Intrinsics;
import oh.b;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final GameInfoType f69613a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final RecommendInfo f69614b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c f69615c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private transient String f69616d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private transient String f69617e;

    /* JADX INFO: renamed from: mk.a$a, reason: collision with other inner class name */
    public /* synthetic */ class C0840a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f69618a;

        static {
            int[] iArr = new int[GameInfoType.values().length];
            try {
                iArr[GameInfoType.AHA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[GameInfoType.PS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f69618a = iArr;
        }
    }

    public a(GameInfoType type, RecommendInfo recommendInfo, c cVar) {
        Intrinsics.h(type, "type");
        this.f69613a = type;
        this.f69614b = recommendInfo;
        this.f69615c = cVar;
    }

    public final c a() {
        return this.f69615c;
    }

    public final String b() {
        String categoryName;
        RecommendInfo recommendInfo = this.f69614b;
        if (recommendInfo != null && (categoryName = recommendInfo.getCategoryName()) != null) {
            return categoryName;
        }
        c cVar = this.f69615c;
        String strB = cVar != null ? cVar.b() : null;
        return strB == null ? "" : strB;
    }

    public final String c() {
        String iconUrl;
        RecommendInfo recommendInfo = this.f69614b;
        if (recommendInfo != null && (iconUrl = recommendInfo.getIconUrl()) != null) {
            return iconUrl;
        }
        c cVar = this.f69615c;
        String strC = cVar != null ? cVar.c() : null;
        return strC == null ? "" : strC;
    }

    public final String d() {
        String name;
        RecommendInfo recommendInfo = this.f69614b;
        if (recommendInfo != null && (name = recommendInfo.getName()) != null) {
            return name;
        }
        c cVar = this.f69615c;
        String strF = cVar != null ? cVar.f() : null;
        return strF == null ? "" : strF;
    }

    public final String e() {
        String strD;
        int i11 = C0840a.f69618a[this.f69613a.ordinal()];
        if (i11 == 1) {
            c cVar = this.f69615c;
            return (cVar == null || (strD = cVar.d()) == null) ? "" : strD;
        }
        if (i11 != 2) {
            return "";
        }
        RecommendInfo recommendInfo = this.f69614b;
        if ((recommendInfo != null ? recommendInfo.getSize() : 0L) <= 0) {
            return "";
        }
        RecommendInfo recommendInfo2 = this.f69614b;
        return b.a(recommendInfo2 != null ? recommendInfo2.getSize() : 0L, 1);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f69613a == aVar.f69613a && Intrinsics.c(this.f69614b, aVar.f69614b) && Intrinsics.c(this.f69615c, aVar.f69615c);
    }

    public final String f() {
        Double dE;
        String star;
        RecommendInfo recommendInfo = this.f69614b;
        if (recommendInfo != null && (star = recommendInfo.getStar()) != null) {
            return star;
        }
        c cVar = this.f69615c;
        return (cVar == null || (dE = cVar.e()) == null) ? "" : dE.toString();
    }

    public final String g() {
        return this.f69617e;
    }

    public final String h() {
        return this.f69616d;
    }

    public int hashCode() {
        int iHashCode = this.f69613a.hashCode() * 31;
        RecommendInfo recommendInfo = this.f69614b;
        int iHashCode2 = (iHashCode + (recommendInfo == null ? 0 : recommendInfo.hashCode())) * 31;
        c cVar = this.f69615c;
        return iHashCode2 + (cVar != null ? cVar.hashCode() : 0);
    }

    public final RecommendInfo i() {
        return this.f69614b;
    }

    public final GameInfoType j() {
        return this.f69613a;
    }

    public final void k(String str) {
        this.f69617e = str;
    }

    public final void l(String str) {
        this.f69616d = str;
    }

    public String toString() {
        return "GameResInfo(type=" + this.f69613a + ", psInfo=" + this.f69614b + ", ahaInfo=" + this.f69615c + ")";
    }
}
