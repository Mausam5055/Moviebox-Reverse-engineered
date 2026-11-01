package androidx.window.core;

import java.math.BigInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
public final class Version implements Comparable {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f15278f = new a(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Version f15279g = new Version(0, 0, 0, "");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Version f15280h = new Version(0, 1, 0, "");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Version f15281i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Version f15282j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f15283a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f15284b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f15285c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f15286d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f15287e;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Version a() {
            return Version.f15280h;
        }

        public final Version b(String str) {
            if (str == null || StringsKt.q0(str)) {
                return null;
            }
            Matcher matcher = Pattern.compile("(\\d+)(?:\\.(\\d+))(?:\\.(\\d+))(?:-(.+))?").matcher(str);
            if (!matcher.matches()) {
                return null;
            }
            String strGroup = matcher.group(1);
            Integer numValueOf = strGroup == null ? null : Integer.valueOf(Integer.parseInt(strGroup));
            if (numValueOf == null) {
                return null;
            }
            int iIntValue = numValueOf.intValue();
            String strGroup2 = matcher.group(2);
            Integer numValueOf2 = strGroup2 == null ? null : Integer.valueOf(Integer.parseInt(strGroup2));
            if (numValueOf2 == null) {
                return null;
            }
            int iIntValue2 = numValueOf2.intValue();
            String strGroup3 = matcher.group(3);
            Integer numValueOf3 = strGroup3 == null ? null : Integer.valueOf(Integer.parseInt(strGroup3));
            if (numValueOf3 == null) {
                return null;
            }
            int iIntValue3 = numValueOf3.intValue();
            String description = matcher.group(4) != null ? matcher.group(4) : "";
            Intrinsics.g(description, "description");
            return new Version(iIntValue, iIntValue2, iIntValue3, description, null);
        }
    }

    static {
        Version version = new Version(1, 0, 0, "");
        f15281i = version;
        f15282j = version;
    }

    private Version(int i11, int i12, int i13, String str) {
        this.f15283a = i11;
        this.f15284b = i12;
        this.f15285c = i13;
        this.f15286d = str;
        this.f15287e = LazyKt.b(new Function0<BigInteger>() { // from class: androidx.window.core.Version$bigInteger$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final BigInteger invoke() {
                return BigInteger.valueOf(this.this$0.e()).shiftLeft(32).or(BigInteger.valueOf(this.this$0.f())).shiftLeft(32).or(BigInteger.valueOf(this.this$0.g()));
            }
        });
    }

    public /* synthetic */ Version(int i11, int i12, int i13, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(i11, i12, i13, str);
    }

    private final BigInteger d() {
        Object value = this.f15287e.getValue();
        Intrinsics.g(value, "<get-bigInteger>(...)");
        return (BigInteger) value;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public int compareTo(Version other) {
        Intrinsics.h(other, "other");
        return d().compareTo(other.d());
    }

    public final int e() {
        return this.f15283a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Version)) {
            return false;
        }
        Version version = (Version) obj;
        return this.f15283a == version.f15283a && this.f15284b == version.f15284b && this.f15285c == version.f15285c;
    }

    public final int f() {
        return this.f15284b;
    }

    public final int g() {
        return this.f15285c;
    }

    public int hashCode() {
        return ((((527 + this.f15283a) * 31) + this.f15284b) * 31) + this.f15285c;
    }

    public String toString() {
        return this.f15283a + '.' + this.f15284b + '.' + this.f15285c + (!StringsKt.q0(this.f15286d) ? Intrinsics.q("-", this.f15286d) : "");
    }
}
