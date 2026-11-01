package com.cloud.tmc.miniapp.ui.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.cloud.tmc.integration.utils.FilePathUtils;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy;
import com.cloud.tmc.kernel.resource.IResourceProcessor;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.base.BaseActivity;
import com.cloud.tmc.miniapp.widget.photoview.OooOOO;
import com.cloud.tmc.miniapp.widget.photoview.PhotoView;
import java.io.File;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class ImagePreviewAdapter extends NormalBaseAdapter<String> {
    private final Lazy baseResourceManager$delegate;
    private final Lazy imageLoder$delegate;
    private final List<String> mSelectImages;
    private int selectMode;

    public final class ViewHolder extends NormalBaseAdapter<String>.NormalViewHolder {
        private final Lazy checkBox$delegate;
        private final Lazy photoView$delegate;

        public ViewHolder() {
            super(R.layout.item_image_preview);
            this.photoView$delegate = LazyKt.b(new Function0<PhotoView>() { // from class: com.cloud.tmc.miniapp.ui.adapter.ImagePreviewAdapter$ViewHolder$photoView$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final PhotoView invoke() {
                    return (PhotoView) this.this$0.findViewById(R.id.photoview);
                }
            });
            this.checkBox$delegate = LazyKt.b(new Function0<TextView>() { // from class: com.cloud.tmc.miniapp.ui.adapter.ImagePreviewAdapter$ViewHolder$checkBox$2
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final TextView invoke() {
                    return (TextView) this.this$0.findViewById(R.id.cb_image_select_check);
                }
            });
        }

        private final TextView getCheckBox() {
            return (TextView) this.checkBox$delegate.getValue();
        }

        private final PhotoView getPhotoView() {
            return (PhotoView) this.photoView$delegate.getValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onBindView$lambda$1(ImagePreviewAdapter this$0, View view, float f11, float f12) {
            Intrinsics.h(this$0, "this$0");
            Context context = this$0.getContext();
            BaseActivity baseActivity = context instanceof BaseActivity ? (BaseActivity) context : null;
            if (baseActivity != null) {
                baseActivity.finish();
                baseActivity.overridePendingTransition(R.anim.activity_fast_fade_in, R.anim.activity_fast_fade_out);
            }
        }

        public final int getSelectNum(String imagePath) {
            Intrinsics.h(imagePath, "imagePath");
            return ImagePreviewAdapter.this.mSelectImages.indexOf(imagePath) + 1;
        }

        @Override // com.cloud.tmc.miniapp.base.BaseAdapter.BaseViewHolder
        public void onBindView(int i11) {
            TextView checkBox;
            String absolutePath;
            PhotoView photoView = getPhotoView();
            if (photoView != null) {
                final ImagePreviewAdapter imagePreviewAdapter = ImagePreviewAdapter.this;
                photoView.setOnViewTapListener(new OooOOO() { // from class: com.cloud.tmc.miniapp.ui.adapter.a
                    @Override // com.cloud.tmc.miniapp.widget.photoview.OooOOO
                    public final void OooO00o(View view, float f11, float f12) {
                        ImagePreviewAdapter.ViewHolder.onBindView$lambda$1(imagePreviewAdapter, view, f11, f12);
                    }
                });
            }
            String item = ImagePreviewAdapter.this.getItem(i11);
            if (item != null) {
                ImagePreviewAdapter imagePreviewAdapter2 = ImagePreviewAdapter.this;
                try {
                    PhotoView photoView2 = getPhotoView();
                    if (photoView2 != null) {
                        if (StringsKt.c0(item, ".miniapp.transsion.com", false, 2, null)) {
                            String appIdFormVurl = FilePathUtils.INSTANCE.getAppIdFormVurl(item);
                            if (appIdFormVurl == null) {
                                appIdFormVurl = "";
                            }
                            File file = imagePreviewAdapter2.getBaseResourceManager().get(item, appIdFormVurl);
                            absolutePath = file != null ? file.getAbsolutePath() : null;
                            if (absolutePath == null) {
                                absolutePath = "";
                            } else {
                                Intrinsics.g(absolutePath, "baseResourceManager.get(…ppId)?.absolutePath ?: \"\"");
                            }
                        } else {
                            absolutePath = item;
                        }
                        imagePreviewAdapter2.getImageLoder().loadImg(imagePreviewAdapter2.getContext(), absolutePath, photoView2);
                    }
                } catch (Throwable th2) {
                    TmcLogger.e("onBindView", th2);
                }
                int selectMode = imagePreviewAdapter2.getSelectMode();
                if (selectMode == 1) {
                    TextView checkBox2 = getCheckBox();
                    if (checkBox2 == null) {
                        return;
                    }
                    checkBox2.setVisibility(8);
                    return;
                }
                if (selectMode != 2) {
                    if (selectMode == 3 && (checkBox = getCheckBox()) != null) {
                        checkBox.setVisibility(8);
                        return;
                    }
                    return;
                }
                TextView checkBox3 = getCheckBox();
                if (checkBox3 != null) {
                    checkBox3.setVisibility(0);
                }
                int selectNum = getSelectNum(item);
                if (selectNum != 0) {
                    TextView checkBox4 = getCheckBox();
                    if (checkBox4 != null) {
                        checkBox4.setSelected(true);
                    }
                    TextView checkBox5 = getCheckBox();
                    if (checkBox5 == null) {
                        return;
                    }
                    checkBox5.setText(String.valueOf(selectNum));
                    return;
                }
                TextView checkBox6 = getCheckBox();
                if (checkBox6 != null) {
                    checkBox6.setSelected(false);
                }
                TextView checkBox7 = getCheckBox();
                if (checkBox7 == null) {
                    return;
                }
                checkBox7.setText("");
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImagePreviewAdapter(Context context, List<String> mSelectImages) {
        super(context);
        Intrinsics.h(context, "context");
        Intrinsics.h(mSelectImages, "mSelectImages");
        this.mSelectImages = mSelectImages;
        this.imageLoder$delegate = LazyKt.b(new Function0<ImageLoaderProxy>() { // from class: com.cloud.tmc.miniapp.ui.adapter.ImagePreviewAdapter$imageLoder$2
            @Override // kotlin.jvm.functions.Function0
            public final ImageLoaderProxy invoke() {
                return (ImageLoaderProxy) TmcProxy.get(ImageLoaderProxy.class);
            }
        });
        this.baseResourceManager$delegate = LazyKt.b(new Function0<IResourceProcessor>() { // from class: com.cloud.tmc.miniapp.ui.adapter.ImagePreviewAdapter$baseResourceManager$2
            @Override // kotlin.jvm.functions.Function0
            public final IResourceProcessor invoke() {
                return (IResourceProcessor) TmcProxy.get(IResourceProcessor.class);
            }
        });
        this.selectMode = 1;
    }

    public final IResourceProcessor getBaseResourceManager() {
        Object value = this.baseResourceManager$delegate.getValue();
        Intrinsics.g(value, "<get-baseResourceManager>(...)");
        return (IResourceProcessor) value;
    }

    public final ImageLoaderProxy getImageLoder() {
        Object value = this.imageLoder$delegate.getValue();
        Intrinsics.g(value, "<get-imageLoder>(...)");
        return (ImageLoaderProxy) value;
    }

    public final int getSelectMode() {
        return this.selectMode;
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
