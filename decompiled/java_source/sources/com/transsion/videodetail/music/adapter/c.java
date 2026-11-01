package com.transsion.videodetail.music.adapter;

import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.blankj.utilcode.util.Utils;
import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.widget.R$color;
import com.transsion.baselib.db.music.MusicLikedDbBean;
import com.transsion.videodetail.R$drawable;
import com.transsion.videodetail.R$id;
import com.transsion.videodetail.R$layout;
import com.transsion.videodetail.music.bean.MusicLikedItemStateEnum;
import com.transsion.videodetail.music.bean.MusicLikedMultiItemEntity;
import com.transsion.videodetail.music.bean.MusicLikedUITypeEnum;
import ej.f;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import nh.m;

/* JADX INFO: loaded from: classes7.dex */
public final class c extends BaseItemProvider {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final MusicLikedUITypeEnum f57724e;

    public c(MusicLikedUITypeEnum uiType) {
        Intrinsics.h(uiType, "uiType");
        this.f57724e = uiType;
    }

    private final void A(BaseViewHolder baseViewHolder, MusicLikedMultiItemEntity musicLikedMultiItemEntity) {
        String coverUrl;
        ShapeableImageView shapeableImageView = (ShapeableImageView) baseViewHolder.getView(R$id.ivCover);
        f.b bVarM = f.f61882a.m(k());
        MusicLikedDbBean musicLikedDbBean = musicLikedMultiItemEntity.getMusicLikedDbBean();
        if (musicLikedDbBean == null || (coverUrl = musicLikedDbBean.getCoverUrl()) == null) {
            coverUrl = "";
        }
        bVarM.g(coverUrl).d(shapeableImageView);
        MusicLikedDbBean musicLikedDbBean2 = musicLikedMultiItemEntity.getMusicLikedDbBean();
        if (!TextUtils.isEmpty(musicLikedDbBean2 != null ? musicLikedDbBean2.getPath() : null) || m.f70474a.e()) {
            shapeableImageView.setAlpha(1.0f);
        } else {
            shapeableImageView.setAlpha(0.5f);
        }
    }

    private final void B(BaseViewHolder baseViewHolder, MusicLikedMultiItemEntity musicLikedMultiItemEntity) {
        String strA;
        TextView textView = (TextView) baseViewHolder.getView(R$id.tvAuthor);
        MusicLikedDbBean musicLikedDbBean = musicLikedMultiItemEntity.getMusicLikedDbBean();
        if (TextUtils.isEmpty(musicLikedDbBean != null ? musicLikedDbBean.getSingerName() : null)) {
            lx.b bVar = lx.b.f69056a;
            MusicLikedDbBean musicLikedDbBean2 = musicLikedMultiItemEntity.getMusicLikedDbBean();
            strA = bVar.a((musicLikedDbBean2 != null ? musicLikedDbBean2.getDurationSeconds() : 0L) * ((long) 1000));
        } else {
            MusicLikedDbBean musicLikedDbBean3 = musicLikedMultiItemEntity.getMusicLikedDbBean();
            String singerName = musicLikedDbBean3 != null ? musicLikedDbBean3.getSingerName() : null;
            lx.b bVar2 = lx.b.f69056a;
            MusicLikedDbBean musicLikedDbBean4 = musicLikedMultiItemEntity.getMusicLikedDbBean();
            strA = singerName + " / " + bVar2.a((musicLikedDbBean4 != null ? musicLikedDbBean4.getDurationSeconds() : 0L) * ((long) 1000));
        }
        if (musicLikedMultiItemEntity.isDownloaded()) {
            lx.a.f69055a.a(textView, "  " + strA, androidx.core.content.b.getDrawable(Utils.a(), R$drawable.music_download_icon));
        } else {
            textView.setText(strA);
        }
        MusicLikedDbBean musicLikedDbBean5 = musicLikedMultiItemEntity.getMusicLikedDbBean();
        textView.setAlpha((!TextUtils.isEmpty(musicLikedDbBean5 != null ? musicLikedDbBean5.getPath() : null) || m.f70474a.e()) ? 1.0f : 0.5f);
    }

    private final void C(BaseViewHolder baseViewHolder, MusicLikedMultiItemEntity musicLikedMultiItemEntity) {
    }

    private final void D(BaseViewHolder baseViewHolder, MusicLikedMultiItemEntity musicLikedMultiItemEntity) {
        AppCompatImageView appCompatImageView = (AppCompatImageView) baseViewHolder.getView(R$id.ivState);
        appCompatImageView.setColorFilter(new PorterDuffColorFilter(androidx.core.content.b.getColor(appCompatImageView.getContext(), R$color.brand), PorterDuff.Mode.SRC_ATOP));
        try {
            Result.Companion companion = Result.INSTANCE;
            Result.m454constructorimpl(Glide.with(appCompatImageView.getContext()).load2(Integer.valueOf(R$drawable.video_detail_ic_playing)).into((ImageView) baseViewHolder.getView(R$id.ivState)));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
        }
        appCompatImageView.setVisibility(musicLikedMultiItemEntity.getState() == MusicLikedItemStateEnum.PLAYING ? 0 : 8);
        baseViewHolder.getView(R$id.viewMask).setVisibility(appCompatImageView.getVisibility());
        MusicLikedDbBean musicLikedDbBean = musicLikedMultiItemEntity.getMusicLikedDbBean();
        appCompatImageView.setAlpha((!TextUtils.isEmpty(musicLikedDbBean != null ? musicLikedDbBean.getPath() : null) || m.f70474a.e()) ? 1.0f : 0.5f);
    }

    private final void E(BaseViewHolder baseViewHolder, MusicLikedMultiItemEntity musicLikedMultiItemEntity) {
        AppCompatTextView appCompatTextView = (AppCompatTextView) baseViewHolder.getView(R$id.tvTitle);
        MusicLikedDbBean musicLikedDbBean = musicLikedMultiItemEntity.getMusicLikedDbBean();
        appCompatTextView.setText(musicLikedDbBean != null ? musicLikedDbBean.getTitle() : null);
        if (musicLikedMultiItemEntity.getState() == MusicLikedItemStateEnum.PLAYING) {
            appCompatTextView.setTextColor(androidx.core.content.b.getColor(appCompatTextView.getContext(), R$color.brand));
        } else {
            appCompatTextView.setTextColor(androidx.core.content.b.getColor(appCompatTextView.getContext(), R$color.text_01));
        }
        MusicLikedDbBean musicLikedDbBean2 = musicLikedMultiItemEntity.getMusicLikedDbBean();
        appCompatTextView.setAlpha((!TextUtils.isEmpty(musicLikedDbBean2 != null ? musicLikedDbBean2.getPath() : null) || m.f70474a.e()) ? 1.0f : 0.5f);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return 1;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int m() {
        return R$layout.item_music_liked_provider_layout;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void b(BaseViewHolder helper, MusicLikedMultiItemEntity item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        A(helper, item);
        D(helper, item);
        E(helper, item);
        B(helper, item);
        C(helper, item);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public void f(BaseViewHolder helper, MusicLikedMultiItemEntity item, List payloads) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Intrinsics.h(payloads, "payloads");
        super.f(helper, item, payloads);
        D(helper, item);
        E(helper, item);
    }
}
