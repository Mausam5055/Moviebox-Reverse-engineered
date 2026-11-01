package com.cloud.tmc.miniapp.widget;

import android.graphics.drawable.Drawable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO0o extends Lambda implements Function1<Drawable, Unit> {
    public final /* synthetic */ Function1<Boolean, Unit> OooO00o;
    public final /* synthetic */ OooO0OO OooO0O0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public OooO0o(Function1<? super Boolean, Unit> function1, OooO0OO oooO0OO) {
        super(1);
        this.OooO00o = function1;
        this.OooO0O0 = oooO0OO;
    }

    @Override // kotlin.jvm.functions.Function1
    public Object invoke(Object obj) {
        Drawable drawable = (Drawable) obj;
        if (drawable == null) {
            Function1<Boolean, Unit> function1 = this.OooO00o;
            if (function1 != null) {
                function1.invoke(Boolean.FALSE);
            }
        } else {
            this.OooO0O0.getIvRedIcon().setImageDrawable(drawable);
            this.OooO0O0.setUnreadIconVisible(true);
            Function1<Boolean, Unit> function2 = this.OooO00o;
            if (function2 != null) {
                function2.invoke(Boolean.TRUE);
            }
        }
        return Unit.f67061a;
    }
}
