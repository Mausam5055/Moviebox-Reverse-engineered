package com.tn.lib.widget.toast.core;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public class g extends Handler implements vh.b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f41474e = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Application f41475a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.tn.lib.widget.toast.core.a f41476b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WeakReference f41477c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private vh.c f41478d;

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

    @Override // vh.b
    public void a(CharSequence charSequence) {
        removeMessages(1);
        Message messageObtain = Message.obtain();
        messageObtain.what = 1;
        messageObtain.obj = charSequence;
        sendMessageDelayed(messageObtain, 200L);
    }

    @Override // vh.b
    public void b(vh.c cVar) {
        this.f41478d = cVar;
    }

    public vh.a c(Application application) {
        vh.a dVar;
        com.tn.lib.widget.toast.core.a aVar = this.f41476b;
        Intrinsics.e(aVar);
        Activity activityA = aVar.a();
        if (activityA != null) {
            dVar = new b(activityA);
        } else {
            dVar = Build.VERSION.SDK_INT == 25 ? new d(application) : new e(application);
        }
        vh.c cVar = this.f41478d;
        Intrinsics.e(cVar);
        dVar.b(cVar.createView(application));
        vh.c cVar2 = this.f41478d;
        Intrinsics.e(cVar2);
        int gravity = cVar2.getGravity();
        vh.c cVar3 = this.f41478d;
        Intrinsics.e(cVar3);
        int xOffset = cVar3.getXOffset();
        vh.c cVar4 = this.f41478d;
        Intrinsics.e(cVar4);
        dVar.setGravity(gravity, xOffset, cVar4.getYOffset());
        vh.c cVar5 = this.f41478d;
        Intrinsics.e(cVar5);
        float horizontalMargin = cVar5.getHorizontalMargin();
        vh.c cVar6 = this.f41478d;
        Intrinsics.e(cVar6);
        dVar.setMargin(horizontalMargin, cVar6.getVerticalMargin());
        return dVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message msg) {
        Object obj;
        Intrinsics.h(msg, "msg");
        WeakReference weakReference = this.f41477c;
        if (weakReference != null) {
            Intrinsics.e(weakReference);
            obj = weakReference.get();
        } else {
            obj = null;
        }
        int i11 = msg.what;
        if (i11 != 1) {
            if (i11 == 2 && obj != null) {
                ((vh.a) obj).cancel();
                return;
            }
            return;
        }
        Object obj2 = msg.obj;
        if (obj2 instanceof CharSequence) {
            Intrinsics.f(obj2, "null cannot be cast to non-null type kotlin.CharSequence");
            CharSequence charSequence = (CharSequence) obj2;
            vh.a aVar = (vh.a) obj;
            if (aVar != null) {
                aVar.cancel();
            }
            vh.a aVarC = c(this.f41475a);
            this.f41477c = new WeakReference(aVarC);
            Intrinsics.e(aVarC);
            aVarC.setDuration(d(charSequence));
            aVarC.setText(charSequence);
            try {
                Result.Companion companion = Result.INSTANCE;
                aVarC.show();
                Result.m454constructorimpl(Unit.f67061a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m454constructorimpl(ResultKt.a(th2));
            }
            b(new wh.a());
        }
    }

    @Override // vh.b
    public void registerStrategy(Application application) {
        this.f41475a = application;
        com.tn.lib.widget.toast.core.a.C0589a c0589a = com.tn.lib.widget.toast.core.a.f41459b;
        Intrinsics.e(application);
        this.f41476b = c0589a.a(application);
    }
}
