package c8;

import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
public class b {
    public static void a(File file, f8.a aVar) {
        String name = file.getName();
        String parent = file.getParent();
        int iA = aVar.a();
        if (iA <= 0) {
            if (iA == 0) {
                for (int i11 = 1; i11 < Integer.MAX_VALUE; i11++) {
                    File file2 = new File(parent, aVar.c(name, i11));
                    if (!file2.exists()) {
                        file.renameTo(file2);
                        return;
                    }
                }
                return;
            }
            return;
        }
        File file3 = new File(parent, aVar.c(name, iA));
        if (file3.exists()) {
            file3.delete();
        }
        for (int i12 = iA - 1; i12 > 0; i12--) {
            File file4 = new File(parent, aVar.c(name, i12));
            if (file4.exists()) {
                file4.renameTo(new File(parent, aVar.c(name, i12 + 1)));
            }
        }
        file.renameTo(new File(parent, aVar.c(name, 1)));
    }

    public static void b(f8.a aVar) {
        int iA = aVar.a();
        if (iA < 0) {
            throw new IllegalArgumentException("Max backup index should not be less than 0");
        }
        if (iA != Integer.MAX_VALUE) {
            return;
        }
        throw new IllegalArgumentException("Max backup index too big: " + iA);
    }
}
