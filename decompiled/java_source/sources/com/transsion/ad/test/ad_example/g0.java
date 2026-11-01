package com.transsion.ad.test.ad_example;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.cardview.widget.CardView;
import com.cloud.hisavana.sdk.api.view.AdChoicesView;
import com.cloud.hisavana.sdk.api.view.AdCloseView;
import com.cloud.hisavana.sdk.api.view.MediaView;
import com.cloud.hisavana.sdk.api.view.StoreMarkView;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class g0 extends com.transsion.ad.bidding.base.u {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ji.e0 f42338b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g0(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        ji.e0 e0VarC = ji.e0.c(LayoutInflater.from(context), null, false);
        Intrinsics.g(e0VarC, "inflate(...)");
        this.f42338b = e0VarC;
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
        return this.f42338b.f66064c;
    }

    @Override // com.transsion.ad.bidding.base.u
    public TextView e() {
        return this.f42338b.f66066e;
    }

    @Override // com.transsion.ad.bidding.base.u
    public ImageView f() {
        AppCompatImageView nativeAdIcon = this.f42338b.f66067f;
        Intrinsics.g(nativeAdIcon, "nativeAdIcon");
        return nativeAdIcon;
    }

    @Override // com.transsion.ad.bidding.base.u
    public MediaView g() {
        MediaView nativeAdMedia = this.f42338b.f66068g;
        Intrinsics.g(nativeAdMedia, "nativeAdMedia");
        return nativeAdMedia;
    }

    @Override // com.transsion.ad.bidding.base.u
    public StoreMarkView h() {
        return null;
    }

    @Override // com.transsion.ad.bidding.base.u
    public View i() {
        CardView root = this.f42338b.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        return root;
    }

    @Override // com.transsion.ad.bidding.base.u
    public TextView j() {
        return this.f42338b.f66070i;
    }
}
