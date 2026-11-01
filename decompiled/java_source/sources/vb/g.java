package vb;

import android.content.Context;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import ob.j;

/* JADX INFO: loaded from: classes5.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final String f77199a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final File f77200b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final File f77201c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final File f77202d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final File f77203e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final File f77204f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final File f77205g;

    public g(Context context) {
        String str;
        String strD = j.f70958a.e(context).d();
        this.f77199a = strD;
        File filesDir = context.getFilesDir();
        this.f77200b = filesDir;
        if (y()) {
            str = ".crashlytics.v3" + File.separator + x(strD);
        } else {
            str = ".com.google.firebase.crashlytics.files.v1";
        }
        File fileT = t(new File(filesDir, str));
        this.f77201c = fileT;
        this.f77202d = t(new File(fileT, "open-sessions"));
        this.f77203e = t(new File(fileT, "reports"));
        this.f77204f = t(new File(fileT, "priority-reports"));
        this.f77205g = t(new File(fileT, "native-reports"));
    }

    private void b(String str) {
        File file = new File(this.f77200b, str);
        if (file.exists() && v(file)) {
            ob.g.f().b("Deleted previous Crashlytics file system: " + file.getPath());
        }
    }

    private void c(final String str) {
        String[] list;
        if (!this.f77200b.exists() || (list = this.f77200b.list(new FilenameFilter() { // from class: vb.f
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str2) {
                return g.s(str, file, str2);
            }
        })) == null) {
            return;
        }
        for (String str2 : list) {
            b(str2);
        }
    }

    private File p(String str) {
        return u(new File(this.f77202d, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean s(String str, File file, String str2) {
        return str2.startsWith(str);
    }

    private static synchronized File t(File file) {
        try {
            if (file.exists()) {
                if (file.isDirectory()) {
                    return file;
                }
                ob.g.f().b("Unexpected non-directory file: " + file + "; deleting file and creating new directory.");
                file.delete();
            }
            if (!file.mkdirs()) {
                ob.g.f().d("Could not create Crashlytics-specific directory: " + file);
            }
            return file;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private static File u(File file) {
        file.mkdirs();
        return file;
    }

    static boolean v(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                v(file2);
            }
        }
        return file.delete();
    }

    private static List w(Object[] objArr) {
        return objArr == null ? Collections.emptyList() : Arrays.asList(objArr);
    }

    static String x(String str) {
        return str.length() > 40 ? CommonUtils.z(str) : str.replaceAll("[^a-zA-Z0-9.]", "_");
    }

    private boolean y() {
        return !this.f77199a.isEmpty();
    }

    public void d() {
        b(".com.google.firebase.crashlytics");
        b(".com.google.firebase.crashlytics-ndk");
        if (y()) {
            b(".com.google.firebase.crashlytics.files.v1");
            c(".com.google.firebase.crashlytics.files.v2" + File.pathSeparator);
        }
    }

    public boolean e(String str) {
        return v(new File(this.f77202d, str));
    }

    public List f() {
        return w(this.f77202d.list());
    }

    public File g(String str) {
        return new File(this.f77201c, str);
    }

    public List h(FilenameFilter filenameFilter) {
        return w(this.f77201c.listFiles(filenameFilter));
    }

    public File i(String str) {
        return new File(this.f77205g, str);
    }

    public List j() {
        return w(this.f77205g.listFiles());
    }

    public File k(String str) {
        return u(new File(p(str), "native"));
    }

    public File l(String str) {
        return new File(this.f77204f, str);
    }

    public List m() {
        return w(this.f77204f.listFiles());
    }

    public File n(String str) {
        return new File(this.f77203e, str);
    }

    public List o() {
        return w(this.f77203e.listFiles());
    }

    public File q(String str, String str2) {
        return new File(p(str), str2);
    }

    public List r(String str, FilenameFilter filenameFilter) {
        return w(p(str).listFiles(filenameFilter));
    }
}
