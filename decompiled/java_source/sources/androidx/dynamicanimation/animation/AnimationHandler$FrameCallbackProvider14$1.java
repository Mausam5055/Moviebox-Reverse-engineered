package androidx.dynamicanimation.animation;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes.dex */
class AnimationHandler$FrameCallbackProvider14$1 implements Runnable {
    final /* synthetic */ a.d this$0;

    AnimationHandler$FrameCallbackProvider14$1(a.d dVar) {
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.f8989b = SystemClock.uptimeMillis();
        this.this$0.f8988a.a();
    }
}
