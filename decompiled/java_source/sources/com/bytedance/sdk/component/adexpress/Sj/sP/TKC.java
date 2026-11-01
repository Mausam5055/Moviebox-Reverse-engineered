package com.bytedance.sdk.component.adexpress.Sj.sP;

import android.text.TextUtils;
import android.util.Pair;
import com.bytedance.sdk.component.utils.LD;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TKC {
    public static void Sj(File file, com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sj2, String str) {
        FileOutputStream fileOutputStream;
        if (sj2 == null) {
            return;
        }
        String strTEQ = sj2.TEQ();
        if (TextUtils.isEmpty(strTEQ)) {
            return;
        }
        File file2 = new File(file, str);
        File file3 = new File(file2 + ".tmp");
        if (file3.exists()) {
            file3.delete();
        }
        try {
            fileOutputStream = new FileOutputStream(file3);
            try {
                fileOutputStream.write(strTEQ.getBytes("utf-8"));
                if (file2.exists()) {
                    file2.delete();
                }
                file3.renameTo(file2);
                try {
                    fileOutputStream.close();
                } catch (IOException unused) {
                }
            } catch (Throwable unused2) {
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException unused3) {
                    }
                }
            }
        } catch (Throwable unused4) {
            fileOutputStream = null;
        }
    }

    @Deprecated
    public static boolean Sj(com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sj2, String str) {
        if (sj2 == null) {
            return true;
        }
        try {
            if (TextUtils.isEmpty(sj2.TKC())) {
                return true;
            }
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            return Sj(sj2.TKC(), str);
        } catch (Throwable unused) {
            return false;
        }
    }

    private static boolean Sj(String str, String str2) {
        String[] strArrSplit = str2.split("\\.");
        String[] strArrSplit2 = str.split("\\.");
        int iMin = Math.min(strArrSplit.length, strArrSplit2.length);
        for (int i11 = 0; i11 < iMin; i11++) {
            int length = strArrSplit[i11].length() - strArrSplit2[i11].length();
            if (length == 0) {
                int iCompareTo = strArrSplit[i11].compareTo(strArrSplit2[i11]);
                if (iCompareTo > 0) {
                    return true;
                }
                if (iCompareTo < 0) {
                    return false;
                }
                if (i11 == iMin - 1) {
                    return strArrSplit.length > strArrSplit2.length;
                }
            } else if (length > 0) {
                return true;
            }
        }
        return false;
    }

    private boolean Sj(List<com.bytedance.sdk.component.adexpress.Sj.TKC.Sj.C0217Sj> list, List<com.bytedance.sdk.component.adexpress.Sj.TKC.Sj.C0217Sj> list2) {
        for (com.bytedance.sdk.component.adexpress.Sj.TKC.Sj.C0217Sj c0217Sj : list) {
            String strSj = c0217Sj.Sj();
            String strSj2 = com.bytedance.sdk.component.utils.HiB.Sj(strSj);
            File file = new File(Sj(), strSj2);
            File file2 = new File(file + ".tmp");
            if (file.exists()) {
                try {
                    file.delete();
                } catch (Throwable unused) {
                }
            }
            if (file2.exists()) {
                try {
                    file2.delete();
                } catch (Throwable unused2) {
                }
            }
            com.bytedance.sdk.component.Jcg.sP.Sj sjVS = com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC().vS();
            sjVS.sP(strSj);
            sjVS.Sj(Sj().getAbsolutePath(), strSj2);
            com.bytedance.sdk.component.Jcg.sP sPVarSj = sjVS.Sj();
            list2.add(c0217Sj);
            if (sPVarSj == null || !sPVarSj.vS() || sPVarSj.HiB() == null || !sPVarSj.HiB().exists()) {
                TKC(list2);
                return false;
            }
        }
        return true;
    }

    private static boolean Sj(Map<String, com.bytedance.sdk.component.adexpress.Sj.TKC.Sj> map, Map<String, com.bytedance.sdk.component.adexpress.Sj.TKC.Sj> map2) {
        if (map.size() != map2.size()) {
            return true;
        }
        for (String str : map2.keySet()) {
            com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sj2 = map.get(str);
            if (sj2 == null) {
                return true;
            }
            com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sj3 = map2.get(str);
            if (sj3 == null) {
                return false;
            }
            if (Sj(sj2.TKC(), sj3.TKC())) {
                return true;
            }
        }
        return false;
    }

    public static boolean TKC(com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sj2, com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sj3) {
        if (sj2 != null) {
            try {
                if (!TextUtils.isEmpty(sj2.TKC())) {
                    if (sj3 == null) {
                        return false;
                    }
                    String strJcg = sj2.Jcg();
                    String strJcg2 = sj3.Jcg();
                    if ((!TextUtils.isEmpty(strJcg2) && !strJcg2.equals(strJcg)) || Sj(sj2.TKC(), sj3.TKC())) {
                        return true;
                    }
                    Map<String, com.bytedance.sdk.component.adexpress.Sj.TKC.Sj> mapSj = sj2.Sj();
                    Map<String, com.bytedance.sdk.component.adexpress.Sj.TKC.Sj> mapSj2 = sj3.Sj();
                    if (mapSj.isEmpty()) {
                        return !mapSj2.isEmpty();
                    }
                    if (mapSj2.isEmpty()) {
                        return false;
                    }
                    return Sj(mapSj, mapSj2);
                }
            } catch (Throwable th2) {
                th2.getMessage();
                return false;
            }
        }
        return true;
    }

    public static void sP(File file, com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sj2, String str) {
        if (sj2 == null || file == null) {
            return;
        }
        try {
            new File(file, str).delete();
        } catch (Throwable unused) {
        }
        if (sj2.vS() != null) {
            Iterator<com.bytedance.sdk.component.adexpress.Sj.TKC.Sj.C0217Sj> it = sj2.vS().iterator();
            while (it.hasNext()) {
                try {
                    new File(file, com.bytedance.sdk.component.utils.HiB.Sj(it.next().Sj())).delete();
                } catch (Throwable unused2) {
                }
            }
        }
    }

    public abstract File Sj();

    public List<com.bytedance.sdk.component.adexpress.Sj.TKC.Sj.C0217Sj> Sj(com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sj2, com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sj3) {
        Map<String, com.bytedance.sdk.component.adexpress.Sj.TKC.Sj> mapSj = sj2.Sj();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        if (mapSj.size() == 0) {
            if (sj3 != null && sj3.Sj().size() != 0) {
                Map<String, com.bytedance.sdk.component.adexpress.Sj.TKC.Sj> mapSj2 = sj3.Sj();
                Iterator<String> it = mapSj2.keySet().iterator();
                while (it.hasNext()) {
                    com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sj4 = mapSj2.get(it.next());
                    if (sj4 != null) {
                        arrayList.addAll(sj4.vS());
                    }
                }
            }
        } else if (sj3 != null && sj3.Sj().size() != 0) {
            Map<String, com.bytedance.sdk.component.adexpress.Sj.TKC.Sj> mapSj3 = sj3.Sj();
            for (String str : mapSj.keySet()) {
                com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sj5 = mapSj.get(str);
                com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sj6 = mapSj3.get(str);
                if (sj6 == null && sj5 != null) {
                    arrayList2.addAll(sj5.vS());
                } else if (sj5 == null && sj6 != null) {
                    arrayList.addAll(sj6.vS());
                } else if (sj5 != null) {
                    for (com.bytedance.sdk.component.adexpress.Sj.TKC.Sj.C0217Sj c0217Sj : sj5.vS()) {
                        if (c0217Sj != null && !sj6.vS().contains(c0217Sj) && c0217Sj.sP() != null && c0217Sj.Sj() != null) {
                            arrayList2.add(c0217Sj);
                        }
                    }
                    for (com.bytedance.sdk.component.adexpress.Sj.TKC.Sj.C0217Sj c0217Sj2 : sj6.vS()) {
                        if (c0217Sj2 != null && !sj5.vS().contains(c0217Sj2)) {
                            arrayList.add(c0217Sj2);
                        }
                    }
                }
            }
        } else if (mapSj.size() != 0) {
            Iterator<String> it2 = mapSj.keySet().iterator();
            while (it2.hasNext()) {
                com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sj7 = mapSj.get(it2.next());
                if (sj7 != null) {
                    arrayList2.addAll(sj7.vS());
                }
            }
        }
        if (Sj(arrayList2, arrayList3)) {
            return arrayList;
        }
        return null;
    }

    public void Sj(int i11) {
        if (com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().EjP() != null) {
            com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().EjP().Sj(i11);
        }
    }

    protected boolean Sj(com.bytedance.sdk.component.adexpress.Sj.TKC.Sj.sP sPVar) {
        if (sPVar == null || Sj() == null) {
            return false;
        }
        List<Pair<String, String>> listSP = sPVar.sP();
        if (listSP == null || listSP.size() <= 0) {
            return true;
        }
        Iterator<Pair<String, String>> it = listSP.iterator();
        while (it.hasNext()) {
            File file = new File(Sj(), (String) it.next().first);
            if (!file.exists() || !file.isFile()) {
                return false;
            }
        }
        return true;
    }

    public boolean Sj(String str) {
        String strSj = com.bytedance.sdk.component.utils.HiB.Sj(str);
        File file = new File(Sj().getAbsoluteFile(), strSj + ".zip");
        com.bytedance.sdk.component.Jcg.sP.Sj sjVS = com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC().vS();
        sjVS.sP(str);
        sjVS.Sj(file.getParent(), file.getName());
        com.bytedance.sdk.component.Jcg.sP sPVarSj = sjVS.Sj();
        if (sPVarSj.vS() && sPVarSj.HiB() != null && sPVarSj.HiB().exists()) {
            File fileHiB = sPVarSj.HiB();
            try {
                LD.Sj(fileHiB.getAbsolutePath(), file.getParent());
                if (!fileHiB.exists()) {
                    return true;
                }
                fileHiB.delete();
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    protected boolean Sj(List<com.bytedance.sdk.component.adexpress.Sj.TKC.Sj.C0217Sj> list) {
        if (list == null || list.size() <= 0 || Sj() == null) {
            return false;
        }
        for (com.bytedance.sdk.component.adexpress.Sj.TKC.Sj.C0217Sj c0217Sj : list) {
            String strSj = com.bytedance.sdk.component.utils.HiB.Sj(c0217Sj.Sj());
            if (TextUtils.isEmpty(strSj)) {
                return false;
            }
            File file = new File(Sj(), strSj);
            String strSj2 = com.bytedance.sdk.component.utils.HiB.Sj(file);
            if (!file.exists() || !file.isFile() || c0217Sj.sP() == null || !c0217Sj.sP().equals(strSj2)) {
                return false;
            }
        }
        return true;
    }

    protected boolean Sj(Map<String, com.bytedance.sdk.component.adexpress.Sj.TKC.Sj> map) {
        if (map == null || map.size() == 0) {
            return false;
        }
        Iterator<String> it = map.keySet().iterator();
        while (it.hasNext()) {
            com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sj2 = map.get(it.next());
            if (sj2 != null && !Sj(sj2.vS())) {
                return false;
            }
        }
        return true;
    }

    public void TKC(List<com.bytedance.sdk.component.adexpress.Sj.TKC.Sj.C0217Sj> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator<com.bytedance.sdk.component.adexpress.Sj.TKC.Sj.C0217Sj> it = list.iterator();
        while (it.hasNext()) {
            File file = new File(Sj(), com.bytedance.sdk.component.utils.HiB.Sj(it.next().Sj()));
            File file2 = new File(file + ".tmp");
            if (file.exists()) {
                try {
                    file.delete();
                } catch (Throwable unused) {
                }
            }
            if (file2.exists()) {
                try {
                    file2.delete();
                } catch (Throwable unused2) {
                }
            }
        }
    }

    public List<com.bytedance.sdk.component.adexpress.Sj.TKC.Sj.C0217Sj> sP(com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sj2, com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sj3) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        if (sj3 == null || sj3.vS().isEmpty()) {
            arrayList2.addAll(sj2.vS());
        } else if (sj2.vS().isEmpty()) {
            arrayList.addAll(sj3.vS());
        } else {
            for (com.bytedance.sdk.component.adexpress.Sj.TKC.Sj.C0217Sj c0217Sj : sj2.vS()) {
                if (!sj3.vS().contains(c0217Sj) && c0217Sj != null && c0217Sj.Sj() != null && c0217Sj.sP() != null) {
                    arrayList2.add(c0217Sj);
                }
            }
            for (com.bytedance.sdk.component.adexpress.Sj.TKC.Sj.C0217Sj c0217Sj2 : sj3.vS()) {
                if (!sj2.vS().contains(c0217Sj2)) {
                    arrayList.add(c0217Sj2);
                }
            }
        }
        if (Sj(arrayList2, arrayList3)) {
            return arrayList;
        }
        return null;
    }

    public void sP(List<com.bytedance.sdk.component.adexpress.Sj.TKC.Sj.C0217Sj> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        Iterator<com.bytedance.sdk.component.adexpress.Sj.TKC.Sj.C0217Sj> it = list.iterator();
        while (it.hasNext()) {
            File file = new File(Sj(), com.bytedance.sdk.component.utils.HiB.Sj(it.next().Sj()));
            File file2 = new File(file + ".tmp");
            if (file.exists()) {
                try {
                    file.delete();
                } catch (Throwable unused) {
                }
            }
            if (file2.exists()) {
                try {
                    file2.delete();
                } catch (Throwable unused2) {
                }
            }
        }
    }
}
