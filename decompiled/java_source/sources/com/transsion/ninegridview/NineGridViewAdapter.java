package com.transsion.ninegridview;

import android.content.Context;
import android.widget.ImageView;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class NineGridViewAdapter implements Serializable {
    protected Context context;
    private List<ImageInfo> imageInfo;

    public NineGridViewAdapter(Context context, List<ImageInfo> list) {
        this.context = context;
        this.imageInfo = list;
    }

    protected ImageView generateImageView(Context context) {
        NineGridViewWrapper nineGridViewWrapper = new NineGridViewWrapper(context);
        nineGridViewWrapper.setScaleType(ImageView.ScaleType.CENTER_CROP);
        nineGridViewWrapper.setImageResource(R$drawable.ic_default_color);
        return nineGridViewWrapper;
    }

    public List<ImageInfo> getImageInfo() {
        return this.imageInfo;
    }

    protected void onImageItemClick(Context context, NineGridView nineGridView, int i11, List<ImageInfo> list) {
    }

    protected void onImageItemClick(Context context, NineGridViewNew nineGridViewNew, int i11, List<ImageInfo> list) {
    }

    public void setImageInfoList(List<ImageInfo> list) {
        this.imageInfo = list;
    }
}
