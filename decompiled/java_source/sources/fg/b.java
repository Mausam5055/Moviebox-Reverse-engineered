package fg;

import android.content.Context;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.utils.NetworkUtil;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static File f62391b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static File f62392c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Context f62393d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f62390a = new b();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static AtomicBoolean f62394e = new AtomicBoolean(false);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Comparator f62395f = new Comparator() { // from class: fg.a
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return b.c((File) obj, (File) obj2);
        }
    };

    private b() {
    }

    private final boolean b(File file) {
        if (file == null || file.exists()) {
            return true;
        }
        return file.mkdir();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int c(File file, File file2) {
        return (int) (file2.lastModified() - file.lastModified());
    }

    private final File d(String str) {
        if (f62392c == null) {
            Context context = f62393d;
            f62392c = context == null ? null : context.getCacheDir();
        }
        return new File(f62392c, str);
    }

    private final File e(String str) {
        b(f62391b);
        return new File(f62391b, str);
    }

    public final synchronized File[] f() {
        File file = f62391b;
        if (file == null) {
            return null;
        }
        File[] fileArrListFiles = file != null ? file.listFiles() : null;
        if (fileArrListFiles != null) {
            Arrays.sort(fileArrListFiles, f62395f);
        }
        return fileArrListFiles;
    }

    public final void g(Context context) {
        if (context != null && f62394e.compareAndSet(false, true)) {
            f62393d = context;
            f62391b = new File(context.getFilesDir(), "strategy");
        }
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0072  */
    /* JADX WARN: Code duplicated, block: B:33:0x0073 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:34:0x0075  */
    /* JADX WARN: Code duplicated, block: B:35:0x0076 A[Catch: all -> 0x004f, TryCatch #6 {, blocks: (B:3:0x0001, B:7:0x000a, B:9:0x0010, B:10:0x002c, B:11:0x0038, B:12:0x004b, B:30:0x006b, B:43:0x00bd, B:46:0x00c2, B:37:0x007c, B:38:0x00af, B:35:0x0076, B:24:0x005e, B:26:0x0063, B:29:0x0068), top: B:63:0x0001, inners: #0, #5 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x007c A[Catch: all -> 0x004f, TryCatch #6 {, blocks: (B:3:0x0001, B:7:0x000a, B:9:0x0010, B:10:0x002c, B:11:0x0038, B:12:0x004b, B:30:0x006b, B:43:0x00bd, B:46:0x00c2, B:37:0x007c, B:38:0x00af, B:35:0x0076, B:24:0x005e, B:26:0x0063, B:29:0x0068), top: B:63:0x0001, inners: #0, #5 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00af A[Catch: all -> 0x004f, TRY_LEAVE, TryCatch #6 {, blocks: (B:3:0x0001, B:7:0x000a, B:9:0x0010, B:10:0x002c, B:11:0x0038, B:12:0x004b, B:30:0x006b, B:43:0x00bd, B:46:0x00c2, B:37:0x007c, B:38:0x00af, B:35:0x0076, B:24:0x005e, B:26:0x0063, B:29:0x0068), top: B:63:0x0001, inners: #0, #5 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x00b8 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:51:0x0063 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:37:0x007c, please report this as an issue */
    public final synchronized void h(Serializable serializable, File toFile) {
        File fileD;
        boolean z10;
        long jCurrentTimeMillis;
        Intrinsics.h(toFile, "toFile");
        if (serializable == null) {
            return;
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        FileOutputStream fileOutputStream = null;
        boolean zRenameTo = false;
        try {
            String string = UUID.randomUUID().toString();
            Intrinsics.g(string, "randomUUID().toString()");
            fileD = d(StringsKt.Q(string, "-", "", false, 4, null));
            try {
                fileD.createNewFile();
                z10 = true;
                fileD.setReadable(true);
                FileOutputStream fileOutputStream2 = new FileOutputStream(fileD);
                try {
                    ObjectOutputStream objectOutputStream = new ObjectOutputStream(new BufferedOutputStream(fileOutputStream2));
                    objectOutputStream.writeObject(serializable);
                    objectOutputStream.flush();
                    objectOutputStream.close();
                    try {
                        fileOutputStream2.close();
                    } catch (Exception e11) {
                        e = e11;
                        fileOutputStream = fileOutputStream2;
                        e.printStackTrace();
                        if (fileOutputStream == null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e12) {
                                e12.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (Exception e13) {
                    e = e13;
                    z10 = false;
                }
            } catch (Exception e14) {
                e = e14;
                z10 = false;
                e.printStackTrace();
                if (fileOutputStream == null) {
                    jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
                    if (z10) {
                        if (fileD != null) {
                            zRenameTo = fileD.renameTo(toFile);
                        }
                        if (zRenameTo) {
                            gg.b.f63567a.g("persist end. file = " + toFile.getAbsoluteFile() + ", size = " + toFile.length() + ", cost= " + Long.valueOf(jCurrentTimeMillis));
                        } else {
                            gg.b.f63567a.c("rename failed.");
                        }
                    }
                    if (z10) {
                    }
                    fileD.delete();
                }
                fileOutputStream.close();
                jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
                if (z10) {
                    if (fileD != null) {
                        zRenameTo = fileD.renameTo(toFile);
                    }
                    if (zRenameTo) {
                        gg.b.f63567a.g("persist end. file = " + toFile.getAbsoluteFile() + ", size = " + toFile.length() + ", cost= " + Long.valueOf(jCurrentTimeMillis));
                    } else {
                        gg.b.f63567a.c("rename failed.");
                    }
                }
                if (z10) {
                }
                try {
                    fileD.delete();
                } catch (Exception e15) {
                    gg.b.f63567a.e(e15);
                }
                throw th;
            }
        } catch (Exception e16) {
            e = e16;
            fileD = null;
        }
        jCurrentTimeMillis = System.currentTimeMillis() - jCurrentTimeMillis2;
        if (z10) {
            if (fileD != null) {
                zRenameTo = fileD.renameTo(toFile);
            }
            if (zRenameTo) {
                gg.b.f63567a.g("persist end. file = " + toFile.getAbsoluteFile() + ", size = " + toFile.length() + ", cost= " + Long.valueOf(jCurrentTimeMillis));
            } else {
                gg.b.f63567a.c("rename failed.");
            }
        }
        if ((z10 || !zRenameTo) && fileD != null) {
            fileD.delete();
        }
    }

    public final synchronized void i(Serializable serializable, String filename) {
        Intrinsics.h(serializable, "serializable");
        Intrinsics.h(filename, "filename");
        h(serializable, e(filename));
    }

    public final synchronized void j() {
        try {
            File[] fileArrF = f();
            if (fileArrF == null) {
                return;
            }
            int length = fileArrF.length;
            int i11 = 1;
            int i12 = 0;
            while (i12 < length) {
                File file = fileArrF[i12];
                i12++;
                if (!file.isDirectory()) {
                    if (System.currentTimeMillis() - file.lastModified() > TmcConstants.MINIAPP_TIME_DIFF) {
                        gg.b.f63567a.c(Intrinsics.q("delete expired file: ", file.getAbsoluteFile()));
                        file.delete();
                    } else {
                        String name = file.getName();
                        Intrinsics.g(name, "file.name");
                        if (StringsKt.W(name, NetworkUtil.NETWORK_TYPE_WIFI, false, 2, null)) {
                            if (i11 > 10) {
                                gg.b.f63567a.c("delete file: " + file.getAbsoluteFile() + " because max file num is 10");
                                file.delete();
                            }
                            i11++;
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            gg.b.f63567a.e(th2);
        }
    }

    public final synchronized Object k(File file) {
        Object obj;
        Intrinsics.h(file, "file");
        FileInputStream fileInputStream = null;
        Object object = null;
        if (!file.exists()) {
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                ObjectInputStream objectInputStream = new ObjectInputStream(new BufferedInputStream(fileInputStream2));
                object = objectInputStream.readObject();
                objectInputStream.close();
                long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                gg.b.f63567a.b("restore end. file = " + file.getAbsoluteFile() + ", size = " + file.length() + ", cost = " + jCurrentTimeMillis2);
                fileInputStream2.close();
            } catch (Throwable th2) {
                th = th2;
                Object obj2 = object;
                fileInputStream = fileInputStream2;
                obj = obj2;
                th.printStackTrace();
                gg.b.f63567a.c(Intrinsics.q("restore file fail. file = ", file.getAbsoluteFile()));
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException e11) {
                        e11.printStackTrace();
                        object = obj;
                    }
                }
                object = obj;
            }
        } catch (Throwable th3) {
            th = th3;
            obj = null;
        }
        return object;
    }

    public final synchronized Object l(String filename) {
        Intrinsics.h(filename, "filename");
        return k(e(filename));
    }
}
