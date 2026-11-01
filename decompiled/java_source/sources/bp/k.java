package bp;

import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.moviedetailapi.bean.Image;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.ninegridview.video.NineGridVideoView;
import com.transsion.ninegridview.video.NineGridVideoViewAdapter;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class k extends i {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(NineGridVideoView nineGridVideoView) {
        nineGridVideoView.loadImage();
    }

    @Override // bp.i
    public void A(AppCompatImageView ivCenterIcon, PostSubjectItem item) {
        Intrinsics.h(ivCenterIcon, "ivCenterIcon");
        Intrinsics.h(item, "item");
        ivCenterIcon.setVisibility(8);
    }

    @Override // bp.i
    public void B(final NineGridVideoView nineGridView, PostSubjectItem item) {
        List<Image> image;
        Intrinsics.h(nineGridView, "nineGridView");
        Intrinsics.h(item, "item");
        Media media = item.getMedia();
        if (media == null || (image = media.getImage()) == null) {
            return;
        }
        nineGridView.setAdapter(new NineGridVideoViewAdapter(image));
        nineGridView.post(new Runnable() { // from class: bp.j
            @Override // java.lang.Runnable
            public final void run() {
                k.F(nineGridView);
            }
        });
    }

    @Override // bp.i
    public void C(AppCompatTextView tvTime, PostSubjectItem item) {
        Intrinsics.h(tvTime, "tvTime");
        Intrinsics.h(item, "item");
        tvTime.setVisibility(8);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int l() {
        return MediaType.IMAGE.ordinal();
    }
}
