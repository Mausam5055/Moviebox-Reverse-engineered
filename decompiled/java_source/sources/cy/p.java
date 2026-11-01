package cy;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.cloud.hisavana.sdk.api.view.AdChoicesView;
import com.cloud.hisavana.sdk.api.view.AdCloseView;
import com.cloud.hisavana.sdk.api.view.MediaView;
import com.cloud.hisavana.sdk.api.view.StoreMarkView;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class p extends com.transsion.ad.bidding.base.u {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ey.b f60956b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        ey.b bVarC = ey.b.c(LayoutInflater.from(context), null, false);
        Intrinsics.g(bVarC, "inflate(...)");
        this.f60956b = bVarC;
    }

    @Override // com.transsion.ad.bidding.base.u
    public AdChoicesView a() {
        return this.f60956b.f62072b;
    }

    @Override // com.transsion.ad.bidding.base.u
    public AdCloseView b() {
        return null;
    }

    @Override // com.transsion.ad.bidding.base.u
    public TextView c() {
        return this.f60956b.f62074d;
    }

    @Override // com.transsion.ad.bidding.base.u
    public TextView e() {
        return null;
    }

    @Override // com.transsion.ad.bidding.base.u
    public ImageView f() {
        return null;
    }

    @Override // com.transsion.ad.bidding.base.u
    public MediaView g() {
        MediaView nativeAdMedia = this.f60956b.f62075e;
        Intrinsics.g(nativeAdMedia, "nativeAdMedia");
        return nativeAdMedia;
    }

    @Override // com.transsion.ad.bidding.base.u
    public StoreMarkView h() {
        return null;
    }

    @Override // com.transsion.ad.bidding.base.u
    public View i() {
        ConstraintLayout root = this.f60956b.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        return root;
    }

    @Override // com.transsion.ad.bidding.base.u
    public TextView j() {
        return null;
    }
}
