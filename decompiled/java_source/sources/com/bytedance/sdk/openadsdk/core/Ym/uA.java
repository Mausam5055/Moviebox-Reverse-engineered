package com.bytedance.sdk.openadsdk.core.Ym;

import android.view.View;
import androidx.annotation.NonNull;
import com.iab.omid.library.bytedance2.adsession.AdEvents;
import com.iab.omid.library.bytedance2.adsession.AdSession;
import com.iab.omid.library.bytedance2.adsession.media.InteractionType;
import com.iab.omid.library.bytedance2.adsession.media.MediaEvents;
import com.iab.omid.library.bytedance2.adsession.media.PlayerState;
import com.iab.omid.library.bytedance2.adsession.media.Position;
import com.iab.omid.library.bytedance2.adsession.media.VastProperties;

/* JADX INFO: loaded from: classes3.dex */
public class uA extends Jcg {

    @NonNull
    private final MediaEvents HiB;
    private boolean vS;

    public uA(@NonNull AdSession adSession, @NonNull AdEvents adEvents, @NonNull View view, @NonNull MediaEvents mediaEvents) {
        super(adSession, adEvents, view);
        this.HiB = mediaEvents;
    }

    @Override // com.bytedance.sdk.openadsdk.core.Ym.Jcg
    public void Sj(float f11, boolean z10) {
        if (Sj()) {
            this.HiB.start(f11, z10 ? 0.0f : 1.0f);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.Ym.Jcg
    public void Sj(boolean z10) {
        this.vS = z10;
        sP(12);
    }

    @Override // com.bytedance.sdk.openadsdk.core.Ym.Jcg
    public void Sj(boolean z10, float f11) {
        if (z10) {
            this.EjP = VastProperties.createVastPropertiesForSkippableMedia(f11, true, Position.STANDALONE);
        } else {
            this.EjP = VastProperties.createVastPropertiesForNonSkippableMedia(true, Position.STANDALONE);
        }
        Sj(2);
    }

    @Override // com.bytedance.sdk.openadsdk.core.Ym.Jcg
    public void sP(int i11) {
        if (Sj()) {
            switch (i11) {
                case 0:
                    this.HiB.pause();
                    break;
                case 1:
                    this.HiB.resume();
                    break;
                case 2:
                case 14:
                    this.HiB.skipped();
                    break;
                case 4:
                    this.HiB.bufferStart();
                    break;
                case 5:
                    this.HiB.bufferFinish();
                    break;
                case 6:
                    this.HiB.firstQuartile();
                    break;
                case 7:
                    this.HiB.midpoint();
                    break;
                case 8:
                    this.HiB.thirdQuartile();
                    break;
                case 9:
                    this.HiB.complete();
                    break;
                case 10:
                    this.HiB.playerStateChange(PlayerState.FULLSCREEN);
                    break;
                case 11:
                    this.HiB.playerStateChange(PlayerState.NORMAL);
                    break;
                case 12:
                    this.HiB.volumeChange(this.vS ? 0.0f : 1.0f);
                    break;
                case 13:
                    this.HiB.adUserInteraction(InteractionType.CLICK);
                    break;
            }
        }
    }
}
