package com.transsion.ninegridview.video;

import android.content.Context;
import android.content.Intent;
import com.blankj.utilcode.util.d;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.ninegridview.preview.GifImagePreviewActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eJ.\u0010\u000f\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\n2\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/transsion/ninegridview/video/NineGridVideoViewAdapter;", "Ljava/io/Serializable;", "imageList", "", "Lcom/transsion/moviedetailapi/bean/Image;", "<init>", "(Ljava/util/List;)V", "getImageList", "()Ljava/util/List;", "statusHeight", "", "generateItemView", "Lcom/transsion/ninegridview/video/NineGridItemView;", "context", "Landroid/content/Context;", "onItemClick", "", "nineGridVideoView", "Lcom/transsion/ninegridview/video/NineGridVideoView;", "index", "NineGridView_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public class NineGridVideoViewAdapter implements Serializable {
    private final List<Image> imageList;
    private int statusHeight;

    public NineGridVideoViewAdapter(List<Image> imageList) {
        Intrinsics.h(imageList, "imageList");
        this.imageList = imageList;
        this.statusHeight = d.c();
    }

    public final NineGridItemView generateItemView(Context context) {
        Intrinsics.h(context, "context");
        return new NineGridItemView(context);
    }

    public final List<Image> getImageList() {
        return this.imageList;
    }

    public final void onItemClick(Context context, NineGridVideoView nineGridVideoView, int index, List<Image> imageList) {
        Intrinsics.h(context, "context");
        Intrinsics.h(nineGridVideoView, "nineGridVideoView");
        Intent intent = new Intent(context, (Class<?>) GifImagePreviewActivity.class);
        if (imageList != null) {
            for (Image image : imageList) {
                int[] iArr = new int[2];
                nineGridVideoView.getLocationInWindow(iArr);
                image.setImageViewX(iArr[0]);
                image.setImageViewY(iArr[1] - this.statusHeight);
                image.setImageViewHeight(nineGridVideoView.getHeight());
                image.setImageViewWidth(nineGridVideoView.getWidth());
            }
        }
        Intrinsics.f(imageList, "null cannot be cast to non-null type java.io.Serializable");
        intent.putExtra(GifImagePreviewActivity.IMAGE_LIST, (Serializable) imageList);
        intent.putExtra("CURRENT_ITEM", index);
        context.startActivity(intent);
    }
}
