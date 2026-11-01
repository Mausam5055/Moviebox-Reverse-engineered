package com.cloud.tmc.miniapp.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.utils.MiniAppLaunch;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class UpgradeHostAppPromptLayout extends LinearLayout implements View.OnClickListener {
    public View OooO00o;
    public String OooO0O0;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public UpgradeHostAppPromptLayout(Context context) {
        this(context, null, 0, 0, 14, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public UpgradeHostAppPromptLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0, 12, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public UpgradeHostAppPromptLayout(Context context, AttributeSet attributeSet, int i11) {
        this(context, attributeSet, i11, 0, 8, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public UpgradeHostAppPromptLayout(Context context, AttributeSet attributeSet, int i11, int i12) {
        super(context, attributeSet, i11, i12);
        Intrinsics.h(context, "context");
    }

    public /* synthetic */ UpgradeHostAppPromptLayout(Context context, AttributeSet attributeSet, int i11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i13 & 2) != 0 ? null : attributeSet, (i13 & 4) != 0 ? 0 : i11, (i13 & 8) != 0 ? 0 : i12);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Integer numValueOf = view != null ? Integer.valueOf(view.getId()) : null;
        int i11 = R.id.tv_open_store;
        if (numValueOf != null && numValueOf.intValue() == i11) {
            MiniAppLaunch miniAppLaunch = MiniAppLaunch.INSTANCE;
            Context context = getContext();
            Intrinsics.g(context, "context");
            miniAppLaunch.jumpGooglePlayStore(context, this.OooO0O0);
        }
    }
}
