package j5;

import com.cloud.tmc.miniutils.constant.TimeConstants;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f65945a = new a(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Pattern f65946b = Pattern.compile("\\{(\\d+)\\}\\{(\\d+)\\}(.*)");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Pattern f65947c = Pattern.compile("(\\d+):(\\d+):(\\d+)[:\\.](\\d+)");

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private final int a(String str) {
        Matcher matcher = f65947c.matcher(str);
        if (!matcher.matches()) {
            return 0;
        }
        String strGroup = matcher.group(1);
        int i11 = strGroup != null ? Integer.parseInt(strGroup) : 0;
        String strGroup2 = matcher.group(2);
        int i12 = strGroup2 != null ? Integer.parseInt(strGroup2) : 0;
        String strGroup3 = matcher.group(3);
        int i13 = strGroup3 != null ? Integer.parseInt(strGroup3) : 0;
        String strGroup4 = matcher.group(4);
        return ((strGroup4 != null ? Integer.parseInt(strGroup4) : 0) * 10) + (i13 * 1000) + (i12 * 60000) + (i11 * TimeConstants.HOUR);
    }

    private final void c(BufferedReader bufferedReader, String str, k5.d dVar) {
        k5.b bVar = new k5.b();
        while (str != null && str.length() != 0) {
            int length = str.length() - 1;
            int i11 = 0;
            boolean z10 = false;
            while (i11 <= length) {
                boolean z11 = Intrinsics.j(str.charAt(!z10 ? i11 : length), 32) <= 0;
                if (z10) {
                    if (!z11) {
                        break;
                    } else {
                        length--;
                    }
                } else if (z11) {
                    i11++;
                } else {
                    z10 = true;
                }
            }
            Matcher matcher = f65946b.matcher(str.subSequence(i11, length + 1).toString());
            try {
                if (matcher.matches()) {
                    String strGroup = matcher.group(1);
                    String strGroup2 = matcher.group(2);
                    long j11 = 23976;
                    long j12 = (((long) (strGroup != null ? Integer.parseInt(strGroup) : 0)) * 1000000) / j11;
                    long j13 = (((long) (strGroup2 != null ? Integer.parseInt(strGroup2) : 0)) * 1000000) / j11;
                    k5.c cVar = new k5.c("", "");
                    cVar.f66654a = (int) j12;
                    bVar.f66651b = cVar;
                    k5.c cVar2 = new k5.c("", "");
                    cVar2.f66654a = (int) j13;
                    bVar.f66652c = cVar2;
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
            try {
                if (matcher.matches()) {
                    bVar.f66653d = matcher.group(3);
                }
            } catch (Throwable th3) {
                th3.printStackTrace();
            }
            int i12 = bVar.f66651b.f66654a;
            while (dVar.f66663i.containsKey(Integer.valueOf(i12))) {
                i12++;
            }
            TreeMap treeMap = dVar.f66663i;
            Intrinsics.g(treeMap, "tto.captions");
            treeMap.put(Integer.valueOf(i12), bVar);
            try {
                str = bufferedReader.readLine();
            } catch (Throwable unused) {
                str = "";
            }
            bVar = new k5.b();
        }
        dVar.f66667m = true;
    }

    private final void d(BufferedReader bufferedReader, String str, k5.d dVar) throws IOException {
        k5.b bVar = new k5.b();
        while (str != null && !StringsKt.W(str, "[COLF]", false, 2, null)) {
            str = bufferedReader.readLine();
        }
        while (str != null && str.length() != 0) {
            String line = bufferedReader.readLine();
            if (line != null) {
                int length = line.length() - 1;
                int i11 = 0;
                boolean z10 = false;
                while (i11 <= length) {
                    boolean z11 = Intrinsics.j(line.charAt(!z10 ? i11 : length), 32) <= 0;
                    if (z10) {
                        if (!z11) {
                            break;
                        } else {
                            length--;
                        }
                    } else if (z11) {
                        i11++;
                    } else {
                        z10 = true;
                    }
                }
                str = line.subSequence(i11, length + 1).toString();
            } else {
                str = null;
            }
            if (str != null) {
                try {
                    List listS0 = StringsKt.S0(str, new String[]{","}, false, 0, 6, null);
                    if (listS0 != null) {
                        String str2 = (String) listS0.get(0);
                        String str3 = (String) listS0.get(1);
                        int iA = a(str2);
                        int iA2 = a(str3);
                        k5.c cVar = new k5.c("", "");
                        cVar.f66654a = iA;
                        bVar.f66651b = cVar;
                        k5.c cVar2 = new k5.c("", "");
                        cVar2.f66654a = iA2;
                        bVar.f66652c = cVar2;
                    }
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            }
            try {
                String line2 = bufferedReader.readLine();
                if (line2 != null) {
                    int length2 = line2.length() - 1;
                    int i12 = 0;
                    boolean z12 = false;
                    while (i12 <= length2) {
                        boolean z13 = Intrinsics.j(line2.charAt(!z12 ? i12 : length2), 32) <= 0;
                        if (z12) {
                            if (!z13) {
                                break;
                            } else {
                                length2--;
                            }
                        } else if (z13) {
                            i12++;
                        } else {
                            z12 = true;
                        }
                    }
                    str = line2.subSequence(i12, length2 + 1).toString();
                } else {
                    str = null;
                }
                bVar.f66653d = str;
            } catch (Throwable th3) {
                th3.printStackTrace();
            }
            try {
                bufferedReader.readLine();
            } catch (Throwable unused) {
            }
            int i13 = bVar.f66651b.f66654a;
            while (dVar.f66663i.containsKey(Integer.valueOf(i13))) {
                i13++;
            }
            TreeMap treeMap = dVar.f66663i;
            Intrinsics.g(treeMap, "tto.captions");
            treeMap.put(Integer.valueOf(i13), bVar);
            bVar = new k5.b();
        }
        dVar.f66667m = true;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0073  */
    /* JADX WARN: Code duplicated, block: B:40:0x0086 A[DONT_GENERATE] */
    public k5.d b(String str, String unicode, InputStream inputStream) throws IOException {
        String string;
        Intrinsics.h(unicode, "unicode");
        k5.d dVar = new k5.d();
        BufferedReader bufferedReader = new BufferedReader(unicode.length() > 0 ? new InputStreamReader(inputStream, unicode) : new InputStreamReader(inputStream));
        dVar.f66659e = str;
        String line = bufferedReader.readLine();
        if (line != null) {
            int length = line.length() - 1;
            int i11 = 0;
            boolean z10 = false;
            while (i11 <= length) {
                boolean z11 = Intrinsics.j(line.charAt(!z10 ? i11 : length), 32) <= 0;
                if (z10) {
                    if (!z11) {
                        break;
                    }
                    length--;
                } else if (z11) {
                    i11++;
                } else {
                    z10 = true;
                }
            }
            string = line.subSequence(i11, length + 1).toString();
        } else {
            string = null;
        }
        if (string != null) {
            try {
                if (StringsKt.W(string, "{", false, 2, null)) {
                    c(bufferedReader, string, dVar);
                } else if (string != null && StringsKt.W(string, "[INFORMATION]", false, 2, null)) {
                    d(bufferedReader, string, dVar);
                }
                if (inputStream != null) {
                }
            } catch (Throwable th2) {
                try {
                    th2.printStackTrace();
                } finally {
                    if (inputStream != null) {
                        inputStream.close();
                    }
                }
            }
        } else {
            if (string != null) {
                d(bufferedReader, string, dVar);
            }
            if (inputStream != null) {
            }
        }
        return dVar;
    }
}
