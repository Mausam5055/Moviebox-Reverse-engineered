package com.transsion.rewardscenter.task.ad;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.cloud.hisavana.sdk.api.view.AdChoicesView;
import com.cloud.hisavana.sdk.api.view.AdCloseView;
import com.cloud.hisavana.sdk.api.view.MediaView;
import com.cloud.hisavana.sdk.api.view.StoreMarkView;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class w extends com.transsion.ad.bidding.base.u {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final vp.k f51152b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        vp.k kVarC = vp.k.c(LayoutInflater.from(context), null, false);
        Intrinsics.g(kVarC, "inflate(...)");
        this.f51152b = kVarC;
    }

    @Override // com.transsion.ad.bidding.base.u
    public AdChoicesView a() {
        return null;
    }

    @Override // com.transsion.ad.bidding.base.u
    public AdCloseView b() {
        return null;
    }

    @Override // com.transsion.ad.bidding.base.u
    public TextView c() {
        return null;
    }

    @Override // com.transsion.ad.bidding.base.u
    public TextView e() {
        return null;
    }

    @Override // com.transsion.ad.bidding.base.u
    public ImageView f() {
        ImageView adIcon = this.f51152b.f77429b;
        Intrinsics.g(adIcon, "adIcon");
        return adIcon;
    }

    @Override // com.transsion.ad.bidding.base.u
    public MediaView g() {
        return null;
    }

    @Override // com.transsion.ad.bidding.base.u
    public StoreMarkView h() {
        return null;
    }

    @Override // com.transsion.ad.bidding.base.u
    public View i() {
        ConstraintLayout root = this.f51152b.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        return root;
    }

    @Override // com.transsion.ad.bidding.base.u
    public TextView j() {
        AppCompatTextView adTitle = this.f51152b.f77430c;
        Intrinsics.g(adTitle, "adTitle");
        return adTitle;
    }
}
