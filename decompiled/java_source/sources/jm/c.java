package jm;

import com.transsion.lib_web.download_render.data.FileData;
import com.transsion.lib_web.download_render.data.PageData;
import com.transsion.lib_web.download_render.data.PageListData;
import com.transsion.lib_web.download_render.task.compare.CompareRequest;
import com.transsion.lib_web.download_render.task.compare.CompareResponse;
import com.transsion.lib_web.download_render.utils.ReportUtil;
import gm.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes6.dex */
public final class c implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f66229a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final PageData f66230b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f66231c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final km.a f66232d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List f66233e;

    public c(long j11, PageData pageData) {
        Intrinsics.h(pageData, "pageData");
        this.f66229a = j11;
        this.f66230b = pageData;
        this.f66231c = "DR_FileDownloadTask";
        this.f66232d = new km.a(CollectionsKt.o(new lm.b(), new lm.a()), 0, 2, null);
        this.f66233e = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit b(Ref.BooleanRef booleanRef, Ref.IntRef intRef, Ref.LongRef longRef, boolean z10, String loadingUrl, int i11, long j11) {
        Intrinsics.h(loadingUrl, "loadingUrl");
        com.transsion.lib_web.download_render.utils.a.f46185a.m(loadingUrl);
        booleanRef.element = z10;
        intRef.element = i11;
        longRef.element = j11;
        return Unit.f67061a;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0057  */
    @Override // jm.d
    public void start() {
        PageData pageData;
        boolean z10;
        List<PageData> h5Pages;
        i.f63883a.a(this.f66231c, "<FileDownloadTask> start id:" + this.f66229a);
        PageListData pageListDataL = com.transsion.lib_web.download_render.c.f46167a.l();
        if (pageListDataL == null || (h5Pages = pageListDataL.getH5Pages()) == null) {
            pageData = new PageData(null, null, null, null, null, null, null, null, null, 511, null);
        } else {
            Iterator<T> it = h5Pages.iterator();
            do {
                if (!it.hasNext()) {
                    throw new NoSuchElementException("Collection contains no element matching the predicate.");
                }
                pageData = (PageData) it.next();
            } while (!Intrinsics.c(pageData.getUrl(), this.f66230b.getUrl()));
            if (pageData == null) {
                pageData = new PageData(null, null, null, null, null, null, null, null, null, 511, null);
            }
        }
        List<FileData> files = pageData.getFiles();
        if (files == null || files.isEmpty()) {
            i.f63883a.f(this.f66231c, "<FileDownloadTask> end id:" + this.f66229a + ", pageData.files.isNullOrEmpty");
            return;
        }
        String url = pageData.getUrl();
        if (url == null) {
            i.f63883a.f(this.f66231c, "<FileDownloadTask> end id:" + this.f66229a + ", pageData.url.isNull");
            return;
        }
        String versionCode = pageData.getVersionCode();
        if (versionCode == null) {
            i.f63883a.f(this.f66231c, "<FileDownloadTask> end id:" + this.f66229a + ", pageData.versionCode.isNull");
            return;
        }
        com.transsion.lib_web.download_render.c cVar = com.transsion.lib_web.download_render.c.f46167a;
        PageData pageDataG = cVar.g(url);
        if (pageDataG == null) {
            pageDataG = new PageData(null, null, null, null, null, null, null, null, null, 511, null);
        }
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        long jCurrentTimeMillis = System.currentTimeMillis();
        final Ref.IntRef intRef = new Ref.IntRef();
        final Ref.LongRef longRef = new Ref.LongRef();
        CompareResponse compareResponseA = this.f66232d.a(new CompareRequest(pageDataG, pageData));
        cVar.u(url);
        cVar.w(url, versionCode);
        if (compareResponseA.getRemoveFileList().isEmpty() && compareResponseA.getCopyFileList().isEmpty() && compareResponseA.getDownloadFileList().isEmpty()) {
            z10 = false;
        } else {
            cVar.t(url);
            cVar.s(url, false);
            z10 = true;
        }
        this.f66233e.add(new mm.b(url, versionCode, compareResponseA.getRemoveFileList()));
        this.f66233e.add(new mm.a(url, versionCode, compareResponseA.getCopyFileList()));
        this.f66233e.add(new mm.c(url, versionCode, compareResponseA.getDownloadFileList(), new Function4() { // from class: jm.b
            @Override // kotlin.jvm.functions.Function4
            public final Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
                return c.b(booleanRef, intRef, longRef, ((Boolean) obj).booleanValue(), (String) obj2, ((Integer) obj3).intValue(), ((Long) obj4).longValue());
            }
        }));
        Iterator it2 = this.f66233e.iterator();
        while (it2.hasNext()) {
            ((mm.d) it2.next()).invoke();
        }
        if (intRef.element == compareResponseA.getDownloadFileList().size()) {
            com.transsion.lib_web.download_render.c.f46167a.s(url, true);
        }
        if (z10) {
            ReportUtil reportUtil = ReportUtil.f46183a;
            String versionCode2 = pageData.getVersionCode();
            if (versionCode2 == null) {
                versionCode2 = "";
            }
            int size = compareResponseA.getRemoveFileList().size();
            int size2 = compareResponseA.getCopyFileList().size();
            int size3 = compareResponseA.getDownloadFileList().size();
            List<FileData> files2 = pageData.getFiles();
            reportUtil.b(url, versionCode2, size, size2, size3, files2 != null ? files2.size() : 0, intRef.element, System.currentTimeMillis() - jCurrentTimeMillis, booleanRef.element, compareResponseA.getTotalFileSize(), longRef.element);
        }
        i.f63883a.a(this.f66231c, "<FileDownloadTask> end id:" + this.f66229a);
    }
}
