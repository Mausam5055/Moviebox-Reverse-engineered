package com.transsion.home.viewmodel.preload;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.home.bean.AppTab;
import com.transsion.home.bean.BottomTabItem;
import com.transsion.home.bean.HomeTabItem;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.home.viewmodel.preload.PreloadTrendingData$getAppTab$1", f = "PreloadTrendingData.kt", l = {242}, m = "invokeSuspend")
final class PreloadTrendingData$getAppTab$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;
    final /* synthetic */ PreloadTrendingData this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PreloadTrendingData$getAppTab$1(PreloadTrendingData preloadTrendingData, Continuation<? super PreloadTrendingData$getAppTab$1> continuation) {
        super(2, continuation);
        this.this$0 = preloadTrendingData;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PreloadTrendingData$getAppTab$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PreloadTrendingData$getAppTab$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:88:0x01be A[Catch: Exception -> 0x001a, TRY_LEAVE, TryCatch #0 {Exception -> 0x001a, blocks: (B:6:0x0015, B:32:0x00cc, B:34:0x00d8, B:36:0x00de, B:38:0x00e4, B:40:0x00e9, B:41:0x00f0, B:43:0x00f4, B:45:0x00fa, B:47:0x0104, B:49:0x011a, B:51:0x0120, B:54:0x012c, B:56:0x0132, B:58:0x0158, B:61:0x0160, B:63:0x0166, B:66:0x016e, B:68:0x0174, B:71:0x0180, B:73:0x0186, B:75:0x0190, B:78:0x0198, B:80:0x019e, B:83:0x01aa, B:85:0x01b0, B:86:0x01b8, B:88:0x01be, B:13:0x0028, B:15:0x0030, B:17:0x004c, B:19:0x0056, B:21:0x0083, B:26:0x0097, B:28:0x009d), top: B:96:0x000d }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Boolean boolA;
        AppTab appTab;
        List<BottomTabItem> bottomTabs;
        List<BottomTabItem> bottomTabs2;
        List<HomeTabItem> homeTabs;
        List<HomeTabItem> homeTabs2;
        List<BottomTabItem> bottomTabs3;
        List<HomeTabItem> homeTabs3;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        Integer numD = null;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                AppTab appTabB = this.this$0.B();
                if (appTabB != null) {
                    PreloadTrendingData preloadTrendingData = this.this$0;
                    appTabB.resetHomeTabs(preloadTrendingData.y(appTabB.getHomeTabs()));
                    appTabB.setBottomTabs(preloadTrendingData.x(appTabB));
                    lg.a.C0828a c0828a = lg.a.f68839a;
                    List<BottomTabItem> bottomTabs4 = appTabB.getBottomTabs();
                    Integer numD2 = bottomTabs4 != null ? Boxing.d(bottomTabs4.size()) : null;
                    c0828a.c("PreloadTrending", "get tab cache " + numD2 + " version=" + appTabB.getVersion(), true);
                    preloadTrendingData.f45899k = appTabB;
                    preloadTrendingData.C().n(appTabB);
                    preloadTrendingData.O(appTabB);
                } else {
                    appTabB = null;
                }
                int i12 = com.transsion.baselib.report.launch.b.f43370a.b().getInt("key_or_content_mode_local", -1);
                if (i12 >= 0) {
                    boolA = Boxing.a(i12 == 1);
                } else {
                    boolA = null;
                }
                lg.a.f68839a.c("PreloadTrending", "homeTab getAppTab ,isUGCMode:" + boolA, true);
                ol.e eVar = this.this$0.f45892d;
                String strA = vg.a.f77324a.a();
                this.L$0 = appTabB;
                this.label = 1;
                Object objG = eVar.g(boolA, strA, this);
                if (objG == objF) {
                    return objF;
                }
                appTab = appTabB;
                obj = objG;
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                appTab = (AppTab) this.L$0;
                ResultKt.b(obj);
            }
            PreloadTrendingData preloadTrendingData2 = this.this$0;
            AppTab appTab2 = (AppTab) ((BaseDto) obj).getData();
            List<HomeTabItem> listY = preloadTrendingData2.y(appTab2 != null ? appTab2.getHomeTabs() : null);
            if (appTab2 != null) {
                appTab2.resetHomeTabs(listY);
            }
            if (appTab2 != null) {
                appTab2.setBottomTabs(preloadTrendingData2.x(appTab2));
            }
            lg.a.C0828a c0828a2 = lg.a.f68839a;
            c0828a2.c("PreloadTrending", "homeTab size=" + ((appTab2 == null || (homeTabs3 = appTab2.getHomeTabs()) == null) ? null : Boxing.d(homeTabs3.size())), true);
            c0828a2.c("PreloadTrending", "bottomTab size=" + ((appTab2 == null || (bottomTabs3 = appTab2.getBottomTabs()) == null) ? null : Boxing.d(bottomTabs3.size())) + " version=" + (appTab2 != null ? appTab2.getVersion() : null), true);
            preloadTrendingData2.D().n(appTab2);
            preloadTrendingData2.O(appTab2);
            if (Intrinsics.c(appTab != null ? appTab.getVersion() : null, appTab2 != null ? appTab2.getVersion() : null)) {
                if (Intrinsics.c((appTab == null || (homeTabs2 = appTab.getHomeTabs()) == null) ? null : Boxing.d(homeTabs2.size()), (appTab2 == null || (homeTabs = appTab2.getHomeTabs()) == null) ? null : Boxing.d(homeTabs.size()))) {
                    Integer numD3 = (appTab == null || (bottomTabs2 = appTab.getBottomTabs()) == null) ? null : Boxing.d(bottomTabs2.size());
                    if (appTab2 != null && (bottomTabs = appTab2.getBottomTabs()) != null) {
                        numD = Boxing.d(bottomTabs.size());
                    }
                    if (!Intrinsics.c(numD3, numD)) {
                        preloadTrendingData2.a0(appTab2);
                    }
                } else {
                    preloadTrendingData2.a0(appTab2);
                }
            } else {
                preloadTrendingData2.a0(appTab2);
            }
        } catch (Exception e11) {
            if (this.this$0.D().f() == null) {
                this.this$0.f45891c = false;
            }
            lg.a.f68839a.i("PreloadTrending", "getHomeTab error " + e11.getMessage(), true);
        }
        return Unit.f67061a;
    }
}
