package ts;

import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SubtitleDownloadTable f76359a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f76360b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f76361c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f76362d;

    public b(SubtitleDownloadTable bean) {
        Intrinsics.h(bean, "bean");
        this.f76359a = bean;
        this.f76361c = "";
    }

    public final SubtitleDownloadTable a() {
        return this.f76359a;
    }

    public final boolean b() {
        return this.f76359a.getStatus() == 5;
    }

    public final boolean c() {
        return this.f76362d;
    }

    public final boolean d() {
        return this.f76360b;
    }

    public final void e(SubtitleDownloadTable subtitleDownloadTable) {
        Intrinsics.h(subtitleDownloadTable, "<set-?>");
        this.f76359a = subtitleDownloadTable;
    }

    public final void f(boolean z10) {
        this.f76360b = z10;
    }
}
