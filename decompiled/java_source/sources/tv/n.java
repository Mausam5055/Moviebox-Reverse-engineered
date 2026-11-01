package tv;

import android.widget.FrameLayout;
import androidx.fragment.app.FragmentActivity;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.subtitle.R$string;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayStream;
import com.transsion.ugcvideodetail.fragment.UGCImmVideoDetailFragment;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import qv.r;

/* JADX INFO: loaded from: classes7.dex */
public final class n implements com.transsion.subtitle_download.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f76399a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.transsion.ugcvideodetail.hepler.subtitle.b f76400b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f76401c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f76402d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private eu.a f76403e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f76404f;

    /* JADX INFO: loaded from: classes6.dex */
    public interface a {
        r a();

        com.transsion.ugcvideodetail.hepler.subtitle.a b();

        UGCImmVideoDetailFragment c();

        UGCImmVideo getData();

        String getLogTag();
    }

    public n(a host) {
        Intrinsics.h(host, "host");
        this.f76399a = host;
    }

    private final void h(eu.a aVar) {
        if (this.f76404f) {
            uh.b.f76753a.d(R$string.subtitle_is_downloading);
            return;
        }
        if (!nh.m.f70474a.e()) {
            uh.b.f76753a.d(com.tn.lib.widget.R$string.no_network_toast);
            return;
        }
        com.transsion.ugcvideodetail.hepler.subtitle.manager.b.a aVar2 = com.transsion.ugcvideodetail.hepler.subtitle.manager.b.f56402a;
        aVar2.b().b(this);
        aVar.b().setStatus(2);
        this.f76404f = true;
        lg.a.C0828a.f(lg.a.f68839a, this.f76399a.getLogTag(), n.class.getSimpleName() + " --> downloadSubtitle() --> 内置字幕列表，下载字幕，name = " + aVar.b().getName() + ", subtype = " + aVar.b().getType() + ",download subtitleName = " + aVar.b().getSubtitleName() + ", subResourceId = " + aVar.b().getResourceId() + "~", false, 4, null);
        aVar.b().setAutoDownload(false);
        this.f76403e = aVar;
        aVar2.b().h(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j(n nVar, boolean z10) {
        nVar.f76401c = z10;
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k(n nVar, eu.a aVar) {
        SubtitleDownloadTable subtitleDownloadTableB;
        SubtitleDownloadTable subtitleDownloadTableB2;
        String lanName = null;
        String lanName2 = (aVar == null || (subtitleDownloadTableB2 = aVar.b()) == null) ? null : subtitleDownloadTableB2.getLanName();
        nVar.f76401c = !(lanName2 == null || lanName2.length() == 0);
        if (aVar != null && (subtitleDownloadTableB = aVar.b()) != null) {
            lanName = subtitleDownloadTableB.getLanName();
        }
        nVar.f76402d = lanName;
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(n nVar, SubtitleDownloadTable subtitleDownloadTable) {
        SubtitleDownloadTable subtitleDownloadTableB;
        eu.a aVar = nVar.f76403e;
        if (aVar != null) {
            if (Intrinsics.c((aVar == null || (subtitleDownloadTableB = aVar.b()) == null) ? null : subtitleDownloadTableB.getLan(), subtitleDownloadTable.getLan())) {
                lg.a.C0828a.f(lg.a.f68839a, nVar.f76399a.getLogTag(), "内置字幕点击下载成功，name = " + subtitleDownloadTable.getName() + ", videoResourceId = " + subtitleDownloadTable.getResourceId() + ", download subtitleName = " + subtitleDownloadTable.getName() + ", lan = " + subtitleDownloadTable.getLan() + "， status:" + subtitleDownloadTable.getStatus() + "~", false, 4, null);
                eu.a aVar2 = nVar.f76403e;
                Intrinsics.e(aVar2);
                nVar.o(aVar2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(n nVar, SubtitleDownloadTable subtitleDownloadTable) {
        eu.a aVar = nVar.f76403e;
        if (aVar != null) {
            aVar.h(subtitleDownloadTable);
        }
        lg.a.C0828a.f(lg.a.f68839a, nVar.f76399a.getLogTag(), n.class.getSimpleName() + " --> onFail() --> 内置字幕点击下载失败TnT，name = " + subtitleDownloadTable.getName() + ", videoResourceId = " + subtitleDownloadTable.getResourceId() + ", download subtitleName = " + subtitleDownloadTable.getName() + ", lan = " + subtitleDownloadTable.getLan() + "， status:" + subtitleDownloadTable.getStatus() + "~", false, 4, null);
    }

    public final void e() {
        com.transsion.ugcvideodetail.hepler.subtitle.manager.b.f56402a.b().b(this);
    }

    public final void f() {
        com.transsion.ugcvideodetail.hepler.subtitle.b bVar = this.f76400b;
        if (bVar != null) {
            bVar.e();
        }
    }

    public final void g() {
        com.transsion.ugcvideodetail.hepler.subtitle.manager.b.f56402a.b().c(this);
    }

    public final void i(UGCVideoPlayStream uGCVideoPlayStream) {
        FragmentActivity activity;
        lg.a.C0828a.f(lg.a.f68839a, this.f76399a.getLogTag(), ">>>>>>>--------------------initLanguage subtitle, position:", false, 4, null);
        UGCImmVideoDetailFragment uGCImmVideoDetailFragmentC = this.f76399a.c();
        if (uGCImmVideoDetailFragmentC == null || (activity = uGCImmVideoDetailFragmentC.getActivity()) == null || activity.isDestroyed() || activity.isFinishing() || this.f76399a.getData() == null) {
            return;
        }
        com.transsion.ugcvideodetail.hepler.subtitle.b.a aVar = com.transsion.ugcvideodetail.hepler.subtitle.b.f56392g1;
        FrameLayout flUgcImmSubtitle = this.f76399a.a().f73859g;
        Intrinsics.g(flUgcImmSubtitle, "flUgcImmSubtitle");
        SimpleSubtitleView vUgcImmSubtitle = this.f76399a.a().M;
        Intrinsics.g(vUgcImmSubtitle, "vUgcImmSubtitle");
        com.transsion.ugcvideodetail.hepler.subtitle.b bVarA = aVar.a(activity, "/ugc_video/immersive_detail", flUgcImmSubtitle, vUgcImmSubtitle, this.f76399a.b(), this.f76399a.getData(), uGCVideoPlayStream);
        bVarA.e();
        bVarA.a(new Function1() { // from class: tv.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return n.j(this.f76393a, ((Boolean) obj).booleanValue());
            }
        });
        bVarA.b(new Function1() { // from class: tv.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return n.k(this.f76394a, (eu.a) obj);
            }
        });
        this.f76400b = bVarA;
    }

    public final void n() {
        com.transsion.ugcvideodetail.hepler.subtitle.b bVar = this.f76400b;
        if (bVar != null) {
            bVar.onDestroy();
        }
        this.f76400b = null;
    }

    public final void o(eu.a item) {
        Intrinsics.h(item, "item");
        lg.a.C0828a.f(lg.a.f68839a, this.f76399a.getLogTag(), "onSubtitleSelect", false, 4, null);
        if (!item.d()) {
            h(item);
            return;
        }
        com.transsion.ugcvideodetail.hepler.subtitle.b bVar = this.f76400b;
        if (bVar != null) {
            bVar.f(item);
        }
        this.f76403e = null;
    }

    @Override // com.transsion.subtitle_download.a
    public void onComplete(final SubtitleDownloadTable stDownloadTable) {
        Intrinsics.h(stDownloadTable, "stDownloadTable");
        this.f76404f = false;
        ThreadUtils.k(new Runnable() { // from class: tv.l
            @Override // java.lang.Runnable
            public final void run() {
                n.l(this.f76395a, stDownloadTable);
            }
        });
    }

    @Override // com.transsion.subtitle_download.a
    public void onDownloading(int i11, SubtitleDownloadTable stDownloadTable) {
        Intrinsics.h(stDownloadTable, "stDownloadTable");
    }

    @Override // com.transsion.subtitle_download.a
    public void onFail(Exception e11, final SubtitleDownloadTable dbBean) {
        Intrinsics.h(e11, "e");
        Intrinsics.h(dbBean, "dbBean");
        this.f76404f = false;
        ThreadUtils.k(new Runnable() { // from class: tv.m
            @Override // java.lang.Runnable
            public final void run() {
                n.m(this.f76397a, dbBean);
            }
        });
    }

    @Override // com.transsion.subtitle_download.a
    public void onSaveDownload(SubtitleDownloadTable subtitleDownloadTable) {
        com.transsion.subtitle_download.a.C0673a.a(this, subtitleDownloadTable);
    }

    @Override // com.transsion.subtitle_download.a
    public void onUnGzZip(SubtitleDownloadTable subtitleDownloadTable) {
        com.transsion.subtitle_download.a.C0673a.b(this, subtitleDownloadTable);
    }

    public final void p(boolean z10) {
        com.transsion.ugcvideodetail.hepler.subtitle.b bVar = this.f76400b;
        if (bVar != null) {
            bVar.c(z10);
        }
    }

    public final void q(long j11) {
        com.transsion.ugcvideodetail.hepler.subtitle.b bVar = this.f76400b;
        if (bVar != null) {
            bVar.d(j11);
        }
    }
}
