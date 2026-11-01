package com.transsion.ninegridview.video;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.transsion.moviedetailapi.bean.GifBean;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.ninegridview.R$id;
import com.transsion.ninegridview.R$styleable;
import com.transsion.ninegridview.c;
import com.transsion.ninegridview.video.NineGridVideoView;
import com.transsion.player.ui.ORPlayerView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import pn.b;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\f\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0010!\n\u0002\b\u0014\u0018\u0000 o2\u00020\u0001:\u0001FB!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\nB\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\u000bJ\u001f\u0010\u000f\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J'\u0010\u0012\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J'\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J'\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001a\u0010\u0019J'\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001b\u0010\u0019J\u001f\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001c\u0010\u001dJG\u0010&\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\u0006H\u0002¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u0017H\u0002¢\u0006\u0004\b(\u0010)J\u0019\u0010+\u001a\u0004\u0018\u00010\u001e2\u0006\u0010*\u001a\u00020\u0006H\u0002¢\u0006\u0004\b+\u0010,J\u0017\u0010.\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u0006H\u0002¢\u0006\u0004\b.\u0010/J\u0017\u00100\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u0006H\u0002¢\u0006\u0004\b0\u0010/J\u001f\u00103\u001a\u00020\u00172\u0006\u00101\u001a\u00020\u00062\u0006\u00102\u001a\u00020\u0006H\u0014¢\u0006\u0004\b3\u00104J7\u00109\u001a\u00020\u00172\u0006\u00106\u001a\u0002052\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u00107\u001a\u00020\u00062\u0006\u00108\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0006H\u0014¢\u0006\u0004\b9\u0010:J\r\u0010;\u001a\u000205¢\u0006\u0004\b;\u0010<J\u0015\u0010>\u001a\u0002052\u0006\u0010=\u001a\u00020\u0006¢\u0006\u0004\b>\u0010?J\u0015\u0010B\u001a\u00020\u00172\u0006\u0010A\u001a\u00020@¢\u0006\u0004\bB\u0010CJ\r\u0010D\u001a\u00020\u0017¢\u0006\u0004\bD\u0010)R\u001e\u0010H\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010E8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010GR\"\u0010N\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR\"\u0010Q\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010I\u001a\u0004\bO\u0010K\"\u0004\bP\u0010MR\"\u0010X\u001a\u00020R8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010S\u001a\u0004\bT\u0010U\"\u0004\bV\u0010WR\"\u0010[\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010I\u001a\u0004\bY\u0010K\"\u0004\bZ\u0010MR\u001c\u0010]\u001a\b\u0012\u0004\u0012\u00020\u001e0\\8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010GR\u0016\u0010\u0016\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u0010IR\u0016\u0010^\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010IR\u0016\u0010_\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010IR\u0016\u0010`\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010IR\u0016\u0010a\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010IR\u0016\u0010b\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010IR\u0016\u0010c\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010IR\u0016\u0010e\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010IR\u0014\u0010g\u001a\u00020R8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bf\u0010SR\u0014\u0010i\u001a\u00020R8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bh\u0010SR\u0018\u0010l\u001a\u0004\u0018\u00010@8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bj\u0010kR\u0016\u0010n\u001a\u0002058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u0010m¨\u0006p"}, d2 = {"Lcom/transsion/ninegridview/video/NineGridVideoView;", "Landroid/view/ViewGroup;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "(Landroid/content/Context;)V", "Lcom/transsion/moviedetailapi/bean/Image;", "image1", "image2", CampaignEx.JSON_KEY_AD_K, "(Lcom/transsion/moviedetailapi/bean/Image;Lcom/transsion/moviedetailapi/bean/Image;)Lcom/transsion/moviedetailapi/bean/Image;", "image3", "l", "(Lcom/transsion/moviedetailapi/bean/Image;Lcom/transsion/moviedetailapi/bean/Image;Lcom/transsion/moviedetailapi/bean/Image;)Lcom/transsion/moviedetailapi/bean/Image;", "image", "totalWidth", "columnCount", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Lcom/transsion/moviedetailapi/bean/Image;II)V", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "f", "(II)I", "Lcom/transsion/ninegridview/video/NineGridItemView;", "itemView", TtmlNode.LEFT, IntegrationConstants.TAB_BAR_POSITION_TOP, TtmlNode.RIGHT, IntegrationConstants.TAB_BAR_POSITION_DEFAULT, "gridWidth", "gridHeight", "m", "(Lcom/transsion/ninegridview/video/NineGridItemView;IIIIII)V", "e", "()V", RequestParameters.POSITION, "h", "(I)Lcom/transsion/ninegridview/video/NineGridItemView;", "i", "j", "(I)I", "g", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "", "changed", "t", CampaignEx.JSON_KEY_AD_R, "onLayout", "(ZIIII)V", "hasGifVisible", "()Z", "innerPlayPos", "currentGifVisible", "(I)Z", "Lcom/transsion/ninegridview/video/NineGridVideoViewAdapter;", "adapter", "setAdapter", "(Lcom/transsion/ninegridview/video/NineGridVideoViewAdapter;)V", "loadImage", "", "a", "Ljava/util/List;", "imageList", "I", "getGridSpacing", "()I", "setGridSpacing", "(I)V", "gridSpacing", "getSingleImageSize", "setSingleImageSize", "singleImageSize", "", "F", "getSingleImageRatio", "()F", "setSingleImageRatio", "(F)V", "singleImageRatio", "getMaxImageSize", "setMaxImageSize", "maxImageSize", "", "itemViewList", "rowCount", "gridWidth1", "gridHeight1", "gridWidth2", "gridHeight2", "gridWidth3", "n", "gridHeight3", "o", "ratioMax", TtmlNode.TAG_P, "ratioMin", CampaignEx.JSON_KEY_AD_Q, "Lcom/transsion/ninegridview/video/NineGridVideoViewAdapter;", "mAdapter", "Z", "enableClick", "Companion", "NineGridView_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class NineGridVideoView extends ViewGroup {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static b f47746s = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private List imageList;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private int gridSpacing;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private int singleImageSize;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private float singleImageRatio;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    private int maxImageSize;

    /* JADX INFO: renamed from: f, reason: collision with root package name and from kotlin metadata */
    private List itemViewList;

    /* JADX INFO: renamed from: g, reason: collision with root package name and from kotlin metadata */
    private int columnCount;

    /* JADX INFO: renamed from: h, reason: collision with root package name and from kotlin metadata */
    private int rowCount;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    private int gridWidth1;

    /* JADX INFO: renamed from: j, reason: collision with root package name and from kotlin metadata */
    private int gridHeight1;

    /* JADX INFO: renamed from: k, reason: collision with root package name and from kotlin metadata */
    private int gridWidth2;

    /* JADX INFO: renamed from: l, reason: collision with root package name and from kotlin metadata */
    private int gridHeight2;

    /* JADX INFO: renamed from: m, reason: collision with root package name and from kotlin metadata */
    private int gridWidth3;

    /* JADX INFO: renamed from: n, reason: collision with root package name and from kotlin metadata */
    private int gridHeight3;

    /* JADX INFO: renamed from: o, reason: collision with root package name and from kotlin metadata */
    private final float ratioMax;

    /* JADX INFO: renamed from: p, reason: collision with root package name and from kotlin metadata */
    private final float ratioMin;

    /* JADX INFO: renamed from: q, reason: collision with root package name and from kotlin metadata */
    private NineGridVideoViewAdapter mAdapter;

    /* JADX INFO: renamed from: r, reason: collision with root package name and from kotlin metadata */
    private boolean enableClick;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NineGridVideoView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NineGridVideoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NineGridVideoView(Context context, AttributeSet attributeSet, int i11) {
        super(context, attributeSet, i11);
        Intrinsics.h(context, "context");
        this.gridSpacing = 4;
        this.singleImageSize = 250;
        this.singleImageRatio = 1.0f;
        this.maxImageSize = 9;
        this.itemViewList = new ArrayList();
        this.ratioMax = 2.1111112f;
        this.ratioMin = 0.75f;
        this.enableClick = true;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        this.gridSpacing = (int) TypedValue.applyDimension(1, this.gridSpacing, displayMetrics);
        this.singleImageSize = (int) TypedValue.applyDimension(1, this.singleImageSize, displayMetrics);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.NineGridView);
        Intrinsics.g(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        this.gridSpacing = (int) typedArrayObtainStyledAttributes.getDimension(R$styleable.NineGridView_ngv_gridSpacing, this.gridSpacing);
        this.singleImageSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.NineGridView_ngv_singleImageSize, this.singleImageSize);
        this.singleImageRatio = typedArrayObtainStyledAttributes.getFloat(R$styleable.NineGridView_ngv_singleImageRatio, this.singleImageRatio);
        this.maxImageSize = typedArrayObtainStyledAttributes.getInt(R$styleable.NineGridView_ngv_maxSize, this.maxImageSize);
        this.enableClick = typedArrayObtainStyledAttributes.getBoolean(R$styleable.NineGridView_enable_click, true);
        typedArrayObtainStyledAttributes.recycle();
        setId(R$id.nine_grid);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002c A[PHI: r2
  0x002c: PHI (r2v2 float) = (r2v0 float), (r2v1 float) binds: [B:13:0x002a, B:16:0x0034] A[DONT_GENERATE, DONT_INLINE]] */
    private final void b(Image image, int totalWidth, int columnCount) {
        int i11;
        Integer width = image.getWidth();
        int iIntValue = width != null ? width.intValue() : 0;
        Integer height = image.getHeight();
        int iIntValue2 = height != null ? height.intValue() : 0;
        if (iIntValue <= 0 || iIntValue2 <= 0) {
            return;
        }
        int iF = f(totalWidth, columnCount);
        this.gridWidth1 = iF;
        float f11 = iIntValue / iIntValue2;
        float f12 = this.ratioMax;
        if (f11 > f12) {
            i11 = (int) (iF / f12);
        } else {
            f12 = this.ratioMin;
            if (f11 < f12) {
                i11 = (int) (iF / f12);
            } else {
                i11 = (int) (((iF * 1.0f) / iIntValue) * iIntValue2);
            }
        }
        this.gridHeight1 = i11;
        this.gridHeight2 = 0;
        this.gridHeight3 = 0;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002c A[PHI: r2
  0x002c: PHI (r2v2 float) = (r2v0 float), (r2v1 float) binds: [B:13:0x002a, B:16:0x0034] A[DONT_GENERATE, DONT_INLINE]] */
    private final void c(Image image, int totalWidth, int columnCount) {
        int i11;
        Integer width = image.getWidth();
        int iIntValue = width != null ? width.intValue() : 0;
        Integer height = image.getHeight();
        int iIntValue2 = height != null ? height.intValue() : 0;
        if (iIntValue <= 0 || iIntValue2 <= 0) {
            return;
        }
        int iF = f(totalWidth, columnCount);
        this.gridWidth2 = iF;
        float f11 = iIntValue / iIntValue2;
        float f12 = this.ratioMax;
        if (f11 > f12) {
            i11 = (int) (iF / f12);
        } else {
            f12 = this.ratioMin;
            if (f11 < f12) {
                i11 = (int) (iF / f12);
            } else {
                i11 = (int) (((iF * 1.0f) / iIntValue) * iIntValue2);
            }
        }
        this.gridHeight2 = i11;
        this.gridHeight3 = 0;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x002a A[PHI: r6
  0x002a: PHI (r6v3 float) = (r6v1 float), (r6v2 float) binds: [B:12:0x0028, B:16:0x0032] A[DONT_GENERATE, DONT_INLINE]] */
    private final void d(Image image, int totalWidth, int columnCount) {
        float f11;
        Integer width = image.getWidth();
        int iIntValue = width != null ? width.intValue() : 0;
        Integer height = image.getHeight();
        int iIntValue2 = height != null ? height.intValue() : 0;
        if (iIntValue <= 0 || iIntValue2 <= 0) {
            return;
        }
        int iF = f(totalWidth, columnCount);
        this.gridWidth3 = iF;
        float f12 = iIntValue / iIntValue2;
        float f13 = this.ratioMax;
        if (f12 > f13) {
            f11 = iF / f13;
        } else {
            f13 = this.ratioMin;
            if (f12 < f13) {
                f11 = iF / f13;
            } else {
                f11 = ((iF * 1.0f) / iIntValue) * iIntValue2;
            }
        }
        this.gridHeight3 = (int) f11;
    }

    private final void e() {
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt != null && (childAt instanceof NineGridItemView)) {
                FrameLayout frameLayout = (FrameLayout) childAt.findViewById(R$id.video_container);
                if (frameLayout != null) {
                    frameLayout.removeAllViews();
                }
                ShapeableImageView shapeableImageView = (ShapeableImageView) childAt.findViewById(R$id.video_cover);
                if (shapeableImageView != null) {
                    jg.c.k(shapeableImageView);
                    shapeableImageView.setImageResource(0);
                }
                AppCompatImageView appCompatImageView = (AppCompatImageView) childAt.findViewById(R$id.label_gif);
                if (appCompatImageView != null) {
                    jg.c.g(appCompatImageView);
                }
            }
        }
    }

    private final int f(int totalWidth, int columnCount) {
        return (totalWidth - (this.gridSpacing * (columnCount - 1))) / columnCount;
    }

    private final int g(int i11) {
        List list = this.imageList;
        if (list != null) {
            switch (list.size()) {
                case 1:
                case 2:
                case 6:
                case 9:
                    return i11 % 3;
                case 3:
                case 4:
                    return i11 % 2 == 0 ? 0 : 1;
                case 5:
                    return i11 < 3 ? i11 % 2 : (i11 - 1) % 2;
                case 7:
                    return i11 < 4 ? i11 % 3 : (i11 - 1) % 3;
                case 8:
                    return i11 < 5 ? i11 % 3 : (i11 - 2) % 3;
            }
        }
        return 0;
    }

    private final NineGridItemView h(final int position) {
        NineGridVideoViewAdapter nineGridVideoViewAdapter = this.mAdapter;
        if (nineGridVideoViewAdapter == null) {
            return null;
        }
        if (position >= this.itemViewList.size()) {
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            final NineGridItemView nineGridItemViewGenerateItemView = nineGridVideoViewAdapter.generateItemView(context);
            if (this.enableClick) {
                nineGridItemViewGenerateItemView.setOnClickListener(new View.OnClickListener() { // from class: qn.c
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        NineGridVideoView.i(this.f73656a, nineGridItemViewGenerateItemView, position, view);
                    }
                });
                this.itemViewList.add(nineGridItemViewGenerateItemView);
            }
            return nineGridItemViewGenerateItemView;
        }
        NineGridItemView nineGridItemView = (NineGridItemView) this.itemViewList.get(position);
        FrameLayout frameLayout = (FrameLayout) nineGridItemView.findViewById(R$id.video_container);
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        ShapeableImageView shapeableImageView = (ShapeableImageView) nineGridItemView.findViewById(R$id.video_cover);
        if (shapeableImageView != null) {
            shapeableImageView.setImageResource(0);
            jg.c.k(shapeableImageView);
        }
        AppCompatImageView appCompatImageView = (AppCompatImageView) nineGridItemView.findViewById(R$id.label_gif);
        if (appCompatImageView == null) {
            return nineGridItemView;
        }
        jg.c.g(appCompatImageView);
        return nineGridItemView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(NineGridVideoView nineGridVideoView, NineGridItemView nineGridItemView, int i11, View view) {
        NineGridVideoViewAdapter nineGridVideoViewAdapter = nineGridVideoView.mAdapter;
        if (nineGridVideoViewAdapter != null) {
            Context context = nineGridItemView.getContext();
            Intrinsics.g(context, "getContext(...)");
            NineGridVideoViewAdapter nineGridVideoViewAdapter2 = nineGridVideoView.mAdapter;
            nineGridVideoViewAdapter.onItemClick(context, nineGridVideoView, i11, nineGridVideoViewAdapter2 != null ? nineGridVideoViewAdapter2.getImageList() : null);
        }
    }

    private final int j(int i11) {
        List list = this.imageList;
        if (list == null) {
            return 0;
        }
        switch (list.size()) {
            case 1:
            case 2:
                return 1;
            case 3:
            case 4:
                return i11 < 2 ? 1 : 2;
            case 5:
                if (i11 < 2) {
                    return 1;
                }
                return i11 == 2 ? 2 : 3;
            case 6:
                return i11 < 3 ? 1 : 2;
            case 7:
                if (i11 < 3) {
                    return 1;
                }
                return i11 == 3 ? 2 : 3;
            case 8:
                if (i11 < 3) {
                    return 1;
                }
                return (3 > i11 || i11 >= 5) ? 3 : 2;
            case 9:
                if (i11 < 3) {
                    return 1;
                }
                return (3 > i11 || i11 >= 6) ? 3 : 2;
            default:
                return 0;
        }
    }

    private final Image k(Image image1, Image image2) {
        Integer height = image1.getHeight();
        int iIntValue = height != null ? height.intValue() : 0;
        Integer height2 = image2.getHeight();
        return iIntValue <= (height2 != null ? height2.intValue() : 0) ? image1 : image2;
    }

    private final Image l(Image image1, Image image2, Image image3) {
        return k(k(image1, image2), image3);
    }

    private final void m(NineGridItemView itemView, int left, int top, int right, int bottom, int gridWidth, int gridHeight) {
        itemView.layout(left, top, right, bottom);
        ((ShapeableImageView) itemView.findViewById(R$id.video_cover)).layout(0, 0, gridWidth, gridHeight);
        ((FrameLayout) itemView.findViewById(R$id.video_container)).layout(0, 0, gridWidth, gridHeight);
        ORPlayerView oRPlayerView = (ORPlayerView) itemView.findViewById(R$id.player_view);
        if (oRPlayerView != null) {
            oRPlayerView.layout(0, 0, gridWidth, gridHeight);
        }
    }

    public final boolean currentGifVisible(int innerPlayPos) {
        String videoUrl;
        List list = this.imageList;
        if (list != null) {
            int i11 = 0;
            for (Object obj : list) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                GifBean gifBean = ((Image) obj).getGifBean();
                if (gifBean != null && (videoUrl = gifBean.getVideoUrl()) != null && videoUrl.length() > 0 && innerPlayPos == i11) {
                    View childAt = getChildAt(i11);
                    Rect rect = new Rect();
                    if (!Intrinsics.c(childAt != null ? Boolean.valueOf(childAt.getGlobalVisibleRect(rect)) : null, Boolean.TRUE)) {
                        continue;
                    } else if ((rect.height() * 1.0f) / (childAt.getHeight() * 1.0f) > 0.5f) {
                        return true;
                    }
                }
                i11 = i12;
            }
        }
        return false;
    }

    public final int getGridSpacing() {
        return this.gridSpacing;
    }

    public final int getMaxImageSize() {
        return this.maxImageSize;
    }

    public final float getSingleImageRatio() {
        return this.singleImageRatio;
    }

    public final int getSingleImageSize() {
        return this.singleImageSize;
    }

    public final boolean hasGifVisible() {
        String videoUrl;
        List list = this.imageList;
        if (list != null) {
            int i11 = 0;
            for (Object obj : list) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                GifBean gifBean = ((Image) obj).getGifBean();
                if (gifBean != null && (videoUrl = gifBean.getVideoUrl()) != null && videoUrl.length() > 0) {
                    View childAt = getChildAt(i11);
                    Rect rect = new Rect();
                    if (!Intrinsics.c(childAt != null ? Boolean.valueOf(childAt.getGlobalVisibleRect(rect)) : null, Boolean.TRUE)) {
                        continue;
                    } else if ((rect.height() * 1.0f) / (childAt.getHeight() * 1.0f) > 0.5f) {
                        return true;
                    }
                }
                i11 = i12;
            }
        }
        return false;
    }

    public final void loadImage() {
        String url;
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            Intrinsics.f(childAt, "null cannot be cast to non-null type com.transsion.ninegridview.video.NineGridItemView");
            NineGridItemView nineGridItemView = (NineGridItemView) childAt;
            List list = this.imageList;
            Image image = list != null ? (Image) list.get(i11) : null;
            f47746s.b(getContext(), nineGridItemView, image, nineGridItemView.getWidth(), nineGridItemView.getHeight());
            AppCompatImageView appCompatImageView = (AppCompatImageView) nineGridItemView.findViewById(R$id.label_gif);
            if (appCompatImageView != null) {
                if (image == null || (url = image.getUrl()) == null || !StringsKt.G(url, ".gif", false, 2, null)) {
                    jg.c.g(appCompatImageView);
                } else {
                    jg.c.k(appCompatImageView);
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l11, int t11, int r11, int b11) {
        List list = this.imageList;
        if (list != null) {
            if (list == null || list.size() != 0) {
                List list2 = this.imageList;
                int size = list2 != null ? list2.size() : 0;
                for (int i11 = 0; i11 < size; i11++) {
                    View childAt = getChildAt(i11);
                    Intrinsics.f(childAt, "null cannot be cast to non-null type com.transsion.ninegridview.video.NineGridItemView");
                    NineGridItemView nineGridItemView = (NineGridItemView) childAt;
                    int iJ = j(i11);
                    int iG = g(i11);
                    if (iJ == 1) {
                        int paddingLeft = ((this.gridWidth1 + this.gridSpacing) * iG) + getPaddingLeft();
                        int paddingTop = getPaddingTop();
                        int i12 = this.gridWidth1;
                        int i13 = this.gridHeight1;
                        m(nineGridItemView, paddingLeft, paddingTop, paddingLeft + i12, paddingTop + i13, i12, i13);
                    } else if (iJ == 2) {
                        int paddingLeft2 = ((this.gridWidth2 + this.gridSpacing) * iG) + getPaddingLeft();
                        int paddingTop2 = (this.gridSpacing * (iJ - 1)) + this.gridHeight1 + getPaddingTop();
                        int i14 = this.gridWidth2;
                        int i15 = this.gridHeight2;
                        m(nineGridItemView, paddingLeft2, paddingTop2, paddingLeft2 + i14, paddingTop2 + i15, i14, i15);
                    } else if (iJ == 3) {
                        int paddingLeft3 = ((this.gridWidth3 + this.gridSpacing) * iG) + getPaddingLeft();
                        int paddingTop3 = (this.gridSpacing * (iJ - 1)) + this.gridHeight1 + this.gridHeight2 + getPaddingTop();
                        int i16 = this.gridWidth3;
                        int i17 = this.gridHeight3;
                        m(nineGridItemView, paddingLeft3, paddingTop3, paddingLeft3 + i16, paddingTop3 + i17, i16, i17);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        measureChildren(widthMeasureSpec, heightMeasureSpec);
        List list = this.imageList;
        int paddingBottom = 0;
        if (list != null) {
            switch (list.size()) {
                case 1:
                    b((Image) list.get(0), paddingLeft, 1);
                    break;
                case 2:
                    b(k((Image) list.get(0), (Image) list.get(1)), paddingLeft, 2);
                    break;
                case 3:
                    b(k((Image) list.get(0), (Image) list.get(1)), paddingLeft, 2);
                    c((Image) list.get(2), paddingLeft, 1);
                    break;
                case 4:
                    b(k((Image) list.get(0), (Image) list.get(1)), paddingLeft, 2);
                    c(k((Image) list.get(2), (Image) list.get(3)), paddingLeft, 2);
                    break;
                case 5:
                    b(k((Image) list.get(0), (Image) list.get(1)), paddingLeft, 2);
                    c((Image) list.get(2), paddingLeft, 1);
                    d(k((Image) list.get(3), (Image) list.get(4)), paddingLeft, 2);
                    break;
                case 6:
                    b(l((Image) list.get(0), (Image) list.get(1), (Image) list.get(2)), paddingLeft, 3);
                    c(l((Image) list.get(3), (Image) list.get(4), (Image) list.get(5)), paddingLeft, 3);
                    break;
                case 7:
                    b(l((Image) list.get(0), (Image) list.get(1), (Image) list.get(2)), paddingLeft, 3);
                    c((Image) list.get(3), paddingLeft, 1);
                    d(l((Image) list.get(4), (Image) list.get(5), (Image) list.get(6)), paddingLeft, 3);
                    break;
                case 8:
                    b(l((Image) list.get(0), (Image) list.get(1), (Image) list.get(2)), paddingLeft, 3);
                    c(k((Image) list.get(3), (Image) list.get(4)), paddingLeft, 2);
                    d(l((Image) list.get(5), (Image) list.get(6), (Image) list.get(7)), paddingLeft, 3);
                    break;
                case 9:
                    b(l((Image) list.get(0), (Image) list.get(1), (Image) list.get(2)), paddingLeft, 3);
                    c(l((Image) list.get(3), (Image) list.get(4), (Image) list.get(5)), paddingLeft, 3);
                    d(l((Image) list.get(6), (Image) list.get(7), (Image) list.get(8)), paddingLeft, 3);
                    break;
            }
            size = paddingLeft + getPaddingLeft() + getPaddingRight();
            paddingBottom = getPaddingBottom() + this.gridHeight1 + this.gridHeight2 + this.gridHeight3 + (this.gridSpacing * (this.rowCount - 1)) + getPaddingTop();
        }
        setMeasuredDimension(size, paddingBottom);
    }

    public final void setAdapter(NineGridVideoViewAdapter adapter) {
        Intrinsics.h(adapter, "adapter");
        this.mAdapter = adapter;
        List<Image> imageList = adapter.getImageList();
        if (imageList.isEmpty()) {
            jg.c.g(this);
            return;
        }
        jg.c.k(this);
        int size = imageList.size();
        if (this.maxImageSize < size) {
            imageList = imageList.subList(0, imageList.size());
            size = imageList.size();
        }
        if (size == 1) {
            this.columnCount = 1;
            this.rowCount = 1;
        } else if (2 <= size && size < 6) {
            this.columnCount = 2;
            this.rowCount = (size / 2) + (size % 2 == 0 ? 0 : 1);
        } else if (6 <= size && size < 10) {
            this.columnCount = 3;
            this.rowCount = (size / 3) + (size % 3 == 0 ? 0 : 1);
        }
        List list = this.imageList;
        if (list == null) {
            for (int size2 = 0; size2 < size; size2++) {
                addView(h(size2), generateDefaultLayoutParams());
            }
        } else {
            size2 = list != null ? list.size() : 0;
            if (size2 > size) {
                removeViews(size, size2 - size);
                e();
            } else if (size2 < size) {
                e();
                while (size2 < size) {
                    addView(h(size2), generateDefaultLayoutParams());
                    size2++;
                }
            } else {
                e();
            }
        }
        this.imageList = imageList;
        requestLayout();
    }

    public final void setGridSpacing(int i11) {
        this.gridSpacing = i11;
    }

    public final void setMaxImageSize(int i11) {
        this.maxImageSize = i11;
    }

    public final void setSingleImageRatio(float f11) {
        this.singleImageRatio = f11;
    }

    public final void setSingleImageSize(int i11) {
        this.singleImageSize = i11;
    }
}
