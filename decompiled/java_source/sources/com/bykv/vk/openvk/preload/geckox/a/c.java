package com.bykv.vk.openvk.preload.geckox.a;

import com.bykv.vk.openvk.preload.geckox.utils.f;
import java.io.File;
import java.io.FileFilter;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class c {
    public c(Field field) {
        com.bykv.vk.openvk.preload.falconx.a.a.a(field);
    }

    private static List<File> a(File[] fileArr) {
        long j11;
        ArrayList<File> arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        File file = null;
        long j12 = -1;
        for (File file2 : fileArr) {
            String name = file2.getName();
            if (name.endsWith("--updating")) {
                arrayList.add(file2);
            } else if (name.endsWith("--pending-delete")) {
                a(file2);
            } else {
                try {
                    long j13 = Long.parseLong(name);
                    if (j13 > j12) {
                        if (file != null) {
                            try {
                                arrayList2.add(file);
                            } catch (Exception unused) {
                                j12 = j13;
                                a(file2);
                            }
                        }
                        file = file2;
                        j12 = j13;
                    } else {
                        arrayList2.add(file2);
                    }
                } catch (Exception unused2) {
                }
            }
        }
        for (File file3 : arrayList) {
            String name2 = file3.getName();
            int iIndexOf = name2.indexOf("--updating");
            if (iIndexOf == -1) {
                a(file3);
            } else {
                try {
                    j11 = Long.parseLong(name2.substring(0, iIndexOf));
                } catch (NumberFormatException e11) {
                    e11.printStackTrace();
                    j11 = -1;
                }
                if (j11 <= j12) {
                    a(file3);
                }
            }
        }
        return arrayList2;
    }

    private static void a(final File file) {
        com.bykv.vk.openvk.preload.geckox.utils.c.a().execute(new Runnable() { // from class: com.bykv.vk.openvk.preload.geckox.a.c.3
            @Override // java.lang.Runnable
            public final void run() {
                com.bykv.vk.openvk.preload.geckox.utils.b.a(file);
            }
        });
    }

    public static void a(final String str) {
        f.a().execute(new Runnable() { // from class: com.bykv.vk.openvk.preload.geckox.a.c.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    c.c(str);
                } catch (Throwable th2) {
                    com.bykv.vk.openvk.preload.geckox.utils.a.a(new RuntimeException("delete old channel version failed，path：" + str, th2));
                }
            }
        });
    }

    public static boolean b(String str) {
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str);
            String str2 = File.separator;
            sb2.append(str2);
            sb2.append("update.lock");
            com.bykv.vk.openvk.preload.geckox.g.a aVarA = com.bykv.vk.openvk.preload.geckox.g.a.a(sb2.toString());
            if (aVarA == null) {
                return true;
            }
            try {
                com.bykv.vk.openvk.preload.geckox.g.b bVarA = com.bykv.vk.openvk.preload.geckox.g.b.a(str + str2 + "select.lock");
                try {
                    com.bykv.vk.openvk.preload.geckox.utils.b.c(new File(str));
                } catch (Throwable unused) {
                }
                bVarA.a();
                return true;
            } finally {
                aVarA.a();
            }
        } catch (Throwable unused2) {
            return false;
        }
    }

    static /* synthetic */ void c(String str) throws Exception {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        String str2 = File.separator;
        sb2.append(str2);
        sb2.append("update.lock");
        com.bykv.vk.openvk.preload.geckox.g.a aVarA = com.bykv.vk.openvk.preload.geckox.g.a.a(sb2.toString());
        if (aVarA != null) {
            try {
                com.bykv.vk.openvk.preload.geckox.g.b bVarA = com.bykv.vk.openvk.preload.geckox.g.b.a(str + str2 + "select.lock");
                try {
                    File[] fileArrListFiles = new File(str).listFiles(new FileFilter() { // from class: com.bykv.vk.openvk.preload.geckox.a.c.2
                        @Override // java.io.FileFilter
                        public final boolean accept(File file) {
                            return file.isDirectory();
                        }
                    });
                    List<File> listA = (fileArrListFiles == null || fileArrListFiles.length == 0 || fileArrListFiles.length == 1) ? null : a(fileArrListFiles);
                    if (listA != null && !listA.isEmpty()) {
                        Iterator<File> it = listA.iterator();
                        while (it.hasNext()) {
                            com.bykv.vk.openvk.preload.geckox.g.c.c(it.next().getAbsolutePath() + File.separator + "using.lock");
                        }
                        bVarA.a();
                        aVarA.a();
                        return;
                    }
                    bVarA.a();
                    aVarA.a();
                } catch (Throwable th2) {
                    bVarA.a();
                    throw th2;
                }
            } catch (Throwable th3) {
                aVarA.a();
                throw th3;
            }
        }
    }
}
