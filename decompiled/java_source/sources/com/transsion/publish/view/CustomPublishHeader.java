package com.transsion.publish.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.widget.TnTextView;
import com.transsion.publish.R$id;
import com.transsion.publish.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ej.f;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\u000e\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\r\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\n2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0014\u001a\u00020\n2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0014\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\n2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0015\u0010\u0013J\u0015\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010)\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(¨\u0006*"}, d2 = {"Lcom/transsion/publish/view/CustomPublishHeader;", "Landroid/widget/RelativeLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", CampaignEx.JSON_KEY_TITLE, "", "setTitle", "(Ljava/lang/String;)V", "ivCover", "setHeader", "(Ljava/lang/String;Ljava/lang/String;)V", "Landroid/view/View$OnClickListener;", "click", "setOnBackClick", "(Landroid/view/View$OnClickListener;)V", "setOnEditClick", "onSearchClick", "", OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, "setPostEnable", "(Z)V", "Landroid/widget/ImageView;", "a", "Landroid/widget/ImageView;", "iBack", "Lcom/tn/lib/widget/TnTextView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/tn/lib/widget/TnTextView;", "vTitle", "Landroidx/appcompat/widget/AppCompatTextView;", "c", "Landroidx/appcompat/widget/AppCompatTextView;", "vEdit", "Lcom/google/android/material/imageview/ShapeableImageView;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/google/android/material/imageview/ShapeableImageView;", "iCover", "Publish_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CustomPublishHeader extends RelativeLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name and from kotlin metadata */
    private final ImageView iBack;

    /* JADX INFO: renamed from: b, reason: collision with root package name and from kotlin metadata */
    private final TnTextView vTitle;

    /* JADX INFO: renamed from: c, reason: collision with root package name and from kotlin metadata */
    private final AppCompatTextView vEdit;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private final ShapeableImageView iCover;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomPublishHeader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        LayoutInflater.from(context).inflate(R$layout.publish_layout_header, (ViewGroup) this, true);
        View viewFindViewById = findViewById(R$id.iv_back);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        this.iBack = (ImageView) viewFindViewById;
        View viewFindViewById2 = findViewById(R$id.tv_title);
        Intrinsics.g(viewFindViewById2, "findViewById(...)");
        this.vTitle = (TnTextView) viewFindViewById2;
        View viewFindViewById3 = findViewById(R$id.tv_publish);
        Intrinsics.g(viewFindViewById3, "findViewById(...)");
        this.vEdit = (AppCompatTextView) viewFindViewById3;
        View viewFindViewById4 = findViewById(R$id.iv_title_image);
        Intrinsics.g(viewFindViewById4, "findViewById(...)");
        this.iCover = (ShapeableImageView) viewFindViewById4;
    }

    public final void onSearchClick(View.OnClickListener click) {
    }

    public final void setHeader(String title, String ivCover) {
        this.vTitle.setText(title);
        if (ivCover != null) {
            this.iCover.setVisibility(0);
            f.a aVar = f.f61882a;
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            aVar.m(context).g(ivCover).d(this.iCover);
        }
    }

    public final void setOnBackClick(View.OnClickListener click) {
        this.iBack.setOnClickListener(click);
    }

    public final void setOnEditClick(View.OnClickListener click) {
        this.vEdit.setOnClickListener(click);
    }

    public final void setPostEnable(boolean enable) {
        this.vEdit.setEnabled(enable);
    }

    public final void setTitle(String title) {
        this.vTitle.setText(title);
    }
}
