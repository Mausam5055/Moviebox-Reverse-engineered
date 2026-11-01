package com.transsion.shorttv.base.activity;

import android.view.MotionEvent;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import g4.a;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import qs.j;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nR\u001d\u0010\u000f\u001a\u0004\u0018\u00010\u000b8DX\u0084\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u0002\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/transsion/shorttv/base/activity/BaseMusicFloatActivity;", "Lg4/a;", "T", "Lcom/transsion/shorttv/base/activity/BaseCommonActivity;", "<init>", "()V", "Landroid/view/MotionEvent;", "ev", "", "dispatchTouchEvent", "(Landroid/view/MotionEvent;)Z", "Lqs/j;", "c", "Lkotlin/Lazy;", "()Lqs/j;", "shortMusicAudioProvider", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class BaseMusicFloatActivity<T extends g4.a> extends BaseCommonActivity<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final Lazy shortMusicAudioProvider = LazyKt.b(new Function0() { // from class: com.transsion.shorttv.base.activity.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return BaseMusicFloatActivity.U();
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public static final j U() {
        rs.a aVarC = lr.c.f69031a.c();
        if (aVarC != null) {
            return aVarC.g();
        }
        return null;
    }

    protected final j T() {
        return (j) this.shortMusicAudioProvider.getValue();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent ev2) {
        j jVarT;
        Integer numValueOf = ev2 != null ? Integer.valueOf(ev2.getAction()) : null;
        if (numValueOf != null && numValueOf.intValue() == 0 && (jVarT = T()) != null) {
            jVarT.c(this, ev2);
        }
        return super.dispatchTouchEvent(ev2);
    }
}
