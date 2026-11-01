package com.transsion.postdetail.shorttv_pugc.factory;

import android.content.Context;
import android.view.View;
import com.tn.lib.view.NoNetworkBigView;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class k implements st.i {
    @Override // st.i
    public View a(Context context) {
        Intrinsics.h(context, "context");
        return new NoNetworkBigView(context);
    }
}
