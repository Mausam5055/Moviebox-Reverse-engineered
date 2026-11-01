package com.transsion.player.mediasession;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ko.l0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/transsion/player/mediasession/MusicIntentReceiver;", "Landroid/content/BroadcastReceiver;", "<init>", "()V", "", "a", "()Ljava/lang/String;", "Landroid/content/Context;", "context", "Landroid/content/Intent;", "intent", "", "onReceive", "(Landroid/content/Context;Landroid/content/Intent;)V", "LibPlayer_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MusicIntentReceiver extends BroadcastReceiver {
    private final String a() {
        String simpleName = MusicIntentReceiver.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Object objM454constructorimpl;
        Unit unit;
        Intrinsics.h(context, "context");
        Intrinsics.h(intent, "intent");
        try {
            Result.Companion companion = Result.INSTANCE;
            String action = intent.getAction();
            if (action != null && action.hashCode() == 1997055314 && action.equals("android.intent.action.MEDIA_BUTTON")) {
                Bundle extras = intent.getExtras();
                unit = null;
                Object obj = extras != null ? extras.get("android.intent.extra.KEY_EVENT") : null;
                KeyEvent keyEvent = obj instanceof KeyEvent ? (KeyEvent) obj : null;
                if (keyEvent != null) {
                    i.f48408a.a(a() + " --> onReceive --> 接收到通知点击事件, = " + keyEvent + ", " + keyEvent.getKeyCode());
                    int keyCode = keyEvent.getKeyCode();
                    if (keyCode == 126) {
                        com.transsion.player.orplayer.g gVarH = l0.f66968a.h();
                        if (gVarH != null) {
                            gVarH.play();
                            unit = Unit.f67061a;
                        }
                    } else if (keyCode != 127) {
                        switch (keyCode) {
                            case 86:
                                com.transsion.player.orplayer.g gVarH2 = l0.f66968a.h();
                                if (gVarH2 != null) {
                                    gVarH2.stop();
                                    unit = Unit.f67061a;
                                }
                                break;
                            case 87:
                                MediaBrowserCompatHelper.f48381h.a().x();
                                unit = Unit.f67061a;
                                break;
                            case 88:
                                MediaBrowserCompatHelper.f48381h.a().z();
                                unit = Unit.f67061a;
                                break;
                            default:
                                unit = Unit.f67061a;
                                break;
                        }
                    } else {
                        com.transsion.player.orplayer.g gVarH3 = l0.f66968a.h();
                        if (gVarH3 != null) {
                            gVarH3.pause();
                            unit = Unit.f67061a;
                        }
                    }
                }
            } else {
                unit = Unit.f67061a;
            }
            objM454constructorimpl = Result.m454constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        Throwable thM457exceptionOrNullimpl = Result.m457exceptionOrNullimpl(objM454constructorimpl);
        if (thM457exceptionOrNullimpl == null) {
            return;
        }
        i.f48408a.a(a() + " --> onReceive --> 接收到通知点击事件 --- it = " + thM457exceptionOrNullimpl);
    }
}
