package androidx.media3.ui;

import android.content.res.Resources;
import android.text.TextUtils;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class f implements z0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Resources f13690a;

    public f(Resources resources) {
        this.f13690a = (Resources) androidx.media3.common.util.a.e(resources);
    }

    private String b(androidx.media3.common.r rVar) {
        int i11 = rVar.E;
        if (i11 == -1 || i11 < 1) {
            return "";
        }
        if (i11 == 1) {
            return this.f13690a.getString(R$string.exo_track_mono);
        }
        if (i11 == 2) {
            return this.f13690a.getString(R$string.exo_track_stereo);
        }
        if (i11 == 6 || i11 == 7) {
            return this.f13690a.getString(R$string.exo_track_surround_5_point_1);
        }
        return i11 != 8 ? this.f13690a.getString(R$string.exo_track_surround) : this.f13690a.getString(R$string.exo_track_surround_7_point_1);
    }

    private String c(androidx.media3.common.r rVar) {
        int i11 = rVar.f10156j;
        return i11 == -1 ? "" : this.f13690a.getString(R$string.exo_track_bitrate, Float.valueOf(i11 / 1000000.0f));
    }

    private String d(androidx.media3.common.r rVar) {
        return TextUtils.isEmpty(rVar.f10148b) ? "" : rVar.f10148b;
    }

    private String e(androidx.media3.common.r rVar) {
        String strJ = j(f(rVar), h(rVar));
        return TextUtils.isEmpty(strJ) ? d(rVar) : strJ;
    }

    private String f(androidx.media3.common.r rVar) {
        String str = rVar.f10150d;
        if (TextUtils.isEmpty(str) || C.LANGUAGE_UNDETERMINED.equals(str)) {
            return "";
        }
        Locale localeForLanguageTag = Locale.forLanguageTag(str);
        Locale localeY = androidx.media3.common.util.a1.Y();
        String displayName = localeForLanguageTag.getDisplayName(localeY);
        if (TextUtils.isEmpty(displayName)) {
            return "";
        }
        try {
            int iOffsetByCodePoints = displayName.offsetByCodePoints(0, 1);
            return displayName.substring(0, iOffsetByCodePoints).toUpperCase(localeY) + displayName.substring(iOffsetByCodePoints);
        } catch (IndexOutOfBoundsException unused) {
            return displayName;
        }
    }

    private String g(androidx.media3.common.r rVar) {
        int i11 = rVar.f10168v;
        int i12 = rVar.f10169w;
        return (i11 == -1 || i12 == -1) ? "" : this.f13690a.getString(R$string.exo_track_resolution, Integer.valueOf(i11), Integer.valueOf(i12));
    }

    private String h(androidx.media3.common.r rVar) {
        String string = (rVar.f10152f & 2) != 0 ? this.f13690a.getString(R$string.exo_track_role_alternate) : "";
        if ((rVar.f10152f & 4) != 0) {
            string = j(string, this.f13690a.getString(R$string.exo_track_role_supplementary));
        }
        if ((rVar.f10152f & 8) != 0) {
            string = j(string, this.f13690a.getString(R$string.exo_track_role_commentary));
        }
        return (rVar.f10152f & 1088) != 0 ? j(string, this.f13690a.getString(R$string.exo_track_role_closed_captions)) : string;
    }

    private static int i(androidx.media3.common.r rVar) {
        int iK = androidx.media3.common.y.k(rVar.f10161o);
        if (iK != -1) {
            return iK;
        }
        if (androidx.media3.common.y.n(rVar.f10157k) != null) {
            return 2;
        }
        if (androidx.media3.common.y.c(rVar.f10157k) != null) {
            return 1;
        }
        if (rVar.f10168v == -1 && rVar.f10169w == -1) {
            return (rVar.E == -1 && rVar.F == -1) ? -1 : 1;
        }
        return 2;
    }

    private String j(String... strArr) {
        String string = "";
        for (String str : strArr) {
            if (str.length() > 0) {
                string = TextUtils.isEmpty(string) ? str : this.f13690a.getString(R$string.exo_item_list, string, str);
            }
        }
        return string;
    }

    @Override // androidx.media3.ui.z0
    public String a(androidx.media3.common.r rVar) {
        String strJ;
        int i11 = i(rVar);
        if (i11 == 2) {
            strJ = j(h(rVar), g(rVar), c(rVar));
        } else {
            strJ = i11 == 1 ? j(e(rVar), b(rVar), c(rVar)) : e(rVar);
        }
        if (strJ.length() != 0) {
            return strJ;
        }
        String str = rVar.f10150d;
        return (str == null || str.trim().isEmpty()) ? this.f13690a.getString(R$string.exo_track_unknown) : this.f13690a.getString(R$string.exo_track_unknown_name, str);
    }
}
