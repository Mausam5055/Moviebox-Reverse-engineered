package l2;

import androidx.media3.common.util.a1;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class e0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Pattern f68564c = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f68565a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f68566b = -1;

    private boolean b(String str) {
        Matcher matcher = f68564c.matcher(str);
        if (!matcher.find()) {
            return false;
        }
        try {
            int i11 = Integer.parseInt((String) a1.i(matcher.group(1)), 16);
            int i12 = Integer.parseInt((String) a1.i(matcher.group(2)), 16);
            if (i11 <= 0 && i12 <= 0) {
                return false;
            }
            this.f68565a = i11;
            this.f68566b = i12;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public boolean a() {
        return (this.f68565a == -1 || this.f68566b == -1) ? false : true;
    }

    public boolean c(androidx.media3.common.x xVar) {
        for (int i11 = 0; i11 < xVar.e(); i11++) {
            androidx.media3.common.x.a aVarD = xVar.d(i11);
            if (aVarD instanceof z2.e) {
                z2.e eVar = (z2.e) aVarD;
                if ("iTunSMPB".equals(eVar.f79181c) && b(eVar.f79182d)) {
                    return true;
                }
            } else if (aVarD instanceof z2.k) {
                z2.k kVar = (z2.k) aVarD;
                if ("com.apple.iTunes".equals(kVar.f79194b) && "iTunSMPB".equals(kVar.f79195c) && b(kVar.f79196d)) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return false;
    }
}
