package com.mbridge.msdk.video.signal.communication;

import android.os.Handler;
import android.os.Looper;
import com.mbridge.msdk.foundation.tools.t0;

/* JADX INFO: loaded from: classes5.dex */
public class RewardSignal extends BaseRewardSignal implements BaseIRewardCommunication {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final /* synthetic */ int f39502i = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Handler f39503h = new Handler(Looper.getMainLooper());

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39504a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39505b;

        a(Object obj, String str) {
            this.f39504a = obj;
            this.f39505b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            RewardSignal.super.getEndScreenInfo(this.f39504a, this.f39505b);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39507a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39508b;

        b(Object obj, String str) {
            this.f39507a = obj;
            this.f39508b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            RewardSignal.super.install(this.f39507a, this.f39508b);
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39510a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39511b;

        c(Object obj, String str) {
            this.f39510a = obj;
            this.f39511b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            RewardSignal.super.notifyCloseBtn(this.f39510a, this.f39511b);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39513a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39514b;

        d(Object obj, String str) {
            this.f39513a = obj;
            this.f39514b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            RewardSignal.super.toggleCloseBtn(this.f39513a, this.f39514b);
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39516a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39517b;

        e(Object obj, String str) {
            this.f39516a = obj;
            this.f39517b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            RewardSignal.super.getEndScreenInfo(this.f39516a, this.f39517b);
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39519a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39520b;

        f(Object obj, String str) {
            this.f39519a = obj;
            this.f39520b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            RewardSignal.super.setOrientation(this.f39519a, this.f39520b);
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39522a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39523b;

        g(Object obj, String str) {
            this.f39522a = obj;
            this.f39523b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            RewardSignal.super.handlerPlayableException(this.f39522a, this.f39523b);
        }
    }

    class h implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f39525a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39526b;

        h(Object obj, String str) {
            this.f39525a = obj;
            this.f39526b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            RewardSignal.super.openURL(this.f39525a, this.f39526b);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseRewardSignal, com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void getEndScreenInfo(Object obj, String str) {
        if (t0.h()) {
            super.getEndScreenInfo(obj, str);
        } else {
            this.f39503h.post(new a(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseRewardSignal, com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void handlerPlayableException(Object obj, String str) {
        if (t0.h()) {
            super.handlerPlayableException(obj, str);
        } else {
            this.f39503h.post(new g(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseRewardSignal, com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void install(Object obj, String str) {
        if (t0.h()) {
            super.install(obj, str);
        } else {
            this.f39503h.post(new b(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseRewardSignal, com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void notifyCloseBtn(Object obj, String str) {
        if (t0.h()) {
            super.notifyCloseBtn(obj, str);
        } else {
            this.f39503h.post(new c(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseRewardSignal, com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void openURL(Object obj, String str) {
        if (t0.h()) {
            super.openURL(obj, str);
        } else {
            this.f39503h.post(new h(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseRewardSignal, com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void setOrientation(Object obj, String str) {
        if (t0.h()) {
            super.setOrientation(obj, str);
        } else {
            this.f39503h.post(new f(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseRewardSignal, com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void toggleCloseBtn(Object obj, String str) {
        if (t0.h()) {
            super.toggleCloseBtn(obj, str);
        } else {
            this.f39503h.post(new d(obj, str));
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseRewardSignal, com.mbridge.msdk.video.signal.communication.BaseIRewardCommunication
    public void triggerCloseBtn(Object obj, String str) {
        if (t0.h()) {
            super.triggerCloseBtn(obj, str);
        } else {
            this.f39503h.post(new e(obj, str));
        }
    }
}
