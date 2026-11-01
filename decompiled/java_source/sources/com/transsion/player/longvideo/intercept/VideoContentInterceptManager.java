package com.transsion.player.longvideo.intercept;

import android.app.Application;
import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import androidx.p009lifecycle.LifecycleCoroutineScope;
import com.blankj.utilcode.util.Utils;
import com.therouter.TheRouter;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.video.PlaybackRecordDao;
import com.transsion.baselib.db.video.PlaybackRecordTable;
import com.transsion.memberapi.IPremiumApi;
import com.transsion.moviedetailapi.bean.Subject;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class VideoContentInterceptManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Lazy f48087a = LazyKt.b(new Function0() { // from class: com.transsion.player.longvideo.intercept.i0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return VideoContentInterceptManager.o();
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public final String h() {
        String simpleName = VideoContentInterceptManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final PlaybackRecordDao i() {
        return (PlaybackRecordDao) this.f48087a.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void j(go.a aVar, final PlaybackRecordTable playbackRecordTable, final ho.j jVar, final com.transsion.player.ui.longvideo.a aVar2, PlaybackInterceptionManager playbackInterceptionManager, final d dVar) {
        Subject subjectM;
        Subject subjectM2;
        Subject subjectM3;
        Subject subjectM4;
        h0 h0Var = h0.f48139a;
        Object genre = null;
        boolean zF = h0Var.f(aVar != null ? aVar.m() : null);
        final int iA = h0Var.a(aVar != null ? aVar.m() : null);
        lg.a.C0828a c0828a = lg.a.f68839a;
        lg.a.C0828a.f(c0828a, "premium_p", h() + " --> intercept() --> 资源内容拦截 --> isVipResource = " + zF + " --> vipInfo = " + ((aVar == null || (subjectM4 = aVar.m()) == null) ? null : subjectM4.getVipInfo()), false, 4, null);
        if (zF) {
            int ep2 = playbackRecordTable != null ? playbackRecordTable.getEp() : 0;
            String strH = h();
            if (aVar != null && (subjectM3 = aVar.m()) != null) {
                genre = subjectM3.getVipInfo();
            }
            lg.a.C0828a.f(c0828a, "premium_p", strH + " --> intercept() --> 资源内容拦截 --> vipInfo = " + genre + " --> ep = " + ep2 + " --> freeEpisodeCount = " + iA, false, 4, null);
            if (ep2 <= iA && ep2 > 0) {
                jVar.f64624n.postDelayed(new Runnable() { // from class: com.transsion.player.longvideo.intercept.j0
                    @Override // java.lang.Runnable
                    public final void run() {
                        VideoContentInterceptManager.k(this.f48142a, iA, playbackRecordTable, jVar, dVar, aVar2);
                    }
                }, 200L);
                return;
            }
            jVar.f64624n.onShowPremium(playbackInterceptionManager, aVar);
            jVar.f64625o.setVisibility(8);
            PlaybackInterceptionManager.X(playbackInterceptionManager, true, "vip_intercept_auto", ti.n.f76264a.b(), false, 8, null);
            return;
        }
        if (!e.f48123a.c()) {
            if (playbackRecordTable == null || !playbackRecordTable.getRewardUnlock()) {
                VideoContentInterceptView videoContentInterceptView = jVar.f64624n;
                if (aVar != null && (subjectM = aVar.m()) != null) {
                    genre = subjectM.getGenre();
                }
                videoContentInterceptView.onShowResolutionRatio(playbackRecordTable, genre, playbackInterceptionManager, aVar, dVar);
                jVar.f64625o.setVisibility(8);
                return;
            }
            lg.a.C0828a.f(c0828a, "premium_p", h() + " --> intercept() --> 已解锁", false, 4, null);
            jVar.f64624n.postDelayed(new Runnable() { // from class: com.transsion.player.longvideo.intercept.l0
                @Override // java.lang.Runnable
                public final void run() {
                    VideoContentInterceptManager.m(jVar, dVar, aVar2);
                }
            }, 200L);
            return;
        }
        lg.a.C0828a.f(c0828a, "premium_p", h() + " --> intercept() --> 使用每日免费次数", false, 4, null);
        go.b bVarC = dVar != null ? dVar.c() : null;
        int iA2 = com.transsnet.downloader.util.b0.f59921a.a(bVarC != null ? bVarC.d() : null);
        IPremiumApi iPremiumApi = (IPremiumApi) TheRouter.d(IPremiumApi.class, new Object[0]);
        if (iA2 < (iPremiumApi != null ? iPremiumApi.t() : 720)) {
            jVar.f64624n.postDelayed(new Runnable() { // from class: com.transsion.player.longvideo.intercept.k0
                @Override // java.lang.Runnable
                public final void run() {
                    VideoContentInterceptManager.l(jVar, dVar, aVar2);
                }
            }, 200L);
            return;
        }
        VideoContentInterceptView videoContentInterceptView2 = jVar.f64624n;
        if (aVar != null && (subjectM2 = aVar.m()) != null) {
            genre = subjectM2.getGenre();
        }
        videoContentInterceptView2.onShowResolutionRatio(playbackRecordTable, genre, playbackInterceptionManager, aVar, dVar);
        jVar.f64625o.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(VideoContentInterceptManager videoContentInterceptManager, int i11, PlaybackRecordTable playbackRecordTable, ho.j jVar, d dVar, com.transsion.player.ui.longvideo.a aVar) {
        lg.a.C0828a.f(lg.a.f68839a, "premium_p", videoContentInterceptManager.h() + " --> intercept() --> freeEpisodeCount = " + i11 + " --> ep = " + (playbackRecordTable != null ? Integer.valueOf(playbackRecordTable.getEp()) : null) + " --> 当前可以免费播放", false, 4, null);
        jVar.f64624n.setVisibility(8);
        if (dVar != null) {
            dVar.d();
        }
        if (aVar != null) {
            aVar.play();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(ho.j jVar, d dVar, com.transsion.player.ui.longvideo.a aVar) {
        jVar.f64624n.setVisibility(8);
        if (dVar != null) {
            dVar.d();
        }
        if (aVar != null) {
            aVar.play();
        }
        if (dVar != null) {
            dVar.e();
        }
        e.f48123a.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(ho.j jVar, d dVar, com.transsion.player.ui.longvideo.a aVar) {
        jVar.f64624n.setVisibility(8);
        if (dVar != null) {
            dVar.d();
        }
        if (aVar != null) {
            aVar.play();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PlaybackRecordDao o() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).v1();
    }

    public final void n(go.a aVar, ho.j viewBinding, com.transsion.player.ui.longvideo.a aVar2, PlaybackInterceptionManager interceptionManager, d dVar) {
        LifecycleCoroutineScope lifecycleCoroutineScopeA;
        Intrinsics.h(viewBinding, "viewBinding");
        Intrinsics.h(interceptionManager, "interceptionManager");
        if (aVar != null) {
            Context context = viewBinding.getRoot().getContext();
            AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
            if (appCompatActivity == null || (lifecycleCoroutineScopeA = androidx.p009lifecycle.v.a(appCompatActivity)) == null) {
                return;
            }
            kotlinx.coroutines.k.d(lifecycleCoroutineScopeA, null, null, new VideoContentInterceptManager$intercept$1$1(this, aVar, aVar, viewBinding, aVar2, interceptionManager, dVar, null), 3, null);
        }
    }
}
