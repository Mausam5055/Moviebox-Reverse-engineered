package com.transsion.ninegridview.preview;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.transsion.ninegridview.ImageInfo;
import com.transsion.ninegridview.NineGridView;
import com.transsion.ninegridview.NineGridViewAdapter;
import com.transsion.ninegridview.NineGridViewNew;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class NineGridViewClickAdapter extends NineGridViewAdapter {
    private int statusHeight;

    public NineGridViewClickAdapter(Context context, List<ImageInfo> list) {
        super(context, list);
        this.statusHeight = com.blankj.utilcode.util.d.c();
    }

    public int getStatusHeight(Context context) {
        try {
            Class<?> cls = Class.forName("com.android.internal.R$dimen");
            return context.getResources().getDimensionPixelSize(Integer.parseInt(cls.getField("status_bar_height").get(cls.newInstance()).toString()));
        } catch (Exception e11) {
            e11.printStackTrace();
            return -1;
        }
    }

    @Override // com.transsion.ninegridview.NineGridViewAdapter
    protected void onImageItemClick(Context context, NineGridView nineGridView, int i11, List<ImageInfo> list) {
        int i12 = 0;
        while (i12 < list.size()) {
            ImageInfo imageInfo = list.get(i12);
            View childAt = i12 < nineGridView.getMaxSize() ? nineGridView.getChildAt(i12) : nineGridView.getChildAt(nineGridView.getMaxSize() - 1);
            imageInfo.imageViewWidth = childAt.getWidth();
            imageInfo.imageViewHeight = childAt.getHeight();
            int[] iArr = new int[2];
            childAt.getLocationInWindow(iArr);
            imageInfo.imageViewX = iArr[0];
            imageInfo.imageViewY = iArr[1] - this.statusHeight;
            i12++;
        }
        Intent intent = new Intent(context, (Class<?>) ImagePreviewActivity.class);
        Bundle bundle = new Bundle();
        bundle.putSerializable(ImagePreviewActivity.IMAGE_INFO, (Serializable) list);
        bundle.putInt("CURRENT_ITEM", i11);
        intent.putExtras(bundle);
        context.startActivity(intent);
    }

    @Override // com.transsion.ninegridview.NineGridViewAdapter
    protected void onImageItemClick(Context context, NineGridViewNew nineGridViewNew, int i11, List<ImageInfo> list) {
        int i12 = 0;
        while (i12 < list.size()) {
            ImageInfo imageInfo = list.get(i12);
            View childAt = i12 < nineGridViewNew.getMaxImageSize() ? nineGridViewNew.getChildAt(i12) : nineGridViewNew.getChildAt(nineGridViewNew.getMaxImageSize() - 1);
            imageInfo.imageViewWidth = childAt.getWidth();
            imageInfo.imageViewHeight = childAt.getHeight();
            int[] iArr = new int[2];
            childAt.getLocationInWindow(iArr);
            imageInfo.imageViewX = iArr[0];
            imageInfo.imageViewY = iArr[1] - this.statusHeight;
            i12++;
        }
        Intent intent = new Intent(context, (Class<?>) ImagePreviewActivity.class);
        Bundle bundle = new Bundle();
        bundle.putSerializable(ImagePreviewActivity.IMAGE_INFO, (Serializable) list);
        bundle.putInt("CURRENT_ITEM", i11);
        intent.putExtras(bundle);
        context.startActivity(intent);
    }
}
