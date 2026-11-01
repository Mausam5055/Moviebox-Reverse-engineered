package vw;

import androidx.compose.foundation.e;
import com.transsion.usercenter.setting.bean.UserSettingType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f77466a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final UserSettingType f77467b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f77468c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Integer f77469d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f77470e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f77471f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f77472g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f77473h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f77474i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f77475j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f77476k;

    public b(int i11, UserSettingType userSettingType, String str, Integer num, int i12, String str2, boolean z10, boolean z11, boolean z12, boolean z13) {
        this.f77466a = i11;
        this.f77467b = userSettingType;
        this.f77468c = str;
        this.f77469d = num;
        this.f77470e = i12;
        this.f77471f = str2;
        this.f77472g = z10;
        this.f77473h = z11;
        this.f77474i = z12;
        this.f77475j = z13;
    }

    public /* synthetic */ b(int i11, UserSettingType userSettingType, String str, Integer num, int i12, String str2, boolean z10, boolean z11, boolean z12, boolean z13, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(i11, (i13 & 2) != 0 ? null : userSettingType, (i13 & 4) != 0 ? null : str, (i13 & 8) != 0 ? null : num, (i13 & 16) != 0 ? 1 : i12, (i13 & 32) == 0 ? str2 : null, (i13 & 64) != 0 ? false : z10, (i13 & 128) != 0 ? false : z11, (i13 & 256) == 0 ? z12 : true, (i13 & 512) == 0 ? z13 : false);
    }

    public final Integer a() {
        return this.f77469d;
    }

    public final String b() {
        return this.f77468c;
    }

    public final boolean c() {
        return this.f77476k;
    }

    public final boolean d() {
        return this.f77474i;
    }

    public final boolean e() {
        return this.f77475j;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f77466a == bVar.f77466a && this.f77467b == bVar.f77467b && Intrinsics.c(this.f77468c, bVar.f77468c) && Intrinsics.c(this.f77469d, bVar.f77469d) && this.f77470e == bVar.f77470e && Intrinsics.c(this.f77471f, bVar.f77471f) && this.f77472g == bVar.f77472g && this.f77473h == bVar.f77473h && this.f77474i == bVar.f77474i && this.f77475j == bVar.f77475j;
    }

    public final boolean f() {
        return this.f77473h;
    }

    public final String g() {
        return this.f77471f;
    }

    public final boolean h() {
        return this.f77472g;
    }

    public int hashCode() {
        int i11 = this.f77466a * 31;
        UserSettingType userSettingType = this.f77467b;
        int iHashCode = (i11 + (userSettingType == null ? 0 : userSettingType.hashCode())) * 31;
        String str = this.f77468c;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.f77469d;
        int iHashCode3 = (((iHashCode2 + (num == null ? 0 : num.hashCode())) * 31) + this.f77470e) * 31;
        String str2 = this.f77471f;
        return ((((((((iHashCode3 + (str2 != null ? str2.hashCode() : 0)) * 31) + e.a(this.f77472g)) * 31) + e.a(this.f77473h)) * 31) + e.a(this.f77474i)) * 31) + e.a(this.f77475j);
    }

    public final int i() {
        return this.f77466a;
    }

    public final UserSettingType j() {
        return this.f77467b;
    }

    public final int k() {
        return this.f77470e;
    }

    public final void l(Integer num) {
        this.f77469d = num;
    }

    public final void m(String str) {
        this.f77468c = str;
    }

    public final void n(boolean z10) {
        this.f77476k = z10;
    }

    public final void o(boolean z10) {
        this.f77475j = z10;
    }

    public final void p(boolean z10) {
        this.f77473h = z10;
    }

    public final void q(String str) {
        this.f77471f = str;
    }

    public String toString() {
        return "UserSettingEntity(titleResId=" + this.f77466a + ", type=" + this.f77467b + ", content=" + this.f77468c + ", bgId=" + this.f77469d + ", uiType=" + this.f77470e + ", tips=" + this.f77471f + ", tipsLinearColor=" + this.f77472g + ", switch=" + this.f77473h + ", showDivider=" + this.f77474i + ", showNewIcon=" + this.f77475j + ")";
    }
}
