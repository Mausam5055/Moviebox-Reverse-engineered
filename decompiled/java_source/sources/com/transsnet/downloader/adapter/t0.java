package com.transsnet.downloader.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatTextView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.moviedetailapi.SubjectType;
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
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u001f\u0010\f\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\f\u0010\u000bJ\u001f\u0010\r\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\r\u0010\u000bJ#\u0010\u0012\u001a\u00020\u00112\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000eH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u001f\u0010\u0015\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lcom/transsnet/downloader/adapter/t0;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "<init>", "()V", "Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;", "it", "holder", "", "E1", "(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V", "D1", "C1", "", "pr", "total", "", "F1", "(Ljava/lang/Long;Ljava/lang/Long;)I", WebConstants.FIELD_ITEM, "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;)V", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class t0 extends BaseQuickAdapter {
    public t0() {
        super(R$layout.adapter_historical_play_record_layout, null, 2, null);
    }

    private final void C1(HistoricalPlayRecordBean it, BaseViewHolder holder) {
        String cover;
        String title;
        String subjectTitle;
        Long duration;
        Long duration2;
        ej.f.b bVarM = ej.f.f61882a.m(getContext());
        AudioBean audio = it.getAudio();
        String str = "";
        if (audio == null || (cover = audio.getCover()) == null) {
            cover = "";
        }
        bVarM.g(cover).d((ImageView) holder.getView(R$id.ivCore));
        holder.setImageResource(R$id.ivCornerMark, R$mipmap.ic_audio_download_historical);
        AudioBean audio2 = it.getAudio();
        long jLongValue = 0;
        if (((audio2 == null || (duration2 = audio2.getDuration()) == null) ? 0L : duration2.longValue()) > 0) {
            int i11 = R$id.tvTime;
            AudioBean audio3 = it.getAudio();
            if (audio3 != null && (duration = audio3.getDuration()) != null) {
                jLongValue = duration.longValue();
            }
            holder.setText(i11, TimeUtilKt.n(jLongValue));
        }
        ProgressBar progressBar = (ProgressBar) holder.getView(R$id.progressBar);
        AudioBean audio4 = it.getAudio();
        Long readProcess = audio4 != null ? audio4.getReadProcess() : null;
        AudioBean audio5 = it.getAudio();
        progressBar.setProgress(F1(readProcess, audio5 != null ? audio5.getDuration() : null));
        AudioBean audio6 = it.getAudio();
        int se2 = audio6 != null ? audio6.getSe() : 0;
        AudioBean audio7 = it.getAudio();
        int ep2 = audio7 != null ? audio7.getEp() : 0;
        if (se2 == 0 && ep2 == 0) {
            holder.setGone(R$id.tvEpisode, true);
        } else {
            holder.setGone(R$id.tvEpisode, false);
            holder.setText(R$id.tvEpisode, ak.i.b(ep2, se2, Integer.valueOf(SubjectType.AUDIO.getValue())));
        }
        AudioBean audio8 = it.getAudio();
        if (TextUtils.isEmpty(audio8 != null ? audio8.getSubjectTitle() : null)) {
            int i12 = R$id.tvTitle;
            AudioBean audio9 = it.getAudio();
            if (audio9 != null && (title = audio9.getTitle()) != null) {
                str = title;
            }
            holder.setText(i12, str);
            return;
        }
        int i13 = R$id.tvTitle;
        AudioBean audio10 = it.getAudio();
        if (audio10 != null && (subjectTitle = audio10.getSubjectTitle()) != null) {
            str = subjectTitle;
        }
        holder.setText(i13, str);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x008e  */
    private final void D1(HistoricalPlayRecordBean it, BaseViewHolder holder) {
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
        ((AppCompatTextView) holder.getView(R$id.tvTitle)).setMaxLines(1);
        VideoDetailPlayBean streamVideo5 = it.getStreamVideo();
        if (streamVideo5 != null) {
            Integer subjectType = streamVideo5.getSubjectType();
            int value = SubjectType.TV.getValue();
            if (subjectType != null && subjectType.intValue() == value) {
                holder.setImageResource(R$id.ivCornerMark, com.transsion.baseui.R$mipmap.home_ic_tv_white);
            } else {
                holder.setImageResource(R$id.ivCornerMark, com.transsion.baseui.R$mipmap.home_ic_movie_white);
            }
        } else {
            holder.setImageResource(R$id.ivCornerMark, com.transsion.baseui.R$mipmap.home_ic_movie_white);
        }
        int i11 = R$id.tvTitle;
        VideoDetailPlayBean streamVideo6 = it.getStreamVideo();
        holder.setText(i11, streamVideo6 != null ? streamVideo6.getTitle() : null);
        VideoDetailPlayBean streamVideo7 = it.getStreamVideo();
        if ((streamVideo7 != null ? streamVideo7.getEp() : 0) > 0) {
            holder.setGone(R$id.tvEpisode, false);
            int i12 = R$id.tvEpisode;
            VideoDetailPlayBean streamVideo8 = it.getStreamVideo();
            int ep2 = streamVideo8 != null ? streamVideo8.getEp() : 0;
            VideoDetailPlayBean streamVideo9 = it.getStreamVideo();
            int se2 = streamVideo9 != null ? streamVideo9.getSe() : 0;
            VideoDetailPlayBean streamVideo10 = it.getStreamVideo();
            holder.setText(i12, ak.i.b(ep2, se2, streamVideo10 != null ? streamVideo10.getSubjectType() : null));
        } else {
            holder.setGone(R$id.tvEpisode, true);
        }
        VideoDetailPlayBean streamVideo11 = it.getStreamVideo();
        long jLongValue = 0;
        if (((streamVideo11 == null || (totalDuration2 = streamVideo11.getTotalDuration()) == null) ? 0L : totalDuration2.longValue()) > 0) {
            int i13 = R$id.tvTime;
            VideoDetailPlayBean streamVideo12 = it.getStreamVideo();
            if (streamVideo12 != null && (totalDuration = streamVideo12.getTotalDuration()) != null) {
                jLongValue = totalDuration.longValue();
            }
            holder.setText(i13, TimeUtilKt.n(jLongValue));
        }
        ProgressBar progressBar = (ProgressBar) holder.getView(R$id.progressBar);
        VideoDetailPlayBean streamVideo13 = it.getStreamVideo();
        Long lValueOf = streamVideo13 != null ? Long.valueOf(streamVideo13.getProgress()) : null;
        VideoDetailPlayBean streamVideo14 = it.getStreamVideo();
        progressBar.setProgress(F1(lValueOf, streamVideo14 != null ? streamVideo14.getTotalDuration() : null));
        ((ViewStub) holder.getView(R$id.viewStub)).setVisibility(8);
    }

    /* JADX WARN: Code duplicated, block: B:117:0x0196  */
    /* JADX WARN: Code duplicated, block: B:37:0x0085  */
    /* JADX WARN: Code duplicated, block: B:53:0x00af  */
    /* JADX WARN: Code duplicated, block: B:64:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:66:0x00e9  */
    private final void E1(HistoricalPlayRecordBean it, BaseViewHolder holder) {
        String cover;
        DownloadBean video;
        String name;
        boolean z10;
        String subjectName;
        Long duration;
        Long duration2;
        DownloadBean video2;
        String subjectName2;
        String cover2;
        DownloadBean video3 = it.getVideo();
        String str = "";
        if (video3 == null || video3.getFileType() != 2) {
            Context context = getContext();
            ImageView imageView = (ImageView) holder.getView(R$id.ivCore);
            DownloadBean video4 = it.getVideo();
            if (video4 != null && (cover = video4.getCover()) != null) {
                str = cover;
            }
            DownloadBean video5 = it.getVideo();
            DownloadedHolderKt.a(context, imageView, str, video5 != null ? video5.getThumbnail() : null);
        } else {
            ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getView(R$id.ivCore);
            com.transsnet.downloader.viewmodel.a0 a0Var = com.transsnet.downloader.viewmodel.a0.f60085a;
            DownloadBean video6 = it.getVideo();
            if (video6 != null && (cover2 = video6.getCover()) != null) {
                str = cover2;
            }
            shapeableImageView.setImageBitmap(a0Var.d(str));
        }
        DownloadBean video7 = it.getVideo();
        if (video7 == null || !video7.isSeries() || (video2 = it.getVideo()) == null || (subjectName2 = video2.getSubjectName()) == null || subjectName2.length() <= 0) {
            DownloadBean video8 = it.getVideo();
            if ((video8 != null ? video8.getResolution() : 0) <= 0) {
                video = it.getVideo();
                if (video != null) {
                    name = video.getName();
                } else {
                    name = null;
                }
            } else {
                DownloadBean video9 = it.getVideo();
                if (video9 == null || (subjectName = video9.getSubjectName()) == null) {
                    z10 = false;
                } else {
                    if (subjectName.length() > 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                }
                if (z10) {
                    DownloadBean video10 = it.getVideo();
                    Integer numValueOf = video10 != null ? Integer.valueOf(video10.getResolution()) : null;
                    DownloadBean video11 = it.getVideo();
                    name = numValueOf + "P " + (video11 != null ? video11.getSubjectName() : null);
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
            DownloadBean video12 = it.getVideo();
            if (video12 != null) {
                name = video12.getSubjectName();
            } else {
                name = null;
            }
        }
        holder.setText(R$id.tvTitle, name);
        DownloadBean video13 = it.getVideo();
        if (video13 != null && video13.isSeries()) {
            holder.setGone(R$id.tvEpisode, false);
            DownloadBean video14 = it.getVideo();
            if ((video14 != null ? video14.getEp() : 0) > 0) {
                int i11 = R$id.tvEpisode;
                DownloadBean video15 = it.getVideo();
                int ep2 = video15 != null ? video15.getEp() : 0;
                DownloadBean video16 = it.getVideo();
                int se2 = video16 != null ? video16.getSe() : 0;
                DownloadBean video17 = it.getVideo();
                holder.setText(i11, ak.i.b(ep2, se2, video17 != null ? Integer.valueOf(video17.getType()) : null));
            } else {
                int i12 = R$id.tvEpisode;
                DownloadBean video18 = it.getVideo();
                holder.setText(i12, ak.i.c(video18 != null ? video18.getEpse() : 0, true));
            }
        } else {
            holder.setGone(R$id.tvEpisode, true);
        }
        int type = it.getType();
        if (type == 2) {
            holder.setImageResource(R$id.ivCornerMark, com.transsion.baseui.R$mipmap.home_ic_movie_white);
        } else if (type == 3) {
            int i13 = R$id.ivCornerMark;
            DownloadBean video19 = it.getVideo();
            holder.setImageResource(i13, video19 != null && video19.isShotTV() ? com.transsion.baseui.R$mipmap.home_ic_short_tv_white : com.transsion.baseui.R$mipmap.home_ic_tv_white);
        } else if (type == 5 || type == 6) {
            holder.setImageResource(R$id.ivCornerMark, com.transsion.baseui.R$mipmap.home_ic_movie_white);
        } else {
            holder.setImageResource(R$id.ivCornerMark, com.transsion.baseui.R$mipmap.home_ic_audio_white);
        }
        DownloadBean video20 = it.getVideo();
        long jLongValue = 0;
        if (((video20 == null || (duration2 = video20.getDuration()) == null) ? 0L : duration2.longValue()) > 0) {
            int i14 = R$id.tvTime;
            DownloadBean video21 = it.getVideo();
            if (video21 != null && (duration = video21.getDuration()) != null) {
                jLongValue = duration.longValue();
            }
            holder.setText(i14, TimeUtilKt.n(jLongValue));
        }
        ProgressBar progressBar = (ProgressBar) holder.getView(R$id.progressBar);
        DownloadBean video22 = it.getVideo();
        Long lValueOf = video22 != null ? Long.valueOf(video22.getReadProgress()) : null;
        DownloadBean video23 = it.getVideo();
        progressBar.setProgress(F1(lValueOf, video23 != null ? video23.getDuration() : null));
        if (!Intrinsics.c(it.isLocalFileDelete(), Boolean.TRUE)) {
            DownloadBean video24 = it.getVideo();
            if (!((video24 == null || video24.isFileExist()) ? false : true)) {
                ((ViewStub) holder.getView(R$id.viewStub)).setVisibility(8);
                return;
            }
        }
        ((ViewStub) holder.getView(R$id.viewStub)).setVisibility(0);
    }

    private final int F1(Long pr2, Long total) {
        try {
            Result.Companion companion = Result.INSTANCE;
            if (pr2 != null && total != null) {
                return (int) ((pr2.longValue() * ((long) 100)) / total.longValue());
            }
            Result.m454constructorimpl(Unit.f67061a);
            return 0;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m454constructorimpl(ResultKt.a(th2));
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* JADX INFO: renamed from: B1, reason: merged with bridge method [inline-methods] */
    public void F(BaseViewHolder holder, HistoricalPlayRecordMultipleEntity item) {
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        HistoricalPlayRecordBean historical = item.getHistorical();
        if (historical != null) {
            if (historical.getType() == 1) {
                C1(historical, holder);
            } else if (historical.getStreamVideo() != null) {
                D1(historical, holder);
            }
        }
    }
}
