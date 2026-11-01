package com.transsion.player.longvideo.member;

import android.app.Application;
import androidx.fragment.app.FragmentManager;
import com.blankj.utilcode.util.Utils;
import com.transsion.ad.ps.activate.PSActivateManager;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.member.MemberResolutionDao;
import com.transsion.memberapi.MemberSource;
import com.transsion.wrapperad.activate.ui.LongVodActivateDialog;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class ResolutionMemberManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ResolutionMemberManager f48205a = new ResolutionMemberManager();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lazy f48206b = LazyKt.b(new Function0() { // from class: com.transsion.player.longvideo.member.l
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return ResolutionMemberManager.g();
        }
    });

    private ResolutionMemberManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String d() {
        String simpleName = ResolutionMemberManager.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final MemberResolutionDao e() {
        return (MemberResolutionDao) f48206b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MemberResolutionDao g() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).s1();
    }

    public final Object f(go.a aVar, Continuation continuation) {
        return kotlinx.coroutines.i.g(y0.b(), new ResolutionMemberManager$isVipResolutionTip$2(aVar, null), continuation);
    }

    public final void h(FragmentManager fragmentManager, MemberSource from, final go.a aVar, String str, final zx.e eVar) {
        Intrinsics.h(fragmentManager, "fragmentManager");
        Intrinsics.h(from, "from");
        if (yx.a.f79085a.k(from)) {
            lg.a.C0828a.g(lg.a.f68839a, d() + " --> showRewardDialog() --> 解锁高清视频播放权限开关关闭 --> from = " + from, false, 2, null);
            return;
        }
        if (PSActivateManager.f42171a.d()) {
            LongVodActivateDialog longVodActivateDialog = new LongVodActivateDialog();
            longVodActivateDialog.v0(new zx.e() { // from class: com.transsion.player.longvideo.member.ResolutionMemberManager$showRewardDialog$1$1
                @Override // zx.e
                public void a(boolean z10) {
                    kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new ResolutionMemberManager$showRewardDialog$1$1$onActivate$1(z10, aVar, eVar, null), 3, null);
                }
            });
            longVodActivateDialog.r0(from, str);
            longVodActivateDialog.show(fragmentManager, "解锁高清视频播放权限");
            return;
        }
        lg.a.C0828a.g(lg.a.f68839a, d() + " --> showRewardDialog() --> 没有激励广告，无法解锁高清视频播放权限 --> from = " + from, false, 2, null);
        if (eVar != null) {
            eVar.a(false);
        }
    }

    public final Object i(go.a aVar, Continuation continuation) {
        Object objG;
        return (aVar != null && (objG = kotlinx.coroutines.i.g(y0.b(), new ResolutionMemberManager$unlock$2(aVar, null), continuation)) == IntrinsicsKt.f()) ? objG : Unit.f67061a;
    }

    public final Object j(go.a aVar, Continuation continuation) {
        Object objG;
        return (aVar != null && (objG = kotlinx.coroutines.i.g(y0.b(), new ResolutionMemberManager$updateVipResolutionTip$2(aVar, null), continuation)) == IntrinsicsKt.f()) ? objG : Unit.f67061a;
    }
}
