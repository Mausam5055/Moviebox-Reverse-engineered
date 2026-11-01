package com.cloud.tmc.miniapp.ui;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Build;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.cloud.tmc.integration.callback.ISaveImgCallback;
import com.cloud.tmc.integration.callback.OnPhotoSelectListener;
import com.cloud.tmc.integration.utils.AppPrepareUtils;
import com.cloud.tmc.integration.utils.FastClickUtil;
import com.cloud.tmc.integration.utils.FilePathUtils;
import com.cloud.tmc.integration.utils.ImageSaveUtils;
import com.cloud.tmc.integration.utils.MiniBarUtils;
import com.cloud.tmc.integration.utils.ext.FileExtKt;
import com.cloud.tmc.integration.utils.ext.ViewExtKt;
import com.cloud.tmc.integration.utils.share.OnShareListener;
import com.cloud.tmc.integration.utils.share.ShareUtils;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.base.BaseActivity;
import com.cloud.tmc.miniapp.base.BaseAdapter;
import com.cloud.tmc.miniapp.task.OooO00o;
import com.cloud.tmc.miniapp.task.OooO0O0;
import com.cloud.tmc.miniapp.ui.adapter.ImagePreviewAdapter;
import com.cloud.tmc.miniapp.utils.toast.ToastUtils;
import com.cloud.tmc.miniapp.widget.OooO;
import com.cloud.tmc.miniutils.constant.PermissionConstants;
import com.cloud.tmc.miniutils.util.BarUtils;
import com.cloud.tmc.miniutils.util.ImageUtils;
import com.cloud.tmc.miniutils.util.PermissionUtils;
import com.cloud.tmc.miniutils.util.ScreenUtils;
import com.cloud.tmc.miniutils.util.ViewUtils;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@SourceDebugExtension
public final class ImagePreviewActivity extends BaseActivity implements BaseAdapter.OnItemClickListener, BaseAdapter.OnChildClickListener {
    public static final Companion Companion = new Companion(null);
    private static final String IMAGE_LIST = "imageList";
    private static final String IMAGE_MAX_SELECT = "imageMaxSelect";
    private static final String IMAGE_PREVIEW_CURRENT = "current";
    private static final String IMAGE_PREVIEW_SHOW_MENU = "showMenu";
    private static final String IMAGE_SELECT_BACK_PRESSED = "imageBackPressed";
    private static final String IMAGE_SELECT_INDEX = "imageIndex";
    private static final String IMAGE_SELECT_LIST = "imageSelectList";
    private static final String IMAGE_SELECT_POSITION_LIST = "imageSelectPositionList";
    private static final String TAG = "ImagePreviewActivity";
    private int index;
    private final Lazy flTitleBack$delegate = LazyKt.b(new Function0<FrameLayout>() { // from class: com.cloud.tmc.miniapp.ui.ImagePreviewActivity$flTitleBack$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final FrameLayout invoke() {
            return (FrameLayout) this.this$0.findViewById(R.id.fl_title_back);
        }
    });
    private final Lazy tvTitle$delegate = LazyKt.b(new Function0<TextView>() { // from class: com.cloud.tmc.miniapp.ui.ImagePreviewActivity$tvTitle$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final TextView invoke() {
            return (TextView) this.this$0.findViewById(R.id.tv_title);
        }
    });
    private final Lazy tvPreviewTitle$delegate = LazyKt.b(new Function0<TextView>() { // from class: com.cloud.tmc.miniapp.ui.ImagePreviewActivity$tvPreviewTitle$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final TextView invoke() {
            return (TextView) this.this$0.findViewById(R.id.tv_preview_title);
        }
    });
    private final Lazy tvImageSelect$delegate = LazyKt.b(new Function0<TextView>() { // from class: com.cloud.tmc.miniapp.ui.ImagePreviewActivity$tvImageSelect$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final TextView invoke() {
            return (TextView) this.this$0.findViewById(R.id.tv_image_select);
        }
    });
    private final Lazy vpPreviewImage$delegate = LazyKt.b(new Function0<ViewPager2>() { // from class: com.cloud.tmc.miniapp.ui.ImagePreviewActivity$vpPreviewImage$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final ViewPager2 invoke() {
            return (ViewPager2) this.this$0.findViewById(R.id.vp_preview_image);
        }
    });
    private final Lazy linearOperatePanel$delegate = LazyKt.b(new Function0<LinearLayout>() { // from class: com.cloud.tmc.miniapp.ui.ImagePreviewActivity$linearOperatePanel$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final LinearLayout invoke() {
            return (LinearLayout) this.this$0.findViewById(R.id.linear_operate_panel);
        }
    });
    private final Lazy flOperateShare$delegate = LazyKt.b(new Function0<FrameLayout>() { // from class: com.cloud.tmc.miniapp.ui.ImagePreviewActivity$flOperateShare$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final FrameLayout invoke() {
            return (FrameLayout) this.this$0.findViewById(R.id.fl_operate_share);
        }
    });
    private final Lazy flOperateDownload$delegate = LazyKt.b(new Function0<FrameLayout>() { // from class: com.cloud.tmc.miniapp.ui.ImagePreviewActivity$flOperateDownload$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final FrameLayout invoke() {
            return (FrameLayout) this.this$0.findViewById(R.id.fl_operate_download);
        }
    });
    private final Lazy adapter$delegate = LazyKt.b(new Function0<ImagePreviewAdapter>() { // from class: com.cloud.tmc.miniapp.ui.ImagePreviewActivity$adapter$2
        {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final ImagePreviewAdapter invoke() {
            ImagePreviewActivity imagePreviewActivity = this.this$0;
            return new ImagePreviewAdapter(imagePreviewActivity, imagePreviewActivity.selectImage);
        }
    });
    private int selectMode = 1;
    private final Lazy mTaskQueue$delegate = LazyKt.b(new Function0<OooO0O0>() { // from class: com.cloud.tmc.miniapp.ui.ImagePreviewActivity$mTaskQueue$2
        @Override // kotlin.jvm.functions.Function0
        public final OooO0O0 invoke() {
            return new OooO0O0();
        }
    });
    private int maxSelect = 1;
    private final ArrayList<String> selectImage = new ArrayList<>();
    private final ArrayList<Integer> selectPosition = new ArrayList<>();
    private final ViewPager2.OnPageChangeCallback mPageChangeCallback = new ViewPager2.OnPageChangeCallback() { // from class: com.cloud.tmc.miniapp.ui.ImagePreviewActivity$mPageChangeCallback$1
        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i11) {
            super.onPageSelected(i11);
            this.this$0.setIndex(i11);
            TextView tvTitle = this.this$0.getTvTitle();
            if (tvTitle != null) {
                tvTitle.setText((i11 + 1) + "/" + this.this$0.getAdapter().getCount());
            }
            TextView tvPreviewTitle = this.this$0.getTvPreviewTitle();
            if (tvPreviewTitle == null) {
                return;
            }
            tvPreviewTitle.setText((i11 + 1) + "/" + this.this$0.getAdapter().getCount());
        }
    };

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void launch(BaseActivity context, int i11, String url, ArrayList<String> selectList, ArrayList<Integer> positionList, OnPhotoSelectListener onPhotoSelectListener) {
            Intrinsics.h(context, "context");
            Intrinsics.h(url, "url");
            Intrinsics.h(selectList, "selectList");
            Intrinsics.h(positionList, "positionList");
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(url);
            launch(context, i11, arrayList, selectList, positionList, onPhotoSelectListener);
        }

        public final void launch(BaseActivity activity, int i11, ArrayList<String> urls, boolean z10, int i12) {
            Intrinsics.h(activity, "activity");
            Intrinsics.h(urls, "urls");
            Intent intent = new Intent(activity, (Class<?>) ImagePreviewActivity.class);
            intent.putExtra(ImagePreviewActivity.IMAGE_LIST, urls);
            intent.putExtra(ImagePreviewActivity.IMAGE_MAX_SELECT, i11);
            intent.putExtra(ImagePreviewActivity.IMAGE_PREVIEW_SHOW_MENU, z10);
            intent.putExtra(ImagePreviewActivity.IMAGE_PREVIEW_CURRENT, i12);
            intent.putExtra(ImagePreviewActivity.IMAGE_SELECT_INDEX, i12);
            AppPrepareUtils.INSTANCE.addCommonIntentParameter(intent, activity);
            activity.startActivity(intent);
            activity.overridePendingTransition(R.anim.activity_fast_fade_in, R.anim.activity_fast_fade_out);
        }

        public final void launch(BaseActivity context, int i11, List<String> urls, int i12, ArrayList<String> selectList, ArrayList<Integer> positionList, final OnPhotoSelectListener onPhotoSelectListener) {
            Intrinsics.h(context, "context");
            Intrinsics.h(urls, "urls");
            Intrinsics.h(selectList, "selectList");
            Intrinsics.h(positionList, "positionList");
            if (urls.isEmpty()) {
                return;
            }
            Intent intent = new Intent(context, (Class<?>) ImagePreviewActivity.class);
            if (urls.size() > 2000) {
                urls = CollectionsKt.e(urls.get(i12));
            }
            if (urls instanceof ArrayList) {
                intent.putExtra(ImagePreviewActivity.IMAGE_LIST, (Serializable) urls);
            } else {
                intent.putExtra(ImagePreviewActivity.IMAGE_LIST, new ArrayList(urls));
            }
            intent.putExtra(ImagePreviewActivity.IMAGE_SELECT_LIST, selectList);
            intent.putExtra(ImagePreviewActivity.IMAGE_SELECT_INDEX, i12);
            intent.putExtra(ImagePreviewActivity.IMAGE_SELECT_POSITION_LIST, positionList);
            intent.putExtra(ImagePreviewActivity.IMAGE_MAX_SELECT, i11);
            AppPrepareUtils.INSTANCE.addCommonIntentParameter(intent, context);
            context.startActivityForResult(intent, new BaseActivity.OnActivityCallback() { // from class: com.cloud.tmc.miniapp.ui.ImagePreviewActivity$Companion$launch$1
                @Override // com.cloud.tmc.miniapp.base.BaseActivity.OnActivityCallback
                public void onActivityResult(int i13, Intent intent2) {
                    OnPhotoSelectListener onPhotoSelectListener2 = onPhotoSelectListener;
                    if (onPhotoSelectListener2 == null) {
                        return;
                    }
                    if (intent2 == null) {
                        onPhotoSelectListener2.onCancel();
                        return;
                    }
                    ArrayList<String> stringArrayListExtra = intent2.getStringArrayListExtra("imageSelectList");
                    boolean booleanExtra = intent2.getBooleanExtra("imageBackPressed", false);
                    ArrayList<Integer> integerArrayListExtra = intent2.getIntegerArrayListExtra("imageSelectPositionList");
                    if (stringArrayListExtra == null || stringArrayListExtra.isEmpty()) {
                        onPhotoSelectListener.onCancel();
                        return;
                    }
                    Iterator<String> it = stringArrayListExtra.iterator();
                    Intrinsics.g(it, "list.iterator()");
                    while (it.hasNext()) {
                        if (!new File(it.next()).isFile()) {
                            it.remove();
                        }
                    }
                    if (i13 != -1 || stringArrayListExtra.isEmpty()) {
                        onPhotoSelectListener.onCancel();
                    } else {
                        onPhotoSelectListener.onSelected(stringArrayListExtra, integerArrayListExtra, !booleanExtra);
                    }
                }
            });
        }

        public final void launch(BaseActivity context, int i11, List<String> urls, ArrayList<String> selectList, ArrayList<Integer> positionList, OnPhotoSelectListener onPhotoSelectListener) {
            Intrinsics.h(context, "context");
            Intrinsics.h(urls, "urls");
            Intrinsics.h(selectList, "selectList");
            Intrinsics.h(positionList, "positionList");
            launch(context, i11, urls, 0, selectList, positionList, onPhotoSelectListener);
        }
    }

    /* JADX INFO: renamed from: com.cloud.tmc.miniapp.ui.ImagePreviewActivity$loadFile$1, reason: invalid class name and case insensitive filesystem */
    @DebugMetadata(c = "com.cloud.tmc.miniapp.ui.ImagePreviewActivity$loadFile$1", f = "ImagePreviewActivity.kt", l = {}, m = "invokeSuspend")
    public static final class C10361 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        public final /* synthetic */ Function1<File, Unit> $block;
        public final /* synthetic */ String $imagePath;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C10361(String str, Function1<? super File, Unit> function1, Continuation<? super C10361> continuation) {
            super(2, continuation);
            this.$imagePath = str;
            this.$block = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ImagePreviewActivity.this.new C10361(this.$imagePath, this.$block, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((C10361) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            try {
                File fileLoadImgFile = ImagePreviewActivity.this.getAdapter().getImageLoder().loadImgFile(ImagePreviewActivity.this, this.$imagePath);
                if (fileLoadImgFile == null) {
                    this.$block.invoke(null);
                    return Unit.f67061a;
                }
                String strD1 = StringsKt.d1(StringsKt.n1(this.$imagePath).toString(), "/", "");
                if (StringsKt.c1(strD1, '.', "").length() == 0) {
                    strD1 = "IMG_" + System.currentTimeMillis() + ".png";
                }
                File file = new File(new File(ImagePreviewActivity.this.getCacheDir(), "downloadFile"), strD1);
                if (file.exists()) {
                    FileExtKt.getDelete(file);
                }
                boolean zMoveTo$default = FileExtKt.moveTo$default(fileLoadImgFile, file, false, false, 6, null);
                Function1<File, Unit> function1 = this.$block;
                if (!zMoveTo$default) {
                    file = null;
                }
                function1.invoke(file);
                return Unit.f67061a;
            } catch (Throwable th2) {
                TmcLogger.e(ImagePreviewActivity.TAG, th2);
                this.$block.invoke(null);
            }
        }
    }

    /* JADX INFO: renamed from: com.cloud.tmc.miniapp.ui.ImagePreviewActivity$systemShare$1, reason: invalid class name and case insensitive filesystem */
    public static final class C10371 implements OnShareListener {
        public C10371() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onShare$lambda$0() {
            ToastUtils.showToast$default(R.string.mini_image_select_shared_success, 0, 0L, false, 14, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void onShare$lambda$1() {
            ToastUtils.showToast$default(R.string.mini_image_select_shared_failed, 0, 0L, false, 14, null);
        }

        @Override // com.cloud.tmc.integration.utils.share.OnShareListener
        public void onShare(int i11, int i12) {
            if (i12 == 1) {
                TmcLogger.d(ImagePreviewActivity.TAG, "Share file successfully");
                ImagePreviewActivity.this.getMTaskQueue().OooO00o(new OooO00o("share", new Runnable() { // from class: com.cloud.tmc.miniapp.ui.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImagePreviewActivity.C10371.onShare$lambda$0();
                    }
                }));
            } else {
                TmcLogger.d(ImagePreviewActivity.TAG, "Share file failed");
                ImagePreviewActivity.this.getMTaskQueue().OooO00o(new OooO00o("share", new Runnable() { // from class: com.cloud.tmc.miniapp.ui.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImagePreviewActivity.C10371.onShare$lambda$1();
                    }
                }));
            }
        }
    }

    private final void changeSelectTv() {
        String string;
        if (this.selectImage.isEmpty()) {
            TextView tvImageSelect = getTvImageSelect();
            if (tvImageSelect != null) {
                tvImageSelect.setText(getString(R.string.mini_image_select_done));
            }
            TextView tvImageSelect2 = getTvImageSelect();
            if (tvImageSelect2 != null) {
                tvImageSelect2.setTextColor(androidx.core.content.b.getColor(this, R.color.mini_color_505358));
                return;
            }
            return;
        }
        TextView tvImageSelect3 = getTvImageSelect();
        if (tvImageSelect3 != null) {
            if (this.maxSelect == 1) {
                string = getString(R.string.mini_image_select_done);
            } else {
                StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
                String string2 = getString(R.string.mini_image_select_mutiple_done);
                Intrinsics.g(string2, "getString(R.string.mini_image_select_mutiple_done)");
                string = String.format(string2, Arrays.copyOf(new Object[]{String.valueOf(this.selectImage.size()), String.valueOf(this.maxSelect)}, 2));
                Intrinsics.g(string, "format(format, *args)");
            }
            tvImageSelect3.setText(string);
        }
        TextView tvImageSelect4 = getTvImageSelect();
        if (tvImageSelect4 != null) {
            tvImageSelect4.setTextColor(androidx.core.content.b.getColor(this, R.color.mini_color_white));
        }
    }

    private final void doDownloadFile() {
        String currentImageUrl = getCurrentImageUrl();
        if (currentImageUrl != null) {
            loadFile(currentImageUrl, new Function1<File, Unit>() { // from class: com.cloud.tmc.miniapp.ui.ImagePreviewActivity.doDownloadFile.1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((File) obj);
                    return Unit.f67061a;
                }

                public final void invoke(File file) {
                    Bitmap.CompressFormat compressFormat;
                    if (file == null) {
                        TmcLogger.d(ImagePreviewActivity.TAG, "doDownloadFile file is null");
                        ToastUtils.showToast$default(R.string.mini_image_select_save_failed, 0, 0L, false, 14, null);
                        return;
                    }
                    Bitmap bitmap = ImageUtils.getBitmap(file);
                    String strW = FilesKt.w(file);
                    if (Intrinsics.c(strW, "png")) {
                        compressFormat = Bitmap.CompressFormat.PNG;
                    } else if (Intrinsics.c(strW, "webp")) {
                        compressFormat = Build.VERSION.SDK_INT >= 30 ? Bitmap.CompressFormat.WEBP_LOSSLESS : Bitmap.CompressFormat.WEBP;
                    } else {
                        compressFormat = Bitmap.CompressFormat.JPEG;
                    }
                    ImageSaveUtils.saveImage(bitmap, new ISaveImgCallback() { // from class: com.cloud.tmc.miniapp.ui.ImagePreviewActivity.doDownloadFile.1.1
                        @Override // com.cloud.tmc.integration.callback.ISaveImgCallback
                        public void onFail(int i11, String str) {
                            ToastUtils.showToast$default(R.string.mini_image_select_save_failed, 0, 0L, false, 14, null);
                            TmcLogger.d(ImagePreviewActivity.TAG, i11 + " -> " + str);
                        }

                        @Override // com.cloud.tmc.integration.callback.ISaveImgCallback
                        public void onSuccess(File file2) {
                            ToastUtils.showToast$default(R.string.mini_image_select_save_success, 0, 0L, false, 14, null);
                        }
                    }, compressFormat);
                }
            });
        } else {
            TmcLogger.d(TAG, "doDownloadFile imagePath is null");
            ToastUtils.showToast$default(R.string.mini_image_select_save_failed, 0, 0L, false, 14, null);
        }
    }

    private final void doShareFile() {
        String currentImageUrl = getCurrentImageUrl();
        if (currentImageUrl != null) {
            loadFile(currentImageUrl, new Function1<File, Unit>() { // from class: com.cloud.tmc.miniapp.ui.ImagePreviewActivity.doShareFile.1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((File) obj);
                    return Unit.f67061a;
                }

                public final void invoke(final File file) {
                    if (file == null) {
                        TmcLogger.d(ImagePreviewActivity.TAG, "doShareFile file is null");
                        ToastUtils.showToast$default(R.string.mini_image_select_shared_failed, 0, 0L, false, 14, null);
                    } else {
                        PermissionUtils permissionUtilsPermissionGroup = PermissionUtils.permissionGroup(PermissionConstants.STORAGE_WRITE);
                        final ImagePreviewActivity imagePreviewActivity = ImagePreviewActivity.this;
                        permissionUtilsPermissionGroup.callback(new PermissionUtils.SimpleCallback() { // from class: com.cloud.tmc.miniapp.ui.ImagePreviewActivity.doShareFile.1.1
                            @Override // com.cloud.tmc.miniutils.util.PermissionUtils.SimpleCallback
                            public void onDenied() {
                                TmcLogger.d(ImagePreviewActivity.TAG, "doShareFile onDenied");
                                ToastUtils.showToast$default(R.string.mini_image_select_shared_failed, 0, 0L, false, 14, null);
                            }

                            @Override // com.cloud.tmc.miniutils.util.PermissionUtils.SimpleCallback
                            public void onGranted() {
                                imagePreviewActivity.systemShare(file);
                            }
                        }).request();
                    }
                }
            });
        } else {
            TmcLogger.d(TAG, "doShareFile imagePath is null");
            ToastUtils.showToast$default(R.string.mini_image_select_shared_failed, 0, 0L, false, 14, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ImagePreviewAdapter getAdapter() {
        return (ImagePreviewAdapter) this.adapter$delegate.getValue();
    }

    private final String getCurrentImageUrl() {
        String str;
        try {
            List<String> data = getAdapter().getData();
            if (this.index >= data.size() || (str = data.get(this.index)) == null) {
                return null;
            }
            if (!StringsKt.c0(str, ".miniapp.transsion.com", false, 2, null)) {
                return str;
            }
            String appIdFormVurl = FilePathUtils.INSTANCE.getAppIdFormVurl(str);
            if (appIdFormVurl == null) {
                appIdFormVurl = "";
            }
            File file = getAdapter().getBaseResourceManager().get(str, appIdFormVurl);
            if (file != null) {
                return file.getAbsolutePath();
            }
            return null;
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
        }
        return null;
    }

    private final FrameLayout getFlOperateDownload() {
        return (FrameLayout) this.flOperateDownload$delegate.getValue();
    }

    private final FrameLayout getFlOperateShare() {
        return (FrameLayout) this.flOperateShare$delegate.getValue();
    }

    private final FrameLayout getFlTitleBack() {
        return (FrameLayout) this.flTitleBack$delegate.getValue();
    }

    private final LinearLayout getLinearOperatePanel() {
        return (LinearLayout) this.linearOperatePanel$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final OooO0O0 getMTaskQueue() {
        return (OooO0O0) this.mTaskQueue$delegate.getValue();
    }

    private final TextView getTvImageSelect() {
        return (TextView) this.tvImageSelect$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView getTvPreviewTitle() {
        return (TextView) this.tvPreviewTitle$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView getTvTitle() {
        return (TextView) this.tvTitle$delegate.getValue();
    }

    private final ViewPager2 getVpPreviewImage() {
        return (ViewPager2) this.vpPreviewImage$delegate.getValue();
    }

    private final void loadFile(String str, Function1<? super File, Unit> function1) {
        kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.b()), null, null, new C10361(str, function1, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void systemShare(File file) {
        ShareUtils.shareFile(this, file, (60 & 4) != 0 ? null : null, (60 & 8) != 0 ? null : null, (60 & 16) != 0 ? null : null, (60 & 32) != 0 ? false : false, (60 & 64) == 0 ? new C10371() : null);
    }

    public final int getIndex() {
        return this.index;
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity
    public int getLayoutId() {
        return R.layout.activity_image_preview;
    }

    public final int getMaxSelect() {
        return this.maxSelect;
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity
    public void hideStatusLoading() {
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity
    public void initData() {
        int i11;
        ViewPager2 vpPreviewImage;
        ArrayList<String> stringArrayList = getStringArrayList(IMAGE_LIST);
        ArrayList<String> stringArrayList2 = getStringArrayList(IMAGE_SELECT_LIST);
        ArrayList<Integer> integerArrayList = getIntegerArrayList(IMAGE_SELECT_POSITION_LIST);
        boolean z10 = getBoolean(IMAGE_PREVIEW_SHOW_MENU, false);
        if (stringArrayList2 != null) {
            this.selectImage.addAll(stringArrayList2);
        }
        if (integerArrayList != null) {
            this.selectPosition.addAll(integerArrayList);
        }
        this.maxSelect = getInt(IMAGE_MAX_SELECT);
        ScreenUtils.setFullScreen(this);
        int i12 = this.maxSelect;
        if (i12 == 0) {
            BarUtils.setNavBarVisibility((Activity) this, false);
            BarUtils.setStatusBarVisibility((Activity) this, false);
            TextView tvImageSelect = getTvImageSelect();
            if (tvImageSelect != null) {
                tvImageSelect.setVisibility(4);
            }
            FrameLayout flTitleBack = getFlTitleBack();
            if (flTitleBack != null) {
                flTitleBack.setVisibility(4);
            }
            TextView tvPreviewTitle = getTvPreviewTitle();
            if (tvPreviewTitle != null) {
                tvPreviewTitle.setVisibility(0);
            }
            i11 = 3;
        } else if (i12 != 1) {
            MiniBarUtils.setStatusBarNightMode(this);
            i11 = 2;
        } else {
            MiniBarUtils.setStatusBarNightMode(this);
            i11 = 1;
        }
        this.selectMode = i11;
        getAdapter().setSelectMode(this.selectMode);
        if (stringArrayList == null || stringArrayList.isEmpty()) {
            finish();
            return;
        }
        getAdapter().setData(stringArrayList);
        getAdapter().setOnItemClickListener(this);
        getAdapter().setOnChildClickListener(R.id.fl_image_select_check, this);
        ViewPager2 vpPreviewImage2 = getVpPreviewImage();
        if (vpPreviewImage2 != null) {
            vpPreviewImage2.setAdapter(getAdapter());
        }
        if (stringArrayList.size() != 1) {
            if (this.selectMode == 3) {
                TextView tvTitle = getTvTitle();
                if (tvTitle != null) {
                    tvTitle.setVisibility(4);
                }
                TextView tvPreviewTitle2 = getTvPreviewTitle();
                if (tvPreviewTitle2 != null) {
                    tvPreviewTitle2.setVisibility(0);
                }
            } else {
                TextView tvPreviewTitle3 = getTvPreviewTitle();
                if (tvPreviewTitle3 != null) {
                    tvPreviewTitle3.setVisibility(4);
                }
                TextView tvTitle2 = getTvTitle();
                if (tvTitle2 != null) {
                    tvTitle2.setVisibility(0);
                }
            }
            ViewPager2 vpPreviewImage3 = getVpPreviewImage();
            if (vpPreviewImage3 != null) {
                vpPreviewImage3.registerOnPageChangeCallback(this.mPageChangeCallback);
            }
            int i13 = getInt(IMAGE_SELECT_INDEX);
            this.index = i13;
            if (i13 < stringArrayList.size() && (vpPreviewImage = getVpPreviewImage()) != null) {
                vpPreviewImage.setCurrentItem(this.index, false);
            }
        }
        if (this.selectMode == 1) {
            TextView tvImageSelect2 = getTvImageSelect();
            if (tvImageSelect2 != null) {
                tvImageSelect2.setTextColor(androidx.core.content.b.getColor(this, R.color.mini_color_white));
            }
        } else {
            changeSelectTv();
        }
        LinearLayout linearOperatePanel = getLinearOperatePanel();
        if (linearOperatePanel != null) {
            ViewExtKt.toVisibleOrGone(linearOperatePanel, z10);
        }
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity
    public void initView() {
        ViewPager2 vpPreviewImage = getVpPreviewImage();
        if (vpPreviewImage != null) {
            vpPreviewImage.setOffscreenPageLimit(3);
        }
        FrameLayout flTitleBack = getFlTitleBack();
        if (flTitleBack != null) {
            flTitleBack.setRotationY(ViewUtils.isLayoutRtl() ? 180.0f : 0.0f);
        }
        setOnClickListener(getFlTitleBack(), getTvImageSelect(), getFlOperateShare(), getFlOperateDownload());
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.selectMode == 2) {
            Intent intent = new Intent();
            intent.putStringArrayListExtra(IMAGE_SELECT_LIST, this.selectImage);
            intent.putIntegerArrayListExtra(IMAGE_SELECT_POSITION_LIST, this.selectPosition);
            intent.putExtra(IMAGE_SELECT_BACK_PRESSED, true);
            setResult(-1, intent);
        }
        finish();
    }

    @Override // com.cloud.tmc.miniapp.base.BaseAdapter.OnChildClickListener
    public void onChildClick(RecyclerView recyclerView, View view, int i11) {
        String item;
        int i12 = 0;
        if (this.selectMode == 1 || view == null || view.getId() != R.id.fl_image_select_check || (item = getAdapter().getItem(i11)) == null) {
            return;
        }
        if (!new File(item).isFile()) {
            getAdapter().removeItem(i11);
            String string = getResources().getString(R.string.image_select_error);
            Intrinsics.g(string, "resources.getString(R.string.image_select_error)");
            OooO.OooO0O0(string);
            return;
        }
        int iIndexOf = this.selectImage.indexOf(item);
        if (iIndexOf < 0) {
            if (this.selectImage.size() < this.maxSelect) {
                if (this.selectImage.size() < this.maxSelect) {
                    this.selectImage.add(item);
                    this.selectPosition.add(Integer.valueOf(i11));
                    changeSelectTv();
                }
                getAdapter().notifyItemChanged(i11);
                return;
            }
            StringCompanionObject stringCompanionObject = StringCompanionObject.f67289a;
            String string2 = getResources().getString(R.string.image_select_max_hint);
            Intrinsics.g(string2, "resources.getString(R.st…ng.image_select_max_hint)");
            String str = String.format(string2, Arrays.copyOf(new Object[]{String.valueOf(this.maxSelect)}, 1));
            Intrinsics.g(str, "format(format, *args)");
            OooO.OooO00o(str);
            return;
        }
        this.selectPosition.remove(Integer.valueOf(i11));
        this.selectImage.remove(item);
        changeSelectTv();
        getAdapter().notifyItemChanged(i11);
        for (Object obj : this.selectPosition) {
            int i13 = i12 + 1;
            if (i12 < 0) {
                CollectionsKt.u();
            }
            Integer num = (Integer) obj;
            if (i12 >= iIndexOf && num != null) {
                getAdapter().notifyItemChanged(num.intValue());
            }
            i12 = i13;
        }
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity, com.cloud.tmc.miniapp.action.ClickAction, android.view.View.OnClickListener
    public void onClick(View view) {
        Intrinsics.h(view, "view");
        if (FastClickUtil.isFastDoubleClick()) {
            return;
        }
        if (Intrinsics.c(view, getFlTitleBack())) {
            onBackPressed();
            return;
        }
        if (!Intrinsics.c(view, getTvImageSelect())) {
            if (Intrinsics.c(view, getFlOperateShare())) {
                doShareFile();
                return;
            } else {
                if (Intrinsics.c(view, getFlOperateDownload())) {
                    doDownloadFile();
                    return;
                }
                return;
            }
        }
        if (this.selectMode != 1) {
            if (this.selectImage.size() > 0) {
                Intent intent = new Intent();
                intent.putStringArrayListExtra(IMAGE_SELECT_LIST, this.selectImage);
                setResult(-1, intent);
                finish();
                return;
            }
            return;
        }
        if (this.index < getAdapter().getData().size()) {
            this.selectImage.add(getAdapter().getData().get(this.index));
            Intent intent2 = new Intent();
            intent2.putStringArrayListExtra(IMAGE_SELECT_LIST, this.selectImage);
            setResult(-1, intent2);
            finish();
        }
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        getMTaskQueue().OooO00o.clear();
        ViewPager2 vpPreviewImage = getVpPreviewImage();
        if (vpPreviewImage != null) {
            vpPreviewImage.unregisterOnPageChangeCallback(this.mPageChangeCallback);
        }
    }

    @Override // com.cloud.tmc.miniapp.base.BaseAdapter.OnItemClickListener
    public void onItemClick(RecyclerView recyclerView, View view, int i11) {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        finish();
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        getMTaskQueue().OooO00o();
    }

    public final void setIndex(int i11) {
        this.index = i11;
    }

    public final void setMaxSelect(int i11) {
        this.maxSelect = i11;
    }

    @Override // com.cloud.tmc.miniapp.base.BaseActivity
    public void showStatusLoading() {
    }
}
