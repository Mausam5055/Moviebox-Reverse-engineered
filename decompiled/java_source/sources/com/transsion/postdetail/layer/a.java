package com.transsion.postdetail.layer;

import android.view.View;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.orplayer.f;
import com.transsion.player.orplayer.g;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.postdetail.layer.listener.LayerFlag;
import com.transsion.postdetail.layer.local.LocalUiType;
import com.transsion.subtitle.VideoSubtitleControl;
import com.transsion.videofloat.bean.FloatActionType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f48893a = "LayerManager";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f48894b = new ArrayList();

    /* JADX INFO: renamed from: com.transsion.postdetail.layer.a$a, reason: collision with other inner class name */
    public /* synthetic */ class C0649a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48895a;

        static {
            int[] iArr = new int[LayerFlag.values().length];
            try {
                iArr[LayerFlag.SET_PLAYER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayerFlag.SET_PARAMS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LayerFlag.SET_MANAGER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LayerFlag.INIT_PLAY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[LayerFlag.RENDER_FIRST_FRAME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[LayerFlag.COMPLETION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[LayerFlag.VIDEO_SIZE_CHANGED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[LayerFlag.LOADING_BEGIN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[LayerFlag.LOADING_END.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[LayerFlag.VIDEO_START.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[LayerFlag.VIDEO_PAUSE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[LayerFlag.PROGRESS.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[LayerFlag.PLAY_ERROR.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[LayerFlag.LOOPING_START.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[LayerFlag.PLAYER_RESET.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[LayerFlag.INIT_VIEW.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[LayerFlag.INIT_VIEW_TYPE.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[LayerFlag.INIT_DATA.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[LayerFlag.ADD_SURFACE.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[LayerFlag.SCREEN_ORIENTATION_CHANGED.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[LayerFlag.LOCAL_UI_CHANGED.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[LayerFlag.LAYER_EVENT.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr[LayerFlag.UPDATE_DATA.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr[LayerFlag.UPDATE_DOWNLOAD_DATA.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr[LayerFlag.UPDATE_TITLE.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr[LayerFlag.BACK_PRESSED.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr[LayerFlag.FRAGMENT_RESUME.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr[LayerFlag.FRAGMENT_PAUSE.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr[LayerFlag.FRAGMENT_STOP.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                iArr[LayerFlag.RELEASE_PLAYER.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                iArr[LayerFlag.FRAGMENT_DESTROY.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                iArr[LayerFlag.BOTTOM_CONTROL.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                iArr[LayerFlag.SUBTITLE_CONTROL.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                iArr[LayerFlag.DOWNLOAD_PROGRESS.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                iArr[LayerFlag.DOWNLOAD_SPEED.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                iArr[LayerFlag.DOWNLOAD_CALLBACK.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                iArr[LayerFlag.SHOW_TOAST.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                iArr[LayerFlag.REMOVE_TOAST.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                iArr[LayerFlag.NETWORK_CHANGE.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                iArr[LayerFlag.PLAYER_TIMEOUT_TIPS.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                iArr[LayerFlag.REQUEST_FORYOU.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                iArr[LayerFlag.SERIES_INIT.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                iArr[LayerFlag.SERIES_EVENT.ordinal()] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                iArr[LayerFlag.SERIES_PLAY.ordinal()] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                iArr[LayerFlag.SERIES_LOCAL2NET.ordinal()] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                iArr[LayerFlag.UPDATE_SPEED.ordinal()] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                iArr[LayerFlag.UPDATE_ROTATION.ordinal()] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                iArr[LayerFlag.SHOW_FLOAT_2_WINDOW.ordinal()] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                iArr[LayerFlag.INTO_PIP.ordinal()] = 49;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                iArr[LayerFlag.PLAYER_FOREGROUND.ordinal()] = 50;
            } catch (NoSuchFieldError unused50) {
            }
            f48895a = iArr;
        }
    }

    public static final class b implements vo.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ LayerFlag f48897b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Object[] f48898c;

        b(LayerFlag layerFlag, Object[] objArr) {
            this.f48897b = layerFlag;
            this.f48898c = objArr;
        }

        @Override // vo.a
        public boolean a(Object data) {
            Intrinsics.h(data, "data");
            return data instanceof BaseLayer;
        }

        @Override // vo.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(BaseLayer listener) {
            Intrinsics.h(listener, "listener");
            a aVar = a.this;
            LayerFlag layerFlag = this.f48897b;
            Object[] objArr = this.f48898c;
            aVar.i(listener, layerFlag, Arrays.copyOf(objArr, objArr.length));
        }
    }

    public static final class c implements vo.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ LayerFlag f48900b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Object[] f48901c;

        c(LayerFlag layerFlag, Object[] objArr) {
            this.f48900b = layerFlag;
            this.f48901c = objArr;
        }

        @Override // vo.a
        public boolean a(Object data) {
            Intrinsics.h(data, "data");
            return data instanceof f;
        }

        @Override // vo.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(f listener) {
            Intrinsics.h(listener, "listener");
            a aVar = a.this;
            LayerFlag layerFlag = this.f48900b;
            Object[] objArr = this.f48901c;
            aVar.k(listener, layerFlag, Arrays.copyOf(objArr, objArr.length));
        }
    }

    public static final class d implements vo.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ LayerFlag f48903b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Object[] f48904c;

        d(LayerFlag layerFlag, Object[] objArr) {
            this.f48903b = layerFlag;
            this.f48904c = objArr;
        }

        @Override // vo.a
        public boolean a(Object data) {
            Intrinsics.h(data, "data");
            return data instanceof vo.d;
        }

        @Override // vo.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public void b(vo.d listener) {
            Intrinsics.h(listener, "listener");
            a aVar = a.this;
            LayerFlag layerFlag = this.f48903b;
            Object[] objArr = this.f48904c;
            aVar.j(listener, layerFlag, Arrays.copyOf(objArr, objArr.length));
        }
    }

    private final void f(vo.a aVar) {
        if (this.f48894b.isEmpty()) {
            return;
        }
        List list = this.f48894b;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (aVar.a((BaseLayer) obj)) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            try {
                aVar.b((BaseLayer) it.next());
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i(BaseLayer baseLayer, LayerFlag layerFlag, Object... objArr) {
        int i11 = C0649a.f48895a[layerFlag.ordinal()];
        if (i11 == 1) {
            if (objArr.length == 2) {
                Object obj = objArr[0];
                Intrinsics.f(obj, "null cannot be cast to non-null type com.transsion.player.orplayer.ORPlayer");
                Object obj2 = objArr[1];
                Intrinsics.f(obj2, "null cannot be cast to non-null type com.transsion.player.ui.ORPlayerView");
                baseLayer.M((g) obj, (ORPlayerView) obj2);
                return;
            }
            return;
        }
        if (i11 != 2) {
            if (i11 == 3 && objArr.length == 1) {
                Object obj3 = objArr[0];
                Intrinsics.f(obj3, "null cannot be cast to non-null type com.transsion.postdetail.layer.LayerManager");
                baseLayer.L((a) obj3);
                return;
            }
            return;
        }
        if (objArr.length == 2) {
            Object obj4 = objArr[0];
            Intrinsics.f(obj4, "null cannot be cast to non-null type kotlin.String");
            Object obj5 = objArr[1];
            Intrinsics.f(obj5, "null cannot be cast to non-null type com.transsion.moviedetailapi.bean.PostSubjectItem");
            baseLayer.N((String) obj4, (PostSubjectItem) obj5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j(vo.d dVar, LayerFlag layerFlag, Object... objArr) {
        Object objX;
        Object objX2;
        Object objX3;
        switch (C0649a.f48895a[layerFlag.ordinal()]) {
            case 16:
                if (objArr.length == 2) {
                    Object obj = objArr[0];
                    Intrinsics.f(obj, "null cannot be cast to non-null type android.view.View");
                    Object obj2 = objArr[1];
                    Intrinsics.f(obj2, "null cannot be cast to non-null type kotlin.Boolean");
                    dVar.y((View) obj, ((Boolean) obj2).booleanValue());
                }
                break;
            case 17:
                if (objArr.length == 2) {
                    Object obj3 = objArr[0];
                    Intrinsics.f(obj3, "null cannot be cast to non-null type android.view.View");
                    Object obj4 = objArr[1];
                    Intrinsics.f(obj4, "null cannot be cast to non-null type com.transsion.postdetail.layer.local.LocalUiType");
                    dVar.r((View) obj3, (LocalUiType) obj4);
                }
                break;
            case 18:
                if (objArr.length == 5) {
                    Object obj5 = objArr[0];
                    Intrinsics.f(obj5, "null cannot be cast to non-null type kotlin.String");
                    Object obj6 = objArr[1];
                    Intrinsics.f(obj6, "null cannot be cast to non-null type kotlin.String");
                    Object obj7 = objArr[2];
                    Intrinsics.f(obj7, "null cannot be cast to non-null type kotlin.String");
                    Object obj8 = objArr[3];
                    Intrinsics.f(obj8, "null cannot be cast to non-null type kotlin.Boolean");
                    boolean zBooleanValue = ((Boolean) obj8).booleanValue();
                    Object obj9 = objArr[4];
                    Intrinsics.f(obj9, "null cannot be cast to non-null type kotlin.Boolean");
                    dVar.p((String) obj5, (String) obj6, (String) obj7, zBooleanValue, ((Boolean) obj9).booleanValue());
                }
                break;
            case 19:
                if (objArr.length == 2) {
                    Object obj10 = objArr[0];
                    Intrinsics.f(obj10, "null cannot be cast to non-null type kotlin.Int");
                    int iIntValue = ((Integer) obj10).intValue();
                    Object obj11 = objArr[1];
                    Intrinsics.f(obj11, "null cannot be cast to non-null type kotlin.Int");
                    dVar.q(iIntValue, ((Integer) obj11).intValue());
                }
                break;
            case 20:
                if (objArr.length == 1) {
                    Object obj12 = objArr[0];
                    Intrinsics.f(obj12, "null cannot be cast to non-null type com.transsion.postdetail.layer.local.LocalUiType");
                    dVar.m((LocalUiType) obj12);
                }
                break;
            case 21:
                if (objArr.length == 1) {
                    Object obj13 = objArr[0];
                    Intrinsics.f(obj13, "null cannot be cast to non-null type com.transsion.postdetail.layer.local.LocalUiType");
                    dVar.a((LocalUiType) obj13);
                }
                break;
            case 22:
                if (objArr.length == 1) {
                    Object obj14 = objArr[0];
                    Intrinsics.f(obj14, "null cannot be cast to non-null type com.transsion.postdetail.layer.listener.LayerEvent");
                    dVar.D((vo.b) obj14);
                }
                break;
            case 23:
                if (objArr.length == 1) {
                    Object obj15 = objArr[0];
                    Intrinsics.f(obj15, "null cannot be cast to non-null type com.transsion.moviedetailapi.bean.PostSubjectItem");
                    dVar.w((PostSubjectItem) obj15);
                }
                break;
            case 24:
                if (objArr.length == 3) {
                    Object obj16 = objArr[0];
                    Intrinsics.f(obj16, "null cannot be cast to non-null type com.transsion.baselib.db.download.DownloadBean");
                    Object obj17 = objArr[1];
                    Intrinsics.f(obj17, "null cannot be cast to non-null type kotlin.String");
                    Object obj18 = objArr[2];
                    Intrinsics.f(obj18, "null cannot be cast to non-null type kotlin.Boolean");
                    dVar.k((DownloadBean) obj16, (String) obj17, ((Boolean) obj18).booleanValue());
                }
                break;
            case 25:
                if (objArr.length == 1) {
                    Object obj19 = objArr[0];
                    Intrinsics.f(obj19, "null cannot be cast to non-null type kotlin.String");
                    dVar.updateTitle((String) obj19);
                }
                break;
            case 26:
                if (dVar.isVisible()) {
                    dVar.onBackPressed();
                }
                break;
            case 27:
                if (dVar.isVisible()) {
                    dVar.onViewResume();
                }
                break;
            case 28:
                if (dVar.isVisible()) {
                    dVar.onViewPause();
                }
                break;
            case NOTIFICATION_REDIRECT_VALUE:
                if (dVar.isVisible()) {
                    dVar.n();
                }
                break;
            case 30:
                if (dVar.isVisible()) {
                    dVar.z();
                }
                break;
            case TEMPLATE_HTML_SIZE_VALUE:
                dVar.c();
                break;
            case 32:
                if (objArr.length == 2) {
                    Object obj20 = objArr[0];
                    Intrinsics.f(obj20, "null cannot be cast to non-null type kotlin.Boolean");
                    boolean zBooleanValue2 = ((Boolean) obj20).booleanValue();
                    Object obj21 = objArr[1];
                    Intrinsics.f(obj21, "null cannot be cast to non-null type kotlin.Boolean");
                    dVar.b(zBooleanValue2, ((Boolean) obj21).booleanValue());
                }
                break;
            case 33:
                if (objArr.length == 1) {
                    Object obj22 = objArr[0];
                    Intrinsics.f(obj22, "null cannot be cast to non-null type com.transsion.subtitle.VideoSubtitleControl");
                    dVar.A((VideoSubtitleControl) obj22);
                }
                break;
            case 34:
                if (objArr.length == 1) {
                    Object obj23 = objArr[0];
                    Intrinsics.f(obj23, "null cannot be cast to non-null type kotlin.collections.MutableMap<kotlin.Int, kotlin.Int>");
                    dVar.l(TypeIntrinsics.d(obj23));
                }
                break;
            case 35:
                if (objArr.length == 1) {
                    Object obj24 = objArr[0];
                    Intrinsics.f(obj24, "null cannot be cast to non-null type kotlin.String");
                    dVar.x((String) obj24);
                }
                break;
            case 36:
                if (objArr.length == 1) {
                    Object obj25 = objArr[0];
                    Intrinsics.f(obj25, "null cannot be cast to non-null type com.transsion.baselib.db.download.DownloadBean");
                    dVar.E((DownloadBean) obj25);
                }
                break;
            case 37:
                if (objArr.length == 1) {
                    Object obj26 = objArr[0];
                    Intrinsics.f(obj26, "null cannot be cast to non-null type kotlin.String");
                    vo.d.a.l(dVar, (String) obj26, 0L, 2, null);
                } else if (objArr.length == 2) {
                    Object obj27 = objArr[0];
                    Intrinsics.f(obj27, "null cannot be cast to non-null type kotlin.String");
                    Object obj28 = objArr[1];
                    Intrinsics.f(obj28, "null cannot be cast to non-null type kotlin.Long");
                    dVar.i((String) obj27, ((Long) obj28).longValue());
                }
                break;
            case 38:
                dVar.s();
                break;
            case 39:
                if (objArr.length == 1) {
                    Object obj29 = objArr[0];
                    Intrinsics.f(obj29, "null cannot be cast to non-null type kotlin.Boolean");
                    dVar.v(((Boolean) obj29).booleanValue());
                }
                break;
            case 40:
                dVar.g();
                break;
            case 41:
                if (objArr.length == 2) {
                    Object obj30 = objArr[0];
                    Intrinsics.f(obj30, "null cannot be cast to non-null type kotlin.Boolean");
                    boolean zBooleanValue3 = ((Boolean) obj30).booleanValue();
                    Object obj31 = objArr[1];
                    Intrinsics.f(obj31, "null cannot be cast to non-null type kotlin.String");
                    dVar.f(zBooleanValue3, (String) obj31);
                }
                break;
            case 42:
                if (objArr.length == 2) {
                    Object obj32 = objArr[0];
                    Intrinsics.f(obj32, "null cannot be cast to non-null type kotlin.String");
                    Object obj33 = objArr[1];
                    Intrinsics.f(obj33, "null cannot be cast to non-null type kotlin.String");
                    dVar.h((String) obj32, (String) obj33);
                }
                break;
            case 43:
                if (objArr.length == 1) {
                    Object obj34 = objArr[0];
                    Intrinsics.f(obj34, "null cannot be cast to non-null type com.transsion.postdetail.layer.listener.SeriesEvent");
                    dVar.C((vo.c) obj34);
                }
                break;
            case 44:
                if (dVar.isVisible() && objArr.length == 2) {
                    Object obj35 = objArr[0];
                    Intrinsics.f(obj35, "null cannot be cast to non-null type kotlin.String");
                    Object obj36 = objArr[1];
                    Intrinsics.f(obj36, "null cannot be cast to non-null type kotlin.String");
                    dVar.u((String) obj35, (String) obj36);
                    break;
                }
                break;
            case 45:
                dVar.d();
                break;
            case 46:
                Object objX4 = ArraysKt.X(objArr);
                if (objX4 != null && (objX4 instanceof Float)) {
                    dVar.o(((Number) objX4).floatValue());
                    break;
                }
                break;
            case 47:
                Object objX5 = ArraysKt.X(objArr);
                if (objX5 != null && (objX5 instanceof Integer)) {
                    dVar.B(((Number) objX5).intValue());
                    break;
                }
                break;
            case AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE:
                if (dVar.isVisible() && (objX = ArraysKt.X(objArr)) != null && (objX instanceof FloatActionType)) {
                    dVar.e((FloatActionType) objX);
                    break;
                }
                break;
            case AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE:
                if (dVar.isVisible() && (objX2 = ArraysKt.X(objArr)) != null && (objX2 instanceof Boolean)) {
                    dVar.t(((Boolean) objX2).booleanValue());
                    break;
                }
                break;
            case 50:
                if (dVar.isVisible() && (objX3 = ArraysKt.X(objArr)) != null && (objX3 instanceof Boolean)) {
                    dVar.j(((Boolean) objX3).booleanValue());
                    break;
                }
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k(f fVar, LayerFlag layerFlag, Object... objArr) {
        switch (C0649a.f48895a[layerFlag.ordinal()]) {
            case 4:
                fVar.initPlayer();
                break;
            case 5:
                fVar.onRenderFirstFrame();
                break;
            case 6:
                f.a.f(fVar, null, 1, null);
                break;
            case 7:
                if (objArr.length == 2) {
                    Object obj = objArr[0];
                    Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.Int");
                    int iIntValue = ((Integer) obj).intValue();
                    Object obj2 = objArr[1];
                    Intrinsics.f(obj2, "null cannot be cast to non-null type kotlin.Int");
                    fVar.onVideoSizeChanged(iIntValue, ((Integer) obj2).intValue());
                }
                break;
            case 8:
                f.a.j(fVar, null, 1, null);
                break;
            case 9:
                f.a.l(fVar, null, 1, null);
                break;
            case 10:
                f.a.J(fVar, null, 1, null);
                break;
            case 11:
                f.a.G(fVar, null, 1, null);
                break;
            case 12:
                if (objArr.length == 1) {
                    Object obj3 = objArr[0];
                    Intrinsics.f(obj3, "null cannot be cast to non-null type kotlin.Long");
                    f.a.z(fVar, ((Long) obj3).longValue(), null, 2, null);
                }
                break;
            case 13:
                if (objArr.length == 1) {
                    Object obj4 = objArr[0];
                    Intrinsics.f(obj4, "null cannot be cast to non-null type com.transsion.player.orplayer.PlayError");
                    f.a.r(fVar, (PlayError) obj4, null, 2, null);
                }
                break;
            case 14:
                fVar.onLoopingStart();
                break;
            case 15:
                fVar.onPlayerReset();
                break;
        }
    }

    public final void d(BaseLayer layer) {
        Intrinsics.h(layer, "layer");
        if (!this.f48894b.contains(layer)) {
            this.f48894b.add(layer);
            return;
        }
        lg.a.C0828a.f(lg.a.f68839a, this.f48893a, layer + " is already add", false, 4, null);
    }

    public final void e(LayerFlag flag, Object... params) {
        Intrinsics.h(flag, "flag");
        Intrinsics.h(params, "params");
        f(new b(flag, params));
    }

    public final void g(LayerFlag flag, Object... params) {
        Intrinsics.h(flag, "flag");
        Intrinsics.h(params, "params");
        f(new c(flag, params));
    }

    public final void h(LayerFlag flag, Object... params) {
        Intrinsics.h(flag, "flag");
        Intrinsics.h(params, "params");
        f(new d(flag, params));
    }
}
