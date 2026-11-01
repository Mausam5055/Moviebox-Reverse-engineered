package com.transsion.ugcvideodetail.hepler.subtitle;

import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.v;
import com.transsion.subtitle.R$string;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;

/* JADX INFO: loaded from: classes6.dex */
public final class UGCImmVideoSubtitleControlImp$downloadListener$1 implements com.transsion.subtitle_download.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ UGCImmVideoSubtitleControlImp f56387a;

    UGCImmVideoSubtitleControlImp$downloadListener$1(UGCImmVideoSubtitleControlImp uGCImmVideoSubtitleControlImp) {
        this.f56387a = uGCImmVideoSubtitleControlImp;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(SubtitleDownloadTable subtitleDownloadTable, UGCImmVideoSubtitleControlImp uGCImmVideoSubtitleControlImp) {
        if (subtitleDownloadTable.getIsSetImmediately() && Intrinsics.c(uGCImmVideoSubtitleControlImp.u(), subtitleDownloadTable.getResourceId())) {
            uh.b.f76753a.d(R$string.subtitle_download_failed);
        }
    }

    @Override // com.transsion.subtitle_download.a
    public void onComplete(SubtitleDownloadTable stDownloadTable) {
        Intrinsics.h(stDownloadTable, "stDownloadTable");
        k.d(v.a(this.f56387a.f56371a), null, null, new UGCImmVideoSubtitleControlImp$downloadListener$1$onComplete$1(this.f56387a, stDownloadTable, null), 3, null);
    }

    @Override // com.transsion.subtitle_download.a
    public void onDownloading(int i11, SubtitleDownloadTable stDownloadTable) {
        Intrinsics.h(stDownloadTable, "stDownloadTable");
    }

    @Override // com.transsion.subtitle_download.a
    public void onFail(Exception e11, final SubtitleDownloadTable dbBean) {
        Intrinsics.h(e11, "e");
        Intrinsics.h(dbBean, "dbBean");
        FragmentActivity fragmentActivity = this.f56387a.f56371a;
        final UGCImmVideoSubtitleControlImp uGCImmVideoSubtitleControlImp = this.f56387a;
        fragmentActivity.runOnUiThread(new Runnable() { // from class: com.transsion.ugcvideodetail.hepler.subtitle.d
            @Override // java.lang.Runnable
            public final void run() {
                UGCImmVideoSubtitleControlImp$downloadListener$1.b(dbBean, uGCImmVideoSubtitleControlImp);
            }
        });
    }

    @Override // com.transsion.subtitle_download.a
    public void onSaveDownload(SubtitleDownloadTable bean) {
        Intrinsics.h(bean, "bean");
        if (Intrinsics.c(bean.getResourceId(), this.f56387a.u())) {
            k.d(v.a(this.f56387a.f56371a), null, null, new UGCImmVideoSubtitleControlImp$downloadListener$1$onSaveDownload$1(this.f56387a, bean, null), 3, null);
        } else {
            lg.a.C0828a.f(lg.a.f68839a, this.f56387a.f56378h, " -------- onSaveDownload，不是当前视频，不做处理", false, 4, null);
        }
    }

    @Override // com.transsion.subtitle_download.a
    public void onUnGzZip(SubtitleDownloadTable subtitleDownloadTable) {
        com.transsion.subtitle_download.a.C0673a.b(this, subtitleDownloadTable);
    }
}
