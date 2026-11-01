package com.transsion.shorttv.subtitle;

import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.v;
import com.transsion.shorttv.R$string;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;

/* JADX INFO: loaded from: classes6.dex */
public final class ShortTVSubtitleControlImp$downloadListener$1 implements com.transsion.subtitle_download.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ShortTVSubtitleControlImp f53074a;

    ShortTVSubtitleControlImp$downloadListener$1(ShortTVSubtitleControlImp shortTVSubtitleControlImp) {
        this.f53074a = shortTVSubtitleControlImp;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(SubtitleDownloadTable subtitleDownloadTable, ShortTVSubtitleControlImp shortTVSubtitleControlImp) {
        if (subtitleDownloadTable.getIsSetImmediately() && Intrinsics.c(shortTVSubtitleControlImp.f53062e.f(), subtitleDownloadTable.getResourceId())) {
            fs.b.f62459a.d(R$string.short_tv_subtitle_download_failed);
        }
    }

    @Override // com.transsion.subtitle_download.a
    public void onComplete(SubtitleDownloadTable stDownloadTable) {
        Intrinsics.h(stDownloadTable, "stDownloadTable");
        k.d(v.a(this.f53074a.f53059b), null, null, new ShortTVSubtitleControlImp$downloadListener$1$onComplete$1(this.f53074a, stDownloadTable, null), 3, null);
    }

    @Override // com.transsion.subtitle_download.a
    public void onDownloading(int i11, SubtitleDownloadTable stDownloadTable) {
        Intrinsics.h(stDownloadTable, "stDownloadTable");
    }

    @Override // com.transsion.subtitle_download.a
    public void onFail(Exception e11, final SubtitleDownloadTable dbBean) {
        Intrinsics.h(e11, "e");
        Intrinsics.h(dbBean, "dbBean");
        FragmentActivity fragmentActivity = this.f53074a.f53059b;
        final ShortTVSubtitleControlImp shortTVSubtitleControlImp = this.f53074a;
        fragmentActivity.runOnUiThread(new Runnable() { // from class: com.transsion.shorttv.subtitle.d
            @Override // java.lang.Runnable
            public final void run() {
                ShortTVSubtitleControlImp$downloadListener$1.b(dbBean, shortTVSubtitleControlImp);
            }
        });
    }

    @Override // com.transsion.subtitle_download.a
    public void onSaveDownload(SubtitleDownloadTable bean) {
        Intrinsics.h(bean, "bean");
        if (Intrinsics.c(bean.getResourceId(), this.f53074a.f53062e.f())) {
            k.d(v.a(this.f53074a.f53059b), null, null, new ShortTVSubtitleControlImp$downloadListener$1$onSaveDownload$1(this.f53074a, bean, null), 3, null);
            return;
        }
        lg.a.C0828a.g(lg.a.f68839a, this.f53074a.f53064g + " --> -------- onSaveDownload，不是当前视频，不做处理", false, 2, null);
    }

    @Override // com.transsion.subtitle_download.a
    public void onUnGzZip(SubtitleDownloadTable subtitleDownloadTable) {
        com.transsion.subtitle_download.a.C0673a.b(this, subtitleDownloadTable);
    }
}
