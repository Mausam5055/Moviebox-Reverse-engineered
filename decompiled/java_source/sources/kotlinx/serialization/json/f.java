package kotlinx.serialization.json;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.tools.zip.UnixStat;

/* JADX INFO: loaded from: classes7.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f68255a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f68256b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f68257c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f68258d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f68259e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f68260f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String f68261g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f68262h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f68263i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final String f68264j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final boolean f68265k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final boolean f68266l;

    public f() {
        this(false, false, false, false, false, false, null, false, false, null, false, false, UnixStat.PERM_MASK, null);
    }

    public f(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, String prettyPrintIndent, boolean z16, boolean z17, String classDiscriminator, boolean z18, boolean z19) {
        Intrinsics.h(prettyPrintIndent, "prettyPrintIndent");
        Intrinsics.h(classDiscriminator, "classDiscriminator");
        this.f68255a = z10;
        this.f68256b = z11;
        this.f68257c = z12;
        this.f68258d = z13;
        this.f68259e = z14;
        this.f68260f = z15;
        this.f68261g = prettyPrintIndent;
        this.f68262h = z16;
        this.f68263i = z17;
        this.f68264j = classDiscriminator;
        this.f68265k = z18;
        this.f68266l = z19;
    }

    public /* synthetic */ f(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, String str, boolean z16, boolean z17, String str2, boolean z18, boolean z19, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? false : z10, (i11 & 2) != 0 ? false : z11, (i11 & 4) != 0 ? false : z12, (i11 & 8) != 0 ? false : z13, (i11 & 16) != 0 ? false : z14, (i11 & 32) != 0 ? true : z15, (i11 & 64) != 0 ? "    " : str, (i11 & 128) != 0 ? false : z16, (i11 & 256) != 0 ? false : z17, (i11 & 512) != 0 ? NativeComponentConstants.KEY_COMPONENT_TYPE : str2, (i11 & 1024) == 0 ? z18 : false, (i11 & 2048) == 0 ? z19 : true);
    }

    public final boolean a() {
        return this.f68265k;
    }

    public final boolean b() {
        return this.f68258d;
    }

    public final String c() {
        return this.f68264j;
    }

    public final boolean d() {
        return this.f68262h;
    }

    public final boolean e() {
        return this.f68255a;
    }

    public final boolean f() {
        return this.f68260f;
    }

    public final boolean g() {
        return this.f68256b;
    }

    public final boolean h() {
        return this.f68259e;
    }

    public final String i() {
        return this.f68261g;
    }

    public final boolean j() {
        return this.f68266l;
    }

    public final boolean k() {
        return this.f68263i;
    }

    public final boolean l() {
        return this.f68257c;
    }

    public String toString() {
        return "JsonConfiguration(encodeDefaults=" + this.f68255a + ", ignoreUnknownKeys=" + this.f68256b + ", isLenient=" + this.f68257c + ", allowStructuredMapKeys=" + this.f68258d + ", prettyPrint=" + this.f68259e + ", explicitNulls=" + this.f68260f + ", prettyPrintIndent='" + this.f68261g + "', coerceInputValues=" + this.f68262h + ", useArrayPolymorphism=" + this.f68263i + ", classDiscriminator='" + this.f68264j + "', allowSpecialFloatingPointValues=" + this.f68265k + ')';
    }
}
