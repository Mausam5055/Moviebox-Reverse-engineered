package com.mbridge.msdk.video.signal.communication;

import android.os.Handler;
import android.os.Looper;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;

/* JADX INFO: loaded from: classes5.dex */
public class VideoCommunication extends BaseVideoCommunication {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f39528j = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Handler f39529i = new Handler(Looper.getMainLooper());

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39530a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39531b;

        a(Object obj, String str) {
            this.f39530a = obj;
            this.f39531b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.progressBarOperate(this.f39530a, this.f39531b);
        }
    }

    class a0 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39533a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39534b;

        a0(Object obj, String str) {
            this.f39533a = obj;
            this.f39534b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.setViewRect(this.f39533a, this.f39534b);
        }
    }

    class a1 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39536a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39537b;

        a1(Object obj, String str) {
            this.f39536a = obj;
            this.f39537b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.playerUpdateFrame(this.f39536a, this.f39537b);
        }
    }

    class a2 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39539a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39540b;

        a2(Object obj, String str) {
            this.f39539a = obj;
            this.f39540b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.getRewardUnitSetting(this.f39539a, this.f39540b);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39542a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39543b;

        b(Object obj, String str) {
            this.f39542a = obj;
            this.f39543b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.getCurrentProgress(this.f39542a, this.f39543b);
        }
    }

    class b0 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39545a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39546b;

        b0(Object obj, String str) {
            this.f39545a = obj;
            this.f39546b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.removeFromSuperView(this.f39545a, this.f39546b);
        }
    }

    class b1 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39548a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39549b;

        b1(Object obj, String str) {
            this.f39548a = obj;
            this.f39549b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.playerMute(this.f39548a, this.f39549b);
        }
    }

    class b2 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39551a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39552b;

        b2(Object obj, String str) {
            this.f39551a = obj;
            this.f39552b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.getUnitSetting(this.f39551a, this.f39552b);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39554a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39555b;

        c(Object obj, String str) {
            this.f39554a = obj;
            this.f39555b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.showVideoClickView(this.f39554a, this.f39555b);
        }
    }

    class c0 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39557a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39558b;

        c0(Object obj, String str) {
            this.f39557a = obj;
            this.f39558b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.appendSubView(this.f39557a, this.f39558b);
        }
    }

    class c1 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39560a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39561b;

        c1(Object obj, String str) {
            this.f39560a = obj;
            this.f39561b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.showVideoLocation(this.f39560a, this.f39561b);
        }
    }

    class c2 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39563a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39564b;

        c2(Object obj, String str) {
            this.f39563a = obj;
            this.f39564b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.getEncryptPrice(this.f39563a, this.f39564b);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39566a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39567b;

        d(Object obj, String str) {
            this.f39566a = obj;
            this.f39567b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.setScaleFitXY(this.f39566a, this.f39567b);
        }
    }

    class d0 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39569a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39570b;

        d0(Object obj, String str) {
            this.f39569a = obj;
            this.f39570b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.appendViewTo(this.f39569a, this.f39570b);
        }
    }

    class d1 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39572a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39573b;

        d1(Object obj, String str) {
            this.f39572a = obj;
            this.f39573b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.playerUnmute(this.f39572a, this.f39573b);
        }
    }

    class d2 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39575a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39576b;

        d2(Object obj, String str) {
            this.f39575a = obj;
            this.f39576b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.closeVideoOperte(this.f39575a, this.f39576b);
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39578a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39579b;

        e(Object obj, String str) {
            this.f39578a = obj;
            this.f39579b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.notifyCloseBtn(this.f39578a, this.f39579b);
        }
    }

    class e0 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39581a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39582b;

        e0(Object obj, String str) {
            this.f39581a = obj;
            this.f39582b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.onlyAppendSubView(this.f39581a, this.f39582b);
        }
    }

    class e1 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39584a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39585b;

        e1(Object obj, String str) {
            this.f39584a = obj;
            this.f39585b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.playerGetMuteState(this.f39584a, this.f39585b);
        }
    }

    class e2 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39587a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39588b;

        e2(Object obj, String str) {
            this.f39587a = obj;
            this.f39588b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.progressOperate(this.f39587a, this.f39588b);
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39590a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39591b;

        f(Object obj, String str) {
            this.f39590a = obj;
            this.f39591b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.toggleCloseBtn(this.f39590a, this.f39591b);
        }
    }

    class f0 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39593a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39594b;

        f0(Object obj, String str) {
            this.f39593a = obj;
            this.f39594b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.onlyAppendViewTo(this.f39593a, this.f39594b);
        }
    }

    class f1 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39596a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39597b;

        f1(Object obj, String str) {
            this.f39596a = obj;
            this.f39597b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.playerSetSource(this.f39596a, this.f39597b);
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39599a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39600b;

        g(Object obj, String str) {
            this.f39599a = obj;
            this.f39600b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.handlerH5Exception(this.f39599a, this.f39600b);
        }
    }

    class g0 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39602a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39603b;

        g0(Object obj, String str) {
            this.f39602a = obj;
            this.f39603b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.statistics(this.f39602a, this.f39603b);
        }
    }

    class g1 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39605a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39606b;

        g1(Object obj, String str) {
            this.f39605a = obj;
            this.f39606b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.playerSetRenderType(this.f39605a, this.f39606b);
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39608a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39609b;

        h(Object obj, String str) {
            this.f39608a = obj;
            this.f39609b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.isSystemResume(this.f39608a, this.f39609b);
        }
    }

    class h0 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39611a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39612b;

        h0(Object obj, String str) {
            this.f39611a = obj;
            this.f39612b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.bringViewToFront(this.f39611a, this.f39612b);
        }
    }

    class h1 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39614a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39615b;

        h1(Object obj, String str) {
            this.f39614a = obj;
            this.f39615b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.preloadSubPlayTemplateView(this.f39614a, this.f39615b);
        }
    }

    class i implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39617a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39618b;

        i(Object obj, String str) {
            this.f39617a = obj;
            this.f39618b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.readyStatus(this.f39617a, this.f39618b);
        }
    }

    class i0 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39620a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39621b;

        i0(Object obj, String str) {
            this.f39620a = obj;
            this.f39621b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.hideView(this.f39620a, this.f39621b);
        }
    }

    class i1 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39623a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39624b;

        i1(Object obj, String str) {
            this.f39623a = obj;
            this.f39624b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.closeAd(this.f39623a, this.f39624b);
        }
    }

    class j implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39626a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39627b;

        j(Object obj, String str) {
            this.f39626a = obj;
            this.f39627b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.playVideoFinishOperate(this.f39626a, this.f39627b);
        }
    }

    class j0 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39629a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39630b;

        j0(Object obj, String str) {
            this.f39629a = obj;
            this.f39630b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.showView(this.f39629a, this.f39630b);
        }
    }

    class j1 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39632a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39633b;

        j1(Object obj, String str) {
            this.f39632a = obj;
            this.f39633b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.broadcast(this.f39632a, this.f39633b);
        }
    }

    class k implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39635a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39636b;

        k(Object obj, String str) {
            this.f39635a = obj;
            this.f39636b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.init(this.f39635a, this.f39636b);
        }
    }

    class k0 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39638a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39639b;

        k0(Object obj, String str) {
            this.f39638a = obj;
            this.f39639b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.setViewBgColor(this.f39638a, this.f39639b);
        }
    }

    class k1 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39641a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39642b;

        k1(Object obj, String str) {
            this.f39641a = obj;
            this.f39642b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.ivRewardAdsWithoutVideo(this.f39641a, this.f39642b);
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39644a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39645b;

        l(Object obj, String str) {
            this.f39644a = obj;
            this.f39645b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.openURL(this.f39644a, this.f39645b);
        }
    }

    class l0 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39647a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39648b;

        l0(Object obj, String str) {
            this.f39647a = obj;
            this.f39648b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.setViewAlpha(this.f39647a, this.f39648b);
        }
    }

    class l1 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39650a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39651b;

        l1(Object obj, String str) {
            this.f39650a = obj;
            this.f39651b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.setSubPlayTemplateInfo(this.f39650a, this.f39651b);
        }
    }

    class m implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39653a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39654b;

        m(Object obj, String str) {
            this.f39653a = obj;
            this.f39654b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.showAlertView(this.f39653a, this.f39654b);
        }
    }

    class m0 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39656a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39657b;

        m0(Object obj, String str) {
            this.f39656a = obj;
            this.f39657b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.setViewScale(this.f39656a, this.f39657b);
        }
    }

    class m1 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39659a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39660b;

        m1(Object obj, String str) {
            this.f39659a = obj;
            this.f39660b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.webviewFireEvent(this.f39659a, this.f39660b);
        }
    }

    class n implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39662a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39663b;

        n(Object obj, String str) {
            this.f39662a = obj;
            this.f39663b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.closeWeb(this.f39662a, this.f39663b);
        }
    }

    class n0 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39665a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39666b;

        n0(Object obj, String str) {
            this.f39665a = obj;
            this.f39666b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.insertViewAbove(this.f39665a, this.f39666b);
        }
    }

    class n1 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39668a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39669b;

        n1(Object obj, String str) {
            this.f39668a = obj;
            this.f39669b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.soundOperate(this.f39668a, this.f39669b);
        }
    }

    class o implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39671a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39672b;

        o(Object obj, String str) {
            this.f39671a = obj;
            this.f39672b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.getSDKInfo(this.f39671a, this.f39672b);
        }
    }

    class o0 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39674a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39675b;

        o0(Object obj, String str) {
            this.f39674a = obj;
            this.f39675b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.insertViewBelow(this.f39674a, this.f39675b);
        }
    }

    class o1 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39677a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39678b;

        o1(Object obj, String str) {
            this.f39677a = obj;
            this.f39678b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.increaseOfferFrequence(this.f39677a, this.f39678b);
        }
    }

    class p implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39680a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39681b;

        p(Object obj, String str) {
            this.f39680a = obj;
            this.f39681b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.getFileInfo(this.f39680a, this.f39681b);
        }
    }

    class p0 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39683a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39684b;

        p0(Object obj, String str) {
            this.f39683a = obj;
            this.f39684b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.onlyInsertViewAbove(this.f39683a, this.f39684b);
        }
    }

    class p1 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39686a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39687b;

        p1(Object obj, String str) {
            this.f39686a = obj;
            this.f39687b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.handleNativeObject(this.f39686a, this.f39687b);
        }
    }

    class q implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39689a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39690b;

        q(Object obj, String str) {
            this.f39689a = obj;
            this.f39690b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.loadads(this.f39689a, this.f39690b);
        }
    }

    class q0 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39692a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39693b;

        q0(Object obj, String str) {
            this.f39692a = obj;
            this.f39693b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.onlyInsertViewBelow(this.f39692a, this.f39693b);
        }
    }

    class q1 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39695a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39696b;

        q1(Object obj, String str) {
            this.f39695a = obj;
            this.f39696b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.loadingResourceStatus(this.f39695a, this.f39696b);
        }
    }

    class r implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39698a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39699b;

        r(Object obj, String str) {
            this.f39698a = obj;
            this.f39699b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.reactDeveloper(this.f39698a, this.f39699b);
        }
    }

    class r0 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39701a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39702b;

        r0(Object obj, String str) {
            this.f39701a = obj;
            this.f39702b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.triggerCloseBtn(this.f39701a, this.f39702b);
        }
    }

    class r1 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39704a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39705b;

        r1(Object obj, String str) {
            this.f39704a = obj;
            this.f39705b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.createNativeEC(this.f39704a, this.f39705b);
        }
    }

    class s implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39707a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39708b;

        s(Object obj, String str) {
            this.f39707a = obj;
            this.f39708b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.reportUrls(this.f39707a, this.f39708b);
        }
    }

    class s0 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39710a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39711b;

        s0(Object obj, String str) {
            this.f39710a = obj;
            this.f39711b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.webviewLoad(this.f39710a, this.f39711b);
        }
    }

    class s1 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39713a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39714b;

        s1(Object obj, String str) {
            this.f39713a = obj;
            this.f39714b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.setCacheItem(this.f39713a, this.f39714b);
        }
    }

    class t implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39716a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39717b;

        t(Object obj, String str) {
            this.f39716a = obj;
            this.f39717b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.createWebview(this.f39716a, this.f39717b);
        }
    }

    class t0 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39719a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39720b;

        t0(Object obj, String str) {
            this.f39719a = obj;
            this.f39720b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.webviewReload(this.f39719a, this.f39720b);
        }
    }

    class t1 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39722a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39723b;

        t1(Object obj, String str) {
            this.f39722a = obj;
            this.f39723b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.removeCacheItem(this.f39722a, this.f39723b);
        }
    }

    class u implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39725a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39726b;

        u(Object obj, String str) {
            this.f39725a = obj;
            this.f39726b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.createView(this.f39725a, this.f39726b);
        }
    }

    class u0 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39728a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39729b;

        u0(Object obj, String str) {
            this.f39728a = obj;
            this.f39729b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.webviewGoBack(this.f39728a, this.f39729b);
        }
    }

    class u1 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39731a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39732b;

        u1(Object obj, String str) {
            this.f39731a = obj;
            this.f39732b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.getAllCache(this.f39731a, this.f39732b);
        }
    }

    class v implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39734a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39735b;

        v(Object obj, String str) {
            this.f39734a = obj;
            this.f39735b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.click(this.f39734a, this.f39735b);
        }
    }

    class v0 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39737a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39738b;

        v0(Object obj, String str) {
            this.f39737a = obj;
            this.f39738b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.webviewGoForward(this.f39737a, this.f39738b);
        }
    }

    class v1 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39740a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39741b;

        v1(Object obj, String str) {
            this.f39740a = obj;
            this.f39741b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.clearAllCache(this.f39740a, this.f39741b);
        }
    }

    class w implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39743a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39744b;

        w(Object obj, String str) {
            this.f39743a = obj;
            this.f39744b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.createPlayerView(this.f39743a, this.f39744b);
        }
    }

    class w0 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39746a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39747b;

        w0(Object obj, String str) {
            this.f39746a = obj;
            this.f39747b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.playerPlay(this.f39746a, this.f39747b);
        }
    }

    class w1 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39749a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39750b;

        w1(Object obj, String str) {
            this.f39749a = obj;
            this.f39750b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.getCutout(this.f39749a, this.f39750b);
        }
    }

    class x implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39752a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39753b;

        x(Object obj, String str) {
            this.f39752a = obj;
            this.f39753b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.createSubPlayTemplateView(this.f39752a, this.f39753b);
        }
    }

    class x0 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39755a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39756b;

        x0(Object obj, String str) {
            this.f39755a = obj;
            this.f39756b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.playerPause(this.f39755a, this.f39756b);
        }
    }

    class x1 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39758a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39759b;

        x1(Object obj, String str) {
            this.f39758a = obj;
            this.f39759b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.getAppSetting(this.f39758a, this.f39759b);
        }
    }

    class y implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39761a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39762b;

        y(Object obj, String str) {
            this.f39761a = obj;
            this.f39762b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.destroyComponent(this.f39761a, this.f39762b);
        }
    }

    class y0 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39764a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39765b;

        y0(Object obj, String str) {
            this.f39764a = obj;
            this.f39765b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.playerResume(this.f39764a, this.f39765b);
        }
    }

    class y1 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39767a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39768b;

        y1(Object obj, String str) {
            this.f39767a = obj;
            this.f39768b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.videoOperate(this.f39767a, this.f39768b);
        }
    }

    class z implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39770a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39771b;

        z(Object obj, String str) {
            this.f39770a = obj;
            this.f39771b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.getComponentOptions(this.f39770a, this.f39771b);
        }
    }

    class z0 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39773a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39774b;

        z0(Object obj, String str) {
            this.f39773a = obj;
            this.f39774b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.playerStop(this.f39773a, this.f39774b);
        }
    }

    class z1 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39776a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39777b;

        z1(Object obj, String str) {
            this.f39776a = obj;
            this.f39777b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            VideoCommunication.super.getRewardSetting(this.f39776a, this.f39777b);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void appendSubView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.appendSubView(obj, str);
        } else {
            this.f39529i.post(new c0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void appendViewTo(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.appendViewTo(obj, str);
        } else {
            this.f39529i.post(new d0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void bringViewToFront(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.bringViewToFront(obj, str);
        } else {
            this.f39529i.post(new h0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void broadcast(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.broadcast(obj, str);
        } else {
            this.f39529i.post(new j1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void clearAllCache(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.clearAllCache(obj, str);
        } else {
            this.f39529i.post(new v1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void click(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.click(obj, str);
        } else {
            this.f39529i.post(new v(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void closeAd(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.closeAd(obj, str);
        } else {
            this.f39529i.post(new i1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void closeVideoOperte(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.closeVideoOperte(obj, str);
        } else {
            this.f39529i.post(new d2(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void closeWeb(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.closeWeb(obj, str);
            return;
        }
        this.f39529i.post(new n(obj, str));
        com.mbridge.msdk.foundation.tools.o0.b("JS-Video-Brigde", NativeComponentConstants.KEY_COMPONENT_TYPE + str);
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void createNativeEC(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.createNativeEC(obj, str);
        } else {
            this.f39529i.post(new r1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void createPlayerView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.createPlayerView(obj, str);
        } else {
            this.f39529i.post(new w(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void createSubPlayTemplateView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.createSubPlayTemplateView(obj, str);
        } else {
            this.f39529i.post(new x(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void createView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.createView(obj, str);
        } else {
            this.f39529i.post(new u(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void createWebview(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.createWebview(obj, str);
        } else {
            this.f39529i.post(new t(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void destroyComponent(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.destroyComponent(obj, str);
        } else {
            this.f39529i.post(new y(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getAllCache(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.getAllCache(obj, str);
        } else {
            this.f39529i.post(new u1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getAppSetting(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.getAppSetting(obj, str);
        } else {
            this.f39529i.post(new x1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getComponentOptions(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.getComponentOptions(obj, str);
        } else {
            this.f39529i.post(new z(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getCurrentProgress(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.getCurrentProgress(obj, str);
        } else {
            this.f39529i.post(new b(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getCutout(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.getCutout(obj, str);
        } else {
            this.f39529i.post(new w1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getEncryptPrice(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.getEncryptPrice(obj, str);
        } else {
            this.f39529i.post(new c2(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getFileInfo(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.getFileInfo(obj, str);
        } else {
            this.f39529i.post(new p(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getRewardSetting(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.getRewardSetting(obj, str);
        } else {
            this.f39529i.post(new z1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getRewardUnitSetting(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.getRewardUnitSetting(obj, str);
        } else {
            this.f39529i.post(new a2(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getSDKInfo(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.getSDKInfo(obj, str);
        } else {
            this.f39529i.post(new o(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void getUnitSetting(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.getUnitSetting(obj, str);
        } else {
            this.f39529i.post(new b2(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void handleNativeObject(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.handleNativeObject(obj, str);
        } else {
            this.f39529i.post(new p1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void handlerH5Exception(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.handlerH5Exception(obj, str);
        } else {
            this.f39529i.post(new g(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void hideView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.hideView(obj, str);
        } else {
            this.f39529i.post(new i0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void increaseOfferFrequence(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.increaseOfferFrequence(obj, str);
        } else {
            this.f39529i.post(new o1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void init(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.init(obj, str);
        } else {
            this.f39529i.post(new k(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void insertViewAbove(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.insertViewAbove(obj, str);
        } else {
            this.f39529i.post(new n0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void insertViewBelow(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.insertViewBelow(obj, str);
        } else {
            this.f39529i.post(new o0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void isSystemResume(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.isSystemResume(obj, str);
        } else {
            this.f39529i.post(new h(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void ivRewardAdsWithoutVideo(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.ivRewardAdsWithoutVideo(obj, str);
        } else {
            this.f39529i.post(new k1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void loadads(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.loadads(obj, str);
        } else {
            this.f39529i.post(new q(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void loadingResourceStatus(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.loadingResourceStatus(obj, str);
        } else {
            this.f39529i.post(new q1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void notifyCloseBtn(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.notifyCloseBtn(obj, str);
        } else {
            this.f39529i.post(new e(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void onlyAppendSubView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.onlyAppendSubView(obj, str);
        } else {
            this.f39529i.post(new e0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void onlyAppendViewTo(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.onlyAppendViewTo(obj, str);
        } else {
            this.f39529i.post(new f0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void onlyInsertViewAbove(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.onlyInsertViewAbove(obj, str);
        } else {
            this.f39529i.post(new p0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void onlyInsertViewBelow(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.onlyInsertViewBelow(obj, str);
        } else {
            this.f39529i.post(new q0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void openURL(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.openURL(obj, str);
        } else {
            this.f39529i.post(new l(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playVideoFinishOperate(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.playVideoFinishOperate(obj, str);
        } else {
            this.f39529i.post(new j(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerGetMuteState(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.playerGetMuteState(obj, str);
        } else {
            this.f39529i.post(new e1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerMute(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.playerMute(obj, str);
        } else {
            this.f39529i.post(new b1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerPause(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.playerPause(obj, str);
        } else {
            this.f39529i.post(new x0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerPlay(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.playerPlay(obj, str);
        } else {
            this.f39529i.post(new w0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerResume(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.playerResume(obj, str);
        } else {
            this.f39529i.post(new y0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerSetRenderType(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.playerSetRenderType(obj, str);
        } else {
            this.f39529i.post(new g1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerSetSource(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.playerSetSource(obj, str);
        } else {
            this.f39529i.post(new f1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerStop(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.playerStop(obj, str);
        } else {
            this.f39529i.post(new z0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerUnmute(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.playerUnmute(obj, str);
        } else {
            this.f39529i.post(new d1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void playerUpdateFrame(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.playerUpdateFrame(obj, str);
        } else {
            this.f39529i.post(new a1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void preloadSubPlayTemplateView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.preloadSubPlayTemplateView(obj, str);
        } else {
            this.f39529i.post(new h1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void progressBarOperate(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.progressBarOperate(obj, str);
        } else {
            this.f39529i.post(new a(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void progressOperate(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.progressOperate(obj, str);
        } else {
            this.f39529i.post(new e2(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void reactDeveloper(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.reactDeveloper(obj, str);
        } else {
            this.f39529i.post(new r(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void readyStatus(Object obj, String str) {
        com.mbridge.msdk.foundation.tools.o0.c("JS-Video-Brigde", "VIDEOBridge readyStatus");
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.readyStatus(obj, str);
        } else {
            this.f39529i.post(new i(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void removeCacheItem(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.removeCacheItem(obj, str);
        } else {
            this.f39529i.post(new t1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void removeFromSuperView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.removeFromSuperView(obj, str);
        } else {
            this.f39529i.post(new b0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void reportUrls(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.reportUrls(obj, str);
        } else {
            this.f39529i.post(new s(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void setCacheItem(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.setCacheItem(obj, str);
        } else {
            this.f39529i.post(new s1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void setScaleFitXY(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.setScaleFitXY(obj, str);
        } else {
            this.f39529i.post(new d(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void setSubPlayTemplateInfo(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.setSubPlayTemplateInfo(obj, str);
        } else {
            this.f39529i.post(new l1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void setViewAlpha(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.setViewAlpha(obj, str);
        } else {
            this.f39529i.post(new l0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void setViewBgColor(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.setViewBgColor(obj, str);
        } else {
            this.f39529i.post(new k0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void setViewRect(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.setViewRect(obj, str);
        } else {
            this.f39529i.post(new a0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void setViewScale(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.setViewScale(obj, str);
        } else {
            this.f39529i.post(new m0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void showAlertView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.showAlertView(obj, str);
        } else {
            this.f39529i.post(new m(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void showVideoClickView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.showVideoClickView(obj, str);
        } else {
            this.f39529i.post(new c(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void showVideoLocation(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.showVideoLocation(obj, str);
        } else {
            this.f39529i.post(new c1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void showView(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.showView(obj, str);
        } else {
            this.f39529i.post(new j0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void soundOperate(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.soundOperate(obj, str);
        } else {
            this.f39529i.post(new n1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void statistics(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.statistics(obj, str);
        } else {
            this.f39529i.post(new g0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void toggleCloseBtn(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.toggleCloseBtn(obj, str);
        } else {
            this.f39529i.post(new f(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void triggerCloseBtn(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.triggerCloseBtn(obj, str);
        } else {
            this.f39529i.post(new r0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void videoOperate(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.videoOperate(obj, str);
        } else {
            this.f39529i.post(new y1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void webviewFireEvent(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.webviewFireEvent(obj, str);
        } else {
            this.f39529i.post(new m1(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void webviewGoBack(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.webviewGoBack(obj, str);
        } else {
            this.f39529i.post(new u0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void webviewGoForward(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.webviewGoForward(obj, str);
        } else {
            this.f39529i.post(new v0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void webviewLoad(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.webviewLoad(obj, str);
        } else {
            this.f39529i.post(new s0(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseVideoCommunication, com.mbridge.msdk.video.signal.communication.IVideoCommunication
    public void webviewReload(Object obj, String str) {
        if (com.mbridge.msdk.foundation.tools.t0.h()) {
            super.webviewReload(obj, str);
        } else {
            this.f39529i.post(new t0(obj, str));
        }
    }
}
