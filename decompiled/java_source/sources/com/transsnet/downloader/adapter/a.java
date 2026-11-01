package com.transsnet.downloader.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatTextView;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseMultiItemQuickAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.video.UGCVideoDetailPlayBean;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.transsion.baseui.R$string;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.ugcvideodetail.api.UGCPageStyle;
import com.transsion.ugcvideodetail.api.UGCVideoTypeKt;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.R$mipmap;
import com.transsnet.downloader.bean.HistoricalPlayRecordBean;
import com.transsnet.downloader.bean.HistoricalPlayRecordMultipleEntity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0011\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\f\u0010\rJ\u001f\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u000f\u0010\rJ\u001f\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0010\u0010\rJ\u001f\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0015\u0010\u0014J\u001f\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0017\u0010\u0014J\u001f\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0018\u0010\u0014J3\u0010 \u001a\u00020\u001f2\u0006\u0010\u001a\u001a\u00020\u00192\b\u0010\u001b\u001a\u0004\u0018\u00010\u00192\b\u0010\u001c\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b \u0010!J#\u0010$\u001a\u00020\u001d2\b\u0010\"\u001a\u0004\u0018\u00010\u00192\b\u0010#\u001a\u0004\u0018\u00010\u0019H\u0002¢\u0006\u0004\b$\u0010%J\u001f\u0010&\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0014¢\u0006\u0004\b&\u0010\rR\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(¨\u0006)"}, d2 = {"Lcom/transsnet/downloader/adapter/a;", "Lcom/chad/library/adapter/base/BaseMultiItemQuickAdapter;", "Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lr6/i;", "", "isOutsideFiles", "<init>", "(Z)V", "holder", WebConstants.FIELD_ITEM, "", "E1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;)V", "helper", "H1", "G1", "Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;", "it", "K1", "(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "I1", "bean", "J1", "F1", "", "fileLength", "videoDuration", "readDuration", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "", "M1", "(JLjava/lang/Long;Ljava/lang/Long;I)Ljava/lang/String;", "pr", "total", "L1", "(Ljava/lang/Long;Ljava/lang/Long;)I", "D1", "G", "Z", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class a extends BaseMultiItemQuickAdapter<HistoricalPlayRecordMultipleEntity, BaseViewHolder> implements r6.i {

    /* JADX INFO: renamed from: G, reason: from kotlin metadata */
    private final boolean isOutsideFiles;

    public a() {
        this(false, 1, null);
    }

    public a(boolean z10) {
        super(null, 1, null);
        this.isOutsideFiles = z10;
        B1(1, R$layout.item_historical_section_header_layout);
        B1(2, R$layout.item_historical_section_body_layout);
        B1(3, R$layout.item_historical_section_ad_layout);
    }

    public /* synthetic */ a(boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? false : z10);
    }

    private final void E1(BaseViewHolder holder, HistoricalPlayRecordMultipleEntity item) {
        cy.b bVar = cy.b.f60940a;
        Context context = getContext();
        BiddingNativeManager nonAdDelegate = item.getNonAdDelegate();
        com.transsion.ad.bidding.base.r rVarA = bVar.a(context, nonAdDelegate != null ? nonAdDelegate.getMSceneId() : null);
        NativeWrapperAdView nativeWrapperAdView = (NativeWrapperAdView) holder.getViewOrNull(R$id.adRoot);
        if (nativeWrapperAdView != null) {
            BiddingNativeManager nonAdDelegate2 = item.getNonAdDelegate();
            BiddingNativeManager nonAdDelegate3 = item.getNonAdDelegate();
            nativeWrapperAdView.bindNativeView(nonAdDelegate2, rVarA, nonAdDelegate3 != null ? nonAdDelegate3.n0() : null);
        }
    }

    private final void F1(HistoricalPlayRecordBean it, BaseViewHolder holder) {
        String cover;
        String str;
        Long readProcess;
        String subjectTitle;
        String subjectTitle2;
        String title;
        Long duration;
        Long duration2;
        ej.f.b bVarM = ej.f.f61882a.m(getContext());
        AudioBean audio = it.getAudio();
        String str2 = "";
        if (audio == null || (cover = audio.getCover()) == null) {
            cover = "";
        }
        bVarM.g(cover).d((ImageView) holder.getView(R$id.ivCore));
        holder.setImageResource(R$id.ivCornerMark, R$mipmap.ic_audio_download_historical);
        AudioBean audio2 = it.getAudio();
        if (((audio2 == null || (duration2 = audio2.getDuration()) == null) ? 0L : duration2.longValue()) > 0) {
            int i11 = R$id.tvTime;
            AudioBean audio3 = it.getAudio();
            holder.setText(i11, TimeUtilKt.n((audio3 == null || (duration = audio3.getDuration()) == null) ? 0L : duration.longValue()));
        }
        AudioBean audio4 = it.getAudio();
        Long readProcess2 = audio4 != null ? audio4.getReadProcess() : null;
        AudioBean audio5 = it.getAudio();
        int iL1 = L1(readProcess2, audio5 != null ? audio5.getDuration() : null);
        ((ProgressBar) holder.getView(R$id.progressBar)).setProgress(iL1);
        if (iL1 == 0) {
            AudioBean audio6 = it.getAudio();
            if (((audio6 == null || (readProcess = audio6.getReadProcess()) == null) ? 0L : readProcess.longValue()) > 0) {
                str = it.getType() == 1 ? "1% listened" : "1% watched";
            } else {
                str = "Not open";
            }
            holder.setText(R$id.tvProgress, str);
        } else if (iL1 != 100) {
            holder.setText(R$id.tvProgress, iL1 + "% listened");
        } else {
            holder.setText(R$id.tvProgress, "Finished");
        }
        AudioBean audio7 = it.getAudio();
        int se2 = audio7 != null ? audio7.getSe() : 0;
        AudioBean audio8 = it.getAudio();
        int ep2 = audio8 != null ? audio8.getEp() : 0;
        AudioBean audio9 = it.getAudio();
        if (audio9 == null || (subjectTitle = audio9.getSubjectTitle()) == null) {
            subjectTitle = "";
        }
        if (TextUtils.isEmpty(subjectTitle)) {
            holder.setGone(R$id.tvEpisode, true);
            ((AppCompatTextView) holder.getView(R$id.tvTitle)).setMaxLines(2);
            int i12 = R$id.tvTitle;
            AudioBean audio10 = it.getAudio();
            if (audio10 != null && (title = audio10.getTitle()) != null) {
                str2 = title;
            }
            holder.setText(i12, str2);
            return;
        }
        holder.setGone(R$id.tvEpisode, false);
        holder.setText(R$id.tvEpisode, ak.i.b(ep2, se2, Integer.valueOf(SubjectType.AUDIO.getValue())));
        ((AppCompatTextView) holder.getView(R$id.tvTitle)).setMaxLines(1);
        int i13 = R$id.tvTitle;
        AudioBean audio11 = it.getAudio();
        if (audio11 != null && (subjectTitle2 = audio11.getSubjectTitle()) != null) {
            str2 = subjectTitle2;
        }
        holder.setText(i13, str2);
    }

    private final void G1(BaseViewHolder holder, HistoricalPlayRecordMultipleEntity item) {
        HistoricalPlayRecordBean historical = item.getHistorical();
        if (historical != null) {
            if (historical.getType() == 1) {
                F1(historical, holder);
                return;
            }
            if (historical.getVideo() != null) {
                K1(historical, holder);
            } else if (historical.getStreamVideo() != null) {
                I1(historical, holder);
            } else if (historical.getUgcVideo() != null) {
                J1(historical, holder);
            }
        }
    }

    private final void H1(BaseViewHolder helper, HistoricalPlayRecordMultipleEntity item) {
        helper.setText(R$id.tvHeaderTitle, item.getTitle());
    }

    private final void I1(HistoricalPlayRecordBean it, BaseViewHolder holder) {
        String coverUrl;
        Long totalDuration;
        Long totalDuration2;
        String coverUrl2;
        VideoDetailPlayBean streamVideo = it.getStreamVideo();
        String subjectId = streamVideo != null ? streamVideo.getSubjectId() : null;
        String str = "";
        if (subjectId == null || subjectId.length() == 0) {
            ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getView(R$id.ivCore);
            com.transsnet.downloader.viewmodel.a0 a0Var = com.transsnet.downloader.viewmodel.a0.f60085a;
            VideoDetailPlayBean streamVideo2 = it.getStreamVideo();
            if (streamVideo2 != null && (coverUrl = streamVideo2.getCoverUrl()) != null) {
                str = coverUrl;
            }
            shapeableImageView.setImageBitmap(a0Var.d(str));
        } else {
            Context context = getContext();
            ImageView imageView = (ImageView) holder.getView(R$id.ivCore);
            VideoDetailPlayBean streamVideo3 = it.getStreamVideo();
            if (streamVideo3 != null && (coverUrl2 = streamVideo3.getCoverUrl()) != null) {
                str = coverUrl2;
            }
            VideoDetailPlayBean streamVideo4 = it.getStreamVideo();
            DownloadedHolderKt.a(context, imageView, str, streamVideo4 != null ? streamVideo4.getThumbnail() : null);
        }
        VideoDetailPlayBean streamVideo5 = it.getStreamVideo();
        Long totalDuration3 = streamVideo5 != null ? streamVideo5.getTotalDuration() : null;
        VideoDetailPlayBean streamVideo6 = it.getStreamVideo();
        holder.setText(R$id.tvProgress, M1(0L, totalDuration3, streamVideo6 != null ? Long.valueOf(streamVideo6.getProgress()) : null, it.getType()));
        ((AppCompatTextView) holder.getView(R$id.tvTitle)).setMaxLines(1);
        int i11 = R$id.ivCornerMark;
        VideoDetailPlayBean streamVideo7 = it.getStreamVideo();
        holder.setImageResource(i11, com.transsion.moviedetailapi.g.a(streamVideo7 != null ? streamVideo7.getSubjectType() : null));
        int i12 = R$id.tvTitle;
        VideoDetailPlayBean streamVideo8 = it.getStreamVideo();
        holder.setText(i12, streamVideo8 != null ? streamVideo8.getTitle() : null);
        VideoDetailPlayBean streamVideo9 = it.getStreamVideo();
        if ((streamVideo9 != null ? streamVideo9.getEp() : 0) > 0) {
            holder.setGone(R$id.tvEpisode, false);
            int i13 = R$id.tvEpisode;
            VideoDetailPlayBean streamVideo10 = it.getStreamVideo();
            int ep2 = streamVideo10 != null ? streamVideo10.getEp() : 0;
            VideoDetailPlayBean streamVideo11 = it.getStreamVideo();
            int se2 = streamVideo11 != null ? streamVideo11.getSe() : 0;
            VideoDetailPlayBean streamVideo12 = it.getStreamVideo();
            holder.setText(i13, ak.i.b(ep2, se2, streamVideo12 != null ? streamVideo12.getSubjectType() : null));
        } else {
            holder.setGone(R$id.tvEpisode, true);
        }
        VideoDetailPlayBean streamVideo13 = it.getStreamVideo();
        long jLongValue = 0;
        if (((streamVideo13 == null || (totalDuration2 = streamVideo13.getTotalDuration()) == null) ? 0L : totalDuration2.longValue()) > 0) {
            int i14 = R$id.tvTime;
            VideoDetailPlayBean streamVideo14 = it.getStreamVideo();
            if (streamVideo14 != null && (totalDuration = streamVideo14.getTotalDuration()) != null) {
                jLongValue = totalDuration.longValue();
            }
            holder.setText(i14, TimeUtilKt.n(jLongValue));
        }
        ProgressBar progressBar = (ProgressBar) holder.getView(R$id.progressBar);
        VideoDetailPlayBean streamVideo15 = it.getStreamVideo();
        Long lValueOf = streamVideo15 != null ? Long.valueOf(streamVideo15.getProgress()) : null;
        VideoDetailPlayBean streamVideo16 = it.getStreamVideo();
        progressBar.setProgress(L1(lValueOf, streamVideo16 != null ? streamVideo16.getTotalDuration() : null));
        ((ViewStub) holder.getView(R$id.viewStub)).setVisibility(8);
    }

    private final void J1(HistoricalPlayRecordBean bean, BaseViewHolder holder) {
        UGCVideoDetailPlayBean ugcVideo = bean.getUgcVideo();
        Intrinsics.e(ugcVideo);
        ej.f.b bVarM = ej.f.f61882a.m(getContext());
        String coverUrl = ugcVideo.getCoverUrl();
        if (coverUrl == null) {
            coverUrl = "";
        }
        bVarM.g(coverUrl).d((ImageView) holder.getView(R$id.ivCore));
        UGCVideoTypeKt.j((ImageView) holder.getView(R$id.ivCornerMark), ugcVideo.getCateLev1Id(), ugcVideo.getCateLev2Id(), ugcVideo.getCateLev3Id(), ugcVideo.getCateLev4Id(), ugcVideo.getType());
        ((AppCompatTextView) holder.getView(R$id.tvTitle)).setMaxLines(2);
        holder.setText(R$id.tvTitle, ugcVideo.getTitle());
        holder.setGone(R$id.tvEpisode, true);
        Long totalDuration = ugcVideo.getTotalDuration();
        if ((totalDuration != null ? totalDuration.longValue() : 0L) > 0) {
            int i11 = R$id.tvTime;
            Long totalDuration2 = ugcVideo.getTotalDuration();
            holder.setText(i11, TimeUtilKt.n(totalDuration2 != null ? totalDuration2.longValue() : 0L));
        }
        String strM1 = M1(0L, ugcVideo.getTotalDuration(), Long.valueOf(ugcVideo.getProgress()), bean.getType());
        if (Intrinsics.c(ugcVideo.getVideoStyle(), UGCPageStyle.UGC_PAGE_STYLE_IMM_VERTICAL_VIDEO.getValue())) {
            holder.setText(R$id.tvProgress, com.transsion.baseui.util.q.e(CollectionsKt.q("special_#shorts_icon", Utils.a().getString(R$string.ugc_video_shorts), strM1), getContext()));
        } else {
            holder.setText(R$id.tvProgress, strM1);
        }
        ((ProgressBar) holder.getView(R$id.progressBar)).setProgress(L1(Long.valueOf(ugcVideo.getProgress()), ugcVideo.getTotalDuration()));
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0177  */
    /* JADX WARN: Code duplicated, block: B:111:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:113:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:70:0x011b  */
    /* JADX WARN: Code duplicated, block: B:84:0x014d  */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x02ae, code lost:
    
        if ((r14 != null && r14.isCompleted()) != false) goto L184;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void K1(HistoricalPlayRecordBean it, BaseViewHolder holder) {
        String cover;
        String path;
        String path2;
        DownloadBean video;
        String name;
        boolean z10;
        String subjectName;
        Long duration;
        Long duration2;
        DownloadBean video2;
        String subjectName2;
        String cover2;
        String path3;
        if (this.isOutsideFiles) {
            holder.setGone(R$id.ivCornerMark, true);
        }
        DownloadBean video3 = it.getVideo();
        long jLongValue = 0;
        String str = "";
        if (video3 == null || !video3.isInnerRes()) {
            ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getView(R$id.ivCore);
            com.transsnet.downloader.viewmodel.a0 a0Var = com.transsnet.downloader.viewmodel.a0.f60085a;
            DownloadBean video4 = it.getVideo();
            if (video4 == null || (cover = video4.getCover()) == null) {
                cover = "";
            }
            shapeableImageView.setImageBitmap(a0Var.d(cover));
            DownloadBean video5 = it.getVideo();
            if (video5 == null || (path = video5.getPath()) == null) {
                path = "";
            }
            if (com.blankj.utilcode.util.n.i(path) > 0) {
                int i11 = R$id.tvProgress;
                DownloadBean video6 = it.getVideo();
                if (video6 != null && (path2 = video6.getPath()) != null) {
                    str = path2;
                }
                holder.setText(i11, oh.b.a(com.blankj.utilcode.util.n.i(str), 1));
            } else {
                holder.setText(R$id.tvProgress, "");
            }
            ((AppCompatTextView) holder.getView(R$id.tvTitle)).setMaxLines(2);
        } else {
            Context context = getContext();
            ImageView imageView = (ImageView) holder.getView(R$id.ivCore);
            DownloadBean video7 = it.getVideo();
            if (video7 == null || (cover2 = video7.getCover()) == null) {
                cover2 = "";
            }
            DownloadBean video8 = it.getVideo();
            DownloadedHolderKt.a(context, imageView, cover2, video8 != null ? video8.getThumbnail() : null);
            DownloadBean video9 = it.getVideo();
            if (video9 != null && (path3 = video9.getPath()) != null) {
                str = path3;
            }
            long jI = com.blankj.utilcode.util.n.i(str);
            DownloadBean video10 = it.getVideo();
            Long duration3 = video10 != null ? video10.getDuration() : null;
            DownloadBean video11 = it.getVideo();
            holder.setText(R$id.tvProgress, M1(jI, duration3, video11 != null ? Long.valueOf(video11.getReadProgress()) : null, it.getType()));
            ((AppCompatTextView) holder.getView(R$id.tvTitle)).setMaxLines(1);
        }
        int type = it.getType();
        if (type == 2) {
            holder.setImageResource(R$id.ivCornerMark, com.transsion.baseui.R$mipmap.home_ic_movie_white);
        } else if (type == 3) {
            int i12 = R$id.ivCornerMark;
            DownloadBean video12 = it.getVideo();
            holder.setImageResource(i12, (video12 == null || !video12.isShotTV()) ? com.transsion.baseui.R$mipmap.home_ic_tv_white : com.transsion.baseui.R$mipmap.home_ic_short_tv_white);
        } else if (type == 5 || type == 6) {
            holder.setImageResource(R$id.ivCornerMark, com.transsion.baseui.R$mipmap.home_ic_movie_white);
        } else {
            holder.setImageResource(R$id.ivCornerMark, com.transsion.baseui.R$mipmap.home_ic_audio_white);
        }
        DownloadBean video13 = it.getVideo();
        if (video13 == null || !video13.isSeries() || (video2 = it.getVideo()) == null || (subjectName2 = video2.getSubjectName()) == null || subjectName2.length() <= 0) {
            DownloadBean video14 = it.getVideo();
            if ((video14 != null ? video14.getResolution() : 0) <= 0) {
                video = it.getVideo();
                if (video != null) {
                    name = video.getName();
                } else {
                    name = null;
                }
            } else {
                DownloadBean video15 = it.getVideo();
                if (video15 == null || (subjectName = video15.getSubjectName()) == null) {
                    z10 = false;
                } else {
                    if (subjectName.length() > 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                }
                if (z10) {
                    DownloadBean video16 = it.getVideo();
                    Integer numValueOf = video16 != null ? Integer.valueOf(video16.getResolution()) : null;
                    DownloadBean video17 = it.getVideo();
                    name = numValueOf + "P " + (video17 != null ? video17.getSubjectName() : null);
                } else {
                    video = it.getVideo();
                    if (video != null) {
                        name = video.getName();
                    } else {
                        name = null;
                    }
                }
            }
        } else {
            DownloadBean video18 = it.getVideo();
            if (video18 != null) {
                name = video18.getSubjectName();
            } else {
                name = null;
            }
        }
        holder.setText(R$id.tvTitle, name);
        DownloadBean video19 = it.getVideo();
        if (video19 != null && video19.isSeries()) {
            holder.setGone(R$id.tvEpisode, false);
            DownloadBean video20 = it.getVideo();
            if ((video20 != null ? video20.getEp() : 0) > 0) {
                int i13 = R$id.tvEpisode;
                DownloadBean video21 = it.getVideo();
                int ep2 = video21 != null ? video21.getEp() : 0;
                DownloadBean video22 = it.getVideo();
                int se2 = video22 != null ? video22.getSe() : 0;
                DownloadBean video23 = it.getVideo();
                holder.setText(i13, ak.i.b(ep2, se2, video23 != null ? Integer.valueOf(video23.getSubjectType()) : null));
            } else {
                int i14 = R$id.tvEpisode;
                DownloadBean video24 = it.getVideo();
                holder.setText(i14, ak.i.c(video24 != null ? video24.getEpse() : 0, true));
            }
        } else {
            holder.setGone(R$id.tvEpisode, true);
        }
        DownloadBean video25 = it.getVideo();
        if (((video25 == null || (duration2 = video25.getDuration()) == null) ? 0L : duration2.longValue()) > 0) {
            int i15 = R$id.tvTime;
            DownloadBean video26 = it.getVideo();
            if (video26 != null && (duration = video26.getDuration()) != null) {
                jLongValue = duration.longValue();
            }
            holder.setText(i15, TimeUtilKt.n(jLongValue));
        }
        ProgressBar progressBar = (ProgressBar) holder.getView(R$id.progressBar);
        DownloadBean video27 = it.getVideo();
        Long lValueOf = video27 != null ? Long.valueOf(video27.getReadProgress()) : null;
        DownloadBean video28 = it.getVideo();
        progressBar.setProgress(L1(lValueOf, video28 != null ? video28.getDuration() : null));
        if (!Intrinsics.c(it.isLocalFileDelete(), Boolean.TRUE)) {
            DownloadBean video29 = it.getVideo();
            if ((video29 == null || video29.isFileExist()) ? false : true) {
                DownloadBean video30 = it.getVideo();
            }
            ((ViewStub) holder.getView(R$id.viewStub)).setVisibility(8);
            return;
        }
        ((ViewStub) holder.getView(R$id.viewStub)).setVisibility(0);
    }

    private final int L1(Long pr2, Long total) {
        try {
            Result.Companion companion = Result.INSTANCE;
            long jLongValue = pr2 != null ? pr2.longValue() : 0L;
            long jLongValue2 = total != null ? total.longValue() : 1L;
            return (int) (((jLongValue * 1.0f) / (jLongValue2 > 0 ? jLongValue2 : 1L)) * 100);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
            return 0;
        }
    }

    private final String M1(long fileLength, Long videoDuration, Long readDuration, int type) {
        String str;
        int iL1 = L1(readDuration, videoDuration);
        if (iL1 == 0) {
            if ((readDuration != null ? readDuration.longValue() : 0L) > 0) {
                str = type == 1 ? "1% listened" : "1% watched";
            } else {
                str = "Not open";
            }
        } else if (iL1 != 100) {
            str = iL1 + "% watched";
        } else {
            str = "Finished";
        }
        if (this.isOutsideFiles) {
            return fileLength > 0 ? oh.b.a(fileLength, 1) : "";
        }
        if (fileLength <= 0) {
            return str;
        }
        return oh.b.a(fileLength, 1) + " · " + str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: D1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, HistoricalPlayRecordMultipleEntity item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        if (holder.getPosition() == getItemCount() - 1) {
            ViewGroup.LayoutParams layoutParams = holder.itemView.getLayoutParams();
            Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = dk.a.b(64);
        }
        int itemViewType = holder.getItemViewType();
        if (itemViewType == 1) {
            H1(holder, item);
        } else if (itemViewType == 2) {
            G1(holder, item);
        } else {
            if (itemViewType != 3) {
                return;
            }
            E1(holder, item);
        }
    }

    @Override // r6.i
    public /* bridge */ /* synthetic */ r6.f b(BaseQuickAdapter baseQuickAdapter) {
        return r6.h.a(this, baseQuickAdapter);
    }
}
