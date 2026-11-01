package ia;

import android.text.TextUtils;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Sets;
import com.google.common.collect.g3;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
final class b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Pattern f65079d = Pattern.compile("\\s+");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final ImmutableSet f65080e = ImmutableSet.of("auto", "none");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final ImmutableSet f65081f = ImmutableSet.of("dot", "sesame", "circle");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final ImmutableSet f65082g = ImmutableSet.of("filled", MRAIDPresenter.OPEN);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final ImmutableSet f65083h = ImmutableSet.of("after", "before", "outside");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f65084a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f65085b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f65086c;

    private b(int i11, int i12, int i13) {
        this.f65084a = i11;
        this.f65085b = i12;
        this.f65086c = i13;
    }

    public static b a(String str) {
        if (str == null) {
            return null;
        }
        String strE = com.google.common.base.a.e(str.trim());
        if (strE.isEmpty()) {
            return null;
        }
        return b(ImmutableSet.copyOf(TextUtils.split(strE, f65079d)));
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0042  */
    /* JADX WARN: Code duplicated, block: B:55:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:57:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:63:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:65:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:66:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:68:0x0100  */
    /* JADX WARN: Code duplicated, block: B:69:0x0102  */
    /* JADX WARN: Code duplicated, block: B:71:0x0105 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:72:0x0107  */
    /* JADX WARN: Code duplicated, block: B:73:0x0109  */
    private static b b(ImmutableSet immutableSet) {
        byte b11;
        int i11;
        int i12;
        String str;
        int iHashCode;
        String str2 = (String) g3.f(Sets.e(f65083h, immutableSet), "outside");
        int iHashCode2 = str2.hashCode();
        int i13 = 2;
        byte b12 = 0;
        int i14 = -1;
        if (iHashCode2 != -1392885889) {
            if (iHashCode2 != -1106037339) {
                if (iHashCode2 == 92734940 && str2.equals("after")) {
                    b11 = 0;
                } else {
                    b11 = -1;
                }
            } else if (str2.equals("outside")) {
                b11 = 1;
            } else {
                b11 = -1;
            }
        } else if (str2.equals("before")) {
            b11 = 2;
        } else {
            b11 = -1;
        }
        if (b11 != 0) {
            i11 = b11 != 1 ? 1 : -2;
        } else {
            i11 = 2;
        }
        Sets.f fVarE = Sets.e(f65080e, immutableSet);
        if (!fVarE.isEmpty()) {
            String str3 = (String) fVarE.iterator().next();
            int iHashCode3 = str3.hashCode();
            if (iHashCode3 == 3005871) {
                str3.equals("auto");
            } else if (iHashCode3 == 3387192 && str3.equals("none")) {
                i14 = 0;
            }
            return new b(i14, 0, i11);
        }
        Sets.f fVarE2 = Sets.e(f65082g, immutableSet);
        Sets.f fVarE3 = Sets.e(f65081f, immutableSet);
        if (fVarE2.isEmpty() && fVarE3.isEmpty()) {
            return new b(-1, 0, i11);
        }
        String str4 = (String) g3.f(fVarE2, "filled");
        int iHashCode4 = str4.hashCode();
        if (iHashCode4 != -1274499742) {
            if (iHashCode4 == 3417674 && str4.equals(MRAIDPresenter.OPEN)) {
                i12 = 2;
            }
            str = (String) g3.f(fVarE3, "circle");
            iHashCode = str.hashCode();
            if (iHashCode != -1360216880) {
                if (iHashCode != -905816648) {
                    if (iHashCode == 99657 || !str.equals("dot")) {
                        b12 = -1;
                    }
                } else if (str.equals("sesame")) {
                    b12 = 1;
                } else {
                    b12 = -1;
                }
            } else if (str.equals("circle")) {
                b12 = 2;
            } else {
                b12 = -1;
            }
            if (b12 != 0) {
                if (b12 != 1) {
                    i13 = 1;
                } else {
                    i13 = 3;
                }
            }
            return new b(i13, i12, i11);
        }
        str4.equals("filled");
        i12 = 1;
        str = (String) g3.f(fVarE3, "circle");
        iHashCode = str.hashCode();
        if (iHashCode != -1360216880) {
            if (iHashCode != -905816648) {
                if (iHashCode == 99657) {
                    b12 = -1;
                } else {
                    b12 = -1;
                }
            } else if (str.equals("sesame")) {
                b12 = 1;
            } else {
                b12 = -1;
            }
        } else if (str.equals("circle")) {
            b12 = 2;
        } else {
            b12 = -1;
        }
        if (b12 != 0) {
            if (b12 != 1) {
                i13 = 1;
            } else {
                i13 = 3;
            }
        }
        return new b(i13, i12, i11);
    }
}
