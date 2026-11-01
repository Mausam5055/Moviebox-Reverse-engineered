package ti;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.File;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: loaded from: classes6.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final h f76259a = new h();

    private h() {
    }

    private final void a(File file, Map map) {
        File[] fileArrListFiles;
        if (file.isFile()) {
            map.put(file.getAbsolutePath(), d(file.length()));
            return;
        }
        if (!file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            h hVar = f76259a;
            Intrinsics.e(file2);
            hVar.a(file2, map);
        }
    }

    private final String d(long j11) {
        if (j11 >= 1073741824) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            String str = String.format(Locale.US, "%.1fG", Arrays.copyOf(new Object[]{Double.valueOf(j11 / 1.073741824E9d)}, 1));
            Intrinsics.g(str, "format(...)");
            return str;
        }
        if (j11 >= PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.f67289a;
            String str2 = String.format(Locale.US, "%.1fM", Arrays.copyOf(new Object[]{Double.valueOf(j11 / 1048576.0d)}, 1));
            Intrinsics.g(str2, "format(...)");
            return str2;
        }
        if (j11 >= 1024) {
            StringCompanionObject stringCompanionObject3 = StringCompanionObject.f67289a;
            String str3 = String.format(Locale.US, "%.1fK", Arrays.copyOf(new Object[]{Double.valueOf(j11 / 1024.0d)}, 1));
            Intrinsics.g(str3, "format(...)");
            return str3;
        }
        return j11 + "B";
    }

    public final void b(String directoryPath) {
        Intrinsics.h(directoryPath, "directoryPath");
        File file = new File(directoryPath);
        if (!file.exists()) {
            file.mkdirs();
        }
        oi.a.c(oi.a.f71022a, h.class.getSimpleName() + " --> createDirectoryIfNotExists() --> 目标文件夹 创建成功 --> directoryPath = " + directoryPath, 0, false, 6, null);
    }

    public final void c(File file, HashSet set) {
        File[] fileArrListFiles;
        Intrinsics.h(file, "file");
        Intrinsics.h(set, "set");
        if (!file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) {
            return;
        }
        if (fileArrListFiles.length == 0) {
            return;
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                h hVar = f76259a;
                Intrinsics.e(file2);
                hVar.c(file2, set);
            } else if (file2.isFile() && !set.contains(file2.getPath())) {
                file2.delete();
            }
        }
    }

    public final Map e(String folderPath) {
        Intrinsics.h(folderPath, "folderPath");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        a(new File(folderPath), linkedHashMap);
        return linkedHashMap;
    }

    public final long f(String folderPath) {
        File[] fileArrListFiles;
        long length;
        Intrinsics.h(folderPath, "folderPath");
        File file = new File(folderPath);
        long j11 = 0;
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
            Iterator itA = ArrayIteratorKt.a(fileArrListFiles);
            while (itA.hasNext()) {
                File file2 = (File) itA.next();
                if (file2.isFile()) {
                    length = file2.length();
                } else if (file2.isDirectory()) {
                    String absolutePath = file2.getAbsolutePath();
                    Intrinsics.g(absolutePath, "getAbsolutePath(...)");
                    length = f(absolutePath);
                }
                j11 += length;
            }
        }
        return j11;
    }

    public final String g(String folderPath) {
        Intrinsics.h(folderPath, "folderPath");
        long jF = f(folderPath);
        if (jF >= 1073741824) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            String str = String.format(Locale.US, "%.1fG", Arrays.copyOf(new Object[]{Double.valueOf(jF / 1.073741824E9d)}, 1));
            Intrinsics.g(str, "format(...)");
            return str;
        }
        if (jF >= PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.f67289a;
            String str2 = String.format(Locale.US, "%.1fM", Arrays.copyOf(new Object[]{Double.valueOf(jF / 1048576.0d)}, 1));
            Intrinsics.g(str2, "format(...)");
            return str2;
        }
        if (jF >= 1024) {
            StringCompanionObject stringCompanionObject3 = StringCompanionObject.f67289a;
            String str3 = String.format(Locale.US, "%.1fK", Arrays.copyOf(new Object[]{Double.valueOf(jF / 1024.0d)}, 1));
            Intrinsics.g(str3, "format(...)");
            return str3;
        }
        return jF + "B";
    }

    public final boolean h(String filePath) {
        Intrinsics.h(filePath, "filePath");
        return new File(filePath).exists();
    }
}
