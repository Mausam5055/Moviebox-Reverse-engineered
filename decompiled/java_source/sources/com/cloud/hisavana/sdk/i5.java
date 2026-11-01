package com.cloud.hisavana.sdk;

import android.view.View;

/* JADX INFO: loaded from: classes3.dex */
public class i5 extends com.cloud.hisavana.sdk.common.tranmeasure.h {
    @Override // com.cloud.hisavana.sdk.common.tranmeasure.h
    protected int d(d5 d5Var, View view) {
        if (view == null || d5Var == null || !view.getGlobalVisibleRect(this.f22136a)) {
            return 2;
        }
        long jHeight = ((long) this.f22136a.height()) * ((long) this.f22136a.width());
        long height = ((long) view.getHeight()) * ((long) view.getWidth());
        this.f22137b = this.f22136a.width() + "*" + this.f22136a.height();
        return (height > 0 && jHeight >= ((long) d5Var.f22375b)) ? 1 : 2;
    }
}
