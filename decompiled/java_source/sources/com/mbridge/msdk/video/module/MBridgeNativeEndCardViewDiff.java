package com.mbridge.msdk.video.module;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.video.signal.factory.b;

/* JADX INFO: loaded from: classes5.dex */
public abstract class MBridgeNativeEndCardViewDiff extends MBridgeBaseView {
    public TextView ctaView;

    public MBridgeNativeEndCardViewDiff(Context context) {
        super(context);
    }

    public MBridgeNativeEndCardViewDiff(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MBridgeNativeEndCardViewDiff(Context context, AttributeSet attributeSet, boolean z10, int i11, boolean z11, int i12, int i13) {
        super(context, attributeSet, z10, i11, z11, i12, i13);
    }

    public boolean checkChinaShakeState() {
        return false;
    }

    public boolean checkProgressBarIntercepted() {
        return false;
    }

    public boolean ctaViewCanGet(View view, boolean z10) {
        try {
            View viewFindViewById = view.findViewById(filterFindViewId(z10, "mbridge_tv_cta"));
            if (viewFindViewById instanceof TextView) {
                this.ctaView = (TextView) viewFindViewById;
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
        return this.ctaView != null;
    }

    public abstract /* synthetic */ void preLoadData(b bVar);
}
