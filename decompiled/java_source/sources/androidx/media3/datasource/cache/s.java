package androidx.media3.datasource.cache;

import androidx.media3.common.util.a1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.File;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
final class s extends h {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Pattern f10868g = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v1\\.exo$", 32);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Pattern f10869h = Pattern.compile("^(.+)\\.(\\d+)\\.(\\d+)\\.v2\\.exo$", 32);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final Pattern f10870i = Pattern.compile("^(\\d+)\\.(\\d+)\\.(\\d+)\\.v3\\.exo$", 32);

    private s(String str, long j11, long j12, long j13, File file) {
        super(str, j11, j12, j13, file);
    }

    public static s f(File file, long j11, long j12, k kVar) {
        File file2;
        String strI;
        String name = file.getName();
        if (name.endsWith(".v3.exo")) {
            file2 = file;
        } else {
            File fileK = k(file, kVar);
            if (fileK == null) {
                return null;
            }
            file2 = fileK;
            name = fileK.getName();
        }
        Matcher matcher = f10870i.matcher(name);
        if (!matcher.matches() || (strI = kVar.i(Integer.parseInt((String) androidx.media3.common.util.a.e(matcher.group(1))))) == null) {
            return null;
        }
        long length = j11 == -1 ? file2.length() : j11;
        if (length == 0) {
            return null;
        }
        return new s(strI, Long.parseLong((String) androidx.media3.common.util.a.e(matcher.group(2))), length, j12 == C.TIME_UNSET ? Long.parseLong((String) androidx.media3.common.util.a.e(matcher.group(3))) : j12, file2);
    }

    public static s g(File file, long j11, k kVar) {
        return f(file, j11, C.TIME_UNSET, kVar);
    }

    public static s h(String str, long j11, long j12) {
        return new s(str, j11, j12, C.TIME_UNSET, null);
    }

    public static s i(String str, long j11) {
        return new s(str, j11, -1L, C.TIME_UNSET, null);
    }

    public static File j(File file, int i11, long j11, long j12) {
        return new File(file, i11 + "." + j11 + "." + j12 + ".v3.exo");
    }

    private static File k(File file, k kVar) {
        String strX1;
        String name = file.getName();
        Matcher matcher = f10869h.matcher(name);
        if (matcher.matches()) {
            strX1 = a1.x1((String) androidx.media3.common.util.a.e(matcher.group(1)));
        } else {
            matcher = f10868g.matcher(name);
            strX1 = matcher.matches() ? (String) androidx.media3.common.util.a.e(matcher.group(1)) : null;
        }
        if (strX1 == null) {
            return null;
        }
        File fileJ = j((File) androidx.media3.common.util.a.i(file.getParentFile()), kVar.e(strX1), Long.parseLong((String) androidx.media3.common.util.a.e(matcher.group(2))), Long.parseLong((String) androidx.media3.common.util.a.e(matcher.group(3))));
        if (file.renameTo(fileJ)) {
            return fileJ;
        }
        return null;
    }

    public s e(File file, long j11) {
        androidx.media3.common.util.a.g(this.f10821d);
        return new s(this.f10818a, this.f10819b, this.f10820c, j11, file);
    }
}
