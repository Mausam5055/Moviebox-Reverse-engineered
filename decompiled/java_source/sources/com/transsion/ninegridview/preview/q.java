package com.transsion.ninegridview.preview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.viewpager.widget.PagerAdapter;
import com.transsion.ninegridview.ImageInfo;
import com.transsion.ninegridview.R$drawable;
import com.transsion.ninegridview.R$id;
import com.transsion.ninegridview.R$layout;
import com.transsion.photoview.PhotoView;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class q extends PagerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f47736a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f47737b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f47738c;

    class a implements com.transsion.photoview.i {
        a() {
        }

        @Override // com.transsion.photoview.i
        public void a() {
            ((ImagePreviewActivity) q.this.f47737b).finish();
        }
    }

    public q(Context context, List list) {
        this.f47736a = list;
        this.f47737b = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(View view) {
        ((ImagePreviewActivity) this.f47737b).finishActivityAnim();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(View view) {
        ((ImagePreviewActivity) this.f47737b).finishActivityAnim();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(ImageInfo imageInfo, PhotoView photoView) {
        try {
            ej.f.b bVarM = ej.f.f61882a.m(this.f47737b);
            String str = imageInfo.bigImageUrl;
            if (str == null) {
                str = "";
            }
            bVarM.g(str).i(R$drawable.ic_default_color).j(0).f(true).l(imageInfo.thumbnailUrl).e(true).k(false).h(false).d(photoView);
        } catch (Exception unused) {
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i11, Object obj) {
        viewGroup.removeView((View) obj);
    }

    public PhotoView e() {
        return (PhotoView) this.f47738c.findViewById(R$id.f47669pv);
    }

    public ImageView f() {
        return (ImageView) this.f47738c.findViewById(R$id.thumb);
    }

    public View g() {
        return this.f47738c;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        List list = this.f47736a;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i11) {
        View viewInflate = LayoutInflater.from(this.f47737b).inflate(R$layout.item_photoview, viewGroup, false);
        viewInflate.findViewById(R$id.root).setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ninegridview.preview.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f47731a.h(view);
            }
        });
        final ImageInfo imageInfo = (ImageInfo) this.f47736a.get(i11);
        if (imageInfo == null) {
            return viewInflate;
        }
        try {
            float f11 = imageInfo.imageViewWidth;
            oh.h hVar = oh.h.f71021a;
            if (f11 > hVar.e(this.f47737b) || imageInfo.imageViewHeight > hVar.c(this.f47737b)) {
                float f12 = imageInfo.imageViewWidth / imageInfo.imageViewHeight;
                imageInfo.imageViewWidth = hVar.e(this.f47737b);
                imageInfo.imageViewHeight = hVar.e(this.f47737b) / f12;
            }
        } catch (Exception unused) {
        }
        final PhotoView photoView = (PhotoView) viewInflate.findViewById(R$id.f47669pv);
        photoView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        photoView.setOnClickListener(new View.OnClickListener() { // from class: com.transsion.ninegridview.preview.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f47732a.i(view);
            }
        });
        photoView.setSlideUpAndDownListener(new a());
        photoView.post(new Runnable() { // from class: com.transsion.ninegridview.preview.p
            @Override // java.lang.Runnable
            public final void run() {
                this.f47733a.j(imageInfo, photoView);
            }
        });
        viewGroup.addView(viewInflate);
        return viewInflate;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void setPrimaryItem(ViewGroup viewGroup, int i11, Object obj) {
        super.setPrimaryItem(viewGroup, i11, obj);
        this.f47738c = (View) obj;
    }
}
