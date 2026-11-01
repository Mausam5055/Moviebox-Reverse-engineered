package com.bytedance.sdk.component.HiB.EjP.TKC.Sj.Sj;

import android.text.TextUtils;
import com.bytedance.sdk.component.utils.Jcg;
import com.bytedance.sdk.component.utils.TEQ;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {
    private int Sj;
    private File sP;

    private Sj(int i11, File file) {
        this.Sj = i11;
        this.sP = file;
    }

    private static void EjP(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    public static Sj Sj(int i11, File file) {
        try {
            Sj sj2 = new Sj(i11, file);
            if (file != null) {
                file.mkdirs();
            }
            return sj2;
        } catch (Throwable unused) {
            return null;
        }
    }

    private List<File> Sj(File file) {
        File[] fileArrListFiles;
        if (file != null) {
            try {
                if (file.exists() && file.isDirectory() && (fileArrListFiles = file.listFiles()) != null && fileArrListFiles.length != 0) {
                    List<File> listAsList = Arrays.asList(fileArrListFiles);
                    ArrayList arrayList = new ArrayList();
                    for (File file2 : listAsList) {
                        if (file2 != null && file2.isFile() && !TextUtils.isEmpty(file2.getName()) && !file2.getName().endsWith(".temp")) {
                            arrayList.add(file2);
                        }
                    }
                    return arrayList;
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    private void Sj(File file, File file2, boolean z10) throws IOException {
        if (z10) {
            EjP(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    private File TKC(String str) {
        return new File(this.sP, str + ".temp");
    }

    private void TKC(File file) {
        if (file == null) {
            return;
        }
        try {
            Jcg.sP(file);
        } catch (Throwable unused) {
        }
    }

    private File sP(String str) {
        return new File(this.sP, str);
    }

    private List<File> sP(File file) {
        List<File> listSj = Sj(file);
        if (listSj == null || listSj.isEmpty()) {
            return null;
        }
        final HashMap map = new HashMap();
        for (File file2 : listSj) {
            map.put(file2, Long.valueOf(file2.lastModified()));
        }
        Collections.sort(listSj, new Comparator<File>() { // from class: com.bytedance.sdk.component.HiB.EjP.TKC.Sj.Sj.Sj.1
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
            public int compare(File file3, File file4) {
                if (file3 == null && file4 == null) {
                    return 0;
                }
                if (file3 == null) {
                    return 1;
                }
                if (file4 == null) {
                    return -1;
                }
                return Long.compare(((Long) map.get(file4)).longValue(), ((Long) map.get(file3)).longValue());
            }
        });
        return listSj;
    }

    public synchronized InputStream Sj(String str) {
        FileInputStream fileInputStream;
        if (this.Sj <= 0) {
            return null;
        }
        File fileSP = sP(str);
        try {
            try {
                fileInputStream = new FileInputStream(fileSP);
                try {
                    TKC(fileSP);
                    return fileInputStream;
                } catch (FileNotFoundException unused) {
                    TEQ.Sj(fileInputStream);
                    return null;
                }
            } catch (Throwable unused2) {
                return null;
            }
        } catch (FileNotFoundException unused3) {
            fileInputStream = null;
        }
    }

    public synchronized void Sj(int i11) {
        try {
            if (i11 > this.Sj) {
                return;
            }
            List<File> listSP = sP(this.sP);
            if (listSP != null && listSP.size() > i11) {
                while (i11 < listSP.size()) {
                    File file = listSP.get(i11);
                    if (file != null && file.exists()) {
                        file.delete();
                    }
                    i11++;
                }
            }
        } catch (Throwable unused) {
        }
    }

    public synchronized boolean Sj(String str, byte[] bArr) {
        if (this.Sj > 0 && str != null && bArr != null) {
            File fileTKC = TKC(str);
            FileOutputStream fileOutputStream = null;
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(fileTKC);
                try {
                    fileOutputStream2.write(bArr);
                    if (fileTKC.exists()) {
                        Sj(fileTKC, sP(str), true);
                    }
                    TEQ.Sj(fileOutputStream2);
                    List<File> listSj = Sj(this.sP);
                    if (listSj != null) {
                        int size = listSj.size();
                        int i11 = this.Sj;
                        if (size > i11) {
                            Sj((int) (((double) i11) * 0.7d));
                        }
                    }
                    return true;
                } catch (FileNotFoundException unused) {
                    fileOutputStream = fileOutputStream2;
                    try {
                        File file = this.sP;
                        if (file != null) {
                            file.mkdirs();
                        }
                        TEQ.Sj(fileOutputStream);
                        List<File> listSj2 = Sj(this.sP);
                        if (listSj2 != null) {
                            int size2 = listSj2.size();
                            int i12 = this.Sj;
                            if (size2 > i12) {
                                Sj((int) (((double) i12) * 0.7d));
                            }
                        }
                        return false;
                    } catch (Throwable th2) {
                        TEQ.Sj(fileOutputStream);
                        List<File> listSj3 = Sj(this.sP);
                        if (listSj3 != null) {
                            int size3 = listSj3.size();
                            int i13 = this.Sj;
                            if (size3 > i13) {
                                Sj((int) (((double) i13) * 0.7d));
                            }
                        }
                        throw th2;
                    }
                } catch (Throwable unused2) {
                    fileOutputStream = fileOutputStream2;
                    TEQ.Sj(fileOutputStream);
                    List<File> listSj4 = Sj(this.sP);
                    if (listSj4 != null) {
                        int size4 = listSj4.size();
                        int i14 = this.Sj;
                        if (size4 > i14) {
                            Sj((int) (((double) i14) * 0.7d));
                        }
                    }
                    return false;
                }
            } catch (FileNotFoundException unused3) {
            } catch (Throwable unused4) {
            }
        }
        return false;
    }
}
