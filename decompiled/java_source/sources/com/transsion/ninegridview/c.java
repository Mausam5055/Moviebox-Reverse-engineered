package com.transsion.ninegridview;

import android.content.Context;
import android.widget.ImageView;
import com.blankj.utilcode.util.y;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.moviedetailapi.bean.GifBean;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.ninegridview.video.NineGridItemView;
import ej.f;

/* JADX INFO: loaded from: classes6.dex */
public final class c implements pn.b {
    @Override // pn.b
    public void a(Context context, ImageView imageView, String str, int i11, int i12, String str2) {
        if (context == null || imageView == null || str == null) {
            return;
        }
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        imageView.getLayoutParams().width = i11;
        imageView.getLayoutParams().height = i12;
        f.b bVarI = f.f61882a.m(context).g(str).i(R$color.ic_default_bg_color);
        if (str2 == null) {
            str2 = "";
        }
        bVarI.l(str2).m(i11).c(i12).d(imageView);
    }

    @Override // pn.b
    public void b(Context context, NineGridItemView nineGridItemView, Image image, int i11, int i12) {
        String thumbnail;
        GifBean gifBean;
        String url = null;
        ShapeableImageView imageView = nineGridItemView != null ? nineGridItemView.getImageView() : null;
        if (((image == null || (gifBean = image.getGifBean()) == null) ? null : gifBean.getVideoUrl()) != null) {
            GifBean gifBean2 = image.getGifBean();
            if (gifBean2 != null) {
                url = gifBean2.getFirstFrameUrl();
            }
        } else if (image != null) {
            url = image.getUrl();
        }
        if (i11 <= 0) {
            i11 = y.e();
        }
        if (context == null || imageView == null) {
            return;
        }
        imageView.getLayoutParams().width = i11;
        imageView.getLayoutParams().height = i12;
        f.b bVarM = f.f61882a.m(context);
        String str = "";
        if (url == null) {
            url = "";
        }
        f.b bVarI = bVarM.g(url).i(R$color.ic_default_bg_color);
        if (image != null && (thumbnail = image.getThumbnail()) != null) {
            str = thumbnail;
        }
        bVarI.l(str).m(i11).c(i12).d(imageView);
    }
}
