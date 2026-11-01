package com.cloud.tmc.miniapp.dialog;

import android.graphics.drawable.Drawable;
import androidx.appcompat.widget.AppCompatImageView;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO0OO extends Lambda implements Function1<Drawable, Unit> {
    public final /* synthetic */ AppCompatImageView OooO00o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OooO0OO(AppCompatImageView appCompatImageView) {
        super(1);
        this.OooO00o = appCompatImageView;
    }

    @Override // kotlin.jvm.functions.Function1
    public Object invoke(Object obj) {
        this.OooO00o.setImageDrawable((Drawable) obj);
        return Unit.f67061a;
    }
}
