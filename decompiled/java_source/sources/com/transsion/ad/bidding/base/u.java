package com.transsion.ad.bidding.base;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.cloud.hisavana.sdk.api.view.AdChoicesView;
import com.cloud.hisavana.sdk.api.view.AdCloseView;
import com.cloud.hisavana.sdk.api.view.MediaView;
import com.cloud.hisavana.sdk.api.view.StoreMarkView;
import com.cloud.hisavana.sdk.api.view.TNativeView;
import com.cloud.hisavana.sdk.common.bean.TaNativeInfo;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public abstract class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f41892a;

    public u(Context context) {
        Intrinsics.h(context, "context");
        this.f41892a = context;
    }

    public abstract AdChoicesView a();

    public abstract AdCloseView b();

    public abstract TextView c();

    public final List d(TNativeView nativeView, TaNativeInfo nativeInfo) {
        Intrinsics.h(nativeView, "nativeView");
        Intrinsics.h(nativeInfo, "nativeInfo");
        ArrayList arrayList = new ArrayList();
        MediaView mediaViewG = g();
        if (mediaViewG != null) {
            nativeView.setMediaView(mediaViewG, ImageView.ScaleType.FIT_XY);
            arrayList.add(mediaViewG);
        }
        ImageView imageViewF = f();
        if (imageViewF != null) {
            nativeView.setIconView(imageViewF);
            arrayList.add(imageViewF);
        }
        AdChoicesView adChoicesViewA = a();
        if (adChoicesViewA != null) {
            nativeView.setAdChoiceView(adChoicesViewA);
            arrayList.add(adChoicesViewA);
        }
        AdCloseView adCloseViewB = b();
        if (adCloseViewB != null) {
            nativeView.setAdCloseView(adCloseViewB);
            arrayList.add(adCloseViewB);
        }
        StoreMarkView storeMarkViewH = h();
        if (storeMarkViewH != null) {
            nativeView.setPsMarkView(storeMarkViewH);
            arrayList.add(storeMarkViewH);
        }
        TextView textViewJ = j();
        if (textViewJ != null) {
            textViewJ.setText(nativeInfo.getTitle());
            arrayList.add(textViewJ);
        }
        TextView textViewE = e();
        if (textViewE != null) {
            textViewE.setText(nativeInfo.getDescription());
            arrayList.add(textViewE);
        }
        TextView textViewC = c();
        if (textViewC != null) {
            textViewC.setText(nativeInfo.getCtatext());
            arrayList.add(textViewC);
        }
        nativeView.addView(i());
        return arrayList;
    }

    public abstract TextView e();

    public abstract ImageView f();

    public abstract MediaView g();

    public abstract StoreMarkView h();

    public abstract View i();

    public abstract TextView j();
}
