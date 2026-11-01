package com.transsion.shorttv_pugc.base.widget.toast.core;

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
public class g extends Handler implements lt.b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f53964e = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Application f53965a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.transsion.shorttv_pugc.base.widget.toast.core.a f53966b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WeakReference f53967c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private lt.c f53968d;

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

    @Override // lt.b
    public void a(CharSequence charSequence) {
        removeMessages(1);
        Message messageObtain = Message.obtain();
        messageObtain.what = 1;
        messageObtain.obj = charSequence;
        sendMessageDelayed(messageObtain, 200L);
    }

    @Override // lt.b
    public void b(lt.c cVar) {
        this.f53968d = cVar;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0037  */
    public lt.a c(Application application) {
        lt.a dVar;
        com.transsion.shorttv_pugc.base.widget.toast.core.a aVar = this.f53966b;
        Intrinsics.e(aVar);
        Activity activityA = aVar.a();
        if (activityA != null) {
            dVar = new b(activityA);
        } else {
            dVar = Build.VERSION.SDK_INT == 25 ? new d(application) : new e(application);
        }
        if ((dVar instanceof b) || Build.VERSION.SDK_INT < 30) {
            lt.c cVar = this.f53968d;
            Intrinsics.e(cVar);
            dVar.setView(cVar.createView(application));
            lt.c cVar2 = this.f53968d;
            Intrinsics.e(cVar2);
            int gravity = cVar2.getGravity();
            lt.c cVar3 = this.f53968d;
            Intrinsics.e(cVar3);
            int xOffset = cVar3.getXOffset();
            lt.c cVar4 = this.f53968d;
            Intrinsics.e(cVar4);
            dVar.setGravity(gravity, xOffset, cVar4.getYOffset());
            lt.c cVar5 = this.f53968d;
            Intrinsics.e(cVar5);
            float horizontalMargin = cVar5.getHorizontalMargin();
            lt.c cVar6 = this.f53968d;
            Intrinsics.e(cVar6);
            dVar.setMargin(horizontalMargin, cVar6.getVerticalMargin());
        } else {
            Intrinsics.e(application);
            if (application.getApplicationInfo().targetSdkVersion < 30) {
                lt.c cVar7 = this.f53968d;
                Intrinsics.e(cVar7);
                dVar.setView(cVar7.createView(application));
                lt.c cVar8 = this.f53968d;
                Intrinsics.e(cVar8);
                int gravity2 = cVar8.getGravity();
                lt.c cVar9 = this.f53968d;
                Intrinsics.e(cVar9);
                int xOffset2 = cVar9.getXOffset();
                lt.c cVar10 = this.f53968d;
                Intrinsics.e(cVar10);
                dVar.setGravity(gravity2, xOffset2, cVar10.getYOffset());
                lt.c cVar11 = this.f53968d;
                Intrinsics.e(cVar11);
                float horizontalMargin2 = cVar11.getHorizontalMargin();
                lt.c cVar12 = this.f53968d;
                Intrinsics.e(cVar12);
                dVar.setMargin(horizontalMargin2, cVar12.getVerticalMargin());
            }
        }
        return dVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message msg) {
        lt.a aVar;
        Intrinsics.h(msg, "msg");
        WeakReference weakReference = this.f53967c;
        if (weakReference != null) {
            Intrinsics.e(weakReference);
            aVar = (lt.a) weakReference.get();
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
            lt.a aVarC = c(this.f53965a);
            this.f53967c = new WeakReference(aVarC);
            Intrinsics.e(aVarC);
            aVarC.setDuration(d(charSequence));
            aVarC.setText(charSequence);
            aVarC.show();
            b(new mt.a());
        }
    }

    @Override // lt.b
    public void registerStrategy(Application application) {
        this.f53965a = application;
        com.transsion.shorttv_pugc.base.widget.toast.core.a.C0670a c0670a = com.transsion.shorttv_pugc.base.widget.toast.core.a.f53950b;
        Intrinsics.e(application);
        this.f53966b = c0670a.a(application);
    }
}
