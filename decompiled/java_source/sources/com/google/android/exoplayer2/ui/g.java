package com.google.android.exoplayer2.ui;

import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.exoplayer2.o1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public class g implements o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Resources f27123a;

    public g(Resources resources) {
        this.f27123a = (Resources) com.google.android.exoplayer2.util.a.e(resources);
    }

    private String b(o1 o1Var) {
        int i11 = o1Var.f25509y;
        if (i11 == -1 || i11 < 1) {
            return "";
        }
        if (i11 == 1) {
            return this.f27123a.getString(R$string.exo_track_mono);
        }
        if (i11 == 2) {
            return this.f27123a.getString(R$string.exo_track_stereo);
        }
        if (i11 == 6 || i11 == 7) {
            return this.f27123a.getString(R$string.exo_track_surround_5_point_1);
        }
        return i11 != 8 ? this.f27123a.getString(R$string.exo_track_surround) : this.f27123a.getString(R$string.exo_track_surround_7_point_1);
    }

    private String c(o1 o1Var) {
        int i11 = o1Var.f25492h;
        return i11 == -1 ? "" : this.f27123a.getString(R$string.exo_track_bitrate, Float.valueOf(i11 / 1000000.0f));
    }

    private String d(o1 o1Var) {
        return TextUtils.isEmpty(o1Var.f25486b) ? "" : o1Var.f25486b;
    }

    private String e(o1 o1Var) {
        String strJ = j(f(o1Var), h(o1Var));
        return TextUtils.isEmpty(strJ) ? d(o1Var) : strJ;
    }

    private String f(o1 o1Var) {
        String str = o1Var.f25487c;
        if (TextUtils.isEmpty(str) || C.LANGUAGE_UNDETERMINED.equals(str)) {
            return "";
        }
        Locale localeForLanguageTag = com.google.android.exoplayer2.util.p0.f27626a >= 21 ? Locale.forLanguageTag(str) : new Locale(str);
        Locale localeR = com.google.android.exoplayer2.util.p0.R();
        String displayName = localeForLanguageTag.getDisplayName(localeR);
        if (TextUtils.isEmpty(displayName)) {
            return "";
        }
        try {
            int iOffsetByCodePoints = displayName.offsetByCodePoints(0, 1);
            String strValueOf = String.valueOf(displayName.substring(0, iOffsetByCodePoints).toUpperCase(localeR));
            String strValueOf2 = String.valueOf(displayName.substring(iOffsetByCodePoints));
            displayName = strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
        } catch (IndexOutOfBoundsException unused) {
        }
        return displayName;
    }

    private String g(o1 o1Var) {
        int i11 = o1Var.f25501q;
        int i12 = o1Var.f25502r;
        return (i11 == -1 || i12 == -1) ? "" : this.f27123a.getString(R$string.exo_track_resolution, Integer.valueOf(i11), Integer.valueOf(i12));
    }

    private String h(o1 o1Var) {
        String string = (o1Var.f25489e & 2) != 0 ? this.f27123a.getString(R$string.exo_track_role_alternate) : "";
        if ((o1Var.f25489e & 4) != 0) {
            string = j(string, this.f27123a.getString(R$string.exo_track_role_supplementary));
        }
        if ((o1Var.f25489e & 8) != 0) {
            string = j(string, this.f27123a.getString(R$string.exo_track_role_commentary));
        }
        return (o1Var.f25489e & 1088) != 0 ? j(string, this.f27123a.getString(R$string.exo_track_role_closed_captions)) : string;
    }

    private static int i(o1 o1Var) {
        int iL = com.google.android.exoplayer2.util.w.l(o1Var.f25496l);
        if (iL != -1) {
            return iL;
        }
        if (com.google.android.exoplayer2.util.w.o(o1Var.f25493i) != null) {
            return 2;
        }
        if (com.google.android.exoplayer2.util.w.c(o1Var.f25493i) != null) {
            return 1;
        }
        if (o1Var.f25501q == -1 && o1Var.f25502r == -1) {
            return (o1Var.f25509y == -1 && o1Var.f25510z == -1) ? -1 : 1;
        }
        return 2;
    }

    private String j(String... strArr) {
        String string = "";
        for (String str : strArr) {
            if (str.length() > 0) {
                string = TextUtils.isEmpty(string) ? str : this.f27123a.getString(R$string.exo_item_list, string, str);
            }
        }
        return string;
    }

    @Override // com.google.android.exoplayer2.ui.o0
    public String a(o1 o1Var) {
        String strJ;
        int i11 = i(o1Var);
        if (i11 == 2) {
            strJ = j(h(o1Var), g(o1Var), c(o1Var));
        } else {
            strJ = i11 == 1 ? j(e(o1Var), b(o1Var), c(o1Var)) : e(o1Var);
        }
        return strJ.length() == 0 ? this.f27123a.getString(R$string.exo_track_unknown) : strJ;
    }
}
