package com.transsion.shorttv.ui.widget;

import com.transsion.player.ui.ORPlayerView;
import com.transsion.shorttv.ui.fragment.ShortTvDetailListFragment;

/* JADX INFO: loaded from: classes6.dex */
public interface d extends com.transsion.player.orplayer.f {

    public static final class a {
        public static /* synthetic */ void a(d dVar, js.e eVar, ShortTvDetailListFragment shortTvDetailListFragment, Integer num, boolean z10, String str, String str2, boolean z11, boolean z12, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setData");
            }
            dVar.setData(eVar, shortTvDetailListFragment, num, z10, str, str2, (i11 & 64) != 0 ? false : z11, (i11 & 128) != 0 ? false : z12);
        }
    }

    long getProgress();

    void onAudioTrackChange();

    void onGetDubsInfo();

    void onPageRelease(int i11);

    void onPageSelected(com.transsion.player.orplayer.g gVar, ORPlayerView oRPlayerView, js.e eVar);

    void setData(js.e eVar, ShortTvDetailListFragment shortTvDetailListFragment, Integer num, boolean z10, String str, String str2, boolean z11, boolean z12);
}
