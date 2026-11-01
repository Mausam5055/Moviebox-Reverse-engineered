package com.transsion.videodetail.music.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.content.b;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.transsion.videodetail.R$id;
import com.transsion.videodetail.R$layout;
import com.transsion.videodetail.music.bean.MusicLikedUITypeEnum;
import com.transsion.wrapperad.R$color;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r¨\u0006\u000e"}, d2 = {"Lcom/transsion/videodetail/music/widget/MusicLikedListEmptyView;", "Landroidx/appcompat/widget/LinearLayoutCompat;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "getExploreNowView", "Landroid/view/View;", "setMusicLikedUIType", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "Lcom/transsion/videodetail/music/bean/MusicLikedUITypeEnum;", "VideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MusicLikedListEmptyView extends LinearLayoutCompat {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public MusicLikedListEmptyView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public MusicLikedListEmptyView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        View.inflate(context, R$layout.fragment_liked_music_empty_view_layout, this);
    }

    public /* synthetic */ MusicLikedListEmptyView(Context context, AttributeSet attributeSet, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet);
    }

    public final View getExploreNowView() {
        View viewFindViewById = findViewById(R$id.tvExploreNow);
        Intrinsics.g(viewFindViewById, "findViewById(...)");
        return viewFindViewById;
    }

    public final void setMusicLikedUIType(MusicLikedUITypeEnum type) {
        Intrinsics.h(type, "type");
        if (type == MusicLikedUITypeEnum.MUSIC_DETAIL) {
            findViewById(R$id.tvExploreNow).setVisibility(8);
            ((LinearLayout) findViewById(R$id.llEmpty)).setBackgroundColor(b.getColor(getContext(), R$color.black_50));
        }
    }
}
