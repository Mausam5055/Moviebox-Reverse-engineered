package bp;

import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.baseui.util.TimeUtilKt;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.Video;
import com.transsion.ninegridview.video.NineGridVideoView;
import com.transsion.ninegridview.video.NineGridVideoViewAdapter;
import com.transsion.postdetail.R$drawable;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class m extends i {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(NineGridVideoView nineGridVideoView) {
        nineGridVideoView.loadImage();
    }

    @Override // bp.i
    public void A(AppCompatImageView ivCenterIcon, PostSubjectItem item) {
        Intrinsics.h(ivCenterIcon, "ivCenterIcon");
        Intrinsics.h(item, "item");
        ivCenterIcon.setImageResource(R$drawable.post_video_play);
    }

    @Override // bp.i
    public void B(final NineGridVideoView nineGridView, PostSubjectItem item) {
        Cover cover;
        Intrinsics.h(nineGridView, "nineGridView");
        Intrinsics.h(item, "item");
        ArrayList arrayList = new ArrayList();
        Media media = item.getMedia();
        if (media != null && (cover = media.getCover()) != null) {
            arrayList.add(new Image(cover.getHeight(), cover.getSize(), cover.getUrl(), cover.getWidth(), cover.getFormat(), cover.getThumbnail(), cover.getGifBean(), cover.getAverageHueLight(), cover.getAverageHueDark(), 0.0f, 0.0f, 0, 0, 0, 15872, null));
        }
        nineGridView.setAdapter(new NineGridVideoViewAdapter(arrayList));
        nineGridView.post(new Runnable() { // from class: bp.l
            @Override // java.lang.Runnable
            public final void run() {
                m.F(nineGridView);
            }
        });
    }

    @Override // bp.i
    public void C(AppCompatTextView tvTime, PostSubjectItem item) {
        List<Video> video;
        Intrinsics.h(tvTime, "tvTime");
        Intrinsics.h(item, "item");
        Media media = item.getMedia();
        if (media == null || (video = media.getVideo()) == null) {
            tvTime.setVisibility(8);
        } else {
            if (video.isEmpty()) {
                return;
            }
            Number duration = video.get(0).getDuration();
            if (duration == null) {
                duration = 0L;
            }
            tvTime.setText(TimeUtilKt.o(duration.longValue()));
        }
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return MediaType.VIDEO.ordinal();
    }
}
