package vb;

import androidx.core.app.NotificationCompat;
import com.google.firebase.crashlytics.internal.common.a0;
import com.google.firebase.crashlytics.internal.common.k;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicInteger;
import rb.o;
import tb.j;

/* JADX INFO: loaded from: classes5.dex */
public class e {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Charset f77189e = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f77190f = 15;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final j f77191g = new j();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Comparator f77192h = new Comparator() { // from class: vb.a
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return e.u((File) obj, (File) obj2);
        }
    };

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final FilenameFilter f77193i = new FilenameFilter() { // from class: vb.b
        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String str) {
            return e.v(file, str);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicInteger f77194a = new AtomicInteger(0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f77195b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final wb.b f77196c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final k f77197d;

    public e(g gVar, wb.b bVar, k kVar) {
        this.f77195b = gVar;
        this.f77196c = bVar;
        this.f77197d = kVar;
    }

    private static String A(File file) throws IOException {
        byte[] bArr = new byte[8192];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        FileInputStream fileInputStream = new FileInputStream(file);
        while (true) {
            try {
                int i11 = fileInputStream.read(bArr);
                if (i11 <= 0) {
                    String str = new String(byteArrayOutputStream.toByteArray(), f77189e);
                    fileInputStream.close();
                    return str;
                }
                byteArrayOutputStream.write(bArr, 0, i11);
            } catch (Throwable th2) {
                try {
                    fileInputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    private void B(File file, CrashlyticsReport.d dVar, String str, CrashlyticsReport.a aVar) {
        String strD = this.f77197d.d(str);
        try {
            j jVar = f77191g;
            F(this.f77195b.i(str), jVar.M(jVar.L(A(file)).u(dVar).q(aVar).p(strD)));
        } catch (IOException e11) {
            ob.g.f().l("Could not synthesize final native report file for " + file, e11);
        }
    }

    private void C(String str, long j11) {
        boolean z10;
        List listR = this.f77195b.r(str, f77193i);
        if (listR.isEmpty()) {
            ob.g.f().i("Session " + str + " has no events.");
            return;
        }
        Collections.sort(listR);
        ArrayList arrayList = new ArrayList();
        Iterator it = listR.iterator();
        loop0: while (true) {
            z10 = false;
            while (true) {
                if (!it.hasNext()) {
                    break loop0;
                }
                File file = (File) it.next();
                try {
                    arrayList.add(f77191g.j(A(file)));
                    if (z10 || s(file.getName())) {
                        z10 = true;
                    }
                } catch (IOException e11) {
                    ob.g.f().l("Could not add event to report for " + file, e11);
                }
            }
        }
        if (!arrayList.isEmpty()) {
            D(this.f77195b.q(str, "report"), arrayList, j11, z10, o.n(str, this.f77195b), this.f77197d.d(str));
        } else {
            ob.g.f().k("Could not parse event files for session " + str);
        }
    }

    private void D(File file, List list, long j11, boolean z10, String str, String str2) {
        try {
            j jVar = f77191g;
            CrashlyticsReport crashlyticsReportR = jVar.L(A(file)).v(j11, z10, str).p(str2).r(list);
            CrashlyticsReport.e eVarN = crashlyticsReportR.n();
            if (eVarN == null) {
                return;
            }
            ob.g.f().b("appQualitySessionId: " + str2);
            F(z10 ? this.f77195b.l(eVarN.i()) : this.f77195b.n(eVarN.i()), jVar.M(crashlyticsReportR));
        } catch (IOException e11) {
            ob.g.f().l("Could not synthesize final report file for " + file, e11);
        }
    }

    private int E(String str, int i11) {
        List listR = this.f77195b.r(str, new FilenameFilter() { // from class: vb.c
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str2) {
                return e.t(file, str2);
            }
        });
        Collections.sort(listR, new Comparator() { // from class: vb.d
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return e.x((File) obj, (File) obj2);
            }
        });
        return f(listR, i11);
    }

    private static void F(File file, String str) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), f77189e);
        try {
            outputStreamWriter.write(str);
            outputStreamWriter.close();
        } catch (Throwable th2) {
            try {
                outputStreamWriter.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    private static void G(File file, String str, long j11) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), f77189e);
        try {
            outputStreamWriter.write(str);
            file.setLastModified(h(j11));
            outputStreamWriter.close();
        } catch (Throwable th2) {
            try {
                outputStreamWriter.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    private SortedSet e(String str) {
        this.f77195b.d();
        SortedSet sortedSetP = p();
        if (str != null) {
            sortedSetP.remove(str);
        }
        if (sortedSetP.size() <= 8) {
            return sortedSetP;
        }
        while (sortedSetP.size() > 8) {
            String str2 = (String) sortedSetP.last();
            ob.g.f().b("Removing session over cap: " + str2);
            this.f77195b.e(str2);
            sortedSetP.remove(str2);
        }
        return sortedSetP;
    }

    private static int f(List list, int i11) {
        int size = list.size();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            File file = (File) it.next();
            if (size <= i11) {
                return size;
            }
            g.v(file);
            size--;
        }
        return size;
    }

    private void g() {
        int i11 = this.f77196c.b().f31737a.f31749b;
        List listN = n();
        int size = listN.size();
        if (size <= i11) {
            return;
        }
        Iterator it = listN.subList(i11, size).iterator();
        while (it.hasNext()) {
            ((File) it.next()).delete();
        }
    }

    private static long h(long j11) {
        return j11 * 1000;
    }

    private void j(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((File) it.next()).delete();
        }
    }

    private static String m(int i11, boolean z10) {
        return NotificationCompat.CATEGORY_EVENT + String.format(Locale.US, "%010d", Integer.valueOf(i11)) + (z10 ? "_" : "");
    }

    private List n() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f77195b.m());
        arrayList.addAll(this.f77195b.j());
        Comparator comparator = f77192h;
        Collections.sort(arrayList, comparator);
        List listO = this.f77195b.o();
        Collections.sort(listO, comparator);
        arrayList.addAll(listO);
        return arrayList;
    }

    private static String o(String str) {
        return str.substring(0, f77190f);
    }

    private static boolean s(String str) {
        return str.startsWith(NotificationCompat.CATEGORY_EVENT) && str.endsWith("_");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean t(File file, String str) {
        return str.startsWith(NotificationCompat.CATEGORY_EVENT) && !str.endsWith("_");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int u(File file, File file2) {
        return file2.getName().compareTo(file.getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean v(File file, String str) {
        return str.startsWith(NotificationCompat.CATEGORY_EVENT);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int x(File file, File file2) {
        return o(file.getName()).compareTo(o(file2.getName()));
    }

    public void i() {
        j(this.f77195b.o());
        j(this.f77195b.m());
        j(this.f77195b.j());
    }

    public void k(String str, long j11) {
        for (String str2 : e(str)) {
            ob.g.f().i("Finalizing report for session " + str2);
            C(str2, j11);
            this.f77195b.e(str2);
        }
        g();
    }

    public void l(String str, CrashlyticsReport.d dVar, CrashlyticsReport.a aVar) {
        File fileQ = this.f77195b.q(str, "report");
        ob.g.f().b("Writing native session report for " + str + " to file: " + fileQ);
        B(fileQ, dVar, str, aVar);
    }

    public SortedSet p() {
        return new TreeSet(this.f77195b.f()).descendingSet();
    }

    public long q(String str) {
        return this.f77195b.q(str, "start-time").lastModified();
    }

    public boolean r() {
        return (this.f77195b.o().isEmpty() && this.f77195b.m().isEmpty() && this.f77195b.j().isEmpty()) ? false : true;
    }

    public List w() {
        List<File> listN = n();
        ArrayList arrayList = new ArrayList();
        for (File file : listN) {
            try {
                arrayList.add(a0.a(f77191g.L(A(file)), file.getName(), file));
            } catch (IOException e11) {
                ob.g.f().l("Could not load report file " + file + "; deleting", e11);
                file.delete();
            }
        }
        return arrayList;
    }

    public void y(CrashlyticsReport.e.d dVar, String str, boolean z10) {
        int i11 = this.f77196c.b().f31737a.f31748a;
        try {
            F(this.f77195b.q(str, m(this.f77194a.getAndIncrement(), z10)), f77191g.k(dVar));
        } catch (IOException e11) {
            ob.g.f().l("Could not persist event for session " + str, e11);
        }
        E(str, i11);
    }

    public void z(CrashlyticsReport crashlyticsReport) {
        CrashlyticsReport.e eVarN = crashlyticsReport.n();
        if (eVarN == null) {
            ob.g.f().b("Could not get session for report");
            return;
        }
        String strI = eVarN.i();
        try {
            F(this.f77195b.q(strI, "report"), f77191g.M(crashlyticsReport));
            G(this.f77195b.q(strI, "start-time"), "", eVarN.l());
        } catch (IOException e11) {
            ob.g.f().c("Could not persist report for session " + strI, e11);
        }
    }
}
