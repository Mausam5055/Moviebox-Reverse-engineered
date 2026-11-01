package com.transsion.publish.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.viewpager.widget.PagerAdapter;
import com.bumptech.glide.Glide;
import com.transsion.publish.R$id;
import com.transsion.publish.R$layout;
import com.transsion.publish.api.PhotoEntity;
import com.transsion.publish.view.ZoomImageView;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class o0 extends PagerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List f50420a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f50421b;

    public o0(List list) {
        this.f50420a = list != null ? CollectionsKt.U0(list) : null;
    }

    private final View a(Context context, int i11) {
        return LayoutInflater.from(context).inflate(i11, (ViewGroup) null, false);
    }

    private final void b(ZoomImageView zoomImageView, String str) {
        Glide.with(zoomImageView).load2(str).into(zoomImageView);
    }

    public final void c(List list) {
        this.f50420a = list;
        this.f50421b = getCount();
        notifyDataSetChanged();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup container, int i11, Object object) {
        Intrinsics.h(container, "container");
        Intrinsics.h(object, "object");
        container.removeView((View) object);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        List list = this.f50420a;
        Intrinsics.e(list);
        return list.size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object object) {
        Intrinsics.h(object, "object");
        int i11 = this.f50421b;
        if (i11 <= 0) {
            return super.getItemPosition(object);
        }
        this.f50421b = i11 - 1;
        return -2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup container, int i11) {
        ViewParent parent;
        Intrinsics.h(container, "container");
        Context context = container.getContext();
        View viewA = context != null ? a(context, R$layout.item_travelga_image) : null;
        List list = this.f50420a;
        Intrinsics.e(list);
        String localPath = ((PhotoEntity) list.get(i11)).getLocalPath();
        View viewFindViewById = viewA != null ? viewA.findViewById(R$id.src_pic) : null;
        Intrinsics.f(viewFindViewById, "null cannot be cast to non-null type com.transsion.publish.view.ZoomImageView");
        ZoomImageView zoomImageView = (ZoomImageView) viewFindViewById;
        if (localPath != null) {
            b(zoomImageView, localPath);
        }
        if (viewA != null) {
            try {
                parent = viewA.getParent();
            } catch (Exception unused) {
            }
        } else {
            parent = null;
        }
        if (parent != null) {
            if ((viewA != null ? viewA.getParent() : null) instanceof ViewGroup) {
                ViewParent parent2 = viewA != null ? viewA.getParent() : null;
                Intrinsics.f(parent2, "null cannot be cast to non-null type android.view.ViewGroup");
                ((ViewGroup) parent2).removeView(viewA);
            }
        }
        container.addView(viewA);
        return viewA;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object object) {
        Intrinsics.h(view, "view");
        Intrinsics.h(object, "object");
        return view == object;
    }
}
