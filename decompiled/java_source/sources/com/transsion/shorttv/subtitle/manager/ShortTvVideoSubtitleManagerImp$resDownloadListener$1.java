package com.transsion.shorttv.subtitle.manager;

import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import qs.n;

/* JADX INFO: loaded from: classes6.dex */
public final class ShortTvVideoSubtitleManagerImp$resDownloadListener$1 implements n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ShortTvVideoSubtitleManagerImp f53089a;

    ShortTvVideoSubtitleManagerImp$resDownloadListener$1(ShortTvVideoSubtitleManagerImp shortTvVideoSubtitleManagerImp) {
        this.f53089a = shortTvVideoSubtitleManagerImp;
    }

    private final void e(ts.a aVar, boolean z10) {
        k.d(o0.a(y0.a()), null, null, new ShortTvVideoSubtitleManagerImp$resDownloadListener$1$downloadCheck$1(this.f53089a, aVar, z10, this, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean f(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ts.b bVar = (ts.b) it.next();
            if (bVar.b() && bVar.a().getStatus() == 6) {
                return true;
            }
        }
        return false;
    }

    @Override // qs.n
    public void a(String subtitleResId) {
        Intrinsics.h(subtitleResId, "subtitleResId");
        k.d(o0.a(y0.a()), null, null, new ShortTvVideoSubtitleManagerImp$resDownloadListener$1$deleteSubtitle$1(subtitleResId, null), 3, null);
    }

    @Override // qs.n
    public void b(ts.a bean, boolean z10) {
        Intrinsics.h(bean, "bean");
        lg.a.f68839a.c("short_tv_subtitle", this.f53089a.f53085c + " 开始下载，检测字幕 firstDownload:" + z10 + "，titleName:" + bean.h() + ", ep:" + bean.a() + " se:" + bean.c(), true);
        if (z10) {
            ShortTvVideoSubtitleManagerImp.n(this.f53089a, bean, null, 2, null);
        } else {
            e(bean, false);
        }
    }

    @Override // qs.n
    public void c(ts.a bean) {
        Intrinsics.h(bean, "bean");
        e(bean, true);
    }
}
