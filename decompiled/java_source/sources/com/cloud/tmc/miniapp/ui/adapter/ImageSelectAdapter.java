package com.cloud.tmc.miniapp.ui.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy;
import com.cloud.tmc.miniapp.R;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class ImageSelectAdapter extends NormalBaseAdapter<String> {
    private final Lazy imageLoder$delegate;
    private final List<String> mSelectImages;
    private int selectMode;

    public final class ViewHolder extends NormalBaseAdapter<String>.NormalViewHolder {
        private final Lazy checkBox$delegate;
        private final Lazy imageView$delegate;
        private final Lazy ivQrPreview$delegate;
        private final Lazy viewMask$delegate;

        public ViewHolder() {
            super(R.layout.item_image_select);
            this.imageView$delegate = LazyKt.b(new Function0<ImageView>() { // from class: com.cloud.tmc.miniapp.ui.adapter.ImageSelectAdapter$ViewHolder$imageView$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final ImageView invoke() {
                    return (ImageView) this.this$0.findViewById(R.id.iv_image_select);
                }
            });
            this.checkBox$delegate = LazyKt.b(new Function0<TextView>() { // from class: com.cloud.tmc.miniapp.ui.adapter.ImageSelectAdapter$ViewHolder$checkBox$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final TextView invoke() {
                    return (TextView) this.this$0.findViewById(R.id.cb_image_select_check);
                }
            });
            this.viewMask$delegate = LazyKt.b(new Function0<View>() { // from class: com.cloud.tmc.miniapp.ui.adapter.ImageSelectAdapter$ViewHolder$viewMask$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final View invoke() {
                    return this.this$0.findViewById(R.id.view_mask);
                }
            });
            this.ivQrPreview$delegate = LazyKt.b(new Function0<AppCompatImageView>() { // from class: com.cloud.tmc.miniapp.ui.adapter.ImageSelectAdapter$ViewHolder$ivQrPreview$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final AppCompatImageView invoke() {
                    return (AppCompatImageView) this.this$0.findViewById(R.id.iv_qr_preview);
                }
            });
        }

        private final TextView getCheckBox() {
            return (TextView) this.checkBox$delegate.getValue();
        }

        private final ImageView getImageView() {
            return (ImageView) this.imageView$delegate.getValue();
        }

        private final AppCompatImageView getIvQrPreview() {
            return (AppCompatImageView) this.ivQrPreview$delegate.getValue();
        }

        private final View getViewMask() {
            return (View) this.viewMask$delegate.getValue();
        }

        @Override // com.cloud.tmc.miniapp.base.BaseAdapter.BaseViewHolder
        public void onBindView(int i11) {
            String item = ImageSelectAdapter.this.getItem(i11);
            ImageSelectAdapter imageSelectAdapter = ImageSelectAdapter.this;
            String str = item;
            ImageView imageView = getImageView();
            if (imageView != null) {
                imageSelectAdapter.getImageLoder().loadImg(imageSelectAdapter.getContext(), str, imageView);
            }
            if (imageSelectAdapter.getSelectMode() == 1) {
                TextView checkBox = getCheckBox();
                if (checkBox != null) {
                    checkBox.setVisibility(8);
                }
                AppCompatImageView ivQrPreview = getIvQrPreview();
                if (ivQrPreview == null) {
                    return;
                }
                ivQrPreview.setVisibility(0);
                return;
            }
            TextView checkBox2 = getCheckBox();
            if (checkBox2 != null) {
                checkBox2.setVisibility(0);
            }
            int selectNum = imageSelectAdapter.getSelectNum(str);
            if (selectNum != 0) {
                TextView checkBox3 = getCheckBox();
                if (checkBox3 != null) {
                    checkBox3.setSelected(true);
                }
                TextView checkBox4 = getCheckBox();
                if (checkBox4 != null) {
                    checkBox4.setText(String.valueOf(selectNum));
                }
                View viewMask = getViewMask();
                if (viewMask != null) {
                    viewMask.setBackgroundColor(imageSelectAdapter.getColor(R.color.mini_black50));
                    return;
                }
                return;
            }
            TextView checkBox5 = getCheckBox();
            if (checkBox5 != null) {
                checkBox5.setSelected(false);
            }
            TextView checkBox6 = getCheckBox();
            if (checkBox6 != null) {
                checkBox6.setText("");
            }
            View viewMask2 = getViewMask();
            if (viewMask2 != null) {
                viewMask2.setBackgroundColor(imageSelectAdapter.getColor(R.color.mini_black6));
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImageSelectAdapter(Context context, List<String> mSelectImages) {
        super(context);
        Intrinsics.h(context, "context");
        Intrinsics.h(mSelectImages, "mSelectImages");
        this.mSelectImages = mSelectImages;
        this.imageLoder$delegate = LazyKt.b(new Function0<ImageLoaderProxy>() { // from class: com.cloud.tmc.miniapp.ui.adapter.ImageSelectAdapter$imageLoder$2
            @Override // kotlin.jvm.functions.Function0
            public final ImageLoaderProxy invoke() {
                return (ImageLoaderProxy) TmcProxy.get(ImageLoaderProxy.class);
            }
        });
        this.selectMode = 1;
    }

    @Override // com.cloud.tmc.miniapp.base.BaseAdapter
    public RecyclerView.m generateDefaultLayoutManager(Context context) {
        Intrinsics.h(context, "context");
        return new GridLayoutManager(context, 3);
    }

    public final ImageLoaderProxy getImageLoder() {
        Object value = this.imageLoder$delegate.getValue();
        Intrinsics.g(value, "<get-imageLoder>(...)");
        return (ImageLoaderProxy) value;
    }

    public final int getSelectMode() {
        return this.selectMode;
    }

    public final int getSelectNum(String imagePath) {
        Intrinsics.h(imagePath, "imagePath");
        return this.mSelectImages.indexOf(imagePath) + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public NormalBaseAdapter<String>.NormalViewHolder onCreateViewHolder(ViewGroup parent, int i11) {
        Intrinsics.h(parent, "parent");
        return new ViewHolder();
    }

    public final void setSelectMode(int i11) {
        this.selectMode = i11;
    }
}
