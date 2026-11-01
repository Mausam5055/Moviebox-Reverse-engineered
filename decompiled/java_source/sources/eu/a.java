package eu;

import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SubtitleDownloadTable f62010a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f62011b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f62012c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f62013d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f62014e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f62015f;

    public a(SubtitleDownloadTable bean) {
        Intrinsics.h(bean, "bean");
        this.f62010a = bean;
        this.f62012c = "";
        this.f62015f = "";
    }

    public final String a() {
        return this.f62015f;
    }

    public final SubtitleDownloadTable b() {
        return this.f62010a;
    }

    public final String c() {
        return this.f62013d;
    }

    public final boolean d() {
        return this.f62010a.getStatus() == 5;
    }

    public final boolean e() {
        return this.f62014e;
    }

    public final boolean f() {
        return this.f62011b;
    }

    public final void g(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f62015f = str;
    }

    public final void h(SubtitleDownloadTable subtitleDownloadTable) {
        Intrinsics.h(subtitleDownloadTable, "<set-?>");
        this.f62010a = subtitleDownloadTable;
    }

    public final void i(String str) {
        this.f62013d = str;
    }

    public final void j(boolean z10) {
        this.f62014e = z10;
    }

    public final void k(String str) {
        Intrinsics.h(str, "<set-?>");
        this.f62012c = str;
    }

    public final void l(boolean z10) {
        this.f62011b = z10;
    }
}
