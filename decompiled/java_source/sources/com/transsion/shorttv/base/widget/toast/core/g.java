package com.transsion.shorttv.base.widget.toast.core;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public class g extends Handler implements gs.b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f52984e = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Application f52985a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.transsion.shorttv.base.widget.toast.core.a f52986b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WeakReference f52987c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private gs.c f52988d;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public g() {
        super(Looper.getMainLooper());
    }

    private final int d(CharSequence charSequence) {
        return charSequence.length() > 20 ? 1 : 0;
    }

    @Override // gs.b
    public void a(CharSequence charSequence) {
        removeMessages(1);
        Message messageObtain = Message.obtain();
        messageObtain.what = 1;
        messageObtain.obj = charSequence;
        sendMessageDelayed(messageObtain, 200L);
    }

    @Override // gs.b
    public void b(gs.c cVar) {
        this.f52988d = cVar;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0037  */
    public gs.a c(Application application) {
        gs.a dVar;
        com.transsion.shorttv.base.widget.toast.core.a aVar = this.f52986b;
        Intrinsics.e(aVar);
        Activity activityA = aVar.a();
        if (activityA != null) {
            dVar = new b(activityA);
        } else {
            dVar = Build.VERSION.SDK_INT == 25 ? new d(application) : new e(application);
        }
        if ((dVar instanceof b) || Build.VERSION.SDK_INT < 30) {
            gs.c cVar = this.f52988d;
            Intrinsics.e(cVar);
            dVar.setView(cVar.createView(application));
            gs.c cVar2 = this.f52988d;
            Intrinsics.e(cVar2);
            int gravity = cVar2.getGravity();
            gs.c cVar3 = this.f52988d;
            Intrinsics.e(cVar3);
            int xOffset = cVar3.getXOffset();
            gs.c cVar4 = this.f52988d;
            Intrinsics.e(cVar4);
            dVar.setGravity(gravity, xOffset, cVar4.getYOffset());
            gs.c cVar5 = this.f52988d;
            Intrinsics.e(cVar5);
            float horizontalMargin = cVar5.getHorizontalMargin();
            gs.c cVar6 = this.f52988d;
            Intrinsics.e(cVar6);
            dVar.setMargin(horizontalMargin, cVar6.getVerticalMargin());
        } else {
            Intrinsics.e(application);
            if (application.getApplicationInfo().targetSdkVersion < 30) {
                gs.c cVar7 = this.f52988d;
                Intrinsics.e(cVar7);
                dVar.setView(cVar7.createView(application));
                gs.c cVar8 = this.f52988d;
                Intrinsics.e(cVar8);
                int gravity2 = cVar8.getGravity();
                gs.c cVar9 = this.f52988d;
                Intrinsics.e(cVar9);
                int xOffset2 = cVar9.getXOffset();
                gs.c cVar10 = this.f52988d;
                Intrinsics.e(cVar10);
                dVar.setGravity(gravity2, xOffset2, cVar10.getYOffset());
                gs.c cVar11 = this.f52988d;
                Intrinsics.e(cVar11);
                float horizontalMargin2 = cVar11.getHorizontalMargin();
                gs.c cVar12 = this.f52988d;
                Intrinsics.e(cVar12);
                dVar.setMargin(horizontalMargin2, cVar12.getVerticalMargin());
            }
        }
        return dVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message msg) {
        gs.a aVar;
        Intrinsics.h(msg, "msg");
        WeakReference weakReference = this.f52987c;
        if (weakReference != null) {
            Intrinsics.e(weakReference);
            aVar = (gs.a) weakReference.get();
        } else {
            aVar = null;
        }
        int i11 = msg.what;
        if (i11 != 1) {
            if (i11 == 2 && aVar != null) {
                aVar.cancel();
                return;
            }
            return;
        }
        Object obj = msg.obj;
        if (obj instanceof CharSequence) {
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.CharSequence");
            CharSequence charSequence = (CharSequence) obj;
            if (aVar != null) {
                aVar.cancel();
            }
            gs.a aVarC = c(this.f52985a);
            this.f52987c = new WeakReference(aVarC);
            Intrinsics.e(aVarC);
            aVarC.setDuration(d(charSequence));
            aVarC.setText(charSequence);
            aVarC.show();
            b(new hs.a());
        }
    }

    @Override // gs.b
    public void registerStrategy(Application application) {
        this.f52985a = application;
        com.transsion.shorttv.base.widget.toast.core.a.C0661a c0661a = com.transsion.shorttv.base.widget.toast.core.a.f52970b;
        Intrinsics.e(application);
        this.f52986b = c0661a.a(application);
    }
}
