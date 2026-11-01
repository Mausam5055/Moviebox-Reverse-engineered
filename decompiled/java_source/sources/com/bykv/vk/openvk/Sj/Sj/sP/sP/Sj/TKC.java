package com.bykv.vk.openvk.Sj.Sj.sP.sP.Sj;

import android.os.Handler;
import com.bytedance.sdk.component.Dq.Dq;
import com.bytedance.sdk.component.Dq.vS;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TKC extends com.bykv.vk.openvk.Sj.Sj.sP.sP.Sj.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final File f20226a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final LinkedHashMap f20227b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ReentrantReadWriteLock.WriteLock f20228c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Set f20229d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile long f20230e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile float f20231f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b f20232g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Runnable f20233h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Handler f20234i;

    /* JADX INFO: renamed from: com.bykv.vk.openvk.Sj.Sj.sP.sP.Sj.TKC$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ TKC Sj;

        AnonymousClass1(TKC tkc) {
        }

        @Override // java.lang.Runnable
        public void run() {
            vS.sP(new Dq("cleanupCmd", 1) { // from class: com.bykv.vk.openvk.Sj.Sj.sP.sP.Sj.TKC.1.1
                @Override // java.lang.Runnable
                public void run() {
                    TKC tkc = AnonymousClass1.this.Sj;
                    tkc.k(tkc.f20230e);
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.bykv.vk.openvk.Sj.Sj.sP.sP.Sj.TKC$2, reason: invalid class name */
    class AnonymousClass2 extends Dq {
        final /* synthetic */ TKC Sj;

        AnonymousClass2(TKC tkc, String str, int i11) {
            super(str, i11);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.Sj.j();
        }
    }

    /* JADX INFO: renamed from: com.bykv.vk.openvk.Sj.Sj.sP.sP.Sj.TKC$4, reason: invalid class name */
    class AnonymousClass4 extends Dq {
        final /* synthetic */ TKC Sj;

        AnonymousClass4(TKC tkc, String str, int i11) {
            super(str, i11);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.Sj.k(0L);
        }
    }

    public interface a {
        void a(Set set);
    }

    private static final class b {
        abstract boolean a(String str);
    }

    private String f(File file) {
        return file.getName();
    }

    private void i() {
        this.f20234i.removeCallbacks(this.f20233h);
        this.f20234i.postDelayed(this.f20233h, 10000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        this.f20228c.lock();
        try {
            File[] fileArrListFiles = this.f20226a.listFiles();
            if (fileArrListFiles != null && fileArrListFiles.length > 0) {
                final HashMap map = new HashMap(fileArrListFiles.length);
                ArrayList<File> arrayList = new ArrayList(fileArrListFiles.length);
                for (File file : fileArrListFiles) {
                    if (file.isFile()) {
                        arrayList.add(file);
                        map.put(file, Long.valueOf(file.lastModified()));
                    }
                }
                Collections.sort(arrayList, new Comparator<File>(this) { // from class: com.bykv.vk.openvk.Sj.Sj.sP.sP.Sj.TKC.3
                    final /* synthetic */ TKC sP;

                    @Override // java.util.Comparator
                    /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
                    public int compare(File file2, File file3) {
                        long jLongValue = ((Long) map.get(file2)).longValue() - ((Long) map.get(file3)).longValue();
                        if (jLongValue < 0) {
                            return -1;
                        }
                        return jLongValue > 0 ? 1 : 0;
                    }
                });
                for (File file2 : arrayList) {
                    this.f20227b.put(f(file2), file2);
                }
            }
            this.f20228c.unlock();
            i();
        } catch (Throwable th2) {
            this.f20228c.unlock();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(long j11) {
        HashSet hashSet;
        final HashSet hashSet2 = new HashSet();
        this.f20228c.lock();
        try {
            Iterator it = this.f20227b.entrySet().iterator();
            long length = 0;
            while (it.hasNext()) {
                length += ((File) ((Map.Entry) it.next()).getValue()).length();
            }
            if (length <= j11) {
                this.f20228c.unlock();
                return;
            }
            long j12 = (long) (j11 * this.f20231f);
            hashSet = new HashSet();
            try {
                for (Map.Entry entry : this.f20227b.entrySet()) {
                    File file = (File) entry.getValue();
                    if (file == null || !file.exists()) {
                        hashSet.add(entry.getKey());
                    } else if (!this.f20232g.a(f(file))) {
                        long length2 = file.length();
                        File file2 = new File(file.getAbsolutePath() + "-tmp");
                        if (file.renameTo(file2)) {
                            hashSet2.add(file2);
                            length -= length2;
                            hashSet.add(entry.getKey());
                        }
                    }
                    if (length <= j12) {
                        break;
                    }
                }
                Iterator it2 = hashSet.iterator();
                while (it2.hasNext()) {
                    this.f20227b.remove((String) it2.next());
                }
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            hashSet = null;
        }
        this.f20228c.unlock();
        Iterator it3 = this.f20229d.iterator();
        while (it3.hasNext()) {
            ((a) it3.next()).a(hashSet);
        }
        vS.sP(new Dq(this, "trimSize", 1) { // from class: com.bykv.vk.openvk.Sj.Sj.sP.sP.Sj.TKC.5
            final /* synthetic */ TKC sP;

            @Override // java.lang.Runnable
            public void run() {
                Iterator it4 = hashSet2.iterator();
                while (it4.hasNext()) {
                    try {
                        ((File) it4.next()).delete();
                    } catch (Throwable unused3) {
                    }
                }
            }
        });
    }

    public abstract void g();
}
