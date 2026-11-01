package com.transsion.videofloat.manager;

import android.app.Application;
import android.provider.Settings;
import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.permissionx.guolindev.callback.PermissionDialogClickType;
import com.tencent.mmkv.MMKV;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.videofloat.R$mipmap;
import com.transsion.videofloat.R$string;
import com.transsion.videofloat.dialog.VideoFloatPermissionDialog;
import com.transsion.videofloat.view.VideoFloatView;
import com.transsion.web.api.WebConstants;
import java.util.HashMap;
import java.util.List;
import ko.l0;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class i implements ox.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private VideoFloatView f57975b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f57976c;

    public static final class a implements sx.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ sx.a f57977a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ i f57978b;

        a(sx.a aVar, i iVar) {
            this.f57977a = aVar;
            this.f57978b = iVar;
        }

        @Override // sx.a
        public boolean a(px.a aVar) {
            sx.a aVar2 = this.f57977a;
            if (aVar2 != null) {
                return aVar2.a(aVar);
            }
            return false;
        }

        @Override // sx.a
        public void b(px.a aVar) {
            if (aVar != null) {
                i iVar = this.f57978b;
                String strR = aVar.r();
                UGCVideo uGCVideoV = aVar.v();
                iVar.q(strR, uGCVideoV != null ? uGCVideoV.getUgcVideoId() : null, aVar.h(), aVar.e());
            }
            sx.a aVar2 = this.f57977a;
            if (aVar2 != null) {
                aVar2.b(aVar);
            }
        }

        @Override // sx.a
        public void c(px.a aVar) {
            String strK;
            this.f57978b.f57976c = false;
            sx.a aVar2 = this.f57977a;
            if (aVar2 != null) {
                aVar2.c(aVar);
            }
            this.f57978b.f57975b = null;
            if (aVar == null || (strK = aVar.k()) == null) {
                return;
            }
            a0.f57933a.e(strK);
        }
    }

    private final void n(FragmentActivity fragmentActivity, boolean z10, String str, String str2, String str3, String str4) {
        if (p()) {
            return;
        }
        w(this, fragmentActivity, z10, str, str2, str3, str4, null, 64, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit o(Function1 function1, i iVar, px.a aVar, boolean z10, sx.a aVar2, boolean z11) {
        if (z11) {
            if (function1 != null) {
                function1.invoke(Boolean.TRUE);
            }
            iVar.u(aVar, z10, aVar2);
        } else if (function1 != null) {
            function1.invoke(Boolean.FALSE);
        }
        return Unit.f67061a;
    }

    private final boolean p() {
        return Settings.canDrawOverlays(Utils.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q(String str, String str2, String str3, String str4) {
        HashMap map = new HashMap();
        if (str != null) {
            map.put("subject_id", str);
        }
        if (str4 != null) {
            map.put("ops", str4);
        }
        if (str2 != null) {
            map.put("ugc_video_id", str2);
        }
        map.put("opt_type", "float_back_page");
        map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, "float");
        hj.i.f64505a.p(str3, map);
    }

    private final void r(boolean z10, String str, String str2, String str3, String str4) {
        HashMap map = new HashMap();
        if (str != null) {
            map.put("subject_id", str);
        }
        if (str2 != null) {
            map.put("ugc_video_id", str2);
        }
        if (str4 != null) {
            map.put("ops", str4);
        }
        map.put("opt_type", z10 ? "allow" : "cancel");
        map.put(WebConstants.PAGE_FROM, str3);
        hj.i.f64505a.p(ox.b.f72191a.d(), map);
    }

    private final void s(String str, String str2, String str3, String str4) {
        HashMap map = new HashMap();
        if (str != null) {
            map.put("subject_id", str);
        }
        if (str2 != null) {
            map.put("ugc_video_id", str2);
        }
        if (str4 != null) {
            map.put("ops", str4);
        }
        map.put(WebConstants.PAGE_FROM, str3);
        hj.i.f64505a.r(ox.b.f72191a.d(), map);
    }

    private final void t(boolean z10, boolean z11) {
        HashMap map = new HashMap();
        map.put("has_permission", String.valueOf(z11));
        map.put(EventConstants.KEY_ACTION, z10 ? "click" : "auto");
        hj.i.f64505a.s("float_opt", "app_perf", map);
    }

    private final void u(px.a aVar, boolean z10, sx.a aVar2) {
        ox.b.C0878b.a(this, false, 1, null);
        if (this.f57975b == null) {
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            this.f57975b = new VideoFloatView(applicationA);
        }
        VideoFloatView videoFloatView = this.f57975b;
        if (videoFloatView != null) {
            lg.a.C0828a.f(lg.a.f68839a, "VideoFloat", "showFloat", false, 4, null);
            a0.f57933a.a(aVar.k(), aVar.f());
            this.f57976c = true;
            videoFloatView.addToWindow(z10, aVar);
            videoFloatView.setVideoFloatListener(new a(aVar2, this));
        }
    }

    private final void v(FragmentActivity fragmentActivity, final boolean z10, final String str, final String str2, final String str3, final String str4, final Function1 function1) {
        ye.c.f78993a.e(fragmentActivity).b("android.permission.SYSTEM_ALERT_WINDOW").b().c(new ze.b() { // from class: com.transsion.videofloat.manager.e
            @Override // ze.b
            public final void a(cf.f fVar, List list, boolean z11, boolean z12) {
                i.x(z10, this, str2, str3, str, str4, fVar, list, z11, z12);
            }
        }).d(new ze.a() { // from class: com.transsion.videofloat.manager.f
            @Override // ze.a
            public final void a(BaseDialog baseDialog, Boolean bool, PermissionDialogClickType permissionDialogClickType) {
                i.y(this.f57963a, str2, str3, str, str4, baseDialog, bool, permissionDialogClickType);
            }
        }).a(new ze.c() { // from class: com.transsion.videofloat.manager.g
            @Override // ze.c
            public final void a(boolean z11, List list, List list2) {
                i.z(this.f57968a, function1, z11, list, list2);
            }
        });
    }

    static /* synthetic */ void w(i iVar, FragmentActivity fragmentActivity, boolean z10, String str, String str2, String str3, String str4, Function1 function1, int i11, Object obj) {
        iVar.v(fragmentActivity, z10, str, str2, str3, str4, (i11 & 64) != 0 ? null : function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(boolean z10, i iVar, String str, String str2, String str3, String str4, cf.f scope, List deniedList, boolean z11, boolean z12) {
        Intrinsics.h(scope, "scope");
        Intrinsics.h(deniedList, "deniedList");
        if (!z11) {
            lg.a.C0828a.f(lg.a.f68839a, "VideoFloat", "请求权限之后，", false, 4, null);
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, "VideoFloat", "请求权限前，提示弹窗，isFullLand：" + z10, false, 4, null);
        if (z10) {
            scope.d(new VideoFloatPermissionDialog(false, deniedList));
        } else {
            scope.e(deniedList, new bf.a(null, Utils.a().getString(R$string.video_float_tips_v2), Utils.a().getString(R$string.video_float_enable), Integer.valueOf(R$mipmap.video_float_ic_permission_img), Integer.valueOf(R$color.white_20), 1, null));
        }
        iVar.s(str, str2, str3, str4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y(i iVar, String str, String str2, String str3, String str4, BaseDialog baseDialog, Boolean bool, PermissionDialogClickType permissionDialogClickType) {
        iVar.r(permissionDialogClickType == PermissionDialogClickType.POSITIVE, str, str2, str3, str4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(i iVar, Function1 function1, boolean z10, List grantedList, List deniedList) {
        Intrinsics.h(grantedList, "grantedList");
        Intrinsics.h(deniedList, "deniedList");
        lg.a.C0828a.f(lg.a.f68839a, "VideoFloat", "请求权限结果:" + z10, false, 4, null);
        iVar.t(true, z10);
        if (z10) {
            if (function1 != null) {
                function1.invoke(Boolean.TRUE);
            }
        } else if (function1 != null) {
            function1.invoke(Boolean.FALSE);
        }
    }

    @Override // ox.b
    public boolean b(String tag) {
        px.a floatBean;
        Intrinsics.h(tag, "tag");
        VideoFloatView videoFloatView = this.f57975b;
        if (videoFloatView == null || (floatBean = videoFloatView.getFloatBean()) == null) {
            return false;
        }
        return Intrinsics.c(tag, floatBean.r() + floatBean.q() + floatBean.c());
    }

    @Override // ox.b
    public boolean c(com.transsion.player.orplayer.g gVar) {
        boolean zC;
        lg.a.C0828a c0828a = lg.a.f68839a;
        boolean z10 = this.f57976c;
        VideoFloatView videoFloatView = this.f57975b;
        lg.a.C0828a.f(c0828a, "VideoFloat", "1-isEnterFloat：" + z10 + ", " + (videoFloatView != null ? videoFloatView.getOrPlayer() : null) + ", " + gVar + " ", false, 4, null);
        if (!this.f57976c) {
            return false;
        }
        VideoFloatView videoFloatView2 = this.f57975b;
        if ((videoFloatView2 != null ? videoFloatView2.getOrPlayer() : null) == null) {
            zC = false;
        } else {
            VideoFloatView videoFloatView3 = this.f57975b;
            zC = Intrinsics.c(videoFloatView3 != null ? videoFloatView3.getOrPlayer() : null, gVar);
        }
        return zC;
    }

    @Override // ox.b
    public void d() {
        t(false, p());
    }

    @Override // ox.b
    public void e(FragmentActivity activity, String str, String str2, String pageName, String str3) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(pageName, "pageName");
        Function0 function0P = l0.f66968a.p();
        if ((function0P == null || !((Boolean) function0P.invoke()).booleanValue()) && !ox.e.f72197a.b().c()) {
            com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f43370a;
            MMKV mmkvB = bVar.b();
            ox.b.a aVar = ox.b.f72191a;
            if (mmkvB.getBoolean(aVar.b(), false) || activity.isDestroyed() || activity.isFinishing()) {
                return;
            }
            bVar.b().putBoolean(aVar.b(), true);
            n(activity, false, pageName, str, str2, str3);
        }
    }

    @Override // ox.b
    public void f(boolean z10) {
        if (!z10) {
            a0.f57933a.d();
        }
        this.f57976c = false;
        VideoFloatView videoFloatView = this.f57975b;
        if (videoFloatView != null) {
            videoFloatView.removeFromWindow();
        }
        this.f57975b = null;
    }

    @Override // ox.b
    public void g(FragmentActivity activity, final px.a floatBean, final boolean z10, boolean z11, final Function1 function1, final sx.a aVar) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(floatBean, "floatBean");
        Function0 function0P = l0.f66968a.p();
        if (function0P == null || !((Boolean) function0P.invoke()).booleanValue()) {
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
            }
            lg.a.f68839a.c("VideoFloat", "单播放器 禁用pip功能", true);
            return;
        }
        floatBean.D(z10);
        if (p()) {
            lg.a.C0828a.f(lg.a.f68839a, "VideoFloat", "checkShowFloatView--has permission showFloat", false, 4, null);
            if (function1 != null) {
                function1.invoke(Boolean.TRUE);
            }
            u(floatBean, z10, aVar);
            return;
        }
        lg.a.f68839a.c("VideoFloat", "checkShowFloatView no permission proactive:" + z10, true);
        if (!z10) {
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
            }
        } else {
            String strH = floatBean.h();
            String strR = floatBean.r();
            UGCVideo uGCVideoV = floatBean.v();
            v(activity, z11, strH, strR, uGCVideoV != null ? uGCVideoV.getUgcVideoId() : null, floatBean.e(), new Function1() { // from class: com.transsion.videofloat.manager.h
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return i.o(function1, this, floatBean, z10, aVar, ((Boolean) obj).booleanValue());
                }
            });
        }
    }

    @Override // ox.b
    public boolean isPlaying() {
        VideoFloatView videoFloatView;
        if (this.f57976c && (videoFloatView = this.f57975b) != null) {
            return videoFloatView.isPlaying();
        }
        return false;
    }
}
