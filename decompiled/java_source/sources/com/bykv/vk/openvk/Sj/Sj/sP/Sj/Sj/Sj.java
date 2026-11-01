package com.bykv.vk.openvk.Sj.Sj.sP.Sj.Sj;

import android.text.TextUtils;
import com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC;
import e6.c;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class Sj implements x5.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f20177a = "video_reward_full";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f20178b = "video_brand";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f20179c = "video_splash";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f20180d = "video_default";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f20181e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f20182f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f20183g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f20184h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f20185i = null;

    private Set b() {
        HashSet hashSet = new HashSet();
        for (d6.a aVar : d6.a.f61234e.values()) {
            if (aVar != null && aVar.d() != null) {
                TKC tkcD = aVar.d();
                hashSet.add(c6.b.d(tkcD.sP(), tkcD.sef()).getAbsolutePath());
                hashSet.add(c6.b.c(tkcD.sP(), tkcD.sef()).getAbsolutePath());
            }
        }
        for (c cVar : e6.b.f61551a.values()) {
            if (cVar != null && cVar.e() != null) {
                TKC tkcE = cVar.e();
                hashSet.add(c6.b.d(tkcE.sP(), tkcE.sef()).getAbsolutePath());
                hashSet.add(c6.b.c(tkcE.sP(), tkcE.sef()).getAbsolutePath());
            }
        }
        return hashSet;
    }

    private static void c(File[] fileArr, int i11, Set set) {
        if (i11 >= 0 && fileArr != null) {
            try {
                if (fileArr.length > i11) {
                    List listAsList = Arrays.asList(fileArr);
                    Collections.sort(listAsList, new Comparator<File>() { // from class: com.bykv.vk.openvk.Sj.Sj.sP.Sj.Sj.Sj.1
                        @Override // java.util.Comparator
                        /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
                        public int compare(File file, File file2) {
                            long jLastModified = file2.lastModified() - file.lastModified();
                            if (jLastModified == 0) {
                                return 0;
                            }
                            return jLastModified < 0 ? -1 : 1;
                        }
                    });
                    while (i11 < listAsList.size()) {
                        File file = (File) listAsList.get(i11);
                        if (set != null && !set.contains(file.getAbsolutePath())) {
                            ((File) listAsList.get(i11)).delete();
                        }
                        i11++;
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    private List d() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new x5.a(new File(Sj()).listFiles(), b6.a.f()));
        arrayList.add(new x5.a(new File(sP()).listFiles(), b6.a.g()));
        arrayList.add(new x5.a(new File(a()).listFiles(), b6.a.a()));
        arrayList.add(new x5.a(new File(TKC()).listFiles(), b6.a.b()));
        return arrayList;
    }

    @Override // x5.b
    public synchronized void EjP() {
        try {
            Set setB = null;
            for (x5.a aVar : d()) {
                File[] fileArrA = aVar.a();
                if (fileArrA != null && fileArrA.length >= aVar.b()) {
                    if (setB == null) {
                        setB = b();
                    }
                    int iB = aVar.b() - 2;
                    if (iB < 0) {
                        iB = 0;
                    }
                    c(aVar.a(), iB, setB);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // x5.b
    public String Sj() {
        if (this.f20182f == null) {
            this.f20182f = this.f20181e + File.separator + this.f20177a;
            File file = new File(this.f20182f);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.f20182f;
    }

    @Override // x5.b
    public void Sj(String str) {
        this.f20181e = str;
    }

    @Override // x5.b
    public boolean Sj(TKC tkc) {
        if (TextUtils.isEmpty(tkc.sP()) || TextUtils.isEmpty(tkc.sef())) {
            return false;
        }
        return new File(tkc.sP(), tkc.sef()).exists();
    }

    @Override // x5.b
    public String TKC() {
        if (this.f20185i == null) {
            this.f20185i = this.f20181e + File.separator + this.f20180d;
            File file = new File(this.f20185i);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.f20185i;
    }

    public String a() {
        if (this.f20183g == null) {
            this.f20183g = this.f20181e + File.separator + this.f20178b;
            File file = new File(this.f20183g);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.f20183g;
    }

    @Override // x5.b
    public long sP(TKC tkc) {
        if (TextUtils.isEmpty(tkc.sP()) || TextUtils.isEmpty(tkc.sef())) {
            return 0L;
        }
        return c6.b.a(tkc.sP(), tkc.sef());
    }

    @Override // x5.b
    public String sP() {
        if (this.f20184h == null) {
            this.f20184h = this.f20181e + File.separator + this.f20179c;
            File file = new File(this.f20184h);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.f20184h;
    }
}
