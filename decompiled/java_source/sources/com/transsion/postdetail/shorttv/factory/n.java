package com.transsion.postdetail.shorttv.factory;

import android.content.Context;
import android.view.View;
import com.tn.lib.view.NoNetworkBigView;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class n implements qs.l {
    @Override // qs.l
    public View a(Context context) {
        Intrinsics.h(context, "context");
        return new NoNetworkBigView(context);
    }
}
