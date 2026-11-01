package com.cloud.tmc.miniapp.dialog;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.miniapp.R;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
public final class o000OOo extends com.cloud.tmc.miniapp.dialog.OooO0O0.OooO00o<o000OOo> {
    public final Lazy OooO00o;
    public final AnimatorSet OooO0O0;

    public static final class OooO00o implements com.cloud.tmc.miniapp.dialog.OooO0O0.Oooo000 {
        public OooO00o() {
        }

        @Override // com.cloud.tmc.miniapp.dialog.OooO0O0.Oooo000
        public void onShow(com.cloud.tmc.miniapp.dialog.OooO0O0 oooO0O0) {
            o000OOo o000ooo = o000OOo.this;
            o000ooo.getClass();
            try {
                AppCompatImageView appCompatImageView = (AppCompatImageView) o000ooo.OooO00o.getValue();
                if (appCompatImageView != null) {
                    ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(appCompatImageView, "rotation", 0.0f, 360.0f);
                    Intrinsics.g(objectAnimatorOfFloat, "ofFloat(it, \"rotation\", 0F, 360F)");
                    objectAnimatorOfFloat.setDuration(800L);
                    objectAnimatorOfFloat.setRepeatCount(-1);
                    o000ooo.OooO0O0.play(objectAnimatorOfFloat);
                    o000ooo.OooO0O0.start();
                }
            } catch (Exception e11) {
                TmcLogger.e(e11.getMessage());
            }
        }
    }

    public static final class OooO0O0 implements com.cloud.tmc.miniapp.dialog.OooO0O0.OooOo00 {
        public OooO0O0() {
        }

        @Override // com.cloud.tmc.miniapp.dialog.OooO0O0.OooOo00
        public void onDismiss(com.cloud.tmc.miniapp.dialog.OooO0O0 oooO0O0) {
            o000OOo o000ooo = o000OOo.this;
            o000ooo.getClass();
            try {
                o000ooo.OooO0O0.cancel();
            } catch (Exception e11) {
                TmcLogger.e(e11.getMessage());
            }
        }
    }

    public static final class OooO0OO extends Lambda implements Function0<AppCompatImageView> {
        public OooO0OO() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (AppCompatImageView) o000OOo.this.findViewById(R.id.iv_loading);
        }
    }

    public static final class OooO0o extends Lambda implements Function0<TextView> {
        public OooO0o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Object invoke() {
            return (TextView) o000OOo.this.findViewById(R.id.tv_wait_message);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o000OOo(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        LazyKt.b(new OooO0o());
        this.OooO00o = LazyKt.b(new OooO0OO());
        this.OooO0O0 = new AnimatorSet();
        setContentView(R.layout.layout_mini_waiting_dialog);
        setAnimStyle(0);
        setBackgroundDimEnabled(false);
        setCancelable(false);
        addOnShowListener(new OooO00o());
        addOnDismissListener(new OooO0O0());
    }
}
