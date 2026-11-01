package cy;

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

/* JADX INFO: loaded from: classes7.dex */
public final class s extends com.transsion.ad.bidding.base.u {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ey.d f60957b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(Context context) {
        super(context);
        Intrinsics.h(context, "context");
        ey.d dVarC = ey.d.c(LayoutInflater.from(context), null, false);
        Intrinsics.g(dVarC, "inflate(...)");
        this.f60957b = dVarC;
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
        return this.f60957b.f62084c;
    }

    @Override // com.transsion.ad.bidding.base.u
    public TextView e() {
        return this.f60957b.f62086e;
    }

    @Override // com.transsion.ad.bidding.base.u
    public ImageView f() {
        AppCompatImageView nativeAdIcon = this.f60957b.f62087f;
        Intrinsics.g(nativeAdIcon, "nativeAdIcon");
        return nativeAdIcon;
    }

    @Override // com.transsion.ad.bidding.base.u
    public MediaView g() {
        MediaView nativeAdMedia = this.f60957b.f62088g;
        Intrinsics.g(nativeAdMedia, "nativeAdMedia");
        return nativeAdMedia;
    }

    @Override // com.transsion.ad.bidding.base.u
    public StoreMarkView h() {
        return null;
    }

    @Override // com.transsion.ad.bidding.base.u
    public View i() {
        CardView root = this.f60957b.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        return root;
    }

    @Override // com.transsion.ad.bidding.base.u
    public TextView j() {
        return this.f60957b.f62090i;
    }
}
