package com.transsnet.downloader.popup;

import android.app.Application;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.view.View;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.PermissionUtils;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.therouter.TheRouter;
import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.room.api.IAudioApi;
import com.transsion.room.api.IFloatingApi;
import com.transsnet.downloader.R$string;
import com.transsnet.downloader.adapter.u0;
import com.transsnet.downloader.api.DownloadPageType;
import com.transsnet.downloader.dialog.DownloadConfirmDialog;
import com.transsnet.downloader.dialog.DownloadMoreDialog;
import com.transsnet.downloader.dialog.DownloadReDetectorSaveDialog;
import com.transsnet.downloader.util.DocumentsUtils;
import com.transsnet.downloader.util.DownloadSDCardUtil;
import com.transsnet.downloader.util.a0;
import java.util.List;
import java.util.UUID;
import ko.l0;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes7.dex */
public final class PopupManager {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final a f59518f = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f59519a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final DownloadBean f59520b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Lazy f59521c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private u0.b f59522d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Function0 f59523e;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public static final class b implements PermissionUtils.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f59525b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f59526c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Function2 f59527d;

        b(Context context, boolean z10, Function2 function2) {
            this.f59525b = context;
            this.f59526c = z10;
            this.f59527d = function2;
        }

        @Override // com.blankj.utilcode.util.PermissionUtils.b
        public void onDenied() {
            PopupManager.this.q(this.f59525b, this.f59526c, this.f59527d);
        }

        @Override // com.blankj.utilcode.util.PermissionUtils.b
        public void onGranted() {
            PopupManager.this.q(this.f59525b, this.f59526c, this.f59527d);
        }
    }

    public PopupManager(int i11, DownloadBean downloadBean) {
        Intrinsics.h(downloadBean, "downloadBean");
        this.f59519a = i11;
        this.f59520b = downloadBean;
        this.f59521c = LazyKt.b(new Function0() { // from class: com.transsnet.downloader.popup.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PopupManager.o();
            }
        });
    }

    private final void A(Context context, my.b bVar, DownloadReDetectorSaveDialog downloadReDetectorSaveDialog, boolean z10, Function2 function2) {
        kotlinx.coroutines.k.d(o0.a(y0.b()), null, null, new PopupManager$handleTransferFile$1(this, z10, context, bVar, downloadReDetectorSaveDialog, function2, null), 3, null);
    }

    private final void D(final Context context) {
        List listQ;
        String value;
        final String string = UUID.randomUUID().toString();
        Intrinsics.g(string, "toString(...)");
        if (this.f59520b.getType() == 1) {
            listQ = CollectionsKt.q(new Pair(Utils.a().getString(R$string.help), TmcConstants.MENU_KEY_FEEDBACK), new Pair(Utils.a().getString(R$string.download_dialog_audio_playlist), "audio_add"), new Pair(Utils.a().getString(R$string.delete), RequestParameters.SUBRESOURCE_DELETE));
        } else {
            ConfigBean configBeanD = sm.f.d(sm.f.f75407c.a(), "sb_show_save_to", false, 2, null);
            if (configBeanD != null && (value = configBeanD.getValue()) != null) {
                StringsKt.m1(value);
            }
            listQ = CollectionsKt.q(new Pair(Utils.a().getString(R$string.help), TmcConstants.MENU_KEY_FEEDBACK), new Pair(Utils.a().getString(R$string.delete), RequestParameters.SUBRESOURCE_DELETE));
            if (!ak.o.f646a.i()) {
                listQ.add(1, new Pair(Utils.a().getString(R$string.download_transfer_tips), "transfer_file_2_mb"));
            }
            listQ.add(0, new Pair(Utils.a().getString(R$string.download_save_to_my_phone), "transfer_file"));
            com.transsion.baselib.helper.f.f43269a.h(DownloadPageType.DOWNLOAD.getPageName(), "save_local/more_dialog", string, this.f59520b.getSubjectId(), 2);
        }
        DownloadMoreDialog downloadMoreDialogA = DownloadMoreDialog.INSTANCE.a(listQ);
        downloadMoreDialogA.t0(new Function3() { // from class: com.transsnet.downloader.popup.c
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return PopupManager.E(this.f59530a, context, string, ((Integer) obj).intValue(), (String) obj2, (String) obj3);
            }
        });
        downloadMoreDialogA.k0(context, "more_Dialog");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final Unit E(PopupManager popupManager, Context context, String str, int i11, String str2, String str3) {
        Intrinsics.h(str2, "<unused var>");
        if (str3 != null) {
            switch (str3.hashCode()) {
                case -2014367408:
                    if (str3.equals("transfer_file")) {
                        popupManager.z(context, str);
                        com.transsion.baselib.helper.f.f43269a.f(DownloadPageType.DOWNLOAD.getPageName(), "save_local/more_dialog", str, popupManager.f59520b.getSubjectId(), 2);
                    }
                    break;
                case -1335458389:
                    if (str3.equals(RequestParameters.SUBRESOURCE_DELETE)) {
                        popupManager.v(context);
                    }
                    break;
                case -191501435:
                    if (str3.equals(TmcConstants.MENU_KEY_FEEDBACK)) {
                        popupManager.K();
                    }
                    break;
                case 188508344:
                    if (str3.equals("audio_add")) {
                        popupManager.n();
                    }
                    break;
                case 1086195281:
                    if (str3.equals("transfer_file_2_mb")) {
                        popupManager.Q();
                    }
                    break;
            }
        }
        return Unit.f67061a;
    }

    private final void F(final Context context) {
        DownloadMoreDialog downloadMoreDialogA = DownloadMoreDialog.INSTANCE.a(CollectionsKt.q(new Pair(Utils.a().getString(R$string.help), TmcConstants.MENU_KEY_FEEDBACK), new Pair(Utils.a().getString(R$string.delete), RequestParameters.SUBRESOURCE_DELETE)));
        downloadMoreDialogA.t0(new Function3() { // from class: com.transsnet.downloader.popup.f
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return PopupManager.G(this.f59537a, context, ((Integer) obj).intValue(), (String) obj2, (String) obj3);
            }
        });
        downloadMoreDialogA.k0(context, "more_Dialog");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit G(PopupManager popupManager, Context context, int i11, String str, String str2) {
        Intrinsics.h(str, "<unused var>");
        if (i11 == 0) {
            popupManager.K();
        } else if (i11 == 1) {
            popupManager.v(context);
        }
        return Unit.f67061a;
    }

    private final void H(final String str, final Function1 function1) {
        try {
            DocumentsUtils.f59890a.k(str, new Function1() { // from class: com.transsnet.downloader.popup.i
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return PopupManager.I(str, function1, (Uri) obj);
                }
            });
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit I(String str, Function1 function1, Uri uri) {
        if (uri != null) {
            lg.a.C0828a.f(lg.a.f68839a, "SaveVideo", "onStoragePermissionGranted------- uri = " + uri, false, 4, null);
            DocumentsUtils.f59890a.m(Utils.a(), str, uri);
            function1.invoke(Boolean.TRUE);
        } else {
            function1.invoke(Boolean.FALSE);
        }
        return Unit.f67061a;
    }

    private final void K() {
        ak.k.p(TheRouter.c("/profile/user_center_labels_feedback").K("feedback_from_page", "SUBJECT_DOWNLOAD").K("subject_id", this.f59520b.getSubjectId()));
    }

    public static /* synthetic */ void M(PopupManager popupManager, Context context, boolean z10, Function2 function2, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            function2 = null;
        }
        popupManager.L(context, z10, function2);
    }

    private final void N(final Context context, final boolean z10, final Function2 function2) {
        String rootPath;
        if (this.f59520b.getIsTransferFailed() || (rootPath = this.f59520b.getRootPath()) == null) {
            rootPath = lj.b.f68866a.e();
        }
        final DownloadReDetectorSaveDialog downloadReDetectorSaveDialogA = DownloadReDetectorSaveDialog.INSTANCE.a(rootPath, z10);
        downloadReDetectorSaveDialogA.I0(new Function1() { // from class: com.transsnet.downloader.popup.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PopupManager.O(this.f59539a, context, downloadReDetectorSaveDialogA, z10, function2, (my.b) obj);
            }
        });
        downloadReDetectorSaveDialogA.H0(new Function0() { // from class: com.transsnet.downloader.popup.h
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return PopupManager.P();
            }
        });
        downloadReDetectorSaveDialogA.k0(context, "save_loading_Dialog");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit O(PopupManager popupManager, Context context, DownloadReDetectorSaveDialog downloadReDetectorSaveDialog, boolean z10, Function2 function2, my.b pathInfo) {
        Intrinsics.h(pathInfo, "pathInfo");
        com.transsion.baselib.helper.f.f43269a.c("downloadpage", "save_local");
        popupManager.A(context, pathInfo, downloadReDetectorSaveDialog, z10, function2);
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit P() {
        return Unit.f67061a;
    }

    private final void Q() {
        Function0 function0 = this.f59523e;
        if (function0 != null) {
            function0.invoke();
        }
    }

    private final void n() {
        String postId = this.f59520b.getPostId();
        if (postId == null) {
            postId = this.f59520b.getUrl();
        }
        String cover = this.f59520b.getCover();
        Long duration = this.f59520b.getDuration();
        Long size = this.f59520b.getSize();
        String url = this.f59520b.getUrl();
        String name = this.f59520b.getName();
        String subjectId = this.f59520b.getSubjectId();
        String subjectName = this.f59520b.getSubjectName();
        int ep2 = this.f59520b.getEp();
        kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new PopupManager$audioAddPlayList$1(new AudioBean(postId, cover, duration, size, url, name, "", null, null, null, null, null, null, this.f59520b.getPostId(), subjectId, this.f59520b.getGroupId(), 0, subjectName, this.f59520b.getSe(), ep2, 73600, null), null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final IAudioApi o() {
        return (IAudioApi) TheRouter.d(IAudioApi.class, new Object[0]);
    }

    private final Pair p() {
        if (Build.VERSION.SDK_INT <= 28) {
            String str = "";
            String strB = str;
            for (my.f fVar : DownloadSDCardUtil.f59894a.b()) {
                if (fVar.c()) {
                    strB = fVar.b();
                    str = strB;
                }
            }
            lg.a.C0828a c0828a = lg.a.f68839a;
            lg.a.C0828a.f(c0828a, "SaveVideo", "onStoragePermissionGranted，1  sdRootPath = " + str, false, 4, null);
            if (str.length() > 0) {
                DocumentsUtils documentsUtils = DocumentsUtils.f59890a;
                Application applicationA = Utils.a();
                Intrinsics.g(applicationA, "getApp(...)");
                boolean zD = documentsUtils.d(applicationA, str);
                lg.a.C0828a.f(c0828a, "SaveVideo", " check other permission, showOpenDocumentTree = " + zD, false, 4, null);
                if (zD) {
                    return new Pair(Boolean.FALSE, strB);
                }
            }
        }
        return new Pair(Boolean.FALSE, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q(final Context context, final boolean z10, final Function2 function2) {
        Pair pairP = p();
        if (((Boolean) pairP.getFirst()).booleanValue()) {
            H((String) pairP.getSecond(), new Function1() { // from class: com.transsnet.downloader.popup.d
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return PopupManager.r(this.f59533a, context, z10, function2, ((Boolean) obj).booleanValue());
                }
            });
        } else {
            N(context, z10, function2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r(PopupManager popupManager, Context context, boolean z10, Function2 function2, boolean z11) {
        if (z11) {
            popupManager.N(context, z10, function2);
        }
        return Unit.f67061a;
    }

    private final void s() {
        IAudioApi iAudioApiX;
        com.transsnet.downloader.manager.g gVarA = com.transsnet.downloader.manager.p.f59500a.a(Utils.a());
        DownloadBean downloadBean = this.f59520b;
        if (downloadBean.getStatus() != 10) {
            gVarA.l(downloadBean, new Function1() { // from class: com.transsnet.downloader.popup.l
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return PopupManager.u(this.f59548a, ((Boolean) obj).booleanValue());
                }
            });
        } else {
            if (downloadBean.getSeriesList().isEmpty()) {
                uh.b.f76753a.e(Utils.a().getString(R$string.download_delete_success));
                u0.b bVar = this.f59522d;
                if (bVar != null) {
                    bVar.a(this.f59519a, 4);
                }
                String resourceId = this.f59520b.getResourceId();
                if (resourceId != null) {
                    l0.f66968a.y(resourceId);
                    return;
                }
                return;
            }
            gVarA.z(downloadBean.getSeriesList(), new Function1() { // from class: com.transsnet.downloader.popup.k
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return PopupManager.t(this.f59547a, ((Boolean) obj).booleanValue());
                }
            });
        }
        if (downloadBean.getType() == 1 && (iAudioApiX = x()) != null && iAudioApiX.a(downloadBean.getUrl())) {
            IFloatingApi iFloatingApi = (IFloatingApi) TheRouter.d(IFloatingApi.class, new Object[0]);
            if (iFloatingApi != null) {
                iFloatingApi.hide();
            }
            IAudioApi iAudioApiX2 = x();
            if (iAudioApiX2 != null) {
                iAudioApiX2.stop();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit t(PopupManager popupManager, boolean z10) {
        uh.b.f76753a.e(Utils.a().getString(R$string.download_delete_success));
        u0.b bVar = popupManager.f59522d;
        if (bVar != null) {
            bVar.a(popupManager.f59519a, 4);
        }
        String resourceId = popupManager.f59520b.getResourceId();
        if (resourceId != null) {
            l0.f66968a.y(resourceId);
        }
        return Unit.f67061a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit u(PopupManager popupManager, boolean z10) {
        uh.b.f76753a.e(Utils.a().getString(R$string.download_delete_success));
        u0.b bVar = popupManager.f59522d;
        if (bVar != null) {
            bVar.a(popupManager.f59519a, 4);
        }
        String resourceId = popupManager.f59520b.getResourceId();
        if (resourceId != null) {
            l0.f66968a.y(resourceId);
        }
        return Unit.f67061a;
    }

    private final void v(Context context) {
        String string;
        int rootPathType = this.f59520b.getRootPathType();
        if (rootPathType != 2) {
            string = rootPathType != 3 ? context.getString(com.transsion.lib.push.R$string.app_name) : context.getString(R$string.str_download_dialog_path_albums);
        } else {
            string = context.getString(R$string.sdcard_name);
        }
        Intrinsics.e(string);
        DownloadConfirmDialog downloadConfirmDialogA = DownloadConfirmDialog.INSTANCE.a(context.getString(R$string.cancel), context.getString(R$string.delete), context.getString(R$string.download_delete_tips, string), null);
        downloadConfirmDialogA.s0(new Function1() { // from class: com.transsnet.downloader.popup.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return PopupManager.w(this.f59546a, ((Boolean) obj).booleanValue());
            }
        });
        downloadConfirmDialogA.k0(context, "confirm_Dialog");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit w(PopupManager popupManager, boolean z10) {
        if (z10) {
            popupManager.s();
        }
        return Unit.f67061a;
    }

    private final IAudioApi x() {
        return (IAudioApi) this.f59521c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String y(boolean z10) {
        if (z10) {
            return Utils.a().getString(R$string.download_move_successful) + "\n" + Utils.a().getString(R$string.download_save_subtitle_tips);
        }
        return Utils.a().getString(R$string.download_save_successful) + "\n" + Utils.a().getString(R$string.download_save_subtitle_tips);
    }

    private final void z(Context context, String str) {
        a0.f59916a.a(context, this, "save_local/more_dialog", str);
    }

    public final void B(u0.b listener) {
        Intrinsics.h(listener, "listener");
        this.f59522d = listener;
    }

    public final void C(Function0 callback) {
        Intrinsics.h(callback, "callback");
        this.f59523e = callback;
    }

    public final void J(View anchorView, int i11) {
        Intrinsics.h(anchorView, "anchorView");
        if (i11 == 1) {
            Context context = anchorView.getContext();
            Intrinsics.g(context, "getContext(...)");
            D(context);
        } else {
            Context context2 = anchorView.getContext();
            Intrinsics.g(context2, "getContext(...)");
            F(context2);
        }
    }

    public final void L(Context context, boolean z10, Function2 function2) {
        Intrinsics.h(context, "context");
        if (Build.VERSION.SDK_INT > 29) {
            N(context, z10, function2);
        } else if (PermissionUtils.s("android.permission.WRITE_EXTERNAL_STORAGE")) {
            q(context, z10, function2);
        } else {
            PermissionUtils.x("android.permission.WRITE_EXTERNAL_STORAGE").m(new b(context, z10, function2)).y();
        }
    }
}
